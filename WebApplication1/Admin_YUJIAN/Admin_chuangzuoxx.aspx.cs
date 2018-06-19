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
    public partial class Admin_chuangzuoxx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["wri_id"] != null)
            {
                BindView();

            }
        }
        protected void BindView()
        {
            Repeater1.DataSource = WriteManager.Swirid(int.Parse(Request.QueryString["wri_id"]));
            Repeater1.DataBind();
        }
    }
}