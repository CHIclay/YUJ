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
        public partial class shudanxxx : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    bind();

                }
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
                    bind();

                }



                BingLS();
            }
            protected void bind()
            {
                Repeater1.DataSource = List1Manager.listmess(Request.QueryString["list1_name"]);
                Repeater1.DataBind();
            }


            protected void BingLS()
            {
                string list1_name = Request.QueryString["list1_name"].ToString();
                DataTable lx = List_book_keepManager.listtushu(list1_name);
                if (lx != null)
                {
                    ListView1.DataSource = lx;
                    ListView1.DataBind();
                }
            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                Button bt = (Button)sender;
                if (Session["user_name"] != null)
                {
                    try
                    {
                        List_Keep lk1 = new List_Keep();
                        lk1.Lk_user_id1 = int.Parse(Session["user_id"].ToString());
                        lk1.Lk_list_name1 = Request.QueryString["list1_name"].ToString();
                        lk1.Lk_time1 = DateTime.Now;
                        if (List_KeepManager.scshudan(lk1) == 1)
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