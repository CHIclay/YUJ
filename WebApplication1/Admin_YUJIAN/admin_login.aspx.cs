using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Models;
using BLL;


namespace WebApplication1.Admin_YUJIAN
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginok_Click(object sender, EventArgs e)
        {
            string mananame = txtName.Text.Trim();
            string manapwd = txtPassword.Text.Trim();
            string checkcode = Session["CheckCode"].ToString();
            try
            {
                if (checkcode.ToLower() == txtCheckCode.Text || checkcode.ToUpper() == txtCheckCode.Text)
                {
                    SqlDataReader dr = ManagerManage.Admin_Login(mananame, manapwd);
                    if (dr.Read())
                    {
                        Session["mana_name"] = dr[1].ToString();
                        Response.Redirect("~/Admin_YUJIAN/Admin_yonghu.aspx");
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