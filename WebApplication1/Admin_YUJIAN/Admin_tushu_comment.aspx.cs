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
    public partial class Admin_tushu_comment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindView();
           
            string bcid;
            if(!IsPostBack)
            {
                try
                {
                    if(Request.QueryString["bc_id"]!=null)
                    {
                        bcid = Request.QueryString["bc_id"].ToString();
                        Book_CommentManager.delete(bcid);
                        BindView();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功!');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因："+ex.Message);
                }
            }
        }
        protected void BindView()
        {
            ListView1.DataSource = Book_CommentManager.admin_ck();
            ListView1.DataBind();
        }

    }
}