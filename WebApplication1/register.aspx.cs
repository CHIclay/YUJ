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

    namespace WebApplication1
    {
        public partial class register : System.Web.UI.Page
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
                        Users us = new Users();
                        us.User_name1 = TextBox1.Text.Trim();
                        us.User_pwd1 = TextBox2.Text.Trim();
                        us.User_email1 = TextBox4.Text.Trim();
                        us.User_phone1 = TextBox5.Text.Trim();
                        us.User_sex1 = DropDownList1.SelectedValue;
                        int i = UserManager.AddUser(us);
                        if (i == 1)
                        {
                       
                            Response.Redirect("~/Login.aspx");
                        }
                        else
                        {
                            Response.Write("注册失败");
                        }

                    }
                    catch(Exception ex)
                    {

                        Response.Write("错误原因：" + ex.Message);
                    }
                }

            }
          
 
        }
    }