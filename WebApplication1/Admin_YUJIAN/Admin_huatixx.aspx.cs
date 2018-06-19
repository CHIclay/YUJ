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
    public partial class Admin_huatixx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.QueryString["top_id"] != null)
            {
                BindView();

            }
        }
        protected void BindView()
        {
            Repeater1.DataSource = TopicManager.Stopid(int.Parse(Request.QueryString["top_id"]));
            Repeater1.DataBind();
        }


    }
}