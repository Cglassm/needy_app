using needy_dataAccess.Interfaces;
using needy_dto;
using needy_logic_abstraction.Parameters;

namespace needy_dataAccess.Implementation
{
    public class AuthorizationRepository : IAuthorizationRepository
    {
        #region Properties and Fields

        

        #endregion

        #region Builders

        public AuthorizationRepository()
        {
            
        }

        #endregion

        #region Implments IAuthorizationRepository

        public Task<User> AuthenticateAsync(AuthenticationParameters parameters)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
