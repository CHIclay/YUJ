<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_tushu_neirong.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_tushu_neirong" %>
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
        <a href="Admin_tushu.aspx">返回图书管理</a>
        <div style="text-align:center">
            <asp:Label ID="Label1" runat="server" ></asp:Label>
        </div>
        <div style="width:1080px;height:auto;">
            <asp:Label ID="Label2" runat="server" Heiht="auto"></asp:Label>
            
        </div>
    </div>
</asp:Content>
