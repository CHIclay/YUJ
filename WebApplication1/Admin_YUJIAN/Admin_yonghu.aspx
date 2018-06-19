<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_yonghu.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_yonghu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style=" position:relative;width:1080px;height:auto;margin:0 auto;">
            <div > 
                <h2 style="text-align:center;"><asp:Label ID="Label4" runat="server" Text="用户列表管理" Font-Size="15" Font-Names="微软雅黑"></asp:Label></h2>
                 <asp:Panel runat="server" ID="panel_a" Visible="false">
                <div>
                    <table style="width:100%;">
                        <tr style="margin-top:20px;">
                            <td>用户ID：</td>
                    <td><asp:Label ID="Userid" runat="server"></asp:Label></td>
                        </tr>
                <tr style="margin-top:20px;">
                    <td>用户名：</td>
                    <td><asp:Label ID="Name" runat="server"></asp:Label></td>
                    
                </tr>
                <tr style="margin-top:20px;">
                    <td>密码：</td>
                    <td><asp:Label ID="Password" runat="server"></asp:Label></td>
                   
                </tr>
                <tr style="margin-top:20px;">
                    <td>邮箱：</td>
                    <td><asp:Label ID="Email" runat="server"></asp:Label></td>
                    
                </tr>
                          <tr style="margin-top:20px;">
                    <td>电话号码：</td>
                    <td><asp:Label ID="Phone" runat="server"></asp:Label></td>
                    
                </tr>
                <tr style="margin-left:20px;">
                    <td>性别：</td>
                    <td><asp:Label ID="Sex" runat="server" ></asp:Label></td>
                </tr>

                </table>
                    </div>
               </asp:Panel>
                 <div>
                      <table>
                     <tr>
                         <td>请输入要查询用户的昵称：</td>
                         <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                         <td class="auto-style3">
                             <asp:Button ID="Button1" runat="server" Text="查询"   Height="25px" Font-Size="12px" OnClick="Button1_Click"/> </td>        
                     </tr>
                 </table>
                </div>
           
        <table  style="width:100%;height:auto;padding-top:20px;">
            <thead>
                <tr> <th >用户ID</th>
                    <th >用户名</th>
                    <th >密码</th>
                    <th >邮箱</th>
                    <th >电话</th>
                     <th >性别</th>
                   
                </tr>
            </thead>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr style="height:auto;text-align:center;border:groove;background-color:#f6f6f1">
                              <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("user_id") %>'></asp:Label></td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:HyperLink ID="title"  runat="server" ForeColor="Black" CssClass="text" Text='<%# Eval("user_name") %>'></asp:HyperLink>
                              </td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="time" runat="server" Text='<%# Eval("user_pwd") %>'></asp:Label></td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="conentent" runat="server" Text='<%# Eval("user_email") %>'></asp:Label></td>
                                <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="img" runat="server" Text='<%# Eval("user_phone") %>'></asp:Label></td>
                             <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("user_sex") %>'></asp:Label>
                                </td>
                            <td style="text-align:center;border-bottom: 3px solid #e4e4e4;">
                                 <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("user_name")%>' />
                                   <asp:HyperLink ID="HyperLink1" runat="server"    NavigateUrl='<%#"~/Admin_YUJIAN/Admin_yonghu_update.aspx?user_name="+ Eval("user_name")%>' Height="25px" Font-Size="12px">编辑</asp:HyperLink>
                              <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_yonghu.aspx?user_name="+ Eval("user_name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> 
                            </td>
                           <%-- <td style="text-align: left">
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("Users_Name")%>' />
                                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success"  NavigateUrl='<%#"~/Admin_BMS/User_Update.aspx?usersname="+ Eval("Users_Name")%>' Height="25px" Font-Size="12px">编辑</asp:HyperLink>
                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_BMS/User_Delete.aspx?usersname="+ Eval("Users_Name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                            </td>--%>
                        </tr>
                    </tbody>
                </ItemTemplate>

            </asp:ListView>
        </table>

          <div class="clearfix"></div>  
 <div class="sxy">  
    
 <span id="totalPage" runat="server"></span>  
   <asp:DataPager  runat="server"  PagedControlID="ListView1" PageSize="10" ID="DDPager" >  
    <Fields>  
        <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
        <asp:NumericPagerField  ButtonCount="4"  />  
        <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
    </Fields>  
   </asp:DataPager>           
 </div>  
    </div>
    </div>
</asp:Content>
