using System.Web.Mvc;

namespace KommIT.ebyggesoknad.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
    }
}