using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Runtime.Remoting;
using System.Runtime.Remoting.Lifetime;
using System.IO;

namespace WXXT.Web
{
    public partial class Photo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DirectoryInfo imagesfile = new DirectoryInfo(Server.MapPath("/Photos1"));
            DataList1.DataSource = imagesfile.GetFiles("*.jpg");
            DataList1.DataBind();
        }
    }
}