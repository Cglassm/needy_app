using Microsoft.Extensions.DependencyInjection;
using needy_dataAccess.Implementation;
using needy_dataAccess.Interfaces;

namespace needy_dataAccess
{
    public static class Extension
    {
        public static IServiceCollection AddRepository(this IServiceCollection services)
        {
            return services
            //.AddSingleton<Connections>()
            .AddScoped<IAuthorizationRepository, AuthorizationRepository>();
        }
    }
}