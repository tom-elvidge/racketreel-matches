using Microsoft.EntityFrameworkCore;
using RacketReel.Domain.Users;
using RacketReel.Infrastructure;
using RacketReel.Infrastructure.Options;
using RacketReel.Infrastructure.Users;

var builder = WebApplication.CreateBuilder(args);

var services = builder.Services;

var applicationAssembly = typeof(RacketReel.Application.AssemblyReference).Assembly;

services.AddMediatR(cfg => cfg.RegisterServicesFromAssemblies(applicationAssembly));

var postgresConfig = builder.Configuration.GetSection(nameof(Postgres)).Get<Postgres>()!;

services.AddDbContext<UserInfoDbContext>(c => c.UseNpgsql(postgresConfig.GetConnectionString()));
services.AddScoped<IUserInfoRepository, UserInfoRepository>();

var authConfig = builder.Configuration.GetSection(nameof(OAuth)).Get<OAuth>()!;

services.AddAuthentication().AddJwtBearer(options =>
{
    options.Authority = authConfig.Authority;
    options.Audience = authConfig.Audience;
});

services.AddAuthorizationBuilder().AddPolicy(Constants.Policies.Users, policy => policy.RequireClaim("user_id"));

services.AddGrpc();

var app = builder.Build();

app.MapGrpcService<UsersRpcService>();

app.Run();