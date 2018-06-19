<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_tushu_comment.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_tushu_comment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="position:relative;width:1080px;height:auto;margin:0 auto;">
        <div> <div style="padding-top:20px;padding-bottom:20px;height:20px;width:120px;"><a href="Admin_tushu.aspx"><h3>图书管理</h3></a></div></div>
        <div>
            <h2 style="text-align:center;">图书评论</h2>
        </div>
        <div style="padding-top:20px;padding-bottom:20px;">
            <table  style="width:100%;height:auto;">
            <thead>
                <tr> <th >图书评论ID</th>
                    <th >用户名</th>
                    <th >评论图书</th>
                    <th >评论内容</th>
                    <th >评论时间</th>
                   
                </tr>
            </thead>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr style="height:auto;text-align:center;border:groove;background-color:#f6f6f1">
                              <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("bc_id") %>'></asp:Label></td>
                           
                            <td style="width:25%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="username" runat="server" Text='<%# Eval("user_name") %>'></asp:Label></td>
                            <td style="width:25%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="bookname" runat="server" Text='<%# Eval("book_name") %>'></asp:Label></td>
                                <td style="width:20%;border-bottom: 3px solid #e4e4e4;">
                                     <asp:TextBox ID="plshuru" runat="server" TextMode="MultiLine" Height="58px" Width="101px" Text='<%#Eval("bc_mess") %>'></asp:TextBox>
                            </td>
                             <td style="width:10%;border-bottom: 3px solid #e4e4e4;">
                                  <asp:Label ID="time" runat="server" Text='<%# Eval("bc_time") %>'></asp:Label>
                                </td>
                            <td style="text-align: right;border-bottom: 3px solid #e4e4e4;text-align:center;">
                                 <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("bc_id")%>' />
                              <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_tushu_comment.aspx?bc_id="+ Eval("bc_id")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> 
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
        </div>
         <asp:DataPager  runat="server"  PagedControlID="ListView1" PageSize="10" ID="DDPager" >  
    <Fields>  
        <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
        <asp:NumericPagerField  ButtonCount="4"  />  
        <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
    </Fields>  
   </asp:DataPager> 

    </div>
</asp:Content>
