using System.Web;
using System.Web.Mvc;

namespace KommIT.ebyggesoknad
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
