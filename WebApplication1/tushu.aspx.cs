using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Models;
using BLL;

namespace WebApplication1
{
    public partial class tushu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                panel_a.Visible = true;
                ViewState["id"] = Convert.ToInt32(Request.QueryString["id"]);
                Choose();
            allbook();
            guoxue();
            waiguo();
            shige();
            minguo();
            xiandai();
            wangwen();
            //}
        }
        private void Choose()
        {
            switch (ViewState["id"].ToString())
            {

                case "1": panel_a.Visible = true; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = false;panel_e.Visible = false;panel_f.Visible = false;panel_g.Visible = false; break;
                case "2": panel_a.Visible = false; panel_b.Visible = true; panel_c.Visible = false; panel_d.Visible = false; panel_e.Visible = false; panel_f.Visible = false; panel_g.Visible = false; break;
                case "3": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = true; panel_d.Visible = false; panel_e.Visible = false; panel_f.Visible = false; panel_g.Visible = false; break;
                case "4": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = true; panel_e.Visible = false; panel_f.Visible = false; panel_g.Visible = false; break;
                case "5": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = false; panel_e.Visible = true; panel_f.Visible = false; panel_g.Visible = false; break;
                case "6": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = false; panel_e.Visible = false; panel_f.Visible = true; panel_g.Visible = false; break;
                case "7": panel_a.Visible = false; panel_b.Visible = false; panel_c.Visible = false; panel_d.Visible = false; panel_e.Visible = false; panel_f.Visible = false; panel_g.Visible = true; break;
                default: break;
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

        protected void allbook()
        {
            ListView1.DataSource = BookManager.all();
            ListView1.DataBind();
        }
        
        protected void guoxue()
        {
            ListView2.DataSource = BookManager.guoxue();
            ListView2.DataBind();
        }

        protected void waiguo()
        {
            ListView3.DataSource = BookManager.waiguo();
            ListView3.DataBind();
        }

        protected void shige()
        {
            ListView4.DataSource = BookManager.shige();
            ListView4.DataBind();
        }
        protected void minguo()
        {
            ListView5.DataSource = BookManager.minguo();
            ListView5.DataBind();
        }
        protected void xiandai()
        {
            ListView6.DataSource = BookManager.xiandai();
            ListView6.DataBind();
        }
        protected void wangwen()
        {
            ListView7.DataSource = BookManager.wangluo();
            ListView7.DataBind();
        }




    }
}