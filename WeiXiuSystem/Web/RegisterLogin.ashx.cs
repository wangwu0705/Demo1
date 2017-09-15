using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace WXXT.Web
{
    /// <summary>
    /// RegisterLogin1 的摘要说明
    /// </summary>
    public class RegisterLogin1 : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            string cname = context.Request["cname"];
            string cpwd = context.Request["cpwd"];
            string msg = "";
            if(cname!=null &&cpwd!=null)
            {
                WXXT.BLL.User ciBll = new WXXT.BLL.User();
                string cpwd2 = cpwd;
                int cid;
                msg = ciBll.Login(cname, cpwd2, out cid);
            }
            else
            {
                msg = "用户名或密码为空！";
            }
            
            context.Response.Write(msg);
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