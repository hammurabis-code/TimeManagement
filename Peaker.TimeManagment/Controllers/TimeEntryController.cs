using Microsoft.AspNet.Identity;
using Peaker.TimeManagment.Data;
using Peaker.TimeManagment.Models.Filters;
using Peaker.TimeManagment.Models.View;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Peaker.TimeManagment.Controllers
{
    [Authorize]
    [RoutePrefix("api/TimeEntry")]
    [EnableCors(origins: "*", headers: "*", methods: "*", SupportsCredentials = true)]
    public class TimeEntryController : ApiController
    {
        //[AcceptVerbs("POST")]
        //[HttpPost]
        //public IHttpActionResult SaveAnEntry([FromBody] TimeEntryView entryToSave)
        //{
        //    if (User.Identity != null)
        //    {
        //        return Ok(TimeEntryAccess.AddUpdateEntry(entryToSave));
        //    }
        //    else return Unauthorized();
        //}

        [Route("GetEntries")]
        [HttpPost]
        public IHttpActionResult GetEntries([FromBody]EntryFilter filter)
        {
            if (User.Identity != null)
            {
                return Ok(TimeEntryAccess.GetEntries(filter, User));
            }
            else return Unauthorized();
        }

        [Route("SaveEntry")]
        public IHttpActionResult Post([FromBody] TimeEntryView entryToSave) {
            if (User.Identity != null)
            {
                return Ok(TimeEntryAccess.AddUpdateEntry(entryToSave));
            }
            else return Unauthorized();
        }

        [HttpPost]
        public IHttpActionResult GetTotalHoursForDate([FromBody]EntryFilter filter) {
            if (User.Identity != null)
            {
                return Ok(TimeEntryAccess.GetTotalHours(filter,User));
            }
            else return Unauthorized();
        }

        [Route("DeleteEntry")]
        [HttpPost]
        public IHttpActionResult Delete([FromBody] TimeEntryView entryToDelete)
        {
            if (User.Identity != null)
            {
                return Ok(TimeEntryAccess.DeleteEntry(entryToDelete));
            }
            else return Unauthorized();
        }

    }
}
