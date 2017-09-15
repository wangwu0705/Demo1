using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WXXT.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string Cname = Request["cname"];
            string Upwd = Request["cpwd"];
            if (Cname == "")
            {
                Response.Write("<script>window.alert('请填写用户名');</script>");
            }
            else if (Upwd == "")
            {
                Response.Write("<script>window.alert('请填写密码');</script>");
            }
            else
            {
                string strconn = ConfigurationManager.ConnectionStrings["WXXTConnectionString"].ConnectionString;
                SqlConnection cn = new SqlConnection(strconn);
                cn.Open();
                string mysql = "select * from [User] where U_name='" + Cname + "'and U_mima= '" + Upwd + "'";
                SqlCommand cm = new SqlCommand(mysql, cn);
                SqlDataReader dr = cm.ExecuteReader();
                if (dr.Read())
                {
                    Cname = dr["U_name"].ToString();
                    Response.Redirect("Index.aspx");
                    cn.Close();
                }
                else
                {
                    Response.Write("<script>window.alert('用户名或密码错误，验证失败');</script>");
                    cn.Close();
                }
            }
        }
    }
}