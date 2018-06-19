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
    public partial class Admin_tushu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CKFinder.FileBrowser fileBrowser = new CKFinder.FileBrowser();
            fileBrowser.BasePath = "../ckfinder/";  //设置CKFinder的基路径  
            fileBrowser.SetupCKEditor(txtContent);
            BindView();
            string bookname;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["book_name"] != null)
                    {
                        bookname = Request.QueryString["book_name"].ToString();
                        BookManager.delete(bookname); 
                        BindView();
                        Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('删除成功！');</script>");
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
            bookView.DataSource = BookManager.allbook();
            bookView.DataBind();
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
            book.Book_name1 = txtTitle1.Text.Trim();
            book.Book_intr1 = TextBox1.Text.Trim();
            book.Book_type1 = DropDownList1.SelectedValue;
            book.Book_mess1 = txtContent.Text.Trim();
          
            book.Book_time1 = DateTime.Now;
            //book.Book_image1= @"~/Images/" + FileUpload_img.PostedFile.FileName;
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
                Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('请添加截屏照片！');</script>");
                return;
            }
            try
            {
                if (BookManager.insert(book) == 1)
                {
                    txtContent.Text = "";
                    txtTitle1.Text = "";
                    TextBox1.Text = "";
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Object), "alert", "<script>alert('添加成功！');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(object), "alert", "<script>alert('添加失败！');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("错误原因：" + ex.Message);
            }
            BindView();
        }
    }
}