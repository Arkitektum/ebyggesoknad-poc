using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(KommIT.ebyggesoknad.Startup))]
[assembly: log4net.Config.XmlConfigurator(ConfigFile = "Web.config", Watch = true)]
namespace KommIT.ebyggesoknad
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
        }
    }
}
