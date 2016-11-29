using Peaker.TimeManagment.Data;
using Peaker.TimeManagment.Models;
using Peaker.TimeManagment.Models.Filters;
using Peaker.TimeManagment.Models.View;
using System.Collections.Generic;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Peaker.TimeManagment.Controllers
{
    [Authorize]
    [RoutePrefix("api/TimeEntry")]
    [EnableCors(origins: "*", headers: "*", methods: "*", SupportsCredentials = true)]
    public class TimeEntryController : ApiController
    {


        
        [AcceptVerbs("POST")]
        [System.Web.Http.HttpPost]
        public int SaveAnEntry([FromBody] TimeEntryView entryToSave) {            
            if (User.Identity != null)
            {
                return TimeEntryAccess.AddUpdateEntry(entryToSave);
            }
            else return -1;
        }

        [AcceptVerbs("GET")]
        [Route("GetEntries")]
        public IEnumerable<TimeEntryView> GetEntries([FromUri]EntryFilter filter)
        {
            if (User.Identity != null)
            {
                return TimeEntryAccess.GetEntries(filter);
            }
            else return null;
        }

        [Route("SaveEntry")]
        public int Post([FromBody] TimeEntryView entryToSave) {
            if (User.Identity != null)
            {
                return TimeEntryAccess.AddUpdateEntry(entryToSave);
            }
            else return -1;
        }

    }
}
