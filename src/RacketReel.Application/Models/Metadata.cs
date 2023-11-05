namespace RacketReel.Application.Models;

public record Metadata(
    int Id, 
    DateTime CreatedAt,
    Format Format,
    string TeamOneName,
    string TeamTwoName)
{
    public Metadata() : this(0, DateTime.MinValue, Format.TiebreakToTen, "", "")
    {
    }
}