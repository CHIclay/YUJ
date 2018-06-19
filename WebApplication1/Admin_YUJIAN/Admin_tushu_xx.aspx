<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_tushu_xx.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_tushu_xx" %>
 <%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="position:relative;width:1080px;height:auto;margin:0 auto;">
        <div>
            <table style="width:100%;">
                <tr style="margin-top:20px;">
                    <td>原书名：</td>
                    <td><asp:Label ID="txtName" runat="server"></asp:Label></td>
                    <td>新书名：</td>
                    <td><asp:TextBox ID="txtName1" runat="server"></asp:TextBox></td>
                    <td>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="图书名不能为空" ControlToValidate="txtName1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr style="margin-top:20px;">
                    <td >原简介：</td>
                    <td style="width:200px;height:100px;"><asp:Label ID="txtIntr" runat="server"></asp:Label></td>
                    <td>新简介：</td>
                    <td><asp:TextBox ID="txtIntr1" runat="server"></asp:TextBox></td>
                    <td>
                       
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="简介不能为空" ControlToValidate="txtIntr1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <tr style="margin-top:20px;">
                    <td>原类型：</td>
                    <td><asp:Label ID="txtType" runat="server"></asp:Label></td>
                    <td>新类型：</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server"  >
                            <asp:ListItem>国学经典</asp:ListItem>
                            <asp:ListItem>外国名著</asp:ListItem>
                            <asp:ListItem>诗歌散文</asp:ListItem>
                            <asp:ListItem>民国大师</asp:ListItem>
                            <asp:ListItem>现代文学</asp:ListItem>
                            <asp:ListItem>网文小说</asp:ListItem>
                        </asp:DropDownList>
                      </td>
                    
                </tr>
               <tr style="margin-top:20px;">
                    <td>原封面：</td>
                    <td>     <asp:Image ID="Image1" runat="server" /></td>
                    <td>新封面：</td>
                    <td>         <asp:FileUpload ID="FileUpload_img" runat="server" />   </td>
                    <td>
                        
                         
                    </td>
                </tr>
                <tr style="margin-top:20px;">
                    <td >原内容：</td>
                    <td style="width:200px;height:100px;"> <asp:TextBox ID="txtMess1" runat="server" TextMode="MultiLine" Height="505px" Width="388px"></asp:TextBox></td>
                    <td>新内容：</td>
                    <td><CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="../ckeditor/" DefaultLanguage="zh-cn" Width="100%" Height="262px" ></CKEditor:CKEditorControl></td>
                    <td>
                       
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="内容不能为空" ControlToValidate="txtContent"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                
            </table>
             <div >
                 <asp:Button ID="Button1" runat="server" Text="确认修改" Height="36px" Width="82px"  CssClass="btn btn-success" Font-Size="12" OnClick="Button1_Click" />
             </div>
        </div>
      
    </div>
</asp:Content>
