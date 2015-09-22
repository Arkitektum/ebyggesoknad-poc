using KommIT.ebyggesoknad.Models.Altinn;
using RestSharp;

namespace KommIT.ebyggesoknad.Models
{
    public class SendNabovarselTjeneste
    {
        readonly log4net.ILog _log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public ApiKall SendNabovarsel()
        {
            var apiKall = new ApiKall();
            
            
            NabovarselType nabovarsel = new EksempeldataGenerator().NyttNabovarsel();


            var serializer = new System.Xml.Serialization.XmlSerializer(nabovarsel.GetType());
            var stringWriter = new Utf8StringWriter();
            serializer.Serialize(stringWriter, nabovarsel);

            string nabovarselXml = stringWriter.ToString();
            apiKall.RequestXML = nabovarselXml;

            _log.Info(nabovarselXml);


            var client = new RestClient("https://www.altinn.no");

            var request = new RestRequest("/api/my/messages", Method.GET);
            request.AddHeader("Accept", "application/hal+json");


            string doc = request.XmlSerializer.Serialize(request);

            _log.Info(doc);
            /*
            var serializer = new System.Xml.Serialization.XmlSerializer(request.GetType());
            var stringWriter = new StringWriter();
            serializer.Serialize(stringWriter, request);
            _log.Info(stringWriter.ToString());
            */
            /*
            IRestResponse response = client.Execute(request);
            var content = response.Content;

            return content;
             * */

            
            return apiKall;
        }


        public string HentEksempelXml()
        {
            NabovarselType nabovarsel = new EksempeldataGenerator().NyttNabovarsel();

            var serializer = new System.Xml.Serialization.XmlSerializer(nabovarsel.GetType());
            var stringWriter = new Utf8StringWriter();
            serializer.Serialize(stringWriter, nabovarsel);

            return stringWriter.ToString();
        }
    }
}