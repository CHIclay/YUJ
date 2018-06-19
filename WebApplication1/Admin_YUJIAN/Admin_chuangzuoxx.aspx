<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_chuangzuoxx.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_chuangzuoxx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
           #contentpage{
              position:relative;
            width:1080px;       
            height:auto;
            margin:0 auto;
            border:1px #dce0c5;
            border-radius:8px;
            margin-top:10px;
           }

       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contentpage" style="height:auto;" >
        <div>
            <a href="Admin_chuangzuo.aspx">返回创作管理</a>
        </div>
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div>
              <div style="text-align:left;"><h2><asp:Label ID="Label2" runat="server" style="height:50px;width:200px;" Text='<%#Eval ("wri_name") %>'/></h2>
<div style="float:right;">
          <asp:Label ID="Label3" runat="server" style="height:50px;width:200px;" Text='<%#Eval ("wri_time") %>'/></div>
        </div> 
              </div> 
        
            <div style="float:left;height:auto;width:auto;padding-left:20px;">
           
            <asp:image id="image1" runat="server" Height=530px Width=390px  imageurl='<%#Eval("wri_image") %>'/></div>
        
       
       <div style="width:1080px;height:auto;margin-top:15px;padding-top:530px;"><asp:Label runat="server" ID="Label4" style="height:180px;width:1080px;" Text='<%#Eval ("wri_mess") %>'></asp:Label>
           <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>
        </div>
       
    </div>
        </ItemTemplate>

    </asp:Repeater>
        </div>
    </div>
</asp:Content>
