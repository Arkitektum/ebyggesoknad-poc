using System.Web.Http;
using KommIT.ebyggesoknad.Models;
using KommIT.ebyggesoknad.Models.Altinn;

namespace KommIT.ebyggesoknad.Controllers
{
    public class EksempeldataController : ApiController
    {
        [AcceptVerbs("GET")]
        public NabovarselType OpprettNabovarsel()
        {
            return new EksempeldataGenerator().NyttNabovarsel();
        }
    }
}
