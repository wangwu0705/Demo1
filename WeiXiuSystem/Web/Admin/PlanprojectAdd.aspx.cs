using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WXXT.Web.Admin
{
    public partial class PlanprojectAdd : System.Web.UI.Page
    {
        protected string Msg { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request["ProjectNum"]))
            {
                WXXT.Model.JihuaProject wModel = new WXXT.Model.JihuaProject()
                {
                    ProjectNum = Convert.ToInt32(Request["ProjectNum"]),
                    ProjectName = Request["ProjectName"],
                    StartTime = Convert.ToDateTime(Request["StartTime"]),
                    EndTime = Convert.ToDateTime(Request["EndTime"]),
                    Budget = Convert.ToDecimal(Request["Budget"]),
                    MoneySource = Request["MoneySource"],                   
                };

                WXXT.BLL.JihuaProject Wbb = new WXXT.BLL.JihuaProject();
                if (Wbb.Add(wModel) > 0)
                {
                    Response.Redirect("Planproject.aspx");
                }
                else
                {
                    Msg = "添加失败，请稍候重试";
                }
            }
        }
    }
}