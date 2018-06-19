<%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true" CodeBehind="huatixx.aspx.cs" Inherits="WebApplication1.huatixx" %>
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
        <br />
          <a href="/huati.aspx"><h3>返回话题</h3></a>
        <br />
        <%-- <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div>
             
        <div style="float:left;height:auto;width:100px;"><asp:image id="image1" runat="server"  imageurl='<%#Eval("top_image") %>' Height="180px"  Width="130px"/></div>
       <div style="margin-top:20px;float:right;">
          <asp:Label ID="Label3" runat="server" style="height:50px;width:200px;" Text='<%#"发帖时间"+Eval ("top_time") %>'/></div>
        </div> 
            <div style="margin-left:152px;text-align:left;height:150px;width:500px;margin-top:10px;">
            <br /><asp:Label ID="Label1" runat="server" style="height:50px;width:200px;" Text='<%#"帖子类型："+Eval ("top_type") %>'/>
                <br /><br /><asp:Label ID="Label2" runat="server" style="height:50px;width:500px;" Text='<%#"帖子标题："+Eval ("top_name") %>'/></div>
            
        
       <div style="width:1080px;height:auto;border-top:60px;"><asp:Label runat="server" ID="Label4" style="height:auto;width:1080px;" Text='<%#"："+Eval ("top_mess") %>'></asp:Label>
           <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>
        </div>
       
    </div>
        </ItemTemplate>

    </asp:Repeater>--%>
        <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate>
            <div>
              <div >
          
          <asp:Label ID="Label2" runat="server" style="height:50px;width:200px; text-align:left; font-size:28px;" Text='<%#Eval ("top_name") %>'/></div>
      <div style="float:right;">
          <asp:Label ID="Label3" runat="server" style="height:50px;width:200px;" Text='<%#Eval ("top_time") %>'/></div>   
                <br /><br />
                <div><asp:image id="image1" runat="server"  imageurl='<%#Eval("top_image") %>' Height="300px" Width="180px"/></div>
       
    
        </div>
      <br /> <div ><asp:Label runat="server" ID="Label4" style="height:180px;width:1080px;" Text='<%#Eval ("top_mess") %>'></asp:Label>
           <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>
        </div>
      
        </ItemTemplate>

    </asp:Repeater>
        <div style="width:1080px;position:relative;margin:0 auto;">
              <div style="text-align:left;color: #007722;font-size:16px;">
                评论...
                <br />
            </div>
            <br />
        <asp:ListView ID="ListView1" runat="server" >
           <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                <div style="width:100%;margin-top:20px;float:left;background-color:#ececec;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="16">
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
                                <div style=" border-top: 2px solid rgba(218, 222, 195, 0.80);height:auto;">
                                <div style="color: #3377aa;">
                                   
                                    <div style="float:left;color: #3377aa;">
                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"评论人："+Eval("user_name") %>'  ></asp:Label>
                                    </div>
                                     <div style="float:right;color: #3377aa;">
                                            <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#Eval("tc_time") %>' style="text-align:left;"></asp:Label>
                                        </div>
                                </div>
                                <br />
                                <br />
                                <div >
                                    <div style="float:left;width:900px;height:auto;">
                                        <asp:Label ID="Label5" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#Eval("tc_mess") %>' ForeColor="gray"></asp:Label>
                                 
                                    </div>
                                    
                                </div>
                               <br />
                            </div>
                            </ItemTemplate>
       </asp:ListView>
            </div>
        <br /><br />
             <div style="width:1080px;position:relative;margin:0 auto;">
            <asp:TextBox ID="plshuru" runat="server" TextMode="MultiLine" Height="101px" Width="736px"></asp:TextBox>
        </div>
        <div style="width:1080px;position:relative;margin:0 auto;"><asp:Button ID="plfabu" runat="server" Text="发表评论 " OnClick="plfabu_Click" /></div>
    </div>
</asp:Content>
