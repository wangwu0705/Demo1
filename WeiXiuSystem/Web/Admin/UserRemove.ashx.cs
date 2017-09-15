using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WXXT.Web.Admin
{
    /// <summary>
    /// UserRemove 的摘要说明
    /// </summary>
    public class UserRemove : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            int id = int.Parse(context.Request["id"]);

            WXXT.BLL.User wBll = new WXXT.BLL.User();
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