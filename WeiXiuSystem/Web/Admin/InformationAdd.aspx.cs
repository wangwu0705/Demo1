using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WXXT.Web.Admin
{
    public partial class InformationAdd : System.Web.UI.Page
    {
        protected string Msg { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request["number"]))
            {
                WXXT.Model.Information wModel = new WXXT.Model.Information()
                {
                    number =Convert.ToInt32 (Request["number"]),
                    project = Request["project"],
                    completion = Convert.ToDateTime(Request["completion"]),
                    baozhiqi = Request["baozhiqi"],
                    money = Request["money"],
                    builder = Request["builder"],
                    Bprincipal = Request["Bprincipal"],
                    Bphone = Request["Bphone"],
                    designer = Request["designer"],
                    Dprincipal = Request["Dprincipal"],
                    Dphone = Request["Dphone"],
                    supervisor = Request["supervisor"],
                    Sphone = Request["Sphone"]
                };

                WXXT.BLL.Information Wbb = new WXXT.BLL.Information();
                if (Wbb.Add(wModel) > 0)
                {
                    Response.Redirect("Information.aspx");
                }
                else
                {
                    Msg = "添加失败，请稍候重试";
                }
            }
        }
    }
}