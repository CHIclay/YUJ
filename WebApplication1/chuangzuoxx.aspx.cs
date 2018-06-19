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
    public partial class chuangzuoxx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!IsPostBack)
                {
                    bind();
                }
                BingWC();
                
            }
        }
        
        protected void bind()
        {
            Repeater1.DataSource =WriteManager.Swirid(int.Parse(Request.QueryString["wri_id"]));
            Repeater1.DataBind();
        }
        protected void BingWC()
        {
            int write_id=Convert.ToInt32(Request.QueryString["wri_id"].ToString());
            DataTable wc = Write_CommentManager.plwri(write_id);
            if(wc!=null)
            {
                ListView1.DataSource = wc;
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

        protected void plfabu_Click(object sender, EventArgs e)
        {
            Button bt = (Button)sender;
            if (Session["user_name"] != null)
            {
                try
                {
                    Write_Comment wc = new Write_Comment();
                    wc.Wc_user_id1 = int.Parse(Session["user_id"].ToString());
                    wc.Wc_wri_id1 = Convert.ToInt32(Request.QueryString["Wri_id"].ToString());
                    wc.Wc_mess1 = plshuru.Text;
                    wc.Wc_time1 = DateTime.Now;
                    if (Write_CommentManager.write_comment(wc)==1)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('回复成功');</script>");
                        plshuru.Text = "";
                        BingWC();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button bt = (Button)sender;
            if(Session["user_name"]!=null)
            {
                try
                {
                    Write_Keep wk1 = new Write_Keep();
                    wk1.Wk_user_id1= int.Parse(Session["user_id"].ToString());
                    wk1.Wk_wri_id1= Convert.ToInt32(Request.QueryString["wri_id"].ToString());
                    wk1.Wk_time1 = DateTime.Now;
                    if(Write_KeepManager.scchuangzuo(wk1)==1)
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