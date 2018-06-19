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
    public partial class Admin_shudanxx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


            string listbookkeepid;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["list_book_keep_id"] != null)
                    {
                        listbookkeepid = Request.QueryString["list_book_keep_id"].ToString();
                        List_book_keepManager.delete(listbookkeepid);
                        
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功!');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
                BingLS();
               
            }
        }
        protected void BingLS()
        {
            if (!IsPostBack)
            {
                string list1_name = Request.QueryString["list1_name"].ToString();
                DataTable lx = List_book_keepManager.listtushu(list1_name);
                if (lx != null)
                {
                    ListView1.DataSource = lx;
                    ListView1.DataBind();
                }
            }
        }


    }
}