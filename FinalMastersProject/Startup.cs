using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FinalMastersProject.Startup))]
namespace FinalMastersProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
