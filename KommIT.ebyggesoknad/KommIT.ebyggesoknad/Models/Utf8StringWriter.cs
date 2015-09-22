using System.IO;
using System.Text;

namespace KommIT.ebyggesoknad.Models
{
    public sealed class Utf8StringWriter : StringWriter
    {
        public override Encoding Encoding { get { return Encoding.UTF8; } }
    }
}