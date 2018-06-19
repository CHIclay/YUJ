<%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true" CodeBehind="shudantj.aspx.cs" Inherits="WebApplication1.shudantj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        #contentPage
        {
            position:relative;
            width:1080px;
            height:1100px;
            margin:0 auto;
            border:1px #dce0c5;
            border-radius:8px;
            margin-top:50px;
        }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contentPage" style="background-color:#f5f5f5;">
         <a href="tushu.aspx">返回图书界面</a>
        <div style="margin-left:500px;margin-top:100px;background-color:#f6f6f1">
            <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="list1_name" DataValueField="list1_name"></asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="确认收藏" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
