using Matches.Domain.AggregatesModel.MatchAggregate.Formats;
using Matches.Domain.AggregatesModel.MatchAggregate.Participants;
using Matches.Domain.Exceptions;
using Matches.Domain.SeedWork;

namespace Matches.Domain.AggregatesModel.MatchAggregate;

public class Match : Entity, IAggregateRoot
{
    public DateTime CreatedAtDateTime { get; private set; } = DateTime.MinValue;

    public BaseParticipant ParticipantOne { get; private set; } = new NoUserParticipant("Player One");

    public BaseParticipant ParticipantTwo { get; private set; } = new NoUserParticipant("Player Two");

    public ParticipantEnum ServingFirst { get; private set; } = ParticipantEnum.One;

    /// <summary>
    /// Describes the rules for scoring the match.
    /// </summary>
    public Format Format { get; private set; } = BestOfThreeSevenPointTiebreaker.Create();

    /// <summary>
    /// The collection of all unique states in the match in no particular order.
    /// </summary>
    public IReadOnlyCollection<State> States => _states;

    private readonly List<State> _states = new List<State>();

    public Match(
        DateTime createdAtDateTime,
        BaseParticipant participantOne,
        BaseParticipant participantTwo,
        ParticipantEnum servingFirst,
        Format format,
        List<State> states)
    {
        CreatedAtDateTime = createdAtDateTime;
        ParticipantOne = participantOne;
        ParticipantTwo = participantTwo;
        ServingFirst = servingFirst;
        Format = format;
        _states = states;
    }

    public static Match Create(
        BaseParticipant participantOne,
        BaseParticipant participantTwo,
        ParticipantEnum servingFirst,
        Format format)
    {
        return new Match(
            DateTime.UtcNow,
            participantOne,
            participantTwo,
            servingFirst,
            format,
            new List<State> { State.Initial(servingFirst) });
    }

    /// <summary>
    /// Return true if this match is complete and false otherwise.
    /// </summary>
    public bool IsComplete()
    {
        if (States.Count == 0)
        {
            throw new MatchHasNoStatesDomainException($"{nameof(IsComplete)} requires the match to have states");
        }

        var lastState = States
            .OrderBy(s => s.CreatedAtDateTime)
            .LastOrDefault()!;

        return Scorer.IsComplete(Format, lastState);
    }

    /// <summary>
    /// Update the match when a participant scores a point. Compute and append the next state.
    /// </summary>
    /// <param name="participant">The participant which scored a point.</param>
    public void Update(ParticipantEnum participant)
    {
        if (States.Count == 0)
        {
            throw new MatchHasNoStatesDomainException($"{nameof(Undo)} requires the match to have states");
        }

        if (IsComplete()) {
            throw new CannotUpdateACompletedMatchDomainException();
        }

        var lastState = States
            .OrderBy(s => s.CreatedAtDateTime)
            .LastOrDefault()!;

        var newState = new State(
            DateTime.Now,
            ParticipantEnum.One, // placeholder
            Scorer.GetNewScore(Format, lastState, participant),
            false);
        newState.Serving = GetNewStateServing(newState, lastState);

        _states.Add(newState);
    }

    private ParticipantEnum GetNewStateServing(State newState, State lastState)
    {
        var lastStateTiebreak = Scorer.IsTiebreak(Format, lastState);
        var newStateTiebreak = Scorer.IsTiebreak(Format, newState);

        // new game after a tiebreak game has been complete
        if (lastStateTiebreak && !newStateTiebreak)
        {
            // participant who received first in the tiebreak should serve in the new game
            _states.OrderBy(s => s.CreatedAtDateTime).Reverse();
            foreach (var state in _states)
            {
                if (state.Score.P1Points == 0 && state.Score.P2Points == 0)
                {
                    return state.Serving == ParticipantEnum.One
                        ? ParticipantEnum.Two
                        : ParticipantEnum.One;
                }
            }
            throw new DomainException("iterated backwards through all states without finding the start of the tiebreak");
        }

        // is there a new game starting in newState?
        var newGameStarting = newState.Score.P1Points == 0
            && newState.Score.P2Points == 0;

        // is the newState a tiebreak and has there been an odd number of points played?
        var oddNumberOfTiebreakPointsPlayed = newStateTiebreak
            && (newState.Score.P1Points + newState.Score.P2Points) % 2 != 0;

        // swap serve
        if (newGameStarting || oddNumberOfTiebreakPointsPlayed)
        {
            return lastState.Serving == ParticipantEnum.One
                ? ParticipantEnum.Two
                : ParticipantEnum.One;
        }

        // do not swap serve
        return lastState.Serving;
    }

    /// <summary>
    /// Undo the last update to the match.
    /// </summary>
    public void Undo()
    {
        if (States.Count == 0)
        {
            throw new MatchHasNoStatesDomainException($"{nameof(Undo)} requires the match to have states");
        }

        if (States.Count == 1)
        {
            throw new CannotUndoInitialStateDomainException();
        }

        var lastState = States
            .OrderBy(s => s.CreatedAtDateTime)
            .LastOrDefault()!;
        _states.Remove(lastState);
    }

    /// <summary>
    /// Return the participant who should serve first in the set after this tiebreak is complete. Throws an exception if the last state is not in a tiebreak.
    /// </summary>
    private ParticipantEnum GetServingAfterTiebreak()
    {
        if (States.Count == 0)
        {
            throw new MatchHasNoStatesDomainException($"{nameof(GetServingAfterTiebreak)} requires the match to have states");
        }

        var lastState = States
            .OrderBy(s => s.CreatedAtDateTime)
            .LastOrDefault()!;

        if (!Scorer.IsTiebreak(Format, lastState))
        {
            throw new DomainException($"{nameof(GetServingAfterTiebreak)} cannot be called when the last state is not in a tiebreal");
        }

        // iterate backwards through the states until the start of the tiebreak is found
        // the participant who received at the start of the tiebreak will serve first in the next set
        foreach (var state in States.OrderBy(s => s.CreatedAtDateTime).Reverse())
        {
            if (state.Score.P1Points == 0 && state.Score.P2Points == 0)
            {
                return state.Serving == ParticipantEnum.One ? ParticipantEnum.One : ParticipantEnum.Two;
            }
        }

        throw new DomainException($"{nameof(GetServingAfterTiebreak)} iterated through all the states without finding the state at the start of the tiebreak");
    }
}