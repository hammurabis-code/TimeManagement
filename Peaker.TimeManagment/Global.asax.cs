using System.Web.Http;
using System.Web.Routing;

namespace Peaker.TimeManagment
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);           
            RouteConfig.RegisterRoutes(RouteTable.Routes);

        }
    }
}
