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
        public partial class Admin_yonghu_update : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                BindView();
                if (!IsPostBack)
                {
               
                    if (Request.QueryString["user_name"] != null)
                    {
                        BindView();
                        string name = Request.QueryString["user_name"].ToString().Trim();
                        SqlDataReader dt = UserManager.select(name);
                        dt.Read();
                        if (dt != null)
                        {
                            txtName.Text = dt[1].ToString().Trim();
                            txtPassword.Text = dt[2].ToString().Trim();
                            txtEmail.Text = dt[3].ToString().Trim();
                            txtTel.Text = dt[4].ToString().Trim();
                            Sex.Text = dt[5].ToString().Trim();           
                        }
                    }
                }
            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                Users users = new Users();
                users.User_name1 = txtName1.Text.Trim();
                users.User_pwd1 = txtPassword1.Text.Trim();
                users.User_email1 = txtEmail1.Text.Trim();
                users.User_phone1 = txtTel1.Text.Trim();
                users.User_sex1 = RadioButtonList_sex.SelectedItem.Text;
    
                try
                {
                    if (UserManager.update(users) == 1)
                    {
                        BindView();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('修改成功！');</script>");
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('修改失败！');</script>");

                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }

            protected void BindView()
            {
                ListView1.DataSource = UserManager.alluser();
                ListView1.DataBind();
            }
        }
    }