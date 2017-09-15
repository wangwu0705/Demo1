using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WXXT.Web.Admin
{
    public partial class UserEdit : System.Web.UI.Page
    {
        protected WXXT.Model.User WModel { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            WXXT.BLL.User wBll = new WXXT.BLL.User();
            if (IsPostBack)
            {
                //修改处理
                //bool isPwdEdit = false;
                WModel = new WXXT.Model.User()
                {
                    id = int.Parse(Request["uid"]),
                    U_name = Request["U_name"],
                    U_mima = Request["U_mima"],
                };

                if (wBll.Update(WModel))
                {
                    Response.Redirect("UserList.aspx");
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