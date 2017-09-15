using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WXXT.Web.Admin
{
    public partial class PlanprojectEdit : System.Web.UI.Page
    {
        protected WXXT.Model.JihuaProject WModel { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            WXXT.BLL.JihuaProject wBll = new WXXT.BLL.JihuaProject();
            if (IsPostBack)
            {
                //修改处理
                //bool isPwdEdit = false;
                WModel = new WXXT.Model.JihuaProject()
                {
                    ID = int.Parse(Request["uid"]),
                    ProjectNum =Convert.ToInt32(Request["ProjectNum"]),
                    ProjectName = Request["ProjectName"],
                    StartTime = Convert.ToDateTime(Request["StartTime"]),
                    EndTime = Convert.ToDateTime(Request["EndTime"]),
                    Budget = Convert.ToDecimal(Request["Budget"]),
                    MoneySource = Request["MoneySource"],                 
                };

                if (wBll.Update(WModel))
                {
                    Response.Redirect("Planproject.aspx");
                }
                else
                {
                    Response.Write("修改失败，请稍候重试");
                }
            }
            else
            {
                //修改展示
                int id = int.Parse(Request["id"]);

                WModel = wBll.GetModel(id);
            }
        }
    }
}