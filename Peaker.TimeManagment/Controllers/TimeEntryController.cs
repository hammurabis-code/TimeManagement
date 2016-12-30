using Microsoft.AspNet.Identity;
using Peaker.TimeManagment.Data;
using Peaker.TimeManagment.Models.Data;
using Peaker.TimeManagment.Models.Filters;
using Peaker.TimeManagment.Models.View;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Peaker.TimeManagment.Controllers
{
    [Authorize]
    [RoutePrefix("api/TimeEntry")]
    [EnableCors(origins: "*", headers: "*", methods: "*", SupportsCredentials = true)]
    public class TimeEntryController : ApiController
    {

        [Route("GetEntries")]
        [HttpPost]
        public IHttpActionResult GetEntries([FromBody]EntryFilter filter)
        {
            if (User.Identity != null)
            {
                return Ok(new TimeEntryAccess().GetTimeEntries(filter, User));
            }
            else return Unauthorized();
        }

        [Route("SaveEntries")]
        public IHttpActionResult SaveEntries([FromBody] List<TimeEntryView> entriesToSave)
        {
            if (User.Identity != null)
            {
                var access = new TimeEntryAccess();
                foreach (var entry in entriesToSave)
                {
                    access.AddUpdateEntry(entry);
                }
                return Ok();
            }
            else return Unauthorized();
        }

        [Route("SaveEntry")]
        public IHttpActionResult Post([FromBody] TimeEntryView entryToSave)
        {
            if (User.Identity != null)
            {
                new TimeEntryAccess().AddUpdateEntry(entryToSave);
                return Ok();
            }
            else return Unauthorized();
        }

        [HttpPost]
        public IHttpActionResult GetTotalHoursForDate([FromBody]EntryFilter filter)
        {
            if (User.Identity != null)
            {
                return Ok(new TimeEntryAccess().GetTotalHours(filter, User));
            }
            else return Unauthorized();
        }

        [Route("DeleteEntry")]
        [HttpPost]
        public IHttpActionResult Delete([FromBody] TimeEntry entryToDelete)
        {
            if (User.Identity != null)
            {
                new TimeEntryAccess().DeleteEntry(entryToDelete);
                return Ok();
            }
            else return Unauthorized();
        }

        [Route("ExportEntries")]
        [HttpPost]
        public HttpResponseMessage ExportEntries([FromBody]EntryFilter filter)
        {
            using (MemoryStream stream = new TimeEntryAccess().GetExportFile(filter, User))
            {
                // processing the stream.
                //string fileName = $"{DateTime.Now.Year}_{DateTime.Now.Month}_{DateTime.Now.Day}_{DateTime.Now.Hour}_{DateTime.Now.Minute}_{DateTime.Now.Second}.csv";
                //string filePath = $"{Path.GetTempPath()}{fileName}";
                //using (FileStream file = new FileStream(filePath, FileMode.Create, FileAccess.Write)) {
                //    stream.WriteTo(file);
                //    file.Close();
                //}

                //HttpResponseMessage result = new HttpResponseMessage(HttpStatusCode.OK);
                ////using ()
                ////{
                //var newStrean = new FileStream(filePath, FileMode.Open);
                //    result.Content = new StreamContent(stream);
                //    result.Content.Headers.ContentType = new MediaTypeHeaderValue("application/octet-stream");
                //    result.Content.Headers.ContentDisposition = new ContentDispositionHeaderValue("attachment");
                //    result.Content.Headers.ContentDisposition.FileName = fileName;
                //    return result;
                ////}

                var result = new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new ByteArrayContent(stream.GetBuffer())
                };
                result.Content.Headers.ContentDisposition =
                    new System.Net.Http.Headers.ContentDispositionHeaderValue("attachment")
                    {
                        FileName = "Test.csv"
                    };
                result.Content.Headers.ContentType =
                    new MediaTypeHeaderValue("application/octet-stream");

                return result;
            }
        }

        [Route("GetRestrictedJobnumbers")]
        [HttpGet]
        public IHttpActionResult GetRestrictedJobnumbers() {
            if (User.Identity != null)
            {                
                return Ok(new TimeEntryAccess().GetRestrictedJobnumbers().Select(j => j.Jobnumber).ToList());
            }
            else return Unauthorized();
        }

    }
}
