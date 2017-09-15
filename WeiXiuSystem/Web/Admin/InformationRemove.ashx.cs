using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WXXT.Web.Admin
{
    /// <summary>
    /// InformationRemove 的摘要说明
    /// </summary>
    public class InformationRemove : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            int id = int.Parse(context.Request["id"]);

            WXXT.BLL.Information wBll = new WXXT.BLL.Information();
            if (wBll.Delete(id))
            {
                context.Response.Write(1);
            }
            else
            {
                context.Response.Write(0);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}