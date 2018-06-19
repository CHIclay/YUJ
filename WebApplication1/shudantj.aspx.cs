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

namespace WebApplication1
{
    public partial class shudantj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BingLB();

            }
         
        }


        protected void BingLB()
        {
            if(Session["user_name"] != null)
                { 
            int user_id = int.Parse(Session["user_id"].ToString());
            DataTable lb = BookManager.listbook(user_id);
            if (lb != null)
            {

                DropDownList1.DataSource = lb;
                DropDownList1.DataBind();
            }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('没有登录不能收藏图书哦！');</script>");
            }
        }

     
         

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button bt = (Button)sender;
            if (Session["user_name"] != null)
            {
                try
                {
                    List_book_keep lbk3 = new List_book_keep();
                    lbk3.Lbk_list_name1 = DropDownList1.SelectedValue;
                    lbk3.Lbk_book_id1 = int.Parse(Request.QueryString["book_id"].ToString());
                    if (List_book_keepManager.sctuchu(lbk3)==1)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('收藏成功');</script>");
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('收藏失败');</script>");
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
               
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先登录！');</script>");
            }
          

        }
    }
}