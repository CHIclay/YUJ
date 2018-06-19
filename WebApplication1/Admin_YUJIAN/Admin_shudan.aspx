<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_shudan.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_shudan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="position:relative;width:1080px;height:auto;margin:0 auto;">
         
          <div style="text-align:center;padding-top:20px;"><h2>书单列表</h2></div>
        <div>
            <table  style="width:100%;height:auto;">
            <thead>
                <tr> <th >ID</th>
                    <th>书单创建人</th>
                    <th >书单名</th>
                    <th >书单封面</th>
                   
                    <th >创建时间</th>                    
                     <th>书单内容</th>
                   
                </tr>
            </thead>
            <asp:ListView ID="topicView" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr style="height:auto;text-align:center;border:groove;background-color:#f6f6f1">
                              <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="id" runat="server" Text='<%# Eval("list1_id") %>'></asp:Label></td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="name" runat="server" Text='<%# Eval("user_name") %>'></asp:Label></td>
                              </td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("list1_name") %>'></asp:Label>
                            </td>
                              </td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Image ID="Image1" runat="server"  Height="133px" Width="80px" ImageUrl='<%#Eval("list1_image") %>'/></td>
                           
                                <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="time" runat="server" Text='<%# Eval("list1_time") %>'></asp:Label></td>
                           <%--  <td style="width:15%;">
                                 <asp:TextBox ID="plshuru" runat="server" TextMode="MultiLine" Height="88px" Width="101px" Text='<%#Eval("book_intr") %>'></asp:TextBox>
                                 
                                </td>--%>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                   <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"Admin_shudanxx.aspx?list1_name="+ Eval("list1_name") %>' Text='<%#"标题:  "+ SplitChar(Eval("list1_mess").ToString(),30) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                
                                </td>
                            <td style="text-align:center;border-bottom: 3px solid #e4e4e4;">
                                 <%--<asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("top_id")%>' /> --%>
                                 <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("list1_id")%>' /> 
                                 <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_shudan.aspx?list1_id="+ Eval("list1_id")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
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
