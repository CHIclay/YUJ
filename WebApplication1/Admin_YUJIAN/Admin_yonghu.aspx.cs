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
    public partial class Admin_yonghu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindView();
            string username;
            if(!IsPostBack)
            {
                try
                {
                    if(Request.QueryString["user_name"]!=null)
                    {
                        username = Request.QueryString["user_name"].ToString();
                        UserManager.delete(username);
                        BindView();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
                    }
                }
                catch(Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }
        protected void BindView()
        {
            ListView1.DataSource = UserManager.alluser();
            ListView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            SqlDataReader dt = UserManager.select(name);
            dt.Read();
            if (dt != null)
            {
                panel_a.Visible = true;
                Userid.Text = dt[0].ToString().Trim();
                Name.Text = dt[1].ToString().Trim();
                Password.Text = dt[2].ToString().Trim();
                Email.Text = dt[3].ToString().Trim();
                Phone.Text = dt[4].ToString().Trim();
                Sex.Text = dt[5].ToString().Trim();
               
                BindView();
            }
        }
    }
}