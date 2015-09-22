using RestSharp;

namespace KommIT.ebyggesoknad.Models
{
    public class ApiKall
    {
        public string RequestXML { get; set; }

        private IRestRequest Request { get; set; }
        private IRestResponse Response { get; set; }



    }
}