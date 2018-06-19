<%@ Page Title="" Language="C#" MasterPageFile="~/WebPage.Master" AutoEventWireup="true" CodeBehind="shudan.aspx.cs" Inherits="WebApplication1.shudan" %>
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
        .auto-style4 {
            width: 307px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contentPage">
         <div class="pageRight" style="margin-top:20px;">


            <asp:Panel runat="server" ID="panel_a" Visible="false">
                 <asp:ListView ID="list_view" runat="server" GroupItemCount="2">
                <LayoutTemplate>
                    <div id="groupPlaceholder" runat="server">
                    </div>
                    <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                        <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="10">
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
                <GroupTemplate>
                    <div id="itemPlaceholder" runat="server">
                    </div>
                </GroupTemplate>
                <ItemTemplate>
                    <div style=" float:left; width:40%; margin-left: 4%; height: 180px; margin-top: 10px;">
                        <div style="width: 40%; height: 100px">
                           <asp:HyperLink   ID ="Book_Img" runat="server" ImageUrl='<%#Eval("list1_image") %>' NavigateUrl='<%#"~/shudanxx.aspx?list1_name="+Eval("list1_name") %>'   ImageHeight="180px" ImageWidth="130px"/>
                        
                             
                        </div>
                       
                       <div style="float:right;width:50%;">
                           <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#" 书单名："+Eval("list1_name") %>' ForeColor="gray"></asp:Label>
                           <br />
                           <br />
                                       <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"创建时间："+Eval("list1_time") %>' ForeColor="gray"></asp:Label>
                       </div>
                    </div>
                </ItemTemplate>

            </asp:ListView>
            </asp:Panel>

             
            <asp:Panel runat="server" ID="panel_b" Visible="false">
                 <div style="height: 200px; width: 100%">
                    <table style="width: 694px; height: 62px">
                        <tr>
                            <td style="text-align:left;" class="auto-style4"> <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="书单名称：" ForeColor="gray"></asp:Label></td>
                            <td>    <asp:TextBox ID="txtTitle1" runat="server" Height="31px" Width="474px"></asp:TextBox>    </td>
                        </tr>
                        
                        <tr>
                            <td style="text-align:left;" class="auto-style4"> <asp:Label ID="Label5" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="图片：" ForeColor="gray"></asp:Label></td>
                            <td>     <asp:FileUpload ID="FileUpload_img" runat="server" />  </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" style="text-align:left;">
                                <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="书单简介：" ForeColor="gray"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="shudannr" runat="server" TextMode="MultiLine" Height="101px" Width="500px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td >
                                <asp:Button ID="Button1" runat="server" Text="确认创建" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </div>

            </asp:Panel>

             
            <asp:Panel runat="server" ID="panel_c" Visible="false">

                 <asp:ListView ID="mylist" runat="server" GroupItemCount="2">
                <LayoutTemplate>
                    <div id="groupPlaceholder" runat="server">
                    </div>
                    <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                        <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="8">
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
                <GroupTemplate>
                    <div id="itemPlaceholder" runat="server">
                    </div>
                </GroupTemplate>
                <ItemTemplate>
                    <div style=" float:left; width:40%; margin-left: 4%; height: 180px; margin-top: 10px;">
                        <div style="width: 40%; height: 100px">
                           <asp:HyperLink   ID ="Book_Img" runat="server" ImageUrl='<%#Eval("list1_image") %>' NavigateUrl='<%#"~/shudanxxx.aspx?list1_name="+Eval("list1_name") %>'   ImageHeight="180px" ImageWidth="130px"/>
                        
                             
                        </div>
                       
                       <div style="float:right;width:50%;">
                           <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#" 书单名："+Eval("list1_name") %>' ForeColor="gray"></asp:Label>
                           <br />
                           <br />
                                       <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"创建时间："+Eval("list1_time") %>' ForeColor="gray"></asp:Label>
                       </div>
                          <div style="float:right;"><asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/shudan.aspx?list1_id="+ Eval("list1_id")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                  </div>  </div>
                </ItemTemplate>

            </asp:ListView>
            </asp:Panel>

             
            <asp:Panel runat="server" ID="panel_d" Visible="false">
                 <asp:ListView ID="shoucanglist" runat="server" GroupItemCount="2" >
                <LayoutTemplate>
                    <div id="groupPlaceholder" runat="server">
                    </div>
                    <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                        <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="8">
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
                <GroupTemplate>
                    <div id="itemPlaceholder" runat="server">
                    </div>
                </GroupTemplate>
                <ItemTemplate>
                    <div style=" float:left; width:40%; margin-left: 4%; height: 180px; margin-top: 10px;">
                        <div style="width: 40%; height: 100px">
                           <asp:HyperLink   ID ="Book_Img" runat="server" ImageUrl='<%#Eval("list1_image") %>' NavigateUrl='<%#"~/shudanxx.aspx?list1_name="+Eval("list1_name") %>'   ImageHeight="180px" ImageWidth="130px"/>
                        
                             
                        </div>
                       
                       <div style="float:right;width:50%;">
                           <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#" 书单名："+Eval("list1_name") %>' ForeColor="gray"></asp:Label>
                           <br />
                           <br />
                                       <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#"创建时间："+Eval("list1_time") %>' ForeColor="gray"></asp:Label>
                       </div>
                        <div style="float:right;border-top:30px;">
                              <asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/shudan.aspx?lk_id="+ Eval("lk_id")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> 
                        </div>
                    </div>
                </ItemTemplate>

            </asp:ListView>
            </asp:Panel>
            

         </div>

        <div class="pageLeft" style="float:left; right: 910px; top: 17px; left: 5px; width: 150px;">
            <div class="userName" style="height:100px;top:0px; left: 0px; width: 150px;"> <asp:Image  runat="server" ImageUrl="~/Images/遇见.png" /></div>
            <div class="chooseList">
                <ul>
                    <li><a href="shudan.aspx?id=1">所有书单</a></li>
                    <li><a href="shudan.aspx?id=2">创建书单</a></li>
                    <li><a href="shudan.aspx?id=3">我的书单</a></li>
                    <li><a href="shudan.aspx?id=4">书单收藏</a></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
