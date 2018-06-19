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
    public partial class shudan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["user_name"] != null)
            {

          
            CKFinder.FileBrowser fileBrowser = new CKFinder.FileBrowser();
            fileBrowser.BasePath = "../ckfinder/";  //设置CKFinder的基路径     
            BindList();  
            panel_a.Visible = true;
            ViewState["id"] = Convert.ToInt32(Request.QueryString["id"]);
            Choose();
            Bingshoucang();
            BingMyList();
            }
            else
            {
                //Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请先登录！');</script>");
                CKFinder.FileBrowser fileBrowser = new CKFinder.FileBrowser();
                fileBrowser.BasePath = "../ckfinder/";  //设置CKFinder的基路径     
                BindList();
                panel_a.Visible = true;
                ViewState["id"] = Convert.ToInt32(Request.QueryString["id"]);
                Choose();
            }
            string list1id;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["list1_id"] != null)
                    {
                        list1id = Request.QueryString["list1_id"].ToString();
                        List1Manager.delete(list1id);
                        BingMyList();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功!');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
            string lkid;
            if(!IsPostBack)
            {
                try
                {
                    if(Request.QueryString["lk_id"] != null)
                    {
                        lkid = Request.QueryString["lk_id"].ToString();
                        List_KeepManager.delete(lkid);
                        Bingshoucang();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功!');</script>");
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }
        private void Choose()
        {
            switch (ViewState["id"].ToString())
            {

                case "1": panel_a.Visible = true; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = false; break;
                case "2": panel_a.Visible = false; panel_b.Visible = true; panel_c.Visible = false; panel_d.Visible = false; break;
                case "3": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = true; panel_d.Visible = false; break;
                case "4": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = true; break;

                default: break;
            }
        }

        protected void BindList()
        {
            list_view.DataSource = List1Manager.alllist();
            list_view.DataBind();
        }


        protected void BingMyList()
        {
            int list_user_id = int.Parse(Session["user_id"].ToString());
            DataTable ml = List1Manager.mylist(list_user_id);
            if(ml!=null)
            {
                mylist.DataSource = ml;
                mylist.DataBind();
            }
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button bt = (Button)sender;
            if (Session["user_name"] != null)
            {
                try
                {
                    List1 list1 = new List1();
                    list1.List1_user_id1 = int.Parse(Session["user_id"].ToString());
                    list1.List1_name1 = txtTitle1.Text.Trim();
                    list1.List1_mess1 = shudannr.Text.Trim();
                    list1.List1_time1 = DateTime.Now;
                    if (FileUpload_img.HasFile)
                    {
                        string filePathImg = FileUpload_img.PostedFile.FileName;
                        string fileNameImg = filePathImg.Substring(filePathImg.LastIndexOf("\\") + 1);
                        string serverpathImg = Server.MapPath(@"~\List_image\") + fileNameImg;
                        string relativepathImg = @"~\List_image\" + fileNameImg;
                        FileUpload_img.PostedFile.SaveAs(serverpathImg);
                        list1.List1_image1 = relativepathImg;
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请添加截屏照片！');</script>");
                        return;
                    }
                    if (List1Manager.listtianjia(list1)==1)
                    {
                        txtTitle1.Text = "";

                        shudannr.Text = "";
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('发表成功');</script>");

                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('发表失败');</script>");
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

      
        protected void Bingshoucang()
        {
            try
            {
                int user_id=int.Parse(Session["user_id"].ToString());
                DataTable ui = List_KeepManager.ckshoucang(user_id);
                if(ui!=null)
                {
                    shoucanglist.DataSource = ui;
                    shoucanglist.DataBind();
                }
            }
            catch(Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }
        }



    }
}
