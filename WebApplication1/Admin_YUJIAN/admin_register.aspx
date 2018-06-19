<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="admin_register.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.admin_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>用户注册</title>
    <link href="CSS/Registereda.css" rel="Stylesheet" />
    
     <style type="text/css">
         .auto-style2 {
             width: 354px;
             margin-left: 354px;
         }
         .auto-style3 {
             width: 113px;
             height: 80px;
         }
         .auto-style4 {
             width: 113px;
             height: 63px;
         }
         .auto-style5 {
             height: 63px;
         }
         .auto-style6 {
             width: 113px;
             height: 62px;
         }
         .auto-style7 {
             height: 62px;
         }
         .auto-style8 {
             height: 80px;
         }
     </style>
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="background-color:#f6f6f1;width:1080px;position:relative;height:auto;margin:0 auto;">
             
            <h3 style="text-align:center;color:black;">
                填写注册信息</h3>
             <hr />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table   style="padding-top:2em;font-size:20px;color:black;background-color:#f0f7f9" class="auto-style2"   >
                    <tr class="he">
                        <td class="auto-style4"  >
                           管理员名
                        </td>
                        <td class="auto-style5"  >

                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入用户名"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr class="he">
                        <td class="auto-style6"  >
                            登录密码
                        </td>
                        <td class="auto-style7"  >

                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="请输入密码"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr class="he">
                        <td class="auto-style3"  >
                            确认密码
                        </td>
                        <td class="auto-style8"  >

                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="请输入确认密码"></asp:RequiredFieldValidator>

                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>

                        </td>
                    </tr>
                   
                   
                 
                    <tr>
                        <td colspan="2">

                            <asp:Button ID="Button1" runat="server" Text="注册" Width="275px" OnClick="Button1_Click" Height="33px" />

                        </td>
                    </tr>
                </table></div>
</asp:Content>
