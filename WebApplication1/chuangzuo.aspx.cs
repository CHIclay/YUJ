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
    public partial class chuangzuo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CKFinder.FileBrowser fileBrowser = new CKFinder.FileBrowser();
            fileBrowser.BasePath = "../ckfinder/";  //设置CKFinder的基路径  
            fileBrowser.SetupCKEditor(txtContent);
            Bindwrite();

            BingWW();
            Bingshoucang();
            panel_a.Visible = true;
            ViewState["id"] = Convert.ToInt32(Request.QueryString["id"]);
            Choose();
            string wriname;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["wri_name"] != null)
                    {
                        wriname = Request.QueryString["wri_name"].ToString();
                        WriteManager.delete(wriname);
                        BingWW();
                        Bindwrite();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功!');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
            string wkid;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["wk_id"] != null)
                    {
                        wkid = Request.QueryString["wk_id"].ToString();
                        Write_KeepManager.delete(wkid);
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

                case "1": panel_a.Visible = true; panel_b.Visible = false; panel_c.Visible = false;panel_d.Visible = false; break;
                case "2": panel_a.Visible = false; panel_b.Visible = true; panel_c.Visible = false; panel_d.Visible = false; break;
                case "3": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = true; panel_d.Visible = false; break;
                case "4": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = true; break;

                default: break;
            }
        }
        //protected void Bindhuati()
        //{
        //    huatiView.DataSource = TopicManager.alltop();
        //    huatiView.DataBind();
        //}
        protected void Bindwrite()
        {
            writeView.DataSource = WriteManager.allwri();
            writeView.DataBind();
        }
       
        protected string SplitChar(string sObj, int intLen)
        {
            if (sObj.Length > intLen)
            {
                return sObj.Substring(0, intLen) + "…";
            }
            return sObj;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button bt = (Button)sender;
            if (Session["user_name"] != null)
            {
                try
                {
                    Write write = new Write();
                    write.Wr_user_id1 = int.Parse(Session["user_id"].ToString());
                    write.Wri_name1 = txtTitle1.Text.Trim();
                    write.Wri_mess1 = txtContent.Text;

                    //write.Wri_iamge1 = @"~/Write_image/" + FileUpload_img.PostedFile.FileName;
                    write.Wri_time1 = DateTime.Now;

                    if (FileUpload_img.HasFile)
                    {

                        string filePathImg = FileUpload_img.PostedFile.FileName;
                        string fileNameImg = filePathImg.Substring(filePathImg.LastIndexOf("\\") + 1);
                        string serverpathImg = Server.MapPath(@"~/Write_image/") + fileNameImg;
                        string relativepathImg = @"~/Write_image/" + fileNameImg;
                        FileUpload_img.PostedFile.SaveAs(serverpathImg);
                        write.Wri_image1 = relativepathImg;
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请添加截屏照片！');</script>");
                        return;
                    }


                    if (WriteManager.addwri(write) == 1)
                    {
                        txtContent.Text = "";
                        txtTitle1.Text = "";
                        
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

        protected void BingWW()
        {
            if(Session["user_name"] != null)
            {
                try
                {
                    int user_id = int.Parse(Session["user_id"].ToString());
                    DataTable ui =WriteManager.wdwrite(user_id);
                if (ui != null)
                {
                ListView2.DataSource = ui;
                ListView2.DataBind();
                }

                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            }
        }

        protected void Bingshoucang()
        {
            if (Session["user_name"] != null)
            {
                try
                {
                    int user_id= int.Parse(Session["user_id"].ToString());
                    DataTable ui = Write_KeepManager.ckshoucang(user_id);
                    if (ui != null)
                    {
                        shoucangwrite.DataSource = ui;
                        shoucangwrite.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("错误原因：" + ex.Message);
                }
            
            }
        }
        

    }
}