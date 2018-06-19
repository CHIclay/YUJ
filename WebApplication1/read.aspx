<%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true" CodeBehind="read.aspx.cs" Inherits="WebApplication1.read" %>
 
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
   <div  id="contentpage">
         <a href="/tushu.aspx"><h3>全部图书</h3></a>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div style="height:auto;">
             
        <div style="float:left;height:auto;width:100px;"><asp:Image ID="Image1" runat="server"  ImageUrl='<%#Eval("book_image") %>' Width="100px"  Height="150px"/></div>
        <div style="margin-left:152px;text-align:left;height:120px;width:200px;margin-top:10px;">
           </div>
        <div style="margin-top:60px;border-bottom: 3px solid  rgba(218, 222, 195, 0.80);background-color:#ecdada;width:130px;">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/Yuedu.aspx?book_id="+Eval("book_id") %>'>阅读</asp:HyperLink>
           <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/shudantj.aspx?book_id="+Eval("book_id")%>'>添加到书单</asp:HyperLink>
           
        </div>
       <div style="width:1080px;height:auto;margin-top:15px;border-bottom: 3px solid  rgba(218, 222, 195, 0.80);">
            
            书名：<asp:Label ID="Label1" runat="server" style="height:50px;width:200px;" Text='<%#Eval ("book_name") %>'/>
           <br /><br />
           <asp:Label runat="server" ID="Label2" style="height:180px;width:1080px;font-size:15px;" Text='<%#Eval ("book_intr") %>'></asp:Label>
           <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>
        </div>
       
    </div>
        </ItemTemplate>

    </asp:Repeater>
      
       <asp:ListView ID="ListView1" runat="server" >
           <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                <div style="width:100%;margin-top:20px;float:left;background-color:#ececec;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                        <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                    ShowPreviousPageButton="true" FirstPageText="首页" NextPageText="下一页" PreviousPageText="上一页" LastPageText="尾页" />
                                <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                                    ShowNextPageButton="true" NextPageText="下一页" PreviousPageText="上一页"  ShowPreviousPageButton="false" FirstPageText="首页" LastPageText="尾页" />

                            </Fields>
                                    </asp:DataPager>
                                </div>
                            </LayoutTemplate>
           <ItemTemplate>
                              <div style=" border-top: 2px solid rgba(218, 222, 195, 0.80);">
                                <div style="color: #3377aa;">
                                   
                                    <div style="float:left;color: #3377aa;">
                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"评论人："+Eval("user_name") %>'  ></asp:Label>
                                    </div>
                                     <div style="float:right;color: #3377aa;">
                                            <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#Eval("bc_time") %>' style="text-align:left;"></asp:Label>
                                        </div>
                                </div>
                                <br />
                                <br />
                                <div >
                                    <div style="float:left;width:900px;height:auto;">
                                        <asp:Label ID="Label5" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#Eval("bc_mess") %>' ForeColor="gray"></asp:Label>
                                 
                                    </div>
                                    
                                </div>
                               <br />
                            </div>
                            </ItemTemplate>
       </asp:ListView>
     <div >
            <asp:TextBox ID="plshuru" runat="server" TextMode="MultiLine" Height="101px" Width="736px"></asp:TextBox>
        </div>
        <asp:Button ID="plfabu" runat="server" Text="发表评论 " OnClick="plfabu_Click" />



   </div>
    </asp:Content>
