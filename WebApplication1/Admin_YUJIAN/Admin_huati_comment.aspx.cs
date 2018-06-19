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
    public partial class Admin_huati_comment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindView();
            string tcid;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["tc_id"] != null)
                    {
                        tcid = Request.QueryString["tc_id"].ToString();
                        Topic_CommentManager.delete(tcid);
                        BindView();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功!');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }
        protected void BindView()
        {
            ListView1.DataSource = Topic_CommentManager.admin_tc();
            ListView1.DataBind();
        }
    }
}