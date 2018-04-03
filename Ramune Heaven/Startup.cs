using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Ramune_Heaven.Startup))]
namespace Ramune_Heaven
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
