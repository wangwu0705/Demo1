using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WXXT.Web.Admin
{
    public partial class UserAdd : System.Web.UI.Page
    {
        protected string Msg { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request["U_name"]))
            {
                WXXT.Model.User wModel = new WXXT.Model.User()
                {
                    U_name = Request["U_name"],
                    U_mima = Request["U_mima"],
                };

                WXXT.BLL.User Wbb = new WXXT.BLL.User();
                if (Wbb.Add(wModel) > 0)
                {
                    Response.Redirect("UserList.aspx");
                }
                else
                {
                    Msg = "添加失败，请稍候重试";
                }
            }
        }
    }
}