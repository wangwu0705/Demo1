using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WXXT.Web.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string A_name = Request["A_name"];
            if (Aname.Text == "")
            {
                Response.Write("<script>window.alert('请填写管理员名');</script>");
                Aname.Focus();
            }
            else if (Amima.Text == "")
            {
                Response.Write("<script>window.alert('请填写密码');</script>");
                Amima.Focus();

            }
            else
            {
                string strconn = ConfigurationManager.ConnectionStrings["WXXTConnectionString"].ConnectionString;
                SqlConnection cn = new SqlConnection(strconn);
                cn.Open();
                string mysql = "select * from [Admin] where A_name='" + Aname.Text + "'and A_mima= '" + Amima.Text + "'";
                SqlCommand cm = new SqlCommand(mysql, cn);
                SqlDataReader dr = cm.ExecuteReader();
                if (dr.Read())
                {
                    A_name = dr["A_name"].ToString();
                    Response.Redirect("Index.aspx");
                    cn.Close();
                }
                else
                {
                    Response.Write("<script>window.alert('管理员名或密码错误，验证失败');</script>");
                    cn.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Index.aspx");
        }
    }
}