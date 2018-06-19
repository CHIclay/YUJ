<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_shudanxx.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_shudanxx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style=" position:relative; width:1080px;  height:auto; margin:0 auto;">
         <div style="padding-top:20px;">
             <a href="Admin_shudan.aspx"><h3>书单管理</h3></a>
        </div>
          <div style="text-align:center;"><h2>书单内书单列表</h2></div>
         <asp:ListView ID="ListView1" runat="server" >
            <LayoutTemplate>
                                           <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                                        <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                    ShowPreviousPageButton="true" FirstPageText="首页" NextPageText="下一页" PreviousPageText="上一页" LastPageText="尾页" />
                                <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                                    ShowNextPageButton="true" NextPageText="下一页" PreviousPageText="上一页"  ShowPreviousPageButton="false" FirstPageText="首页" LastPageText="尾页" />

                            </Fields>
                                    </asp:DataPager>
                                        </LayoutTemplate>

           <ItemTemplate>
                                <div style="overflow:hidden;border-bottom:1px dashed #dce0c5; padding:5px; font-size:16px;border-bottom: 3px solid #e4e4e4;">
                                          
                                          <span style="width:100px;height:150px;float:left;"><asp:Image ID="image1" runat="server" ImageUrl='<%# Eval("book_image") %>' Width="100px" Height="150px" /></span>
                                     <span style="padding-right:830px;width:100px;height:30px;float:right;padding-top:20px;"><asp:Label runat="server" Text='<%#Eval ("book_name") %>' Width="100px" ></asp:Label></span>
                                       <span style="padding-right:130px;width:800px;height:110px;float:right;padding-top:20px;"><asp:Label runat="server"  Text='<%#Eval ("book_intr") %>' ></asp:Label></span>
                                    
                                    <div>
                                         <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("list1_name")%>' /> 
                                    </div>
<%--                                   <div> <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_shudanxx.aspx?list_book_keep_id=&list1_name="+ Eval("list_book_keep_id")+ Eval("list1_name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> </div>--%>
                                    <span style="float:right;padding-left:800px;"> <asp:HyperLink  ID="HyperLink1" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_shudanxx.aspx?list_book_keep_id="+Eval("list_book_keep_id")+"&list1_name="+Eval("list1_name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> </span>
                                   
                                </div>

                            </ItemTemplate>
       </asp:ListView>
            </div>
</asp:Content>
