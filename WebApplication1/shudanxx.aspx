<%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true" CodeBehind="shudanxx.aspx.cs" Inherits="WebApplication1.shudanxx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
           #contentpage{
              position:relative;
            width:1080px;       
            height:auto;
            margin:0 auto;
            border:1px #dce0c5;
            border-radius:8px;
            margin-top:10px;
           }

       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contentpage">
        <a href="shudan.aspx">返回书单界面</a>
        <br /><br />
          <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div>
             
        <div ><asp:image id="image1" runat="server"  imageurl='<%#Eval("list1_image") %>'  Height="250px"  Width="180px"/></div>
        <div><div style="float:right;"><asp:Label ID="Label3" runat="server" style="height:50px;width:200px;" Text='<%#"创建时间："+Eval ("list1_time") %>'/></div>
            <br />书单名：<asp:Label ID="Label1" runat="server" style="height:50px;width:200px;" Text='<%#Eval ("list1_name") %>'/>
 <br />
            <br />书单创建人：<asp:Label style="position:relative;width:1080px;" runat="server" ID="Label4"  Text='<%#Eval ("user_name") %>'></asp:Label>
        </div>
           

            </div>
        <div >
         
       <br /> 书单简介：<asp:Label ID="Label2" runat="server" style="height:50px;width:200px;" Text='<%#Eval ("list1_mess") %>'/> </div>

        </div>
      <%-- <div >
           <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>
        </div>--%>
       
    </div>
        </ItemTemplate>

    </asp:Repeater>
        <br /><br />
        <div style=" position:relative; width:1080px; height:auto;margin:0 auto;">
            <asp:Button ID="Button1" runat="server" Text="收藏书单" OnClick="Button1_Click" BackColor=" #ffe6ce" />
        </div>
        <br /><br />
        <div style=" position:relative; width:1080px;  height:auto; margin:0 auto;">
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
                                 <div style="overflow:hidden;border-bottom:2px  solid rgba(218, 222, 195, 0.80); padding:5px; font-size:16px;">
                                          
                                          <span style="width:100px;height:150px;float:left;"><asp:Image ID="image1" runat="server" ImageUrl='<%# Eval("book_image") %>' Width="100px" Height="150px" /></span>
                                     <span style="padding-right:830px;width:100px;height:30px;float:right;padding-top:20px;"><asp:Label runat="server" Text='<%#Eval ("book_name") %>' Width="100px" ></asp:Label></span>
                                       <span style="padding-right:130px;width:800px;height:110px;float:right;padding-top:20px;"><asp:Label runat="server"  Text='<%#SplitChar(Eval ("book_intr").ToString(),100) %>' ></asp:Label></span>
                                    
                                    <div>
                                         <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("list1_name")%>' /> 
                                    </div>
<%--                                   <div> <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_shudanxx.aspx?list_book_keep_id=&list1_name="+ Eval("list_book_keep_id")+ Eval("list1_name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> </div>--%>
                                    
                                   
                                </div>
                            </ItemTemplate>
       </asp:ListView>
            </div>

    </div>
</asp:Content>
