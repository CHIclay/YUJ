<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_huatixx.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_huatixx" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div id="contentpage" style="height:auto;" >
        <div>
            <a href="Admin_huati.aspx">返回图书管理</a>
        </div>
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div>
              <div style="text-align:left;"><h2><asp:Label ID="Label2" runat="server" style="height:50px;width:200px;" Text='<%#Eval ("top_name") %>'/></h2>
    
          <asp:Label ID="Label3" runat="server" style="height:50px;width:200px;float:right;" Text='<%#Eval ("top_time") %>'/>
                  <br />话题类型：<asp:Label ID="Label1" runat="server" style="height:50px;width:200px;" Text='<%#Eval ("top_type") %>'/></div>
        <div style="float:left;padding-top:20px;padding-left:20px;"><asp:Image id="image1" Height=530px Width=390px runat="server" imageurl='<%#Eval("top_image") %>'/></div>
      
            
           </div>
        
        </div>
       <div style="width:1080px;height:auto;margin-top:15px;padding-top:530px;"><asp:Label runat="server" ID="Label4" style="height:180px;width:1080px;" Text='<%#Eval ("top_mess") %>'></asp:Label>
           <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>
        </div>
       
    </div>
        </ItemTemplate>

    </asp:Repeater>
        </div>
    </div>
</asp:Content>
