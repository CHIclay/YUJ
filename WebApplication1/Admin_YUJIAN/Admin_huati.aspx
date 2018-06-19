<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_huati.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_huati" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="position:relative;width:1080px;height:auto;margin:0 auto;">
                 <div style=""> <h3><a href="Admin_huati_comment.aspx">话题评论管理</a></h3></div> 
        <div style="text-align:center;"><h2>话题列表</h2></div>
        <div style="height:auto;">
            <table  style="width:100%;height:auto;">
            <thead>
                <tr> <th >ID</th>
                    <th>话题发表人</th>
                    <th >话题名</th>
                    <th >话题封面</th>
                    <th >话题类型</th>
                    <th >话题时间</th>
                    
                    <th>话题内容</th>
                   
                </tr>
            </thead>
            <asp:ListView ID="topicView" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr style="height:auto;text-align:center;border:groove;background-color:#f6f6f1">
                              <td style="width:5%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="id" runat="server" Text='<%# Eval("top_id") %>'></asp:Label></td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="name" runat="server" Text='<%# Eval("user_name") %>'></asp:Label></td>
                              </td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("top_name") %>'></asp:Label>
                            </td>
                              </td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Image ID="Image1" runat="server" Height="133px" Width="80px" ImageUrl='<%#Eval("top_image") %>'/></td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="type" runat="server" Text='<%# Eval("top_type") %>'></asp:Label>
                            </td>
                                <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="time" runat="server" Text='<%# Eval("top_time") %>'></asp:Label></td>
                           <%--  <td style="width:15%;">
                                 <asp:TextBox ID="plshuru" runat="server" TextMode="MultiLine" Height="88px" Width="101px" Text='<%#Eval("book_intr") %>'></asp:TextBox>
                                 
                                </td>--%>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                   <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"Admin_huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"标题:  "+ SplitChar(Eval("top_mess").ToString(),20) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                
                                </td>
                            <td style="text-align: center;border-bottom: 3px solid #e4e4e4;">
                                 <%--<asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("top_id")%>' /> --%>
                                 <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("top_name")%>' /> 
                                 <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_huati.aspx?top_name="+ Eval("top_name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                                 <%--  <asp:HyperLink ID="HyperLink1" runat="server"    NavigateUrl='<%#"~/Admin_YUJIAN/Admin_tushu_xx.aspx?book_name="+ Eval("book_name")%>' Height="25px" Font-Size="12px">编辑</asp:HyperLink>
                              <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_tushu.aspx?book_name="+ Eval("book_name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> --%>
                            </td>
                           
                        </tr>
                    </tbody>
                </ItemTemplate>

            </asp:ListView>
        </table>
        </div>
         <asp:DataPager  runat="server"  PagedControlID="topicView" PageSize="10" ID="DDPager" >  
    <Fields>  
        <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
        <asp:NumericPagerField  ButtonCount="4"  />  
        <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
    </Fields>  
   </asp:DataPager> 
    </div>
</asp:Content>
