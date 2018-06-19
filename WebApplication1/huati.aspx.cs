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
    public partial class huati : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CKFinder.FileBrowser fileBrowser = new CKFinder.FileBrowser();
            fileBrowser.BasePath = "../ckfinder/";  //设置CKFinder的基路径  
            fileBrowser.SetupCKEditor(txtContent);
            Bindhuati();
            Bindtopctwx();
            BindTopxdww();
            BindTopwlkh();
            BindTopqcxs();
            panel_a.Visible = true;
            ViewState["id"] = Convert.ToInt32(Request.QueryString["id"]);
            Choose();
        }
        private void Choose()
        {
            switch (ViewState["id"].ToString())
            {

                case "1": panel_a.Visible = true; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = false; panel_e.Visible = false;panel_f.Visible = false;  break;
                case "2": panel_a.Visible = false; panel_b.Visible = true; panel_c.Visible = false; panel_d.Visible = false; panel_e.Visible = false; panel_f.Visible = false; break;
                case "3": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = true; panel_d.Visible = false; panel_e.Visible = false; panel_f.Visible = false; break;
                case "4": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = true; panel_e.Visible = false;panel_f.Visible = false; break;
                case "5": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = false; panel_e.Visible = true; panel_f.Visible = false; break;
                case "6": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = false; panel_e.Visible = false; panel_f.Visible = true; break;
                default: break;
            }
        }
        protected void Bindhuati()
        {
            huatiView.DataSource = TopicManager.alltop();
            huatiView.DataBind();
        }
        protected string SplitChar(string sObj, int intLen)
        {
            if (sObj.Length > intLen)
            {
                return sObj.Substring(0, intLen) + "…";
            }
            return sObj;
        }
        protected void Bindtopctwx()
        {
            huatiView2.DataSource = TopicManager.topctwx();
            huatiView2.DataBind();
        }
        protected void BindTopxdww()
        {
            huatiView3.DataSource = TopicManager.topxdww();
            huatiView3.DataBind();
        }
        protected void BindTopwlkh()
        {
            huatiView4.DataSource = TopicManager.topwlkh();
            huatiView4.DataBind();
        }
        protected void BindTopqcxs()
        {
            huatiView5.DataSource = TopicManager.topqcxs();
            huatiView5.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button bt = (Button)sender;
            if (Session["user_name"] != null)
            {
                try
                {
                    Topic topic = new Topic();
                    topic.Us_user_id1= int.Parse(Session["user_id"].ToString());
                    topic.Top_name1 = txtTitle1.Text.Trim();
                    topic.Top_mess1 = txtContent.Text;
                    //topic.Top_image1 = @"~/Topic_image/" + FileUpload_img.PostedFile.FileName;
                    topic.Top_type1 = DropDownList1.SelectedValue;
                    topic.Top_time1 = DateTime.Now;

                    if (FileUpload_img.HasFile)
                    {

                        string filePathImg = FileUpload_img.PostedFile.FileName;
                        string fileNameImg = filePathImg.Substring(filePathImg.LastIndexOf("\\") + 1);
                        string serverpathImg = Server.MapPath(@"~\Topic_image\") + fileNameImg;
                        string relativepathImg = @"~\Topic_image\" + fileNameImg;
                        FileUpload_img.PostedFile.SaveAs(serverpathImg);
                        topic.Top_image1 = relativepathImg;
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请添加截屏照片！');</script>");
                        return;
                    }


                    if (TopicManager.addht(topic) == 1)
                    {
                        txtContent.Text = "";
                        txtTitle1.Text = "";
                        Bindhuati();
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Search();
            txtSearch.Text = "";
        }

        public void Search()
        {
            string keys = txtSearch.Text.Trim();
            DataTable dt =TopicManager.selectkeys(keys);
            if (dt != null && dt.Rows.Count != 0)
            {
                huatiView.DataSource = dt;
                huatiView.DataBind();
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "false", "<script>alert('没有找着相关内容！')</script>");
            }
        }
    }
}