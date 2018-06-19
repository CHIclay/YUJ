using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Models;
using BLL;
using System.Configuration;
 

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginok_Click(object sender, EventArgs e)
        {
            string username =txtName.Text.Trim();
            string userpassword = txtPassword.Text.Trim();
            string checkcode = Session["CheckCode"].ToString();
            try
            {
                if (checkcode.ToLower() == txtCheckCode.Text || checkcode.ToUpper() == txtCheckCode.Text)
                {
                    SqlDataReader dr = UserManager.Login(username, userpassword);
                    if(dr.Read())
                    {
                        Session["user_name"] = dr[1].ToString();
                        Session["user_id"] = dr[0].ToString();
                        Response.Redirect("/index.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "false", "<script>alert('用户和密码错误，请重新输入！')</script>");
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "false", "<script>alert('验证码错误！')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }
        }

        protected void imgCode_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}