using needy_dataAccess.Interfaces;
using needy_dto;
using needy_logic_abstraction;
using needy_logic_abstraction.Parameters;

namespace needy_logic
{
    public class UserLogic : IUserLogic
    {
        #region Properties and Fields

        private readonly IUserRepository _userRepository;

        #endregion

        #region Builders

        public UserLogic(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        #endregion

        #region Implements IAuthorizationLogic
        public async Task<IEnumerable<User>> GetUsersAsync()
        {
            return await _userRepository.GetUsersAsync();
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
