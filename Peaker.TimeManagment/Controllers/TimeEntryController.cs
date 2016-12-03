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
        //public IHttpActionResult SaveAnEntry([FromBody] TimeEntryView entryToSave) {            
        //    if (User.Identity != null)
        //    {
        //        return Ok(TimeEntryAccess.AddUpdateEntry(entryToSave));
        //    }
        //    else return Unauthorized();
        //}

        [AcceptVerbs("GET")]
        [Route("GetEntries")]
        public IHttpActionResult GetEntries([FromUri]EntryFilter filter)
        {
            if (User.Identity != null)
            {
                return Ok(TimeEntryAccess.GetEntries(filter));
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

        [Route("DeleteEntry")]
        [HttpDelete]
        public IHttpActionResult Delete(int entryId)
        {
            if (User.Identity != null)
            {
                return Ok(TimeEntryAccess.DeleteEntry(entryId));
            }
            else return Unauthorized();
        }

    }
}
