<%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true"   CodeBehind="huati.aspx.cs" Inherits="WebApplication1.huati" %>
 <%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="~/Scripts/jquery-3.2.1.min.js"></script>
      <script type="text/javascript">
        $(document).ready(function () {
            $(".chooseList a").each(function () {
                $this = $(this);
                if ($this[0].href == String(window.location)) {
                    $this.addClass("active1");
                }
            });
        });
    </script>
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


           #contentpage classa.div.div a{
                 display:inline-block;
            width:150px;
            height:30px;
            font-size:18px;
            color:#808080;
           }
          .auto-style2 {
              width: 100%;
              height: 62px;
          }
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contentpage">
    <div >
      

             <div style="width: 90%; margin-left: auto; margin-right: auto; ">
        <%-- 头部--%>
        <div style="width: 100%; height: 100px;" class="classa">
            <%-- 论坛导航--%>
            <div style="margin-left:30px; margin-right: auto; background-color: white;" class="auto-style2">
                <div style="float: left; padding-left: 15%; padding-top: 25px; font-size: 20px;  width: 100px;">
                    <a href="huati.aspx?id=1">全部话题</a>
                </div>
                <div style="float: left; padding-left:50px;padding-top: 25px; font-size: 20px;  width: 100px;text-align:left">
                    <a href="huati.aspx?id=2" >传统文学</a>
                </div>
                <div style="float: left; padding-left: 50px; padding-top: 25px; font-size: 20px;  width: 130px;">
                    <a href="huati.aspx?id=3"  >现代网文</a>
                </div>
                <div style="float: left; padding-left: 50px; padding-top: 25px; font-size: 20px;  width: 122px;">
                    <a href="huati.aspx?id=4" >未来科幻</a>
                </div>
                 <div style="float: left; padding-left: 50px; padding-top: 25px; font-size: 20px;  width: 122px;">
                    <a href="huati.aspx?id=5" >青春小说</a>
                </div>
            </div>
         

        </div>
                 
       

    </div>
        <div style="width:200px;float:left;">

            <div style="float: left; padding-left: 50px; padding-top: 25px; font-size: 20px;  width: 122px;">
                    <a href="huati.aspx?id=6" >发起话题</a>
                </div>
            <br />
            <div style="border-top:30px;">
            <asp:TextBox ID="txtSearch" runat="server"  Width ="156px" Height="20px"></asp:TextBox>
                <br />
         <div style="border-left:30px;height:60px;width:170px;">  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Images/搜索图.png" Height="60px" Width="160px"  NavigateUrl='<%#"huati.aspx?user_name="+ Eval("user_name") %>' OnClick="ImageButton1_Click" /></div>
       </div>
            </div>
        <div style="width:850px; float:right;" >
            <asp:Panel runat="server" ID="panel_a" Visible="false">
                <asp:ListView ID="huatiView" runat="server">
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server">
                                <div id="itemPlaceholder" runat="server">
                                </div>
                            </div>
                            <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                                <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="5">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                            ShowPreviousPageButton="true" FirstPageText="首页" NextPageText="下一页" PreviousPageText="上一页" LastPageText="尾页" />
                                        <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                                            ShowNextPageButton="true" NextPageText="下一页" PreviousPageText="上一页" ShowPreviousPageButton="false" FirstPageText="首页" LastPageText="尾页" />

                                    </Fields>

                                </asp:DataPager>

                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div  >
                                <div >
                                <div style="float:right;width:680px;border-left:200px;height:150px;border-bottom: 7px solid #e4e4e4;">
                                     <div style="float:right;">
                                            <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"  时间:"+Eval("top_time") %>' ForeColor="gray"></asp:Label>
                                        </div> <div >
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"标题:  "+ SplitChar(Eval("top_name").ToString(),20) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                    </div>
                                  
                                    <br />
                                    <div style="float:right;" >
                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发帖人："+Eval("user_name") %>' ForeColor="gray"></asp:Label>
                                        <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("user_name")%>' /> 
                                    </div>
                                    <div >
                                        <div>
                                            <br />
                                             <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                            <%--<asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' style="text-align:left;"></asp:Label>--%>
                                        </div>
                                        
                                       
                                    </div>
                                </div>
                                <div style="float:left;width:101px;height:auto;">
                                    <div >
                                        <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("top_image") %>' NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>'  ImageWidth="100px"  ImageHeight="150px" />
                                        
                                       <%--  <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("top_time")) %>' ForeColor="gray"></asp:Label>--%>
                                    </div>
                                   
                                </div>
                               </div>
                            </div>
                         
                            
                        </ItemTemplate>
                    </asp:ListView>
            </asp:Panel>

             <asp:Panel runat="server" ID="panel_b" Visible="false">
                  <asp:ListView ID="huatiView2" runat="server">
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server">
                                <div id="itemPlaceholder" runat="server">
                                </div>
                            </div>
                            <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                                <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="5">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                            ShowPreviousPageButton="true" FirstPageText="首页" NextPageText="下一页" PreviousPageText="上一页" LastPageText="尾页" />
                                        <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                                            ShowNextPageButton="true" NextPageText="下一页" PreviousPageText="上一页" ShowPreviousPageButton="false" FirstPageText="首页" LastPageText="尾页" />

                                    </Fields>

                                </asp:DataPager>

                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                          <div >
                                <div style="float:right;width:680px;border-left:200px;height:150px;border-bottom: 7px solid #e4e4e4;">
                                     <div style="float:right;">
                                            <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"  时间:"+Eval("top_time") %>' ForeColor="gray"></asp:Label>
                                        </div> <div >
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"标题:  "+ SplitChar(Eval("top_name").ToString(),20) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                    </div>
                                  
                                    <br />
                                    <div style="float:right;" >
                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发帖人："+Eval("user_name") %>' ForeColor="gray"></asp:Label>
                                        <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("user_name")%>' /> 
                                    </div>
                                    <div >
                                        <div>
                                            <br />
                                             <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                            <%--<asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' style="text-align:left;"></asp:Label>--%>
                                        </div>
                                        
                                       
                                    </div>
                                </div>
                                <div style="float:left;width:101px;height:auto;">
                                    <div >
                                        <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("top_image") %>' NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>'  ImageWidth="100px"  ImageHeight="150px" />
                                        
                                       <%--  <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("top_time")) %>' ForeColor="gray"></asp:Label>--%>
                                    </div>
                                   
                                </div>
                               
                            </div>
                            
                        </ItemTemplate>
                    </asp:ListView>
            </asp:Panel>

             <asp:Panel runat="server" ID="panel_c" Visible="false">
                <asp:ListView ID="huatiView3" runat="server">
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server">
                                <div id="itemPlaceholder" runat="server">
                                </div>
                            </div>
                            <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                                <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="5">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                            ShowPreviousPageButton="true" FirstPageText="首页" NextPageText="下一页" PreviousPageText="上一页" LastPageText="尾页" />
                                        <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                                            ShowNextPageButton="true" NextPageText="下一页" PreviousPageText="上一页" ShowPreviousPageButton="false" FirstPageText="首页" LastPageText="尾页" />

                                    </Fields>

                                </asp:DataPager>

                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                           <div >
                                <div style="float:right;width:680px;border-left:200px;height:150px;border-bottom: 7px solid #e4e4e4;">
                                     <div style="float:right;">
                                            <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"  时间:"+Eval("top_time") %>' ForeColor="gray"></asp:Label>
                                        </div> <div >
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"标题:  "+ SplitChar(Eval("top_name").ToString(),20) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                    </div>
                                  
                                    <br />
                                    <div style="float:right;" >
                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发帖人："+Eval("user_name") %>' ForeColor="gray"></asp:Label>
                                        <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("user_name")%>' /> 
                                    </div>
                                    <div >
                                        <div>
                                            <br />
                                             <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                            <%--<asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' style="text-align:left;"></asp:Label>--%>
                                        </div>
                                        
                                       
                                    </div>
                                </div>
                                <div style="float:left;width:101px;height:auto;">
                                    <div >
                                        <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("top_image") %>' NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>'  ImageWidth="100px"  ImageHeight="150px" />
                                        
                                       <%--  <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("top_time")) %>' ForeColor="gray"></asp:Label>--%>
                                    </div>
                                   
                                </div>
                               
                            </div>
                            
                        </ItemTemplate>
                    </asp:ListView>
            </asp:Panel>

             <asp:Panel runat="server" ID="panel_d" Visible="false">
                  <asp:ListView ID="huatiView4" runat="server">
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server">
                                <div id="itemPlaceholder" runat="server">
                                </div>
                            </div>
                            <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                                <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="5">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                            ShowPreviousPageButton="true" FirstPageText="首页" NextPageText="下一页" PreviousPageText="上一页" LastPageText="尾页" />
                                        <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                                            ShowNextPageButton="true" NextPageText="下一页" PreviousPageText="上一页" ShowPreviousPageButton="false" FirstPageText="首页" LastPageText="尾页" />

                                    </Fields>

                                </asp:DataPager>

                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                           <div >
                                <div style="float:right;width:680px;border-left:200px;height:150px;border-bottom: 7px solid #e4e4e4;">
                                     <div style="float:right;">
                                            <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"  时间:"+Eval("top_time") %>' ForeColor="gray"></asp:Label>
                                        </div> <div >
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"标题:  "+ SplitChar(Eval("top_name").ToString(),20) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                    </div>
                                  
                                    <br />
                                    <div style="float:right;" >
                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发帖人："+Eval("user_name") %>' ForeColor="gray"></asp:Label>
                                        <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("user_name")%>' /> 
                                    </div>
                                    <div >
                                        <div>
                                            <br />
                                             <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                            <%--<asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' style="text-align:left;"></asp:Label>--%>
                                        </div>
                                        
                                       
                                    </div>
                                </div>
                                <div style="float:left;width:101px;height:auto;">
                                    <div >
                                        <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("top_image") %>' NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>'  ImageWidth="100px"  ImageHeight="150px" />
                                        
                                       <%--  <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("top_time")) %>' ForeColor="gray"></asp:Label>--%>
                                    </div>
                                   
                                </div>
                               
                            </div>
                            
                        </ItemTemplate>
                    </asp:ListView>
            </asp:Panel>

             <asp:Panel runat="server" ID="panel_e" Visible="false">
                 <asp:ListView ID="huatiView5" runat="server">
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server">
                                <div id="itemPlaceholder" runat="server">
                                </div>
                            </div>
                            <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                                <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="5">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                            ShowPreviousPageButton="true" FirstPageText="首页" NextPageText="下一页" PreviousPageText="上一页" LastPageText="尾页" />
                                        <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                                            ShowNextPageButton="true" NextPageText="下一页" PreviousPageText="上一页" ShowPreviousPageButton="false" FirstPageText="首页" LastPageText="尾页" />

                                    </Fields>

                                </asp:DataPager>

                            </div>
                        </LayoutTemplate>
                        <ItemTemplate>
                           <div >
                                <div style="float:right;width:680px;border-left:200px;height:150px;border-bottom: 7px solid #e4e4e4;">
                                     <div style="float:right;">
                                            <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"  时间:"+Eval("top_time") %>' ForeColor="gray"></asp:Label>
                                        </div> <div >
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"标题:  "+ SplitChar(Eval("top_name").ToString(),20) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                    </div>
                                  
                                    <br />
                                    <div style="float:right;" >
                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发帖人："+Eval("user_name") %>' ForeColor="gray"></asp:Label>
                                        <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("user_name")%>' /> 
                                    </div>
                                    <div >
                                        <div>
                                            <br />
                                             <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                            <%--<asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"帖子信息:"+SplitChar(Eval("top_mess").ToString(),50) %>' style="text-align:left;"></asp:Label>--%>
                                        </div>
                                        
                                       
                                    </div>
                                </div>
                                <div style="float:left;width:101px;height:auto;">
                                    <div >
                                        <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("top_image") %>' NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>'  ImageWidth="100px"  ImageHeight="150px" />
                                        
                                       <%--  <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("top_time")) %>' ForeColor="gray"></asp:Label>--%>
                                    </div>
                                   
                                </div>
                               
                            </div>
                            
                        </ItemTemplate>
                    </asp:ListView>
            </asp:Panel>

        </div>

       
        </div>
        <%-- 以上是论坛展示panel模块，以下是发帖模块 --%>
        <asp:Panel runat="server" ID="panel_f" Visible="false">
        <div style="height:auto;">
                <div style="width:100%; height: 400px;float:left;background-color: white;margin-top:20px;">
            <div style="font-family: 'Microsoft YaHei'; overflow: hidden; height: 30px; background-color: #50321c; width:100%; border-bottom-style: double; border-bottom-color: inherit; border-bottom-width: medium;">
                    <asp:Label ID="Label6" runat="server" Text="发起话题" ForeColor="#ffffcc" Font-Size="15"></asp:Label>
                </div>
             
            <div style="width: 100%; height: 340px">
                <div style="height: 200px; width: 100%">
                    <table style="width: 694px; height: 62px">
                        <tr>
                            <td style="width:200px;text-align:center;"> <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="标题：" ForeColor="gray"></asp:Label></td>
                            <td>    <asp:TextBox ID="txtTitle1" runat="server" Height="31px" Width="474px"></asp:TextBox>    </td>
                        </tr>
                        <tr>
                            <td style="width:200px;text-align:center;"> <asp:Label ID="Label4" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="类型：" ForeColor="gray"></asp:Label></td>
                            <td> <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="101px">
                                <asp:ListItem>传统文学</asp:ListItem>
                                <asp:ListItem>现代网文</asp:ListItem>
                                <asp:ListItem>未来科幻</asp:ListItem>
                                <asp:ListItem>青春小说</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="width:200px;text-align:center;"> <asp:Label ID="Label5" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="图片：" ForeColor="gray"></asp:Label></td>
                            <td>     <asp:FileUpload ID="FileUpload_img" runat="server" />  </td>
                        </tr>
                    </table>
                </div>
                <div style="height: 140px; width: 100%;margin-top:10px;">
                    <div style="margin-top: 15px; width: 100%;">
                        <span style="vertical-align: top;">
                            <asp:Label ID="Label2" runat="server" Text="可输入图片和文字，字数无限制" Font-Size="15" ForeColor="#555555"></asp:Label>
                        </span>
                        <span>
                            <CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="../ckeditor/" DefaultLanguage="zh-cn" Width="100%" Height="262px" ></CKEditor:CKEditorControl>
                        </span>
                         <div style="float: right;margin-top:10px;">
                        <asp:Button ID="Button1" runat="server" Text="发起话题" Height="33px" style="margin-left: 0px" Width="71px" OnClick="Button1_Click"  />
                    </div>
                    </div>
                   
                </div>
            </div>
                               
        </div>
        </div>
   </asp:Panel>

    </div>
</asp:Content>
