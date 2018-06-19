<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>
<%@ Register TagName="WebBottom" TagPrefix="uc1" Src="~/UserControl/WebBottom.ascx"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" type="text/css" href="CSS/shutter.css" media="screen" />
       <script src="JS/jquery.min.js" type="text/javascript"></script>
<script src="JS/velocity.js" type="text/javascript"></script>
<script src="JS/shutter.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $('.shutter').shutter({
            shutterW: 1060, // 容器宽度
            shutterH: 358, // 容器高度
            isAutoPlay: true, // 是否自动播放
            playInterval: 3000, // 自动播放时间
            curDisplay: 3, // 当前显示页
            fullPage: false // 是否全屏展示
        });
    });
</script>
  
    <style type="text/css">
        #menu 
        {
            margin:0 auto;
            width:1080px;
            height:auto;
        }
        #menu div
        {
            float:left;
            width:180px;
            height:40px;
            line-height:40px;
            position:relative;
            text-align:center;
            background-color:#768183;
            top: 0px;
            left: 0px;
        }
            #menu div span
            {
                width:161px;
                cursor:pointer;
                padding:5px;/*内边距*/
            }
            
            #menu div:hover
            {
                color:#808080;
            }

            #menu div span a
            {
                text-decoration:none;
                font-style:normal;
                color:black;
            }
            #menu div ul
            {
                padding:0px;
                margin:0px;
                border:0px;
                clear:both;
                list-style:none;
                visibility:hidden;
                position:absolute;
                left:31px;
                top:40px;
                font-size:15px;
                z-index:1000;
            }
            #menu div ul li
            {
                padding:0px;
                margin:0px;
                border:0px;
                clear:both;
                line-height:20px;
                padding:5px;
                background-color:#5a7365;
                
            }
                #menu div ul li:hover
                {
                    background-color:steelblue;
                }
            #menu div span:hover a
            {
                color:white;
            }
                #menu div ul li:hover a
                {
                    color:white;
                }
              #menu div ul a 
              {
                  text-decoration:none;
                  color:black;
              }
            #menu div:hover ul
            {
                visibility:visible;
            }
            #menu div span em
            {
                font-style:normal;
                float: left;
                width: 66px;
                height: 10px;
                margin:0 5px 5px 0;
                vertical-align: middle;
            }
            #menu div span em i 
            {
                display: block;
                width: 16px;
                height: 2px;
                margin-bottom: 4px;
                background: #d5d5d6;
                text-decoration:none;
            }    
            #menu div span 
            {
                font: 16px/38px PingFangSC-Regular,HelveticaNeue-Light,'Helvetica Neue Light','Microsoft YaHei',sans-serif;
                display: block;
                padding: 0 0 0 18px;
                transition: all .5s;
                color: #fff;
                
            }
            .logo-wrap .book-shelf
            {
                overflow: hidden;
                width: 180px;
                height: 70px;
                background: #fff;
                margin-top:22px;
            }
            .fr
            {
                float:right;
                text-decoration:none;
                 
            }
            .logo-wrap .box-center
            {
                position:relative;
            }
            .cf
            {
                zoom:1;
            }
            .box-center
            {
                width:1080px;
                margin-right:auto;
                margin-left:auto;
            }
            .inconfont
            {
                font-family: qd_iconfont!important;
    
                font-style: normal;
                /*-webkit-font-smoothing: antialiased;
                -webkit-text-stroke-width: .1px;*/
            }
            .logo-wrap .logo
            {
                width: 219px;
                height: 70px;
                margin: 16px 184px 0 0;
            }
            .fl
            {
                float:left;
            }
            .logo-wrap .book-shelf .i
            {
                line-height: 38px;
                overflow: hidden;
                width: 56px;
                height: 38px;
                margin-right: 3px; 
            }

            a:-webkit-any-link 
            {
                color: -webkit-link;
                text-decoration:none;
                cursor: auto;
            }
            
           
        .auto-style1 {
            visibility: hidden;
            position: absolute;
            left: 31px;
            top: 40px;
            width: 179px;
            height: 225px;
        }
       
           
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div style="width:1080px; background-color:white;margin:0px auto">
         <div class="logo-wrap box-cneter">
             <div class="box-cneter cf">
                 <div class="book-shelf fr"  >
                     
    
                 <ul style="list-style:none;">
                   <li>
                       <asp:Panel runat="server" ID="panelLR">
                     <a href="login.aspx"> 
                         <i style="font-style:normal;  ">登录</i>
                     </a>

                     |<a href="register.aspx">
                         <i style="font-style:normal;   ">注册</i>
                      </a>
                      </asp:Panel>
                   </li>

                     <li>
                    <asp:Panel runat="server" ID="panelUser">
                     <asp:Label   runat="server" ID="lblName" Text="用户名" ForeColor="#666666"></asp:Label>
                     <asp:LinkButton runat="server" ID="lbExit" ForeColor="#808080" OnClick="lbExit_Click">[退出]</asp:LinkButton>
                    </asp:Panel>
                      </li>    
                </ul>
                 </div>
                 <div class="logo fl">
                    <a href="index.aspx">
                     <asp:Image ID="Image1" runat="server"  ImageUrl="~/Images/logo.png" Height="80px" Width="180px" />
                    </a>
                 </div>
             </div>

         </div>
        <div style="width:1080px;margin:0 auto; overflow:hidden;clear:both;">
            <div id="menu">
                <div>
                    <span><a href="index.aspx">首页</a></span>
                </div>
               <div >
                    <span><a href="tushu.aspx" >全部图书</a></span>
                </div>
                <div>
                    <span><a href="huati.aspx">话题广场</a></span>
                </div>
                <div>
                    <span><a href="chuangzuo.aspx">创作园地</a></span>
                </div>
                <div>
                    <span><a href="shudan.aspx">口味书单</a> </span>
                </div>
                <div>
                    <span><a href="wode.aspx">关于我们</a></span>
                </div>
            </div>
        </div>
    </div>
        <%-- 以上为导航栏，以下为展示栏 --%>
     <div style="  position:relative;width:1080px;height:auto; margin:0 auto;">
      <div>
          <div class="shutter" style="background-color:white;">
<div class="shutter-img">
   <a href="tushu.aspx" data-shutter-title="Iron Man"><img src="Images/shutter_1.jpg"  alt="#"/></a> 
   <a href="huati.aspx" data-shutter-title="Super Man"><img src="Images/shutter_2.jpg" alt="#"/></a> 
  <a href="chuangzuo.aspx" data-shutter-title="The Hulk"><img src="Images/shutter_3.jpg" alt="#"/></a>
   <a href="shudan.aspx" data-shutter-title="The your"><img src="Images/shutter_4.jpg" alt="#"/></a>
</div>
<ul class="shutter-btn">
  <li class="prev"></li>
  <li class="next"></li>
</ul>

</div>
      </div>
         <div>
          <div style="width:75%;float:left;">
              <div> 
                  <div style="border-top:20px;height:38px;width:200px;"><br />新书速递:&nbsp&nbsp<a  style="font-size:15px;border-top:20px;" href="/tushu.aspx">更多»</a></div>
              <asp:ListView ID="top8view" runat="server"   >
                            <ItemTemplate>
                                <div style="float:left;width:20%;height:210px;border-bottom:1px dashed #dce0c5; padding:5px; font-size:16px;">
                                    <div style="width:115px;height:172px;float:left;">
                                        <asp:HyperLink ID="Book_Img" ImageHeight="172px" ImageWidth="115px" runat="server" ImageUrl='<%#Eval("book_image") %>' NavigateUrl='<%#"~/read.aspx?book_id="+Eval("book_id") %>' Width="100px" Height="150px" />

                                    </div>
                                     <%--<div style=" width:750px;height:130px; float:right; text-align:left; margin-top:40px;overflow:hidden;">
                                        <asp:Label runat="server" Text='<%#Eval ("book_intr") %>' Width="750px" Height="120px"></asp:Label>
                                    </div>--%>
                                    <div style="width:100px;height:38px;margin-top:20px;text-align:center;" >
                                         <asp:Label runat="server"  Font-Size="5" Text='<%#Eval ("book_name") %>' Width="100px" Height="20px"></asp:Label>
                                    </div>
                                   
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
              </div>
               
              <div style="height:auto;">
               
                  <asp:ListView ID="listView" runat="server" GroupItemCount="2">
                <GroupTemplate>
                    <div id="itemPlaceholder" runat="server">
                    </div>
                </GroupTemplate>
                <ItemTemplate>
                    <div style=" float:left; width:42.5%;margin-left:1px; height:auto; margin-top: 10px;">
                        
                        <div style="width: 40%; float:left;">
                           <asp:HyperLink   ID ="Book_Img" runat="server" ImageUrl='<%#Eval("list1_image") %>' NavigateUrl='<%#"~/shudanxx.aspx?list1_name="+Eval("list1_name") %>'   ImageHeight="180px" ImageWidth="130px"/>
                        
                             
                        </div>
                       
                       <div style="float:right;width:50%;">
                           <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#" 书单："+SplitChar(Eval("list1_name").ToString(),10) %>' ForeColor="gray"></asp:Label>
                           <br />
                           <br />
                                       <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#" 简介："+SplitChar(Eval("list1_mess").ToString(),20) %>' ForeColor="gray"></asp:Label>
                       </div>
                      <%--  <div>
                             <span style="width:100px;height:150px;float:left;"><asp:Image ID="image1" runat="server" ImageUrl='<%#Eval("list1_image") %>'  NavigateUrl='<%#"~/shudanxx.aspx?list1_name="+Eval("list1_name") %>' Width="100px" Height="150px" /></span>
                                     <span style="padding-right:0px;width:200px;height:30px;float:right;padding-top:20px;font-size:5px;"><asp:Label runat="server" Text='<%#" 书单名："+SplitChar(Eval("list1_name").ToString(),10) %>' Width="200px" ></asp:Label></span>
                                       <span style="padding-right:60px;width:150px;height:110px;float:right;padding-top:20px;"><asp:Label runat="server"  Text='<%#SplitChar(Eval("list1_mess").ToString(),20) %>' ></asp:Label></span>
                        </div>--%>
                    </div>
                </ItemTemplate>

            </asp:ListView>
              </div>
          </div>
         </div>

         <%-- 右边话题和创作显示板块 --%>
         <div style="width:25%;float:right;">
             <div >
                 <div>
                     <br />
                    <h3>最新创作：</h3> 
                     <br /><br />
                 </div>
                 <asp:ListView ID="writeView" runat="server">
                        <ItemTemplate>
                                    <div style="border-top:8px;" >
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="13" NavigateUrl='<%#"chuangzuoxx.aspx?wri_id="+ Eval("wri_id") %>' Text='<%#SplitChar(Eval("wri_name").ToString(),10) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                    </div>
                            <br /><hr />
                        </ItemTemplate>
                    </asp:ListView>
             </div>
             <div>
                 <div>
                     <br />
                     <h3>最近话题：</h3>
                     <br />
                     <br />
                 </div>
                 <asp:ListView ID="topicView" runat="server">
                        <ItemTemplate>
                            <div >
                                <div >
                                    <div style="border-top:8px;">
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="13"  NavigateUrl='<%#"huatixx.aspx?top_id="+ Eval("top_id") %>' Text='<%#SplitChar(Eval("top_name").ToString(),10) %>' ForeColor="#2b2b2b"  ></asp:HyperLink>
                                    </div>
                                   <br /> <hr />
                                </div>                        
                            </div>
                            
                        </ItemTemplate>
                    </asp:ListView>
             </div>
         </div>
     </div>
        <div style="clear:both;">
           <uc1:WebBottom runat="server" ID="WebBottom" /> 
 
        </div>
    </form>
</body>
</html>
