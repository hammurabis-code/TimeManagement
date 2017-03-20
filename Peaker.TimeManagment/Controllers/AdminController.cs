using AspNetIdentity.WebApi.Controllers;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Peaker.TimeManagment.Data;
using Peaker.TimeManagment.Models;
using Peaker.TimeManagment.Models.Filters;
using Peaker.TimeManagment.Models.View;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web.Http;

namespace Peaker.TimeManagment.Controllers
{
    [Authorize]
    [RoutePrefix("api/Admin")]
    public class AdminController : BaseApiController
    {
       
        [Route("GetWeekList")]
        public IHttpActionResult GetWeekList(int year)
        {
            var jan1 = new DateTime(year, 1, 1);
            //beware different cultures, see other answers
            var startOfFirstWeek = jan1;//.AddDays(1 - (int)(jan1.DayOfWeek));
            while (startOfFirstWeek.DayOfWeek != DayOfWeek.Sunday)
            {
                startOfFirstWeek = startOfFirstWeek.AddDays(1);
            }
            var weeks =
                Enumerable
                    .Range(0, 54)
                    .Select(i => new
                    {
                        weekStart = startOfFirstWeek.AddDays(i * 7)
                    })
                    .TakeWhile(x => x.weekStart.Year <= jan1.Year)
                    .Select(x => new
                    {
                        x.weekStart,
                        weekFinish = x.weekStart.AddDays(6)
                    })
                    .SkipWhile(x => x.weekFinish < jan1.AddDays(1))
                    .Select((x, i) => new Week()
                    {
                        weekStart = x.weekStart,
                        weekFinish = x.weekFinish,
                        weekNum = i + 1
                    });
            return (Ok(weeks.OrderByDescending(w => w.weekStart)));
        }

        [Route("GetUsersInRoleList")]
        [Authorize(Roles = "Admin, Supervisor")]
        public async Task<IHttpActionResult> GetUsersInRoleList(string roleName)
        {
            var role = await AppRoleManager.FindByNameAsync(roleName);
            if (role != null)
            {
                List<UserInRoleModel> usersInRole = new List<UserInRoleModel>();
                var users = AppUserManager.Users.ToList();
                foreach (var user in users)
                {
                    usersInRole.Add( new UserInRoleModel()
                    {
                        UserId = user.Id,
                        UserName = user.UserName,
                        RoleId = role.Id,
                        IsInRole = AppUserManager.GetRoles(user.Id).Contains(roleName)
                    });

                }
                return Ok(usersInRole);
            }

            return NotFound();
        }

        [Route("GetUsersFilterList")]
        [Authorize(Roles = "Admin, Supervisor")]
        public IHttpActionResult GetUsersFilterList()
        {
            return Ok(new UserAccess().GetAllUsers());
        }

        [HttpPost]
        [Route("UpdateUsersInRoles")]
        [Authorize(Roles = "Admin")]
        public async Task<IHttpActionResult> UpdateUsersInRoles([FromBody]IEnumerable<UserInRoleModel> usersInRole)
        {
            if (usersInRole != null && usersInRole.Count() > 0) {
                IdentityRole role = null;
                foreach (var userInRole in usersInRole) {
                    if (role == null) { role = await AppRoleManager.FindByIdAsync(userInRole.RoleId); }
                    if (role != null)
                    {
                        if (userInRole.IsInRole)
                        {
                            if (!AppUserManager.GetRoles(userInRole.UserId).Contains(role.Name))
                            {
                                await AppUserManager.AddToRoleAsync(userInRole.UserId, role.Name);
                            }
                        }
                        else {
                            if (AppUserManager.GetRoles(userInRole.UserId).Contains(role.Name))
                            {
                                await AppUserManager.RemoveFromRoleAsync(userInRole.UserId, role.Name);
                            }
                        }
                    }
                    else {
                        return BadRequest("Role not found.");                    }
                }
                return Ok();
            }

            return NotFound();
        }

        [HttpGet]
        [Authorize(Roles = "Admin")]
        [Route("ClearNavisionExportedFlag")]
        public IHttpActionResult ClearNavisionExportedFlag() {
            new TimeEntryAccess().ClearNavisionFlag();
            return Ok();
        }

        [HttpGet]
        [Authorize(Roles = "Admin")]
        [Route("ClearPayrollExportedFlag")]
        public IHttpActionResult ClearPayrollExportedFlag()
        {
            new TimeEntryAccess().ClearPayrollExportFlag();
            return Ok();
        }

        [HttpPost]
        [Authorize(Roles = "Admin")]
        [Route("ClearNavisionExportedFlagByDate")]
        public IHttpActionResult ClearExportedForNavisionByDate([FromBody]EntryFilter filter)
        {
            if (User.Identity != null)
            {
                var user = AppUserManager.FindById(User.Identity.GetUserId());
                new TimeEntryAccess().ClearNavisionFlag(filter, user);
                return Ok();
            }
            else return Unauthorized();
        }

        [HttpPost]
        [Authorize(Roles = "Admin")]
        [Route("ClearPayrollExportedFlagByDate")]
        public IHttpActionResult ClearExportedForPayrollByDate([FromBody]EntryFilter filter)
        {
            if (User.Identity != null)
            {
                var user = AppUserManager.FindById(User.Identity.GetUserId());
                new TimeEntryAccess().ClearPayrollExportFlag(filter, user);
                return Ok();
            }
            else return Unauthorized();
        }
    }
}
