using System.Text;
using RacketReel.Application.Abstractions.Messaging;
using RacketReel.Application.Models;

namespace RacketReel.Application.Commands.CreateMatch;

public sealed class CreateMatchCommand : ICommand<State>
{
    public string TeamOneName { get; set; }
    public string TeamTwoName { get; set; }
    public Team ServingFirst { get; set; }
    public Format Format { get; set; }
    
    public CreateMatchCommand(string teamOneName, string teamTwoName, Team servingFirst, Format format)
    {
        TeamOneName = teamOneName;
        TeamTwoName = teamTwoName;
        ServingFirst = servingFirst;
        Format = format;
    }
    
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class CreateStateCommand {\n");
        sb.Append("  TeamOneName: ").Append(TeamOneName).Append('\n');
        sb.Append("  TeamTwoName: ").Append(TeamTwoName).Append('\n');
        sb.Append("  ServingFirst: ").Append(ServingFirst).Append('\n');
        sb.Append("  Format: ").Append(Format).Append('\n');
        sb.Append("}\n");
        return sb.ToString();
    }
}