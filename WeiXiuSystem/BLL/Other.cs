using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WXXT.BLL
{  
        public partial class User
        {
            public bool NameExists(string name)
            {
                int count = dal.GetRecordCount(" cname='" + name +
    "'");
                return count > 0 ? true : false;
            }
            public string Login(string cname, string cpwd, out int cid)
            {
                string msg = "1";
                cid = 0;
                DataTable dt = dal.GetList(" cname='" + cname + "' ").Tables[0];
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    if (cpwd != row["cpwd"].ToString())
                    {
                        msg = "密码错误";
                    }
                    else
                    {
                        //当前用户正确
                        cid = Convert.ToInt32(row["Cid"]);
                    }
                }
                else
                {
                    msg = "用户名错误";
                }
                return msg;
            }
        }

}
