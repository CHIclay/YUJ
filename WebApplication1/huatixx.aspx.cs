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
        public partial class huatixx : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    if(!IsPostBack)
                    {
                        bind();
                        //DataTable topid =TopicManager.Stopid(topid);
                        //topview.DataSource = topid;
                        //topview.DataBind();
                    }
                    BingTC();
                }
            }
            protected void bind()
            {
                Repeater1.DataSource = TopicManager.Stopid(int.Parse(Request.QueryString["top_id"]));
                Repeater1.DataBind();
            }

            protected void BingTC()
            {
                int topic_id = Convert.ToInt32(Request.QueryString["top_id"].ToString());
                DataTable tc = Topic_CommentManager.pltop(topic_id);
                if (tc != null)
                {
                    ListView1.DataSource = tc;
                    ListView1.DataBind();
                }

            }

            protected void plfabu_Click(object sender, EventArgs e)
            {
                Button bt = (Button)sender;
                if (Session["user_name"] != null)
                {
                    try
                    {

                        Topic_Comment tc = new Topic_Comment();

                        tc.Tc_user_id1 = int.Parse(Session["user_id"].ToString());

                        tc.Tc_top_id1 = Convert.ToInt32(Request.QueryString["Top_id"].ToString());
                        tc.Tc_mess1 = plshuru.Text;
                        tc.Tc_time1 = DateTime.Now;
                        if (Topic_CommentManager.topic_comment(tc) == 1)
                        {
                            Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('回复成功');</script>");
                            plshuru.Text = "";
                            BingTC();
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
        }
    }