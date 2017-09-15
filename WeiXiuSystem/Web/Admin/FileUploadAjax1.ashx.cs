using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WXXT.Web.Admin
{
    /// <summary>
    /// FileUploadAjax1 的摘要说明
    /// </summary>
    public class FileUploadAjax1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            HttpPostedFile file1 = context.Request.Files["UpImg11"];

            string path1 = "/Photos1/" + file1.FileName;
            string path2 = context.Request.MapPath(path1);

            file1.SaveAs(path2);

            context.Response.Write(path1);
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