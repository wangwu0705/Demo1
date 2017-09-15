using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WXXT.Web
{
    public partial class ProjectList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Export("application/ms-excel", "维修基本信息报表.xls");
        }
        private void Export(string FileType, string FileName)
        {
            //DateTime LocalTime = DateTime.Now;//获取系统时间
            //String date = LocalTime.ToString().Replace(":", ":");
            Response.Clear();
            Response.Buffer = false;
            Response.Charset = "GB2312";//设置文字编码为楷体
            Response.AppendHeader("content-disposition", "attachment;filename=\"" + System.Web.HttpUtility.UrlEncode("维修基本信息表", System.Text.Encoding.UTF8) + ".xls\"");
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            Response.ContentType = "application/ms-excel";
            Response.Write("<meta http-equiv=Content-Type content=\"text/html; charset=GB2312\">");//设置输出文件类型为excel文件。
            this.EnableViewState = false;
            System.IO.StringWriter SW = new System.IO.StringWriter();
            HtmlTextWriter HW = new HtmlTextWriter(SW);
            GridView1.AllowPaging = false;
            GridView1.DataBind();
            GridView1.RenderControl(HW);//输出字符
            Response.Write(SW.ToString());
            Response.End();
            GridView1.AllowPaging = true;//分页
            GridView1.DataBind();//绑定数据源
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //这个方法不能删除掉
        }
    }

}