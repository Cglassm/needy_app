﻿using Microsoft.AspNetCore.Mvc;
using needy_dto;
using needy_logic_abstraction;
using needy_logic_abstraction.Parameters;

namespace needy_api.Controllers
{
    [Route("api/users")]
    public class UserController : Controller
    {
        #region Properties and Fields

        private readonly IUserLogic _userLogic;

        #endregion

        #region Builders

        public UserController(IUserLogic userLogic)
        {
            _userLogic = userLogic;
        }

        #endregion

        #region Implements

        [HttpGet("get-users")]
        public async Task<IActionResult> GetUsersAsync()
        {
            return Ok(await _userLogic.GetUsersAsync());
        }

        [HttpGet("get-user-by-id")]
        public async Task<IActionResult> GetUserByIdAsync(int userId)
        {
            throw new NotImplementedException();
        }

        [HttpPost("insert-user")]
        public async Task<User> InsertUserAsync(InsertUserParameters parameters)
        {
            throw new NotImplementedException();
        }


        #endregion
    }
}
