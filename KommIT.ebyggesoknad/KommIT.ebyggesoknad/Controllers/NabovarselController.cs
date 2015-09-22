using System.Web.Mvc;
using KommIT.ebyggesoknad.Models;

namespace KommIT.ebyggesoknad.Controllers
{
    public class NabovarselController : Controller
    {

        public ActionResult Index()
        {
            string eksempelXml = new SendNabovarselTjeneste().HentEksempelXml();

            return View("Index", model: eksempelXml);
        }

        
    }
}