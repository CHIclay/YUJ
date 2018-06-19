using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BLL;
using Models;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
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
                Bingtop8();
                Bingtop10write();
                Bingtop5top();
                Bing6top();
            }
        }

        protected void lbExit_Click(object sender, EventArgs e)
        {
            
                Session["user_name"] = null;
                Response.Redirect("index.aspx");
            
        }
        protected void Bingtop8()
        {
            DataTable top8 = BookManager.top8book();
            if(top8!=null)
            {
                top8view.DataSource = top8;
                top8view.DataBind();
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
        
        protected void Bingtop10write()
        {
            DataTable top10 = WriteManager.top10write();
            if(top10!=null)
            {
                writeView.DataSource = top10;
                writeView.DataBind();
            }
        }

        //////显示最新的5个话题
        protected void Bingtop5top()
        {
            DataTable top5 = TopicManager.top5();
            if(top5!=null)
            {
                topicView.DataSource = top5;
                topicView.DataBind();
            }
        }

        //显示最新的六个书单
        protected void Bing6top()
        {
            DataTable top6 = List1Manager.top6list();
            if(top6!=null)
            {
                listView.DataSource = top6;
                listView.DataBind();
            }
        }

    }
}