using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Web.UI.HtmlControls;
using BLL;
using Models;
using System.Data.SqlClient;

namespace WebApplication1.Admin_YUJIAN
{
    public partial class Admin_tushu_neirong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int name;
            if (Request.QueryString["book_id"] != null)
            {
                name = Convert.ToInt32(Request.QueryString["book_id"].ToString());
                SqlDataReader dt = BookManager.IDselcet(name);
                dt.Read();
                if (dt != null)
                {
                    Label1.Text = dt[1].ToString().Trim();
                    Label2.Text = dt[2].ToString().Trim();

                }

            }
        }
    }
}