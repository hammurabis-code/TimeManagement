using AspNetIdentity.WebApi.Controllers;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Peaker.TimeManagment.Data;
using Peaker.TimeManagment.Models;
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
        // GET: api/Admin
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Admin/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Admin
        public void Post([FromBody]string value)
        {
        }

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

        [HttpPost]
        [Route("UpdateUsersInRoles")]
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
        [Route("ClearNavisionExportedFlag")]
        public IHttpActionResult ClearNavisionExportedFlag() {
            new TimeEntryAccess().ClearNavisionFlag();
            return Ok();
        }

        [HttpGet]
        [Route("ClearPayrollExportedFlag")]
        public IHttpActionResult ClearPayrollExportedFlag()
        {
            new TimeEntryAccess().ClearNavisionFlag();
            return Ok();
        }


        //[HttpPost]
        //public HttpResponseMessage GenerateMarketStudyResult([FromBody]string id)
        //{
        //    if (id == null)
        //    {
        //        throw new HttpResponseException(new HttpResponseMessage(HttpStatusCode.BadRequest));
        //    }
        //    var serviceUrl = ConfigurationManager.AppSettings["serviceUrl"];

        //    var streamContent = new PushStreamContent((outputStream, httpContext, transportContent) =>
        //    {
        //        try
        //        {
        //            HttpWebRequest webRequest = createWebRequest(serviceUrl + "/" + id.requestId);
        //            IAsyncResult asyncResult = webRequest.BeginGetResponse(null, null);
        //            asyncResult.AsyncWaitHandle.WaitOne();

        //            using (WebResponse webResponse = webRequest.EndGetResponse(asyncResult))
        //            {
        //                webResponse.GetResponseStream().CopyTo(outputStream);
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            Console.WriteLine(ex.Message);
        //        }
        //        finally
        //        {
        //            outputStream.Close();
        //        }
        //    });
        //    streamContent.Headers.ContentType = new MediaTypeHeaderValue("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        //    streamContent.Headers.ContentDisposition = new ContentDispositionHeaderValue("attachment");
        //    streamContent.Headers.ContentDisposition.FileName = "reports.xlsx";

        //    var result = new HttpResponseMessage(HttpStatusCode.OK)
        //    {
        //        Content = streamContent
        //    };
        //    return result;
        //}

        // PUT: api/Admin/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Admin/5
        public void Delete(int id)
        {
        }
    }
}
