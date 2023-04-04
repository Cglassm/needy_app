using needy_dataAccess.Interfaces;
using needy_dto;
using needy_logic_abstraction.Parameters;

namespace needy_dataAccess.Repositories
{
    public class UserRepository : IUserRepository
    {
        #region Properties and Fields



        #endregion

        #region Builders

        public UserRepository()
        {

        }

        #endregion

        #region Implments IUserRepository

        public async Task<User> GetUsersAsync()
        {
            throw new NotImplementedException();
        }

        public async Task<User> GetUserByIdAsync(int userId)
        {
            throw new NotImplementedException();
        }

        public async Task<User> InsertUserAsync(InsertUserParameters parameters)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
