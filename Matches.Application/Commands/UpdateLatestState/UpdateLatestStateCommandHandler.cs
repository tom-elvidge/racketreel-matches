using Matches.Application.Abstractions.Messaging;
using MediatR;
using Microsoft.Extensions.Logging;
using Matches.Domain.AggregatesModel.MatchAggregate;
using Matches.Domain.SeedWork;
using Matches.Application.Errors;

namespace Matches.Application.Commands.UpdateLatestState;

public class UpdateLatestStateCommandHandler : ICommandHandler<UpdateLatestStateCommand>
{
    private readonly IMediator _mediator;
    private readonly ILogger<UpdateLatestStateCommandHandler> _logger;
    private readonly IMatchRepository _matchRepository;

    public UpdateLatestStateCommandHandler(
        IMediator mediator,
        ILogger<UpdateLatestStateCommandHandler> logger,
        IMatchRepository matchRepository)
    {
        _mediator = mediator ?? throw new ArgumentNullException(nameof(mediator));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));
        _matchRepository = matchRepository ?? throw new ArgumentNullException(nameof(matchRepository));
    }

    public async Task<Result> Handle(UpdateLatestStateCommand command, CancellationToken cancellationToken)
    {
        var matchEntity = await _matchRepository.GetAsync(command.MatchId, true);
        
        if (matchEntity == null)
        {
            return Result.Failure(ApplicationErrors.NotFound);
        }

        var stateEntity = matchEntity.States
            .OrderBy(s => s.CreatedAtDateTime)
            .LastOrDefault();

        if (stateEntity == null)
        {
            return Result.Failure(ApplicationErrors.NotFound);
        }

        stateEntity.Highlight = command.Highlight;
        await _matchRepository.UnitOfWork.SaveEntitiesAsync(cancellationToken);
        
        return Result.Success();
    }
}