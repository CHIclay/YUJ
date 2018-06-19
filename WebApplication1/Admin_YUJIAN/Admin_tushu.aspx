<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_YUJIAN/admin.Master" AutoEventWireup="true" CodeBehind="Admin_tushu.aspx.cs" Inherits="WebApplication1.Admin_YUJIAN.Admin_tushu" %>
 <%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 694px;
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="position:relative;width:1080px;height:auto;margin:0 auto;">
        <div style="padding-top:20px;height:20px;width:120px;"><a href="Admin_tushu_comment.aspx"><h3>图书评论管理</h3></a></div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div style="height:800px;">
           <h2 style="text-align:center;">添加图书</h2> 
            <div style="width: 100%; height: 340px">
                <div style="height: 200px; width: 100%">
                    <table class="auto-style2">
                        <tr>
                            <td style="text-align:center;" class="auto-style2"> <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="图书名：" ForeColor="gray"></asp:Label></td>
                            <td class="auto-style3">    <asp:TextBox ID="txtTitle1" runat="server" Height="31px" Width="474px"></asp:TextBox>    </td>
                        </tr>
                       
                        <tr>
                            <td style="width:200px;text-align:center;"> <asp:Label ID="Label5" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="图书封面：" ForeColor="gray"></asp:Label></td>
                            <td>     <asp:FileUpload ID="FileUpload_img" runat="server" />  </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;" class="auto-style2"> <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="图书简介：" ForeColor="gray"></asp:Label></td>
                            <td class="auto-style3">    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="474px"></asp:TextBox>    </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;" class="auto-style2"> <asp:Label ID="Label4" runat="server" Font-Names="微软雅黑" Font-Size="12" Text="图书类型：" ForeColor="gray"></asp:Label></td>
                            <td class="auto-style3">    <asp:DropDownList ID="DropDownList1" runat="server"  >
                            <asp:ListItem>国学经典</asp:ListItem>
                            <asp:ListItem>外国名著</asp:ListItem>
                            <asp:ListItem>诗歌散文</asp:ListItem>
                            <asp:ListItem>民国大师</asp:ListItem>
                            <asp:ListItem>现代文学</asp:ListItem>
                            <asp:ListItem>网文小说</asp:ListItem>
                        </asp:DropDownList></td>
                        </tr>
                    </table>
                </div>
                <div style="height: 140px; width: 100%;margin-top:10px;">
                    <div style="margin-top: 15px; width: 100%;">
                        <span style="vertical-align: top;">
                            <asp:Label ID="Label2" runat="server" Text="图书内容" Font-Size="15" ForeColor="#555555"></asp:Label>
                        </span>
                        <span>
                            <CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="../ckeditor/" DefaultLanguage="zh-cn" Width="100%" Height="262px" ></CKEditor:CKEditorControl>
                        </span>
                         <div style="float: right;margin-top:10px;">
                        <asp:Button ID="Button1" runat="server" Text="添加图书" Height="33px" style="margin-left: 0px" Width="71px" OnClick="Button1_Click"  />
                    </div>
                    </div>
                   
                </div>
            </div>
        </div>
        <div style="height:auto;">
            <div style="text-align:center;"><h2>图书列表</h2></div>
           <table style="width:100%;height:auto;" >
            <thead>
                <tr> <th >ID</th>
                    <th >图书名</th>
                    <th >图书封面</th>
                    <th >图书类型</th>
                    <th >添加时间</th>
                     <th >图书简介</th>
                    <th>图书内容</th>
                   
                </tr>
            </thead>
            <asp:ListView ID="bookView" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr style="height:auto;text-align:center;border:groove;background-color:#f6f6f1">
                              <td style="width:5%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="id" runat="server" Text='<%# Eval("book_id") %>'></asp:Label></td>
                            <td style="width:10%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="name" runat="server" Text='<%# Eval("book_name") %>'></asp:Label></td>
                              </td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Image ID="Image1" Height="133px" Width="80px" runat="server"  ImageUrl='<%#Eval("book_image") %>'/>
                            </td>
                            <td style="width:10%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="type" runat="server" Text='<%# Eval("book_type") %>'></asp:Label></td>
                                <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                <asp:Label ID="time" runat="server" Text='<%# Eval("book_time") %>'></asp:Label></td>
                             <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                 <asp:TextBox ID="plshuru" runat="server" TextMode="MultiLine" Height="88px" Width="101px" Text='<%#Eval("book_intr") %>'></asp:TextBox>
                                  <%--<asp:Label ID="intr" runat="server" Text='<%#SplitChar(Eval("book_intr").ToString(),20) %>'></asp:Label>--%>
                                </td>
                            <td style="width:20%;border-bottom: 3px solid #e4e4e4;">
                                 <asp:HyperLink ID="HyperLink2" runat="server" Text='<%#SplitChar(Eval("book_mess").ToString(),50) %>' NavigateUrl='<%#"~/Admin_YUJIAN/Admin_tushu_neirong.aspx?book_id="+Eval("book_id") %>'></asp:HyperLink>
                                 <%-- <asp:Label ID="mess" runat="server" Text='<%#SplitChar(Eval("book_mess").ToString(),50) %>'></asp:Label>--%>
                                </td>
                            <td style="width:15%;border-bottom: 3px solid #e4e4e4;">
                                 <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("book_name")%>' />
                                 <span> <asp:HyperLink ID="HyperLink1" runat="server"    NavigateUrl='<%#"~/Admin_YUJIAN/Admin_tushu_xx.aspx?book_name="+ Eval("book_name")%>' Height="25px" Font-Size="12px">编辑</asp:HyperLink>
                            </span>  
                                <span><asp:HyperLink  ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_YUJIAN/Admin_tushu.aspx?book_name="+ Eval("book_name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" /> 
                          </span> 

                            </td>
                           
                        </tr>
                    </tbody>
                </ItemTemplate>

            </asp:ListView>
        </table>
        </div>
         <asp:DataPager  runat="server"  PagedControlID="bookview" PageSize="8" ID="DDPager" >  
    <Fields>  
        <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
        <asp:NumericPagerField  ButtonCount="4"  />  
        <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
    </Fields>  
   </asp:DataPager> 
    </div>
</asp:Content>
