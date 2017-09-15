using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WXXT.Web.Admin
{
    public partial class InformationEdit : System.Web.UI.Page
    {
        protected WXXT.Model.Information WModel { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            WXXT.BLL.Information wBll = new WXXT.BLL.Information();
            if (IsPostBack)
            {
                //修改处理
                //bool isPwdEdit = false;
                WModel = new WXXT.Model.Information()
                {
                    ID = int.Parse(Request["uid"]),
                    number = Convert.ToInt32(Request["number"]),
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
                    Sphone = Request["Sphone"],
                };

                if (wBll.Update(WModel))
                {
                    Response.Redirect("Information.aspx");
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