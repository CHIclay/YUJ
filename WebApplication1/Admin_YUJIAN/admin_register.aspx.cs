using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace WebApplication1.Admin_YUJIAN
{
    public partial class admin_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {
                    Manager mg = new Manager();
                    mg.Mana_name1 = TextBox1.Text.Trim();
                    mg.Mana_pwd1 = TextBox2.Text.Trim();
                    int i = ManagerManage.AddManager(mg);
                    if( i==1 )
                    {
                       
                        Response.Redirect("~/Admin_YUJIAN/admin_login.aspx");
                    }
                    else
                    {
                        Response.Write("注册失败");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }
    }
}