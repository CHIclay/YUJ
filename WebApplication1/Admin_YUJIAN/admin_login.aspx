<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 371px;
            margin-left: 365px;
            margin-top: 127px;
        }
        .auto-style2 {
            width: 45px;
            height: 160px;
            margin-left: 0px;
        }
        .auto-style3 {
            width: 95px;
        }
        .auto-style4 {
            width: 217px;
            height: 35px;
            margin-left: 446px;
            margin-top: 27px;
        }
    </style>
</head>
<body style="height: 583px;background-color:rgba(173, 198, 173, 0.32)">
    <form  runat="server">
       <div style="position:relative;width:1080px;height:auto;margin:0 auto;" >
    <div >
    <br />
    <a href="../index.aspx" class="page">返回首页</a>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.png" style="height:52px;width:150px;"/>
    </div>

    <div >
    
    <div  class="auto-style2">
    <div><h2  style="text-align:center;" class="auto-style4">管理员登录</h2></div>
    <table  style="padding-top:2em;font-size:20px;color:black;background-color:rgba(125, 113, 126, 0.14)" class="auto-style1" >
    <tr>
    <td class="auto-style3">管理员名</td>
    <td >
        <asp:TextBox ID="txtName" runat="server" MaxLength="10" Height="25px" Width="200px">
        </asp:TextBox>
        <asp:RequiredFieldValidator ID="UserID1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="管理员名不能为空"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td class="auto-style3">密码</td>
    <td ><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="25px" Width="200px">
        </asp:TextBox>
        <asp:RequiredFieldValidator ID="Password2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
    </td>
    </tr>
        <tr>
            <td class="auto-style3">验证码</td>
            <td>
                <asp:TextBox ID="txtCheckCode" runat="server"></asp:TextBox>
                 
                <asp:ImageButton ID="imgCode" runat="server" ImageUrl="~/CheckCode.aspx" OnClick="imgCode_Click" />
                
                <br />
                
            </td>
        </tr>
    <tr>
    <td colspan="2"><asp:Button ID="loginok" runat="server" Text="登录" 
            onclick="loginok_Click" Width="279px" />
    </td> 
    </tr>
    <tr><td colspan="2"><p><a href="admin_register.aspx">添加管理员</a></p></td></tr>
    </table>
    </div>
    </div>

    </div>
    </form>
</body>
</html>
