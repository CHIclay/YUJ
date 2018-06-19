    <%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true" CodeBehind="chuangzuo.aspx.cs" Inherits="WebApplication1.chuangzuo" %>
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
            #contentPage .pageLeft
            {
                position:absolute;
                top:30px;
                left:20px;
                width:170px;
                height:260px;
                background:rgba(69, 94, 91, 0.46);
                border-radius:6px;
                float:left;
            }
            #contentPage .pageLeft .userName
            {
                position:absolute;
                top:20px;
                text-align:center;
                width:60px;
                height:20px;
                line-height:30px;
            }
             #contentPage .pageLeft .chooseList
            {
                position:absolute;
                top:100px;
                left:0px;
                width:150px;
                height:110px;
            }
      
            #contentPage .pageLeft .chooseList li{
                display:block;
                width:150px;
                height:30px;
                text-align:left;
                line-height:30px;
           
            }
            #contentPage .pageLeft .chooseList li a{
                display:inline-block;
                width:150px;
                height:30px;
                font-size:18px;
                color:#2e2e2e;
            }


            #contentPage .pageRight{
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
            .auto-style2 {
                width: 200px;
                height: 41px;
            }
            .auto-style3 {
                height: 41px;
            }
            </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="contentPage">
            <div class="pageRight" style="margin-top:20px;">
                <asp:Panel runat="server" ID="panel_a" Visible="false">

                     <asp:ListView ID="writeView" runat="server">
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">
                                    </div>
                                </div>
                                <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                                    <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="4">
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
                                    <div style="float:right;width:750px;border-left:200px;border-bottom: 7px solid #e4e4e4;">
                                       <div style="float:right;">
                                                <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发表时间"+Eval("wri_time") %>' ForeColor="gray"></asp:Label>
                                            </div> <div >
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' Text='<%#"标题:  "+ SplitChar(Eval("wri_name").ToString(),20) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                        </div>
                                        <div style="float:right;">

                                            <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发布人："+Eval("user_name") %>' ForeColor="gray"></asp:Label>
                                        </div>
                                        <br />
                                        <div>
                                              <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' Text='<%#"内容简介："+SplitChar(Eval("wri_mess").ToString(),140) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>

                                            </div>
                                        
                                            <div style="float:right;">
                                     
                                            </div>
                                    </div>
                                    <div style="float:left;width:101px;height:auto;">
                                        <div >
                                             <asp:HyperLink ID="HyperLink3" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' ImageUrl='<%# Eval("wri_image") %>'   ImageWidth="100px"  ImageHeight="150px" ForeColor="#2b2b2b"  ></asp:HyperLink>
                                      
                                 
                                        </div>
                                    

                                    </div>
                               
                                </div>
                            
                            </ItemTemplate>
                        </asp:ListView>

                </asp:Panel>

                <asp:Panel runat="server" ID="panel_b" Visible="false">

                    <asp:ListView ID="ListView2" runat="server">
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">
                                    </div>
                                </div>
                                <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                                    <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="4">
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
                                    <div style="float:right;width:750px;border-left:200px;border-bottom: 7px solid #e4e4e4;">
                                       <div style="float:right;">
                                                <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发表时间"+Eval("wri_time") %>' ForeColor="gray"></asp:Label>
                                            </div> <div >
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' Text='<%#"标题:  "+ SplitChar(Eval("wri_name").ToString(),20) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                        </div>
                                        <div style="float:right;">
                                            <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发布人："+Eval("user_name") %>' ForeColor="gray"></asp:Label>
                                        </div>
                                        <br />
                                        <div>
                                                  <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' Text='<%#"内容简介："+SplitChar(Eval("wri_mess").ToString(),140) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                            </div>
                                        
                                            <div style="float:right;">
                                             <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"/chuangzuo.aspx?wri_name="+ Eval("wri_name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                                            </div>
                                    </div>
                                    <div style="float:left;width:101px;height:auto;">
                                        <div >
                                             <asp:HyperLink ID="HyperLink3" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' ImageUrl='<%# Eval("wri_image") %>'   ImageWidth="100px"  ImageHeight="150px" ForeColor="#2b2b2b"  ></asp:HyperLink>
                                 
                                        </div>
                                    

                                    </div>
                               
                                </div>
                            
                            </ItemTemplate>
                        </asp:ListView>
                </asp:Panel>

                <asp:Panel runat="server" ID="panel_c" Visible="false">
                     <asp:ListView ID="shoucangwrite" runat="server">
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">
                                    </div>
                                </div>
                                <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                                    <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="4">
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
                                    <div style="float:right;width:750px;border-left:200px;border-bottom: 7px solid #e4e4e4;">
                                       <div style="float:right;">
                                                <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发表时间"+Eval("wri_time") %>' ForeColor="gray"></asp:Label>
                                            </div> <div >
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' Text='<%#"标题:  "+ SplitChar(Eval("wri_name").ToString(),20) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                        </div>
                                        <div style="float:right;">
                                            <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"发布人："+Eval("user_name") %>' ForeColor="gray"></asp:Label>
                                        </div>
                                        <br />
                                        <div>
                                                 <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' Text='<%#"内容简介："+SplitChar(Eval("wri_mess").ToString(),140) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                            </div>
                                        
                                            <div style="float:right;">
                                           <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/chuangzuo.aspx?wk_id="+ Eval("wk_id")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> 
                                            </div>
                                    </div>
                                    <div style="float:left;width:101px;height:auto;">
                                        <div >
                                             <asp:HyperLink ID="HyperLink3" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' ImageUrl='<%# Eval("wri_image") %>'   ImageWidth="100px"  ImageHeight="150px" ForeColor="#2b2b2b"  ></asp:HyperLink>
                                 
                                        </div>
                                    

                                    </div>
                               
                                </div>
                            
                            </ItemTemplate>
                        </asp:ListView>

                </asp:Panel>

                <asp:Panel runat="server" ID="panel_d" Visible="false">

                      <div>
                    <div style="width:100%; height: 400px;float:left;background-color: white;margin-top:20px;">
                <div style="font-family: 'Microsoft YaHei'; overflow: hidden; height: 30px; background-color: #50321c; width:100%; border-bottom-style: double; border-bottom-color: inherit; border-bottom-width: medium;">
                        <asp:Label ID="Label6" runat="server" Text="发表创作" ForeColor="#ffffcc" Font-Size="15"></asp:Label>
                    </div>
             
                <div style="width: 100%; height: 340px">
                    <div style="height: 200px; width: 100%">
                        <table style="width: 694px; height: 62px">
                            <tr>
                                <td style="text-align:center;" class="auto-style2"> <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="标题：" ForeColor="gray"></asp:Label></td>
                                <td class="auto-style3">    <asp:TextBox ID="txtTitle1" runat="server" Height="31px" Width="474px"></asp:TextBox>    </td>
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
                            <asp:Button ID="Button1" runat="server" Text="发表创作" Height="33px" style="margin-left: 0px" Width="71px" OnClick="Button1_Click"  />
                        </div>
                        </div>
                   
                    </div>
                </div>
                               
            </div>
            </div>

                </asp:Panel>
            
            </div>
               <div class="pageLeft" style="float:left; right: 910px; top: 17px; left: 5px; width: 150px;">
                <div class="userName" style="height:100px;top:0px; left: 0px; width: 150px;"> <asp:Image  runat="server" ImageUrl="~/Images/遇见.png" /></div>
                <div class="chooseList">
                    <ul>
                        <li><a href="chuangzuo.aspx?id=1">创作大厅</a></li>
                        <li><a href="chuangzuo.aspx?id=2">我的创作</a></li>
                        <li><a href="chuangzuo.aspx?id=3">我的收藏</a></li>
                        <li><a href="chuangzuo.aspx?id=4">发表创作</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </asp:Content>
