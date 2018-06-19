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
    public partial class Admin_shudan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindView();
            string list1id;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["list1_id"] != null)
                    {
                        list1id = Request.QueryString["list1_id"].ToString();
                        List1Manager.delete(list1id);
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
        protected string SplitChar(string sObj, int intLen)
        {
            if (sObj.Length > intLen)
            {
                return sObj.Substring(0, intLen) + "…";
            }
            return sObj;
        }
        protected void BindView()
        {
            topicView.DataSource = List1Manager.alllist1();
            topicView.DataBind();
        }
    }
}