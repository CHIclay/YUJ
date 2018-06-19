using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user_name"] != null)
                {
                    lblName.Text = Session["user_name"].ToString();
                    panelUser.Visible = true;
                    panelLR.Visible = false;
                }
                else
                {
                    panelLR.Visible = true;
                    panelUser.Visible = false;
                }
            }
        }

        protected void lbExit_Click(object sender, EventArgs e)
        {
            Session["user_name"] = null;
            Response.Redirect("index.aspx");
        }
    }
}