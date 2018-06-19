<%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true" CodeBehind="tushu.aspx.cs" Inherits="WebApplication1.tushu" %>
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
        #contentPage
        {
            position:relative;
            width:1080px;
            height:1100px;
            margin:0 auto;
            border:1px #dce0c5;
            border-radius:8px;
            margin-top:50px;
        }
        #contentPage .pageRight
        {
            position:absolute;
            top:30px;
            left:15px;
            width:150px;
            height:330px;
            background:rgba(69, 94, 91, 0.46);
            border-radius:6px;
            float:right;
        }
        #contentPage .pageRight .userName
        {
            position:absolute;
            top:50px;
            text-align:center;
            width:100%;
            height:20px;
            line-height:30px;
        }
        #contentPage .pageRight .chooseList
        {
            position:absolute;
            top:100px;
            left:0px;
            width:150px;
            height:210px;
        }
      
        #contentPage .pageRight .chooseList li{
            display:block;
            width:150px;
            height:30px;
            text-align:left;
            line-height:30px;
           
        }
        #contentPage .pageRight .chooseList li a{
            display:inline-block;
            width:150px;
            height:30px;
            font-size:18px;
            color:#808080;
        }


        #contentPage .pageLeft{
            position:absolute;
             
            right:15px;
            width:900px;
            height:700px;
            border-radius:6px;
        }

        .text{
            text-align:center;
            font-size:20px;
             background-color:rgba(167, 184, 149, 0.50)
        }



    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contentPage" >
        <div class="pageLeft" style="right: 168px; ">
            <asp:Panel runat="server" ID="panel_a" Visible="false">
                <div class="text">
                    <p>全部图书
                        <asp:ListView ID="ListView1" runat="server"   >
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                <div style="width:100%;margin-top:20px;float:left;background-color:#ececec;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
                                <div style="overflow:hidden;border-bottom:1px dashed #dce0c5; padding:5px; font-size:16px;background-color:rgba(193, 214, 204, 0.49)">
                                    <div style="width:100px;height:150px;float:left;">
                                        <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("book_image") %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id") %>'  ImageWidth="100px"  ImageHeight="150px" />

                                    </div>
                                     <div style=" width:750px;height:130px; float:right; text-align:left; margin-top:40px;overflow:hidden; ">
                                         <asp:HyperLink ID="HyperLink1" runat="server"   Text='<%#SplitChar(Eval("book_intr").ToString(),200) %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id")  %>'  Width="750px" Height="120px"   />
                                        <%--<asp:Label runat="server" Text='<%#SplitChar(Eval("book_intr").ToString(),200) %>' Width="750px" Height="120px"></asp:Label>--%>
                                    </div>
                                    <div style="width:100px;height:20px;margin-top:10px;" >
                                         <asp:Label runat="server"   Font-Size="6"  Text='<%#Eval ("book_name") %>' Width="100px" Height="20px"></asp:Label>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [book_id],[book_name], [book_intr], [book_image] FROM [Book]"></asp:SqlDataSource>--%>
                        
                       
                    </p>
                    
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="panel_b" Visible="false">
                <div class="text">
                    <p>国学经典<asp:ListView ID="ListView2" runat="server" >
                        <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                <div style="width:100%;margin-top:20px;float:left;background-color:#ececec;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
                                <div style="overflow:hidden;border-bottom:1px dashed #dce0c5; padding:5px; font-size:16px;background-color:rgba(193, 214, 204, 0.49)">
                                    <div style="width:100px;height:150px;float:left;">
                                       <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("book_image") %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id") %>' ImageWidth="100px"  ImageHeight="150px" />

                                    </div>
                                     <div style=" width:750px;height:130px; float:right; text-align:left; margin-top:40px;overflow:hidden;">
                                        <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%#SplitChar(Eval("book_intr").ToString(),200) %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id")  %>'  Width="750px" Height="120px"   />
                                    </div>
                                    <div style="width:100px;height:20px;margin-top:10px;" >
                                         <asp:Label runat="server"  Font-Size="6"  Text='<%#Eval ("book_name") %>' Width="100px" Height="20px"></asp:Label>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <p>
                        </p>
                    </p>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="panel_c" Visible="false">
                <div class="text">
                    <p>外国名著<asp:ListView ID="ListView3" runat="server" >
                                <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                <div style="width:100%;margin-top:20px;float:left;background-color:#ececec;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
                                <div style="overflow:hidden;border-bottom:1px dashed #dce0c5; padding:5px; font-size:16px;background-color:rgba(193, 214, 204, 0.49)">
                                    <div style="width:100px;height:150px;float:left;">
                                        <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("book_image") %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id") %>' ImageWidth="100px"  ImageHeight="150px" />

                                    </div>
                                     <div style=" width:750px;height:130px; float:right; text-align:left; margin-top:40px;overflow:hidden;">
                                       <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%#SplitChar(Eval("book_intr").ToString(),200) %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id")  %>'  Width="750px" Height="120px"   />
                                    </div>
                                    <div style="width:100px;height:20px;margin-top:10px;" >
                                         <asp:Label runat="server"  Font-Size="6"  Text='<%#Eval ("book_name") %>' Width="100px" Height="20px"></asp:Label>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <p>
                        </p>
                    </p>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="panel_d" Visible="false">
                <div class="text">
                    <p>诗歌散文<asp:ListView ID="ListView4" runat="server" >
                                       <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                <div style="width:100%;margin-top:20px;float:left;background-color:#ececec;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
                                <div style="overflow:hidden;border-bottom:1px dashed #dce0c5; padding:5px; font-size:16px;background-color:rgba(193, 214, 204, 0.49)">
                                    <div style="width:100px;height:150px;float:left;">
                                       <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("book_image") %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id") %>' ImageWidth="100px"  ImageHeight="150px" />

                                    </div>
                                     <div style=" width:750px;height:130px; float:right; text-align:left; margin-top:40px;overflow:hidden;">
                                        <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%#SplitChar(Eval("book_intr").ToString(),200) %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id")  %>'  Width="750px" Height="120px"   />
                                    </div>
                                    <div style="width:100px;height:20px;margin-top:10px;" >
                                         <asp:Label runat="server"  Font-Size="6"  Text='<%#Eval ("book_name") %>' Width="100px" Height="20px"></asp:Label>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <p>
                        </p>
                    </p>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="panel_e" Visible="false">
                <div class="text">
                    <p>民国大师<asp:ListView ID="ListView5" runat="server">
                                           <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                <div style="width:100%;margin-top:20px;float:left;background-color:#ececec;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
                                <div style="overflow:hidden;border-bottom:1px dashed #dce0c5; padding:5px; font-size:16px;background-color:rgba(193, 214, 204, 0.49)">
                                    <div style="width:100px;height:150px;float:left;">
                                        <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("book_image") %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id") %>' ImageWidth="100px"  ImageHeight="150px" />

                                    </div>
                                     <div style=" width:750px;height:130px; float:right; text-align:left; margin-top:40px;overflow:hidden;">
                                        <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%#SplitChar(Eval("book_intr").ToString(),200) %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id")  %>'  Width="750px" Height="120px"   />
                                    </div>
                                    <div style="width:100px;height:20px;margin-top:10px;" >
                                         <asp:Label runat="server"   Font-Size="6" Text='<%#Eval ("book_name") %>' Width="100px" Height="20px"></asp:Label>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <p>
                        </p>
                    </p>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="panel_f" Visible="false">
                <div class="text">
                    <p>现代文学<asp:ListView ID="ListView6" runat="server" >
                                                     <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                <div style="width:100%;margin-top:20px;float:left;background-color:#ececec;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
                                <div style="overflow:hidden;border-bottom:1px dashed #dce0c5; padding:5px; font-size:16px;background-color:rgba(193, 214, 204, 0.49)">
                                    <div style="width:100px;height:150px;float:left;">
                                        <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("book_image") %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id") %>' ImageWidth="100px"  ImageHeight="150px" />

                                    </div>
                                     <div style=" width:750px;height:130px; float:right; text-align:left; margin-top:40px;overflow:hidden;">
                                        <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%#SplitChar(Eval("book_intr").ToString(),200) %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id")  %>'  Width="750px" Height="120px"   />
                                    </div>
                                    <div style="width:100px;height:20px;margin-top:10px;" >
                                         <asp:Label runat="server"  Font-Size="6"  Text='<%#Eval ("book_name") %>' Width="100px" Height="20px"></asp:Label>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <p>
                        </p>
                    </p>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="panel_g" Visible="false">
                <div class="text">
                    <p>网文小说<asp:ListView ID="ListView7" runat="server" >
                                                           <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">

                                    </div>
                                </div>
                                <div style="width:100%;margin-top:20px;float:left;background-color:#ececec;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
                                <div style="overflow:hidden;border-bottom:1px dashed #dce0c5; padding:5px; font-size:16px;background-color:rgba(193, 214, 204, 0.49)">
                                    <div style="width:100px;height:150px;float:left;">
                                      <asp:HyperLink ID="Book_Img" runat="server" ImageUrl='<%#Eval("book_image") %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id") %>' ImageWidth="100px"  ImageHeight="150px" />

                                    </div>
                                     <div style=" width:750px;height:130px; float:right; text-align:left; margin-top:40px;overflow:hidden;">
                                        <asp:HyperLink ID="HyperLink1" runat="server"  Text='<%#SplitChar(Eval("book_intr").ToString(),200) %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id")  %>'  Width="750px" Height="120px"   />
                                    </div>
                                    <div style="width:100px;height:20px;margin-top:10px;" >
                                         <asp:Label runat="server"  Font-Size="6"  Text='<%#Eval ("book_name") %>' Width="100px" Height="20px"></asp:Label>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <p>
                        </p>
                    </p>
                </div>
            </asp:Panel>
        </div>


        <div class="pageRight" style="float:right; left: 923px; top: 17px;">
            <div class="userName" style="height:100px;top:0px;"> <asp:Image  runat="server" ImageUrl="~/Images/遇见.png" /></div>
            <div class="chooseList">
                <ul>
                    <li><a href="tushu.aspx?id=1">全部图书</a></li>
                    <li><a href="tushu.aspx?id=2">国学经典</a></li>
                    <li><a href="tushu.aspx?id=3">外国名著</a></li>
                    <li><a href="tushu.aspx?id=4">诗歌散文</a></li>
                    <li><a href="tushu.aspx?id=5">民国大师</a></li>
                    <li><a href="tushu.aspx?id=6">现代文学</a></li>
                    <li><a href="tushu.aspx?id=7">网文小说</a></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
