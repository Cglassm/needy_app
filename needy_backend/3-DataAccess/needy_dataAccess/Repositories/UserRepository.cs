using Dapper;
using needy_dataAccess.Interfaces;
using needy_dto;
using needy_logic_abstraction.Parameters;

namespace needy_dataAccess.Repositories
{
    public class UserRepository : IUserRepository
    {
        #region Properties and Fields

        private readonly PostgreSQLConnection _dbConnection;

        #endregion

        #region Builders

        public UserRepository(PostgreSQLConnection dbConnection)
        {
            _dbConnection = dbConnection;
        }

        #endregion

        #region Implments IUserRepository

        public async Task<IEnumerable<User>> GetUsersAsync()
        {
            using var connection = _dbConnection.CreateConnection();

            var query = @"
                            SELECT ""Id"", ""FirstName"", ""LastName"", ""Address"", ""Phone"", ""Gender""
                            FROM public.""Users""";

            return await connection.QueryAsync<User>(query, new {});
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
