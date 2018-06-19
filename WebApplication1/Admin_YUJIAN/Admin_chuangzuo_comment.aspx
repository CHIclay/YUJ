<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_chuangzuo_comment.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_chuangzuo_comment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="position:relative;width:1080px;height:auto;margin:0 auto;">
        <div>
   <div style="padding-top:20px;">
             <a href="Admin_chuangzuo.aspx"><h3>创作管理</h3></a>
        </div>
              <div style="text-align:center;"><h2>创作评论列表</h2></div>
            <table  style="width:100%;height:auto;">
            <thead>
                <tr> <th >创作评论ID</th>
                    <th >用户名</th>
                    <th >创作名</th>
                    <th >评论内容</th>
                    <th >评论时间</th>
                   
                </tr>
            </thead>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                
                    <tbody >
                        <tr style="height:auto;text-align:center;border:groove;background-color:#f6f6f1">
                              <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("wc_id") %>'></asp:Label></td>
                           
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="username" runat="server" Text='<%# Eval("user_name") %>'></asp:Label></td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="bookname" runat="server" Text='<%# Eval("wri_name") %>'></asp:Label></td>
                                <td style="width:25%;border-bottom: 3px solid #e4e4e4;">
                                 <asp:TextBox ID="plshuru" runat="server" TextMode="MultiLine" Height="120px" Width="260px" Text='<%#Eval("wc_mess") %>'></asp:TextBox></td>
                             <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                  <asp:Label ID="time" runat="server" Text='<%# Eval("wc_time") %>'></asp:Label>
                                </td>
                            <td style="text-align: center;border-bottom: 3px solid #e4e4e4;">
                                 <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("wc_id")%>' />
                              <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_chuangzuo_comment.aspx?wc_id="+ Eval("wc_id")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> 
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
