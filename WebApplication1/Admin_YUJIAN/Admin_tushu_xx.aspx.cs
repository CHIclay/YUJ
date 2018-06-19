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
    public partial class Admin_tushu_xx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CKFinder.FileBrowser fileBrowser = new CKFinder.FileBrowser();
            fileBrowser.BasePath = "../ckfinder/";  //设置CKFinder的基路径  
            fileBrowser.SetupCKEditor(txtContent);
            
            if (!IsPostBack)
            {

                if (Request.QueryString["book_name"] != null)
                {
                    
                    string name = Request.QueryString["book_name"].ToString().Trim();
                    SqlDataReader dt = BookManager.select(name);
                    dt.Read();
                    if (dt != null)
                    {
                        txtName.Text = dt[1].ToString().Trim();
                        txtIntr.Text = SplitChar(dt[6].ToString().Trim(),20);
                        txtType.Text = SplitChar(dt[4].ToString().Trim(),20);
                        Image1.ImageUrl = dt[3].ToString();
                        txtMess1.Text =dt[2].ToString();
                    }
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Book book = new Book();
            book.Book_name1 = txtName1.Text.Trim();
            book.Book_mess1 = txtContent.Text.Trim();
            book.Book_type1 = DropDownList1.SelectedValue;
            book.Book_intr1 = txtIntr1.Text.Trim();
            
            
                if (FileUpload_img.HasFile)
               {

                string filePathImg = FileUpload_img.PostedFile.FileName;
                string fileNameImg = filePathImg.Substring(filePathImg.LastIndexOf("\\") + 1);
                string serverpathImg = Server.MapPath(@"~/Images/") + fileNameImg;
                string relativepathImg = @"~/Images/" + fileNameImg;
                FileUpload_img.PostedFile.SaveAs(serverpathImg);
                book.Book_image1 = relativepathImg;
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请添加图书封面！');</script>");
                return;
            }
            try
            {
                if (BookManager.update(book) == 1)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('修改成功！');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('修改失败！');</script>");


                }
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }
        }
    }
}