<%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true" CodeBehind="Yuedu.aspx.cs" Inherits="WebApplication1.Yuedu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        #contentPage
        {
            position:relative;
            width:1080px;
            height:auto;
            margin:0 auto;
            border:1px #dce0c5;
            border-radius:8px;
            margin-top:50px;
        }
       </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contentPage">
         
        <a href="tushu.aspx">返回图书界面</a>
        <div style="text-align:center">
            <asp:Label ID="Label1" runat="server" ></asp:Label>
        </div>
        <div style="width:1080px;height:auto;">
            <asp:Label ID="Label2" runat="server"></asp:Label>
            
        </div>
    </div>
</asp:Content>
