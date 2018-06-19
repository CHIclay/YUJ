<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<%@ Register Src="~/UserControl/WebBottom.ascx" TagName="bottom" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/Login.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 305px;
        }
        .auto-style2 {
            width: 352px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="Login" >
    <div id="logo" style="">
    <br />
    <a href="index.aspx" class="page">返回首页</a>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.png" style="height:52px;width:150px;"/>
    </div>

    <div id="main" style="background-color:rgba(131, 201, 190, 0.15)">
    
    <div id="mainb" class="auto-style2" style="background-color:rgba(169, 172, 160, 0.30)">
    <h2  >用户登录</h2>
    <table style="vertical-align: middle; width: 381px; margin-left: 44px;">
    <tr>
    <td>用户名</td>
    <td class="auto-style1"  >
        <asp:TextBox ID="txtName" runat="server" MaxLength="10" Height="25px" Width="200px">
        </asp:TextBox>
        <asp:RequiredFieldValidator ID="UserID1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
    </td>
    </tr>
     
    <tr style="border-top:30px;">
    <td>密码</td>
    <td class="auto-style1"><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="25px" Width="200px">
        </asp:TextBox>
        <asp:RequiredFieldValidator ID="Password2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
    </td>
    </tr>
        <tr>
            <td>验证码</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtCheckCode" runat="server"></asp:TextBox>
                 
                <asp:ImageButton ID="imgCode" runat="server" ImageUrl="~/CheckCode.aspx" OnClick="imgCode_Click" />
                
            </td>
        </tr>
    <tr>
    <td colspan="2"><asp:Button ID="loginok" runat="server" Text="登录" 
            onclick="loginok_Click" Width="279px" />
    </td> 
    </tr>
    <tr><td colspan="2"><p><a href="Register.aspx">注册</a></p></td></tr>
    </table>
    </div>
    </div>
    <div><uc1:bottom ID="bottom1" runat="server" /></div>
    </div>
    
     
    </form>
</body>
</html>
