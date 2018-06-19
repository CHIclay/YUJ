    <%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_yonghu_update.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_yonghu_update" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div style=" position:relative;width:1080px;height:auto;margin:0 auto;">
                <div class="box round first grid" > <h2 style="text-align:center;">
                    <asp:Label ID="Label1" runat="server" Text="用户信息修改" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
               </h2>
                <table style="width:100%;padding-left:300px;text-align:center;" >
                    <tr style="margin-top:20px;">
                        <td>原用户名：</td>
                        <td><asp:Label ID="txtName" runat="server"></asp:Label></td>
                        <td>新用户名：</td>
                        <td><asp:TextBox ID="txtName1" runat="server"></asp:TextBox></td>
                        <td>
                        
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="用户不能为空" ControlToValidate="txtName1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                
                    <tr style="margin-top:20px;">
                        <td>原密码：</td>
                        <td><asp:Label ID="txtPassword" runat="server"></asp:Label></td>
                        <td>新密码：</td>
                        <td><asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox></td>
                        <td>
                       
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="密码不能为空" ControlToValidate="txtPassword1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      <tr style="margin-top:20px;">
                        <td>原邮箱：</td>
                        <td><asp:Label ID="txtEmail" runat="server"></asp:Label></td>
                        <td>新邮箱：</td>
                        <td><asp:TextBox ID="txtEmail1" runat="server"></asp:TextBox></td>
                        <td>
                       
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="邮箱不能为空" ControlToValidate="txtTel1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="margin-top:20px;">
                        <td>原电话号码：</td>
                        <td><asp:Label ID="txtTel" runat="server"></asp:Label></td>
                        <td>新电话：</td>
                        <td><asp:TextBox ID="txtTel1" runat="server"></asp:TextBox></td>
                        <td>
                       
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="电话不能为空" ControlToValidate="txtTel1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="margin-left:20px;">
                        <td>性别：</td>
                        <td><asp:Label ID="Sex" runat="server" ></asp:Label></td>
                        <td>新性别</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList_sex" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0">男</asp:ListItem>
                            <asp:ListItem Value="1">女</asp:ListItem>
                        </asp:RadioButtonList>   
                        </td>
                    
                    </tr>
                
                </table>
                 <div style="padding-left:300px;" >
                     <asp:Button ID="Button1" runat="server" Text="修改" Height="36px" Width="82px"  CssClass="btn btn-success" Font-Size="12" OnClick="Button1_Click" />
                 </div>
                      <div class="container">
            <div class="title_top" style="text-align:center;">   
                    <asp:Label ID="Label4" runat="server" Text="用户列表管理" Font-Size="18" Font-Names="微软雅黑"></asp:Label>
                </div>
            <table  class="data display datatable" id="example" style="padding-left:288px;">
                <thead>
                    <tr>
                        <th >用户名</th>
                        <th >密码</th>
                        <th>邮箱</th>
                        <th >电话</th>
                        <th>性别</th>
                   
                    </tr>
                </thead>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <tbody>
                            <tr class="odd gradeX" style="text-align:center;padding-top:20px;background-color:#f6f6f1">
                                <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                    <asp:HyperLink ID="name"  runat="server" ForeColor="Black" CssClass="text" Text='<%# Eval("user_name") %>'></asp:HyperLink>
                                  </td>
                                <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                    <asp:Label ID="pwd" runat="server" Text='<%# Eval("user_pwd") %>'></asp:Label></td>
                                <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                    <asp:Label ID="email" runat="server" Text='<%# Eval("user_email") %>'></asp:Label></td>
                                  <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                    <asp:Label ID="phone" runat="server" Text='<%# Eval("user_phone") %>'></asp:Label></td>
                                    <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                    <asp:Label ID="sex" runat="server" Text='<%# Eval("user_sex") %>'></asp:Label></td>
                                
                               
                            
                            </tr>
                        </tbody>
                    </ItemTemplate>

                </asp:ListView>
            </table>

              <div class="clearfix"></div>  
     <div class="sxy">  
  
     <span id="totalPage" runat="server"></span>  
       <asp:DataPager  runat="server"  PagedControlID="ListView1" PageSize="9" ID="DDPager" >  
        <Fields>  
            <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
            <asp:NumericPagerField  ButtonCount="4"  />  
            <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
        </Fields>  
       </asp:DataPager>           
     </div>  
        </div>
            </div>
               </div>
    </asp:Content>
