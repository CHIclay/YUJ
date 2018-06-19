<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register" %>
<%@ Register Src="~/UserControl/WebBottom.ascx" TagName="bottom" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户注册</title>
    <link href="CSS/Registereda.css" rel="Stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            height: 30px;
            width: 331px;
        }
        .auto-style2 {
            width: 1074px;
        }
        .auto-style3 {
            width: 387px;
            margin-left: 375px;
        }
        .auto-style4 {
            width: 162px;
        }
        .auto-style5 {
            height: 30px;
            width: 162px;
        }
        .auto-style6 {
            width: 331px;
        }
    </style>
    
    </head>
<body>
    <form id="form1" runat="server">
     
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        
        <div id="registered"  >
            
      <span  > 
          <a href="index.aspx" style="text-decoration:none;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.png" style="height:52px;width:150px;align-content:center;"/>

          </a>
            </span>
            <a href="index.aspx"  style="float:right;text-decoration:none;">返回首页</a><br />
         
        <div style="border-top:double;height:800px;width:1080px;background-color:rgba(185, 206, 206, 0.45)" class="auto-style2"> 
        <div>
             
            <h3 style="text-align:center;color:white;">填写注册信息</h3>
             
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table   style="padding-top:2em;font-size:20px;background-color:rgba(105, 147, 171, 0.51)" class="auto-style3"   >
                    <tr class="he">
                        <td class="auto-style4"  >
                            用户名
                        </td>
                        <td class="auto-style6"  >

                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入用户名"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr class="he">
                        <td class="auto-style4"  >
                            登录密码
                        </td>
                        <td class="auto-style6"  >

                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="请输入密码"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr class="he">
                        <td class="auto-style4"  >
                            确认密码
                        </td>
                        <td class="auto-style6"  >

                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入确认密码"></asp:RequiredFieldValidator>

                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>

                        </td>
                    </tr>
                    <tr class="he">
                        <td class="auto-style4"  >
                            性别&nbsp;
                        </td>
                        <td class="auto-style6" >

                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="请选定性别"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr class="he">
                        <td class="auto-style4" >
                            邮箱
                        </td>
                        <td class="auto-style6"  >

                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="请输入邮箱"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="您输入的邮箱格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                        </td>
                    </tr>
                    <tr class="he">
                        <td class="auto-style5"  >
                            电话号码
                        </td>
                        <td class="auto-style1"  >

                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="请输入电话号码"></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="号码格式不正确" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>

                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">

                            <asp:Button ID="Button1" runat="server" Text="注册" Width="334px" OnClick="Button1_Click" Height="26px" />

                        </td>
                    </tr>
                </table></div>
       
        <div style="position:fixed !important;bottom:0px;position:absolute;">
            <uc1:bottom ID="bottom1" runat="server" />
        </div>
       </div>
        </div>
    </form>
</body>
</html>
