using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Web.UI.HtmlControls;
using BLL;
using Models;
using System.Data.SqlClient;




namespace WebApplication1
{
    public partial class read : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
               
                bind();
                //DataTable xs = Book_CommentManager.plxs();
                // ListView1.DataSource = xs;
                // ListView1.DataBind();
             
            }
           
            BingBC(); 
           
          
        }

        protected void plfabu_Click(object sender, EventArgs e)
        {
            Button bt = (Button)sender;
            if (Session["user_name"] != null)
            {
                try
                {

                    Book_Comment bc = new Book_Comment();

                    bc.Us_User_id1 = int.Parse(Session["user_id"].ToString());

                    bc.Bk_Book_id1 = Convert.ToInt32(Request.QueryString["book_id"].ToString());
                    bc.Bc_mess1 = plshuru.Text;
                    bc.Bc_time1 = DateTime.Now;
                    if (Book_CommentManager.book_comment(bc) == 1)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('回复成功');</script>");
                        BingBC();
                        plshuru.Text = "";
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('评论失败');</script>");
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

       
        protected void bind()
        {
            Repeater1.DataSource= BookManager.Itt(int.Parse(Request.QueryString["book_id"]));
            Repeater1.DataBind();
          
        }

        protected void BingBC()
        {
            int book_id = Convert.ToInt32(Request.QueryString["book_id"].ToString());
            DataTable bc = Book_CommentManager.plxs(book_id);
            if (bc != null)
                {
                    ListView1.DataSource = bc;
                    ListView1.DataBind();
                }
            
        }
        protected string SplitChar(string sObj, int intLen)
        {
            if (sObj.Length > intLen)
            {
                return sObj.Substring(0, intLen) + "…";
            }
            return sObj;
        }


    }

}