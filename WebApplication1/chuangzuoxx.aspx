<%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true" CodeBehind="chuangzuoxx.aspx.cs" Inherits="WebApplication1.chuangzuoxx" %>
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
         <a href="chuangzuo.aspx">返回创作界面</a>
        <br /><br />
         <asp:Repeater ID="Repeater1" runat="server" >
        <ItemTemplate>
            <div>
              <div >
          
          <asp:Label ID="Label2" runat="server" style="height:50px;width:200px; text-align:left; font-size:28px;" Text='<%#Eval ("wri_name") %>'/></div>
      <div style="float:right;">
          <asp:Label ID="Label3" runat="server" style="height:50px;width:200px;" Text='<%#Eval ("wri_time") %>'/></div>   
                <br /><br />
                <div><asp:image id="image1" runat="server"  imageurl='<%#Eval("wri_image") %>' Height="300px" Width="200px"/></div>
       
    
        </div>
      <br /> <div ><asp:Label runat="server" ID="Label4" style="height:180px;width:1080px;" Text='<%#Eval ("wri_mess") %>'></asp:Label>
           <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>
        </div>
      
        </ItemTemplate>

    </asp:Repeater>
        <div>
 <div>
           <asp:Button ID="Button1" runat="server" Text="收藏" OnClick="Button1_Click"   BackColor=" #ffe6ce" Height="38px" Width="66px" />
    </div></div>
        <div style="width:1080px;position:relative;margin:0 auto;"><br />
            <div style="text-align:left;color: #007722;font-size:16px;">
                评论...
                <br />
            </div>
            <br />
            <asp:ListView ID="ListView1" runat="server">
                       <LayoutTemplate>
              <table >
                <asp:PlaceHolder ID="groupPlaceHolder" runat="server" />
              </table>
            </LayoutTemplate>
            <GroupTemplate>
              <tr>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
              </tr>
            </GroupTemplate>
                        <ItemTemplate>
                            <div style=" border-top: 2px solid rgba(218, 222, 195, 0.80);">
                                <div style="color: #3377aa;">
                                   
                                    <div style="float:left;color: #3377aa;">
                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"评论人："+Eval("user_name") %>'  ></asp:Label>
                                    </div>
                                     <div style="float:right;color: #3377aa;">
                                            <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#Eval("wc_time") %>' style="text-align:left;"></asp:Label>
                                        </div>
                                </div>
                                <br />
                                <br />
                                <div >
                                    <div style="float:left;width:900px;height:auto;">
                                        <asp:Label ID="Label5" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#Eval("wc_mess") %>' ForeColor="gray"></asp:Label>
                                 
                                    </div>
                                    
                                </div>
                               <br />
                            </div>
                            
                        </ItemTemplate>
                    </asp:ListView></div>
         <asp:DataPager  runat="server"  PagedControlID="ListView1" PageSize="10" ID="DDPager" >  
    <Fields>  
        <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
        <asp:NumericPagerField  ButtonCount="4"  />  
        <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
    </Fields>  
   </asp:DataPager>  
          <div  style="width:1080px;position:relative;margin:0 auto;">
            <asp:TextBox ID="plshuru" runat="server" TextMode="MultiLine" Height="101px" Width="736px"></asp:TextBox>
        </div>
        <div style="width:1080px;position:relative;margin:0 auto;"><asp:Button ID="plfabu" runat="server" Text="发表评论 " OnClick="plfabu_Click" /></div>
    </div>
</asp:Content>
