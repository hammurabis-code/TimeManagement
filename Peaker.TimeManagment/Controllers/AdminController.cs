using Peaker.TimeManagment.Models.View;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Http;

namespace Peaker.TimeManagment.Controllers
{
    [Authorize]
    [RoutePrefix("api/Admin")]
    public class AdminController : ApiController
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
        public IHttpActionResult GetWeekList() {
            var jan1 = new DateTime(DateTime.Today.Year, 1, 1);            
            //beware different cultures, see other answers
            var startOfFirstWeek = jan1;//.AddDays(1 - (int)(jan1.DayOfWeek));
            while (startOfFirstWeek.DayOfWeek != DayOfWeek.Sunday)
            {
                startOfFirstWeek = startOfFirstWeek.AddDays(1);
            }
            var weeks =
                Enumerable
                    .Range(0, 54)
                    .Select(i => new {
                        weekStart = startOfFirstWeek.AddDays(i * 7)
                    })
                    .TakeWhile(x => x.weekStart.Year <= jan1.Year)
                    .Select(x => new {
                        x.weekStart,
                        weekFinish = x.weekStart.AddDays(6)
                    })
                    .SkipWhile(x => x.weekFinish < jan1.AddDays(1))
                    .Select((x, i) => new Week() {
                        weekStart =  x.weekStart,
                        weekFinish = x.weekFinish,
                        weekNum = i + 1
                    });
            return (Ok(weeks.OrderByDescending(w => w.weekStart)));
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
