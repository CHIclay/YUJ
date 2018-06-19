USE [master]
GO
/****** Object:  Database [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF]    Script Date: 2018/1/8 星期一 18:19:46 ******/
CREATE DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YJ', FILENAME = N'F:\最新数据库1.8\YJ.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'YJ_log', FILENAME = N'F:\最新数据库1.8\YJ_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET RECOVERY FULL 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF', N'ON'
GO
USE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[book_name] [nvarchar](50) NULL,
	[book_mess] [nvarchar](max) NULL,
	[book_image] [nvarchar](50) NULL,
	[book_type] [nvarchar](50) NULL,
	[book_time] [nvarchar](50) NULL,
	[book_intr] [nvarchar](max) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_Comment]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Comment](
	[bc_id] [int] IDENTITY(1,1) NOT NULL,
	[us_user_id] [int] NOT NULL,
	[bk_book_id] [int] NOT NULL,
	[bc_mess] [nvarchar](max) NULL,
	[bc_time] [datetime] NULL,
 CONSTRAINT [PK_Book_Comment] PRIMARY KEY CLUSTERED 
(
	[bc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[List_book_keep]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_book_keep](
	[list_book_keep_id] [int] IDENTITY(1,1) NOT NULL,
	[lbk_list_name] [nvarchar](max) NULL,
	[lbk_book_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[list_book_keep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[List_Keep]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_Keep](
	[lk_id] [int] IDENTITY(1,1) NOT NULL,
	[lk_user_id] [int] NULL,
	[lk_list_name] [nvarchar](max) NULL,
	[lk_time] [datetime] NULL,
 CONSTRAINT [PK_List_Keep] PRIMARY KEY CLUSTERED 
(
	[lk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[List1]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List1](
	[list1_id] [int] IDENTITY(1,1) NOT NULL,
	[list1_user_id] [int] NULL,
	[list1_name] [nvarchar](max) NULL,
	[list1_mess] [nvarchar](max) NULL,
	[list1_image] [nvarchar](max) NULL,
	[list1_time] [datetime] NULL,
 CONSTRAINT [PK_List1] PRIMARY KEY CLUSTERED 
(
	[list1_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[mana_id] [int] IDENTITY(1,1) NOT NULL,
	[mana_name] [nvarchar](50) NULL,
	[mana_pwd] [nvarchar](50) NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[mana_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[top_id] [int] IDENTITY(1,1) NOT NULL,
	[us_user_id] [int] NOT NULL,
	[top_name] [nvarchar](max) NULL,
	[top_mess] [nvarchar](max) NULL,
	[top_image] [nvarchar](max) NULL,
	[top_type] [nvarchar](max) NULL,
	[top_time] [datetime] NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[top_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic_Comment]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic_Comment](
	[tc_id] [int] IDENTITY(1,1) NOT NULL,
	[tc_user_id] [int] NULL,
	[tc_top_id] [int] NULL,
	[tc_mess] [nvarchar](max) NULL,
	[tc_time ] [datetime] NULL,
 CONSTRAINT [PK_Topic_Comment] PRIMARY KEY CLUSTERED 
(
	[tc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[user_pwd] [nvarchar](50) NULL,
	[user_email] [nvarchar](50) NULL,
	[user_phone] [nvarchar](50) NULL,
	[user_sex] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Write]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Write](
	[wri_id] [int] IDENTITY(1,1) NOT NULL,
	[wr_user_id] [int] NULL,
	[wri_name] [nvarchar](max) NULL,
	[wri_mess] [nvarchar](max) NULL,
	[wri_image] [nvarchar](max) NULL,
	[wri_time] [datetime] NULL,
 CONSTRAINT [PK_Write] PRIMARY KEY CLUSTERED 
(
	[wri_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Write_Comment]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Write_Comment](
	[wc_id] [int] IDENTITY(1,1) NOT NULL,
	[wc_user_id] [int] NULL,
	[wc_wri_id] [int] NULL,
	[wc_mess] [nvarchar](max) NULL,
	[wc_time] [datetime] NULL,
 CONSTRAINT [PK_Write_Comment] PRIMARY KEY CLUSTERED 
(
	[wc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Write_Keep]    Script Date: 2018/1/8 星期一 18:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Write_Keep](
	[wk_id] [int] IDENTITY(1,1) NOT NULL,
	[wk_user_id] [int] NULL,
	[wk_wri_id] [int] NULL,
	[wk_time] [datetime] NULL,
 CONSTRAINT [PK_Write_Keep] PRIMARY KEY CLUSTERED 
(
	[wk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (14, N'牧神记', N'<p>&nbsp;&nbsp;这个声音突然传来，中气十足，明明是从远处传来，但却仿佛在他们耳边响起一般，震得已经变成麋鹿的秦牧耳朵嗡嗡作响。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;他循声看去，远处的悬崖上站着几个人影，从山麓到悬崖，约有六七里地的路程，秦牧已经看不太清面孔，但能够将声音传得这么远，还如此清晰，应该不是普通人。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;司婆婆挎着篮子，笑道：&ldquo;天魔？什么天魔？老身只不过是江边的普通人，这小鹿也是寻常的鹿，是老身养大的&hellip;&hellip;&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;牧儿，跑！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;秦牧听到司婆婆的声音，心中一怔，想要说话却说不出声。他不想走，担心司婆婆遇到危险。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;江边的普通人？中气这么足，能将声音清晰的传到我们耳中，普通的老太婆是做不到的。&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;那山崖上，一个年老却又洪亮的声音冷笑道：&ldquo;而且，天魔造化功我漓江五老是断然不会认错的。剥皮制衣，千变万化，这么歹毒的手法都被我们看在眼里，你还想狡辩？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;山崖上另一个老者沉声道：&ldquo;天魔造化功将人变成牛羊，拉到市场上宰杀贩卖，这种事情你们没有少做吧？我们正教许多前辈，甚至被你们这些魔头变成了牛羊，一辈子耕地吃草的手法，骗不了我们！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;又有一位老者声音带着悲悯：&ldquo;鹿也是一条生命，就这样被你将它的皮和灵魂都炼成了邪物，不诛杀你，还不知道要有多少生命葬送你手，不杀你杀谁？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;司婆婆在被变成鹿的秦牧眉心捻了捻，抽出一根银针，低声道：&ldquo;这几个老杂毛奈何不得婆婆，但是你在身边婆婆便还要分心照顾你。快跑，跑回村子！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;秦牧不再迟疑，立刻转身飞奔，他被变成了鹿，本以为会行动不便，跑起来才知道自己想多了，他从人变成鹿非但没有任何不适，反而跑得飞快，仿佛自己天生就是一只鹿。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;效崽子还想逃？让你逃出去岂不是为祸苍生？漓江五子，这次带你们出来历练，眼下那头鹿便是你们历练的目标，将他斩了，提头来见！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;是！&rdquo;五声清脆的男女声混在一起，异口同声道。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;那山崖上几个人影闪动，从悬崖一跃而下，踩着崖壁向下奔行，速度快逾奔马，到了崖底，山间瀑布溪流冲刷形成一片深潭，那五人竟然踏水而过，双脚踩着水面一路奔行，向秦牧变化的麋鹿奔去。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;司婆婆心中一沉：&ldquo;灵体！灵胎神藏造诣不弱，牧儿速度不及他们，肯定会被追上！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;她正要阻拦，那山崖上四个身影踏空而来，顷刻间便落在她的身遭，还有一人依旧站在山崖上，傲然而立，并没有前来。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;漓江五老是南疆的有名人物，到大墟来做什么？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;司婆婆眼珠子转了转，只见这四个老者将她四面包围，咯咯笑道：&ldquo;这大墟危险得很，你们便不怕丧命在此？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;五老之一的黑须老者冷冷道：&ldquo;听说大墟中藏污纳垢，一些活不下去的妖魔鬼怪都躲在这里，所以我们五老带着弟子特来降妖除魔。&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;谁是妖谁是魔，谁降谁谁除谁，还不一定呢。&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;司婆婆一手垮蓝，另一只手从篮子里摸出一口剪刀，一幅老眼昏花的样子，笑道：&ldquo;老身好久不曾活动筋骨了，但好在从前的本事没有全部荒废。你们五个老鬼，莫非也想被我做成衣裳？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;妖孽，在我们面前你也敢嚣张？也配嚣张？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;漓江四老大喝，身形移动，四人交错而过，向司婆婆杀去。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;而在此时，正在全力向残老村奔去的秦牧听到后方传来轰落隆的雷声，那雷声伴随着霹雳，雪白的电光将山野照亮，比阳光还要明亮许多倍！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;他回头看去，只见司婆婆所立之地澎湃的气浪正在爆发，掀起草地，乱石，还有几块千百斤重的大石头被突起的暴风卷起，呼啸向外砸去，速度极快！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;婆婆会不会有事&hellip;&hellip;&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;秦牧心中一沉，突然听到江面踏踏踏的水声传来，只见两个年轻的男女踩着水面狂奔！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;那一男一女脚踏江水，身形竟然没有沉入江中，脚步落下抬起的速度实在太快，甚至比他奔行的速度还快出许多，江水来不及没入他们的脚背两人便已经绝尘而去！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;这两人达到了瘸爷爷所说的踏波而行，目前我还做不到，他们的实力比我强！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;那一男一女在江心踏破而行，很快超过秦牧，从江面向江岸奔来，看样子是打算将他在前方截住。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;秦牧回头，还有一人从他背后追来，另外两人则是在他左侧的山岭之间飞速穿梭，两人的身影时不时从茂密的树林中一跃而起，脚踩树梢呼啸奔走』过他们无法持久，很快便不得不落地换气。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;即便如此，他们也将很快超过秦牧，冲到他前头去。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;不能让他们截住！我需要比他们更快一步回到村子，让瘸爷爷马爷爷他们去救婆婆！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;秦牧咬牙，避开江边，斜刺里向树林中冲去。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;继续沿着江边奔行肯定会被堵住，江心的两人速度太快，而树林中奔走的两人速度要稍慢一些，因此冲入树林是逃走的唯一路径。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;效崽子，你与那魔头杀鹿炼邪物，别想逃！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;秦牧刚刚冲入树林，突然从树林中截击他的两人其中一个男子速度猛然提升，超越另一个人，但还是迟了一步，被秦牧所化的麋鹿从身前冲了过去。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;不必担心，他逃不掉的！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;前方，那一男一女神色淡然，女子轻笑一声，衣袂翻飞，速度突然加快，在树梢间纵跳如飞，向林中的麋鹿追去。而另一个男子则是不紧不慢，指挥其他三人包抄，向秦牧那边赶去。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;秦牧疯狂奔走，但是始终无帆这五人甩下，不仅甩不掉这五人，反而被他们逼得距离残老村越来越远，渐渐深入大墟。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;他在残老村生活了十四五年，离开村子最远的地方也不过十余里，而现在他已经走得太远了，四周的路径越来越陌生，越来越荒凉，甚至连路也没有了。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;突然，秦牧看到前方山谷中桃花遍地，有鹿群生活在桃花林中，连忙冲过去，混入鹿群之中。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;呼&mdash;&mdash;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;一道香风闪过，那女子衣袂飘飘，落在地上，看了看前面的鹿群，皱了皱眉头。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;师姐，那个魔崽子呢？&rdquo;一道道人影落下，一个与秦牧年纪仿佛的少年问道。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;那女子努了努嘴，道：&ldquo;他混入了鹿群。&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;把这些鹿统统杀了！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;几个少年少女冲入鹿群，抽出刀剑，向那群麋鹿痛下杀手，麋鹿的速度虽然很快，但也快不过这些久经修炼的灵体。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;这五个少年少女都是灵体，而且都已经成为了武者，实力不弱，即便麋鹿群四散而逃，也难逃他们的追杀，很快一只只麋鹿被他们斩杀。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;你们不是说麋鹿也是生命吗？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;突然，混乱的鹿群中传来人声：&ldquo;婆婆只不过杀了一只鹿，而你们却杀了鹿群，为什么你们还要说我们是魔道？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;在那里！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;那女子眼睛一亮，聚气运剑，白虎之气贯入长剑之中，金气四射，那口剑脱手飞出，向奔逃的鹿群中的秦牧斩去！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;秦牧折向狂奔，那口焦然也突然折向，继续向他刺去！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;这是什么武功？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;秦牧脑中一懵：&ldquo;难道是神通？不太像，屠爷爷说神通是武道修炼到极致，这女子的武道远不如屠爷爷他们&hellip;&hellip;&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;那口剑从后方杀至，秦牧所化的麋鹿几乎贴地转向，这才堪堪躲过。在他躲过的一瞬，惊鸿一瞥，只见那口剑的剑柄有一道细细的线，这道细线一端与剑相连，另一端则在那女子的手中。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;这道细线如丝，难以察觉。</p>', N'~/Images/牧神记.jpg', N'网文小说', N'Jan  1 2018  3:54PM', N'大墟的祖训说，天黑，别出门。大墟残老村的老弱病残们从江边捡到了一个婴儿，取名秦牧，含辛茹苦将他养大。...')
INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (15, N'黑暗的左手', N'<p>格森星-01-01101-934-2号即时传递档案抄本&mdash;&mdash;首位驻海恩星系93号轨道格森星或冬星机动使金利&bull;艾发往奥鲁尔固定站的报告，爱库曼纪年1490年&mdash;1497年。资料来源：海恩星球档案馆。 我打算以讲故事的方式陈述报告，因为在我的故乡，从小别人就教我，事实其实是想象的产物。事实能否取信于人，取决于讲述的方式：这就像我们那儿海里出产的一种奇特的有机珠宝，佩戴在这位女士身上光彩夺目，到另外一位女士身上则会变得暗淡无光，最后化为尘土。事实并不比珍珠更可靠、更连贯、更完整、更真实，两者同样脆弱易感。 这个故事并不全是关于我的，讲述者也不止我一个。事实上，到底这是关于谁的故事，我自己也说不好；兴许，你的判断会更准确。不过这是一个完整的故事，假使有些时候出现了另外一个声音，讲述了另外一种事实，你大可按照自己的喜好来选择取舍；不过，所有这些事实都同样真实，都从属于同一个完整的故事。 故事得从1491年的第四十四天说起，这个时间相当于冬星卡亥德王国的图瓦月奥德哈尔哈哈德日，也就是元年春天第三个月的第二十二天。这里的每一年都叫作元年，而过去未来那些年代的称呼则会在每个元日发生变化，因为人们是以不变的现在为基础往后或者往前数的。这么着，我现在是在卡亥德王国的首都埃尔亨朗，时间是元年的春天。我已经陷于生命危险之中，自己却浑然未觉。 我走在一支游行队伍当中，紧跟在戈斯瓦乐手后头，身后就是国王。天上下着雨。 这是一座风暴肆虐的石头城，乌云笼罩着阴森的城堡，雨点洒落在幽深的街道。阴暗的城市中，一条金色的脉管正在缓缓地蜿蜒流动。 最先出场的是埃尔亨朗城的商人、权贵和工匠。他们衣着华丽，表情热切而又沉着，在雨中悠然漫步，如鱼得水。他们一列一列地走过，步调却并不一致。这支游行队伍里没有士兵，连假扮的士兵都没有。 他们之后是来自卡亥德王国各个领地及联合领地的领主、市长及代表。这部分人要么单独一人，要么五人、四十五人或是四百人一组，形成了一支色彩斑斓的庞大队列，伴着金属喇叭、中空骨木管吹奏的乐声，以及电子长笛那单调纯净的轻快曲调向前行进。各个领地式样各异的旗帜，以及装点沿途的黄色三角旗被雨水淋得稀里哗啦一团糟，每组人风格各异的音乐也在彼此冲撞。各式各样的曲调混杂交织，在幽深的石头街道上回荡。 这之后是一群变戏法的人，手里拿着一个个锃亮的金球。他们把金球高高抛起，划出一道道闪亮的弧线，接住之后又继续往上抛，幻化出一道道闪亮的魔术喷泉。突然间，就跟他们真的抓住了光线似的，金球闪出玻璃般的耀眼光芒：太阳钻出了云层。 接下来是四十名演奏戈斯瓦的黄衣男子。戈斯瓦是只有在国王出席的场合才会演奏的乐器，它的声音可笑而阴郁，就像有人在低吼。四十支戈斯瓦一齐奏出的声响足以把人震疯，把埃尔亨朗的城堡震倒，也足以震落大风天云层里的最后一滴雨水。既然这就是皇室的庆典音乐，毫无疑问，卡亥德王国的历任国王就是一帮疯子。 再接下来就是皇家队列了：警卫、本城及皇宫的达官显贵、众议员、参议员、大臣、大使、王国的贵族，他们没有排成整齐的队列，步调也不一致，走路的姿态却高贵异常。阿加文十五世也在其中，他身着白色束腰外套、衬衣和马裤，金黄色皮绑腿和黄色尖顶帽。一枚黄金戒指是他全身上下唯一一样饰物，也是他地位的象征。这支队列之后就是御辇，由八名壮汉抬着，上头草草点缀着一些黄宝石。御辇是远古时期的象征性遗物，几百年来，并没有哪个国王乘坐过。御辇旁边是八名护卫，身上都佩带着&ldquo;劫掠枪&rdquo;。这些枪支来自更为蛮荒的年代，里头却也不是空的，装填着许多软铁做的小珠。国王后头跟着死神，死神后头跟着技校生、大学生和各行业学徒。再有就是王室成员，那是一长溜的小孩子和年轻人，穿着白红金绿各色衣服；在整个游行队伍的最后，是几辆缓缓行驶着的深色汽车。 即将竣工的盖特河拱桥附近有一座新近用木材搭成的平台，皇家队列的人&mdash;&mdash;我也走在其中&mdash;&mdash;都聚集到了台上。此次游行就是这座拱桥的落成庆典，拱桥的落成则标志着埃尔亨朗新公路及内河港工程的全面竣工。这项大工程耗时五年，疏浚了河道，修建了房屋和道路，阿加文十五世因之可以在卡亥德王国名垂青史。我们挤挤挨挨地站在平台上，身上的衣服又湿又重。雨已经停了，太阳照在我们身上。冬星的阳光明亮又灿烂，同时也变幻不定。我对站在自己左边的那个人说道：&ldquo;好热啊，真是太热了。&rdquo; 站在我左边的那个人&mdash;&mdash;一个身材矮胖、皮肤黝黑的卡亥德人，顶着一头油腻的头发。他穿着一件厚重的金绿色相间的皮外套和一件厚重的白色衬衣，还有一条厚重的马裤。他脖子上挂着一条沉重的银链子，链环有手掌那么宽&mdash;&mdash;一边拼命地出着汗，一边答道：&ldquo;是很热。&rdquo; 我们拥挤在平台上，周围是市民们一张张仰起的脸庞，就像整整一河滩圆圆的褐色鹅卵石。鹅卵石中间闪着云母的光芒，那是几千双专注的眼睛。 国王踩着一块原木踏板从平台走到拱桥的顶部，拱桥尚未合龙的两根方柱俯瞰着人群、码头和河流。在他往上爬的时候，人群骚动起来，开始不停地大叫：&ldquo;阿加文！&rdquo;他没有做出任何回应，人们也没指望他会有回应。戈斯瓦乐手们奏出了最后一记声若雷鸣、极不和谐的巨响，随后就停了下来。全场一片沉寂，阳光照射着城市、河流、人群和国王。下方的泥瓦匠已经事先启动了一个电动绞盘。国王走向高处的时候，拱桥的拱顶石也被高高地吊了起来，随后被安放在了两根方柱之间的缺口中。虽然这块大石重达数吨，安放时却几乎没有发出一点声响。两根方柱合而为一，一道拱桥就此造就。一名泥瓦匠拿着泥刀和木桶，站在脚手架上等候国王；其他工人全部顺着绳梯滑了下去，活像一群跳蚤。国王和那名泥瓦匠跪倒在踏板上，跪倒在太阳与河水之间的高处。接着，国王拿过泥铲，开始往楔石的接缝处抹灰泥。他不是简单地摆摆样子就把泥铲还给泥瓦匠，而是有条不紊地干了起来。他用的灰泥带一点点桃红色，跟其他地方抹的灰泥颜色不同。我看着国王辛勤劳作了五到十分钟，然后问左边那个人：&ldquo;你们的拱顶石上抹的都是红色灰泥吗？&rdquo;我这样问是因为，在河的上游高耸着一座美丽的老桥，那座老桥的拱顶石周围也是同样颜色的灰泥。 那个男人&mdash;&mdash;我得交代一下那人是男的，因为前面我都说过&ldquo;他&rdquo;和&ldquo;他的&rdquo;了&mdash;&mdash;一边擦着黝黑额头上的汗水，一边答道：&ldquo;远古时期，拱顶石都是用骨头粉和血混合而成的灰泥来固定的，是人的骨头和血。你知道，没有了这种血脉的联结，拱桥就会塌。现在我们用的是动物的血。&rdquo; 他就这样不时地跟我说着话，很坦率，不过还是很小心、爱说反话，似乎他一直都有这样的意识：我是从一个外星人的角度来进行观察和判断的。这是一件很不寻常的事情，因为他来自如此与世隔绝的一个种族，又是如此位高权重。在这个国家里，他是最有权势的人之一；我不是很确定历史上出现过的那些称谓&mdash;&mdash;元老、首相、议员&mdash;&mdash;哪个最适合描述他的职务；他的卡亥德语头衔意思是&ldquo;国王的耳朵&rdquo;。他是一个领地的领主，也是这个王国的贵族，总之是一位能够呼风唤雨的人物。他名叫西勒姆&bull;哈斯&bull;雷姆&bull;伊阿&bull;伊斯特拉凡。</p>', N'~/Images/s29630049.jpg', N'国学经典', N'Jan  4 2018  9:41PM', N'在寒冷的冬星上，生活着一群无性人，他们可以自由选择自己的性别。在每月的一个特别日子，他们自由成为男人或女人。 一名星际联盟特使，被派往冬星，完成一个秘密使命。 然而，冬星上的一切——怪异的风俗、古老的传说、混乱的政局，无不冲击着特使固有的观念。 面对陌生的一切，孰是孰非，他该如何面对？ 在宇宙尽头的陌生人身上，看到了另一个自己。')
INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (18, N'小仓百人一首', N'<p>1 天智天皇 田野上秋夜的冷霜与寂静<br />
2 持统天皇 初夏的浪漫，白与绿的对比<br />
3 杮本人麻吕 秋夜独眠的寂寞<br />
4 山部赤人 银装素裹的富士山<br />
5 猿丸大夫 秋天里华丽而静寂的美感<br />
6 大伴家持 传说与幻想的冬夜之歌<br />
7 阿部仲麻吕 遣唐使的望乡之思<br />
8 喜撰法师 悠然自得的隐居生活<br />
9 小野小町 红颜易老的人生悲叹<br />
10 蝉丸 平静地旁观人世的悲欢离合<br />
11 参议篁 孤独而绝望的流放者<br />
12 僧正遍昭 构思巧妙的幻想曲<br />
13 陽成院 潭水般深沉的相思之情<br />
14 河原左大臣 我为你忙乱如麻<br />
15 光孝天皇 一片真情的表白<br />
16 中纳言行平 对亲友的惜别之情<br />
17 在原业平 奇妙而华美的造化之功<br />
18 藤原敏行 隐藏在心中的爱恋之若<br />
19 伊勢 对冷淡男人的怨恨<br />
20 元良亲王 为爱甘愿献身的激情<br />
21 素性法师 对冷淡男子的怨言<br />
22 文屋康秀 凛冽的山风与悄皮诗<br />
23 大江千里 望月时陷入孤独的悲哀<br />
24 菅家 美如锦秀的红叶<br />
25 三条右大臣 我愿悄悄前去与你相会<br />
26 贞信公 赞美红叶的臣子之心<br />
27 中纳言兼辅 难于理解的恋爱之心<br />
28 源宗于 冬天的寂寥与孤独<br />
29 凡河内躬恒 霜打菊花的白色之美<br />
30 壬生忠岑 对无情女子的怨恨<br />
31 坂上是则 吉野山乡的雪景<br />
32 春道列樹 飘落在山溪中的美丽红叶<br />
33 纪友则 樱花迅速村落的风情<br />
34 藤原兴风 衰老残年的孤独悲叹<br />
35 纪贯之 人心易变，梅香依旧<br />
36 清原深养父 短暂的夏夜与残月<br />
37 文屋朝康 白露滚落的秋天原野<br />
38 右近 虽被抛弃，却为无情的男子担忧<br />
39 参议等 无法庄抑的恋情<br />
40 平兼盛 难以隐藏的恋慕之心<br />
41 壬生忠见 难定胜负的恋歌<br />
42 清原元辅 谴责女方变心<br />
43 权中衲言敦忠 相思积郁的痛苦<br />
44 中纳言朝忠 相识相恋的悔恨<br />
45 谦德公 爱上无情女子的叹息<br />
46 曾弥好忠 无法把握的爱情结局<br />
47 惠庆法师 人世无常，天地永恒<br />
48 源重之 令人粉身碎骨的爱情烦恼<br />
49 大中臣能宣朝臣 每日每夜为爱消魂</p>', N'~/Images/s29581063.jpg', N'国学经典', N'Jan  6 2018 12:37AM', N'藤原定家从《古今和歌集》《新古今和歌集》等《敕撰和歌集》中，依年代先后挑选出100位介于天智天皇到顺德天皇间的杰出歌人及其一首作品，结集成《百人一首》，又称《小仓百人一首》。合计有男性歌人79人（包括僧侣13人）及女性21人。江户时代以后，由于浮世绘盛行带动版画技术精进，《百人一首》以和歌搭配画作的形态普及于庶民阶层。本书正是由100幅珍品浮世绘画作配100首诗歌而成。')
INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (19, N'明', N'<p>一个陌生人来到霍基蒂卡；一次秘密会议被惊扰；沃尔特&middot;穆迪隐瞒了自己最近的记忆；托马斯&middot;鲍尔弗开始讲述一个故事。 十二个男人聚集在皇冠旅馆的吸烟室，貌似一次偶然的相会。他们的举止与衣着五花八门&mdash;&mdash; 工装外套、燕尾服、配兽角纽扣的诺福克夹克、黄鼹鼠皮装、麻布衣，还有斜纹布衣服&mdash;&mdash; 看上去很可能是十二个搭火车的陌生人，奔向一个迷雾笼罩、潮汐涨落的城镇，然后各奔东西，走入不同的角落。的确，若单独观察每个人，无论他是在仔细研读报纸，还是倾身向前将烟灰弹入壁炉炉栅内，还是将手呈八字展开、架在羊毛台呢桌面上击打台球，这种肢体静止的特定场面，活脱脱是深夜公共火车上的一幕情景&mdash;&mdash; 只不过这里的声音不是被火车的嘈杂声与铿锵声扼杀，而是被大雨的哗哗声淹没。 沃尔特&middot;穆迪先生手扶着门框站在门口，此时此刻他的身心知觉就是如此。他并未干扰任何形式的秘密会议，因为屋里说话的人一听见走廊上的脚步声，便立即缄口不言。穆迪先生把门打开时，十二个男人全都重新开始忙自己手头的事情（那些玩台球的人那么随意地操起球杆，因为他们已经忘记了自己刚才的位置），他们过于刻意地表现出专心致志的样子，以至于穆迪先生走进房间时，居然没有一个人抬起头来。 这些男人动作夸张且步调一致地故意不理会穆迪先生，如果是在穆迪先生身体舒服、心情颇佳的时候，这可能早已唤起他的兴趣。然而此刻，他正陷入头晕恶心与情绪困顿之中。虽然明知道前往坎特伯雷西部的航程在糟糕的情况下可能会丢掉性命，那些泛着白色泡沫的滔滔巨浪无穷无尽地翻滚着，一直延伸到霍基蒂卡浅滩上被冲毁的墓地才算尽头，但穆迪还是没有料到旅程会恐怖到如此地步，到现在也无法用言语来描述，连自己都不敢回想。穆迪生性不容忍自身的任何缺点&mdash;&mdash;恐惧与疾病使他变得内向&mdash;&mdash; 正因如此，他一反常态，走进房间后未能马上觉察出这里的气氛。 穆迪生就一副机智而专注的表情。那双灰色的大眼睛不动声色，柔软而男孩气的嘴巴镇定自若，常常带着礼貌的关切。他有一头紧致细密的鬈发，少年时代曾长发披肩，现在只留着紧贴头皮的短发，偏分头，用了芳香的头油将其抹平，金色逐渐变深而成为油亮的棕色。额头与脸颊方方正正，鼻子直挺，皮肤光滑。他年龄不足二十八，依然身手敏捷，动作精确，带着一股顽皮劲儿，兼具既不轻信又不狡猾的纯真活力。他的仪态犹如谨慎而头脑灵活的执行大管家，就连最沉默寡言的人都喜欢向他吐露心声，或邀请他为刚见面的人做调解中介。简而言之，他的外貌很少能泄露出他的内在性格，是一副能够立刻赢得别人信任的模样。 穆迪并非没有意识到自己无懈可击的典雅所带来的优势。正如大多数过于美貌的人那样，他早就仔细研究过自身的形象，换句话说，他最了解自己的相貌。他总是格外留神通过外表感知自己。他将大量的时间花费在私人更衣室的壁龛中，用那里的镜子映照出他的三面形象：侧面、半侧面与正面，如同范戴克笔下的查理，只是更加耀眼炫目。这是秘不可宣的私事，他可能会公开否认&mdash;&mdash; 因为关注自我形象会招致我们这个时代的道德先知们何等严厉的谴责啊！仿佛自我与本人毫无关系，人照镜子只能证明他的傲慢；仿佛注重自我的行为，不像是双胞胎之间的心灵感应那样微妙、悸动和瞬息万变。穆迪更痴迷的是掌控自己的容貌，而不是为了追求他人的赞誉。当然，每当他瞥见自己的身影，无论是在房子外的玻璃窗前，还是夜幕降临后室内的窗户前，他都有一种心满意足的快感&mdash;&mdash; 而这种感觉，就如同一位工程师发现自己巧妙设计的某个装置能按照他预测的方式顺滑而完美地运作时的感觉一样。 此刻，他能看见自己优雅地站在吸烟室的门口，而且知道自己现在的形象依旧是一个完美的剪影。其实，他已筋疲力尽到发抖的地步，恐惧如铅砣般沉重地压在心头。他感到阴影笼罩，甚至是十面埋伏。他内心充满恐惧，却带着事不关己的礼貌与尊重的神情打量着室内。这个房间看似凭借着陈年旧月的记忆而重建，许多东西都已被遗忘（柴架、窗帘、壁炉周边像样的地幔），而一些小小的细节却被顽固地保留了下来：比如一幅已故亲王①的画像&mdash;&mdash; 从杂志上剪下来，用鞋钉按在了朝着院子的那面墙上；台球桌中间有一条接缝，桌子在悉尼码头被锯成两半，以便更好地承受海上运输的颠簸；写字台上堆着陈旧的大报，报纸已被无数双手摸得变薄，字迹模糊。从壁炉侧翼两个小窗户可以看见旅馆的后院，一块散落着板条箱、生锈桶的沼泽地，只有补丁般的小灌木与矮蕨丛将它与邻居的地盘隔开，北边是一排产蛋鸡的笼子，门上锁着防贼的链条。在这道模糊的边缘外，能看见朝东一条街房子后面的一排排悬垂的晒衣线，原木格子栅、猪圈、废料堆、铁板，以及破旧的摇臂洗砂床和水槽&mdash;&mdash;以及各种各样的废弃物和年久失修的东西。迟暮的钟声敲响，所有的色彩似乎顿时失去了丰富的质感，室外滂沱大雨正下着；透过皱纹玻璃，可以看见后院渐渐地褪色发白。房间里，酒精灯在傍晚的蓝色暮光中尚未发挥作用，这份苍白使室内原本就很冷清的装潢显得更加惆怅落寞&hellip;&hellip;</p>

<p>&nbsp;</p>', N'~/Images/s29601592.jpg', N'国学经典', N'Jan  6 2018 12:39AM', N'本书的故事背景设置于1866年的新西兰淘金热时期，十二名男子在一间酒店开会，去往新西兰淘金的沃尔特·穆迪下船后走进了这家名为皇冠的旅店,结果误闯入一个奇怪的“聚会”，引发一连串看似巧合的事件和调查。原来，两周前这里发生了一系列神秘的事件：采矿人埃默里突然失踪；吸毒成瘾的妓女安娜企图自杀；醉汉克罗斯比的小屋里发现了巨额的财富……这些混乱的事件让人们非常不安。于是，十二个像陪审团一样混杂了各色人等的小团体聚集于此开始秘密讨论。 随着每个男人说出自己的片面故事，真假难辨的说词逐渐拼凑出一张交织着同盟与背叛、秘密与谎言、幸运与不幸的大网。有人联手让妓女身陷鸦片毒瘾，有人恋上妓女，有人则是死者的异姓亲兄弟，穆迪很快卷入这重重迷雾中，但他身上也带着自己的秘密……而穆迪在船上目睹的一幕景象，又将与以上事件巧妙串连起来。他们像十二星图一样各自独立运转又互相联系，每个人在其中皆有扮演的角色，自己却浑然不觉。一个个充满了通奸、偷盗、阴谋、走私、敲诈和谋杀的真相，配合着淘金、鸦片窝、降神会和纸牌等光怪陆离的场景，魔幻般的召唤出一个由贪婪与黄金构成的世界。 布克奖评审主席罗伯特·麦克法兰称，“这是一部宏伟的巨著，它是一部耀眼、发光的作品，浩瀚却不涣散。 这本书本身就像是一个金矿，它给予读者的回报是丰厚的。相信每个读者都能从小说纷繁的人物中找到自己熟悉的影子。” “当你最开始读的时候，你会觉得它像是一个慵懒的怪物，但是随后情节发展逐渐加快，扣人心弦。” 布克奖评委们一致认为这是一部具有灵魂的小说，是一个关于爱、欲望、贪婪和谋杀的故事。小说中美、希望和爱最终战胜了贪婪与丑恶。 即使读者完全不懂星相学，仍然不妨碍其尽情享受这个故事。')
INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (20, N'她一生的秘密', N'<p>洛瑞尔后来一直在想，那天，自己若是再慢一些的话，结局会不会不同？她若是再小心些，整件可怕的事情或许能就此改变。但世上没有后悔药，所以事情还是按照原来的轨迹发展。她当时很着急，所以后来发生的事令她非常自责。但那时候，她根本无法控制自己，之前她有多渴望独处，那时候她就多想跟大家在一起，享受热闹的时刻。近来，她的心思就像格林埃克斯农场塔楼上的风向标一样摇摆不定，一会儿一个主意。这种感觉很奇怪，有时甚至很吓人，但也有几分刺激的味道，就像是在海边晃晃悠悠地骑车一样。 这种情况下也很容易受伤&mdash;&mdash;比如这时候，她迫不及待地想加入小溪边的生日聚会，膝盖在树屋的木地板上磕了一下。伤口很疼，她皱着眉头低头看见鲜血流了出来，红得触目惊心，只好折回树屋检查伤口。她一动不动地坐着，看着鲜血从膝盖渗出来。她一边咒骂自己粗心大意，一边担心比利会不会留意到这个丑陋的大伤疤，自己又该怎么遮掩它。这时候，灌木丛那里忽然传来一阵喧哗，声音沙沙簌簌，像是风吹过树叶的响动，但其中还夹杂着别的声音。这声音立马引起了她的注意，她从树屋的窗户往外瞄了一眼，看见巴纳比在宽敞的草地上溜达，光滑的耳朵耷拉在脑袋旁，像两只天鹅绒做的翅膀。母亲穿着自己缝制的夏裙，跟在后面不远的地方。她稳稳当当地抱着小男孩，大步迈过草地，朝花园走来。弟弟穿着一套连体裤，天气炎热，光着一双小脚丫。 尽管母女俩还隔着一段距离，但一阵轻风吹来，母亲嘴里哼的小调清晰地传到洛瑞尔耳中。家里每个孩子都听她哼过这首歌。母亲的手指爬过弟弟的肚子，抚弄着他的下巴，他于是高兴地笑起来，大声喊着：&ldquo;还要，还要！&rdquo;母子俩的注意力全在彼此身上，阳光洒满草地，他们的身影充满了田园之美。洛瑞尔看见母亲和弟弟亲密互动，心里既感动又因自己不在而略感嫉妒。 母亲拔掉门闩，朝屋里走去。洛瑞尔意识到，母亲回来拿蛋糕刀了。 母亲每往前走一步，洛瑞尔弥补的机会就少了一分，她因而有点生闷气。因为这，她既没开口叫住母亲，也没从树屋上爬下来，反而就在树屋上待着了。母亲走进屋子的时候，洛瑞尔就在树屋的地板上坐着，心里既烦闷又开心。 一个呼啦圈轻轻掉在地上，洛瑞尔觉得呼啦圈也支持自己这样。她决定就在树屋待着，哪儿也不去。就让他们多想念她一会儿吧！她心情好起来自然会去溪边的。她决定再看一遍《生日聚会》，想象在远离格林埃克斯农场的地方，她的未来会怎样。她会是个见多识广的美人儿，膝盖上也不会有疤痕。 *** 那个男人，刚出现的时候，像地平线上一个模糊的黑点，站在车道的另一端。后来，洛瑞尔回想起这件事的时候，一直不明白自己为什么会忽然看向那里。她看见男人朝农舍后面走来，以为是比利提前过来接自己了，心里顿时紧张起来。那人的身影慢慢变得清晰，她看清楚他的穿着打扮&mdash;&mdash;深色长裤、长袖衬衣，还戴着一顶黑色旧帽子&mdash;&mdash;这才长舒了一口气。不是比利。 放松下来，洛瑞尔随之感到一阵好奇。家里很少有客人来访，步行过来的就更少了。男人走近时，洛瑞尔总觉得在哪儿见过他，却始终想不起他究竟是谁。于是，洛瑞尔忘了自己在生气，也忘了躲藏，自顾自地打量起那个男人来。 她把胳膊支在窗沿上，双手托着下巴。这个中年人长得不赖；步子不徐不紧，显然是有意而来。洛瑞尔不认识这个男人，他不是父亲村子里的朋友，也不是附近农场的人。他可能是个迷路的旅人，正在找路。但他怎么会往农舍的方向来呢？这里离大路那么远。他难道是吉卜赛人？或者是流浪汉？曾经有流浪汉误打误撞走到农舍来，感激父亲给了他们工作。又或者&mdash;&mdash;洛瑞尔被自己的想法吓得打了个冷战&mdash;&mdash;又或者，他是个精神病人？她在本地的报纸上看到过类似消息，这些人经常去惊扰野餐的人，在下游拐角独自散步的女人往往被吓得不轻。 洛瑞尔打了个哆嗦，吓了自己一跳。随后，她又打了个哈欠。这男人应该不是坏人&mdash;&mdash;现在，她连他身上背的皮包都看得清清楚楚。他可能是个推销员，来向母亲介绍最新的百科全书，尼克森家可离不了这个。 于是，洛瑞尔把目光移开了。 *** 过了几分钟，她听见巴纳比在树下低声吠叫。洛瑞尔爬到窗户边，看见家里的西班牙猎犬站在砖石小径的正中央，十分显眼。男人离农舍更近了，他捣鼓着通向花园的铁门，巴纳比就站在他面前吠叫。 &ldquo;安静点，巴纳比，&rdquo;母亲在屋内训斥着小狗，&ldquo;我们马上就出来了。&rdquo;她从昏暗的大厅里走出来，走到门口时对着小男孩的耳朵说了句悄悄话，亲了亲他胖嘟嘟的脸颊，孩子于是咯咯笑起来。 房子后面，鸡圈旁边早该上油的大门吱吱嘎嘎地响，小狗于是又咆哮起来，背上的毛顺着脊柱散向身体两边。 &ldquo;够了，巴纳比，&rdquo;母亲说，&ldquo;你到底怎么了？&rdquo; 男人转过屋角，母亲朝小径看去，脸上的笑容立马消失了。 &ldquo;你好。&rdquo;陌生人停下来，用手绢擦拭着鬓角，&ldquo;今天天气真不错。&rdquo; 小男孩看见这个陌生的男人，脸上绽放出笑容。他伸出肉乎乎的小手，一张一合，激动地表示欢迎，没人能够拒绝这种邀请。男人于是将手绢放回口袋里，又走近了些。他轻轻地举起手，像是要为小家伙洒圣水。 母亲慌忙走开，速度快得惊人。她拉开孩子，粗暴地放在身后地面上。孩子的光脚丫下面就是砂石地。对这样一个只懂得温柔和爱的小孩来说，这种待遇不啻为一场酷刑。他耷拉着脑袋，哭了起来。 哭声牵动了洛瑞尔的心，但她整个人冻住了一般，迈不开手脚，只感觉后颈上的毛孔一阵刺疼。母亲的脸上浮现出她从未见过的表情。那是恐惧，母亲在害怕。 洛瑞尔觉得有些异常，她一贯的安全感化成青烟散去，冰冷的恐慌取而代之。 &ldquo;你好，桃乐茜，&rdquo;男人朝母亲打招呼，&ldquo;好久不见。&rdquo; 他知道妈妈的名字，他不是陌生人。 他又说些了什么，声音很低，洛瑞尔听不见，母亲则轻轻点了点头。洛瑞尔歪着脑袋，继续偷听。阳光照在她扬起的脸上，她的眼睛闭了那么一秒钟。 接下来的事发生得非常突然。 洛瑞尔永远都记得那道亮晃晃的银色光芒，阳光照在金属的刀刃上，那一瞬间异常美丽。 接着，尼克森家族那把别致的刀子划下来，深深刺进了男人的胸膛。时间似乎慢了下来，尔后又加速流淌。男人一声惊呼，他扭曲的脸上夹杂着吃惊、痛苦以及恐惧。他伸手想去握住骨制的刀把，却发现鲜血沾染了他的衬衣。他倒在地上，温暖的风吹翻他的帽子，吹落进尘土里。 狗儿狂吠起来。小男孩在砂石地面上号啕大哭，通红的小脸儿闪着泪光，伤心极了。但在洛瑞尔耳中，这些声音越来越远，像是隔着她膝盖伤口上流血的汩汩之声。她只听见自己的呼吸声乱成一团，在一片模糊中分外刺耳。 刀柄上的蝴蝶结散开，丝带的尾巴拖在花坛边缘处的碎石上。这是洛瑞尔最后看见的画面。随后，金星闪烁，眼前一黑。</p>', N'~/Images/s29602814.jpg', N'外国名著', N'Jan  6 2018 12:41AM', N'她以为她会在秘密中巧妙地度过这一生，但她错了，秘密永远会寻找出口。 16岁的洛瑞尔正躲在树屋里畅想未来，但这天下午将成为她未来人生中永远挥之不去的阴影——她将目睹一场血案，而这和她母亲有关。 五十年来，秘密依然是秘密，但一张照片的突然出现让洛瑞尔必须拼凑出母亲命运转折的真相。随着洛瑞尔一步步深入母亲内心的纠葛，大半个世纪之前的友谊、爱情、逃亡和冒险都开始一一复活。')
INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (21, N'孤独梦想家', N'<p>第一部分 银河呼叫_001<br />
男孩怀抱一袋莱维斯巧克力和一小盒爆米花，父亲用强有力的手搭在他的肩膀上，引导他穿过铺着地毯的过道。电影尚未开始，但座位上的观众都在看泛着淡淡亮光的屏幕，上面正在播放广告。<br />
第二部分 持续通话_115<br />
几天以来，艾莉始终感觉黑暗将她包围，未来就像是无形的静电，是她无法穿透的，但此时此刻，她看到远处有一个很小却明亮耀眼的光点。<br />
第三部分 蓝色火焰_205<br />
但这里并不是空无一物。宇宙犹如鬼魂出没的黑夜。黑暗的宇宙影影绰绰，此时此刻，三个幽灵像是浅色的鱼从黑暗中游出来，而一直以来，他们就在黑暗中等着托马斯。<br />
感谢_359</p>', N'~/Images/s29608420.jpg', N'现代文学', N'Jan  6 2018 12:42AM', N'如果有人声称他的电话是从外太空给你打来，你会相信吗？ 年过七十岁的老奶奶格拉黛丝就接到了这样一通电话，彼时，她的生活正陷入一团混乱，她与年幼的孙子孙女共同生活，可是她患上了阿尔茨海默病，一家人生活困窘，他们的家庭面临着被驱逐和分散的命运。 托马斯是英国宇航局送入火星的第一位航天员，可他并不想背负所谓科学实验的重任，他愿意踏上这趟没有回头路的太空之旅，只有一个原因：他想自杀，到了火星就自杀。在这之前，他想到了那些曾经在他身边出现又一一离去的人，他想跟自己曾经的爱人做最后的告别，可是阴差阳错地把电话打到了七十一岁的老奶奶格拉黛丝那里。 两个素未谋面的人以不可思议的方式建立了属于他们的联系，陷入绝境的家庭和处于绝望深渊的年轻人成为彼此的希望与寄托……')
INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (22, N'吃瓜时代的儿女们', N'<p>《吃瓜时代的儿女们》是著名作家刘震云暌违五年的又一力作。</p>

<p>四个素不相识的人，农村姑娘牛小丽，省长李安邦，县公路局长杨开拓，市环保局副局长马忠诚，四人不一个县，不一个市，也不一个省，更不是一个阶层；但他们之间，却发生了极为可笑和生死攸关的联系。八竿子打不着的事，穿越大半个中国打着了。于是，眼看他起高楼，眼看他宴宾客，眼看他楼塌了。</p>

<p>深陷其中的人痛不欲生，看热闹的吃瓜群众却乐不可支。</p>

<p>刘震云用老辣之笔，剖析了吃瓜本质；用慈悲之心，探寻了荒诞底线。</p>', N'~/Images/s29590893.jpg', N'现代文学', N'Jan  6 2018 12:44AM', N'《吃瓜时代的儿女们》是著名作家刘震云暌违五年的又一力作。 四个素不相识的人，农村姑娘牛小丽，省长李安邦，县公路局长杨开拓，市环保局副局长马忠诚，四人不一个县，不一个市，也不一个省，更不是一个阶层；但他们之间，却发生了极为可笑和生死攸关的联系。八竿子打不着的事，穿越大半个中国打着了。于是，眼看他起高楼，眼看他宴宾客，眼看他楼塌了。 深陷其中的人痛不欲生，看热闹的吃瓜群众却乐不可支。 刘震云用老辣之笔，剖析了吃瓜本质；用慈悲之心，探寻了荒诞底线。')
INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (23, N'人格裂变的姑娘', N'<p>1993年，我31岁，被诊断患有分离性身份识别障碍（Dissoci-ative Identity Disorder,DID），好多年间，我一直在学习什么是DID，它如何影响我的生活，我是怎么发展出分裂的部分的，怎么与DID一起平凡幸福地生活下去。这本书详细地描写了我的经历。<br />
这10年间，我成为暴力创伤方面的专业顾问和演讲者。到全国各地参会期间，我遇到很多愿意分享他们患有DID的人。不久前，我遇到了一个正因自己的症状崩溃的女人，我告诉她：&ldquo;我记得我也曾经有过像你这样的体验，我都害怕我自己。之后我才意识到，我还是那个我，我只是更加了解我自己了。&rdquo;她含泪看着我：&ldquo;我从没有这样想过。&rdquo;<br />
写出经历最初的 [&hellip;]</p>

<p>摘自：《人格裂变的姑娘》 &mdash; 〔美〕奥尔加&middot;特鲁西略<br />
在豆瓣阅读书店查看：https://read.douban.com/ebook/41840063/<br />
本作品由斯坦威图书授权豆瓣阅读全球范围内电子版制作与发行。<br />
&copy; 版权所有，侵权必究。</p>

<p>&nbsp;</p>

<p>识，直到这个人足够强大或者希望能够面对这些经历。<br />
如果像我这样，虐待持续不断地发生，分裂会成为一种习惯性又强有力的方法。当这个人遇到与创伤经历相似的场景时，他就会自动&ldquo;分裂&rdquo;。举个例子，在我的案例中，如果什么人站得离我很近，我就会觉得与某次有人靠近我并且伤害我的场景吻合，我会认为这是一种威胁，我的大脑就会本能地&ldquo;分裂&rdquo;。<br />
我们现在仍然习惯于把DID称为多重人格障碍（Multiple Personality Disorder,MPD），尽管MPD只是DID中的一种，在《精神障碍诊断与统计手册第四版》（Diagnosticand Statistical Manual of Mental Disor [&hellip;]</p>

<p>摘自：《人格裂变的姑娘》 &mdash; 〔美〕奥尔加&middot;特鲁西略<br />
在豆瓣阅读书店查看：https://read.douban.com/ebook/41840063/<br />
本作品由斯坦威图书授权豆瓣阅读全球范围内电子版制作与发行。<br />
&copy; 版权所有，侵权必究。</p>

<p>&nbsp;</p>

<p>碎片放在一系列的房间里：一个房间里保存着微笑，另一个房间里保存着父亲的脸，还有一个房间保存着深深的孤独与绝望。每个房间都会被锁好，直到下一次我经历同样的侵害和痛苦时才打开。<br />
由于不停地受到伤害，这些房间在我的大脑中有了不同的功能，换言之，创伤经历成为我意识中不同的部分，我喜欢称之为不同部分的我。例如，3岁的部分保存着父亲第一次强奸我的记忆，让我之后的28年不必承受这样的伤痛。有别于完整的记忆和身份，我成为有许多个自己的人，很多人称之为&ldquo;人格状态&rdquo;。在这本书的第二个部分，我会清楚地描写我是如何得知我的不同部分的，我用她们的年纪给她们命名：3岁、7岁等。<br />
你现在大概可以了解&ldquo;分裂&rdquo;是多么方便的技巧 [&hellip;]</p>

<p>摘自：《人格裂变的姑娘》 &mdash; 〔美〕奥尔加&middot;特鲁西略<br />
在豆瓣阅读书店查看：https://read.douban.com/ebook/41840063/<br />
本作品由斯坦威图书授权豆瓣阅读全球范围内电子版制作与发行。<br />
&copy; 版权所有，侵权必究。</p>', N'~/Images/41840063.jpg', N'网文小说', N'Jan  6 2018 12:46AM', N'这是一个家庭暴力幸存者的自述，也是一个多重人格者的整合之路。奥尔加•特鲁希略以回忆录的形式讲述自己从3岁起常常遭遇父亲和哥哥的虐待和性侵。为了保护自己，她通过选择性失忆、幻觉、人格分裂等应对童年创伤。直到31岁，在心理医生的帮助下，奥尔加才得知自己身患分离性身份识别障碍。医生通过自由联想和催眠的方式，帮她整合分裂的人格。这本充满勇气、令人难忘的回忆录展示了作者与最恶劣的环境所作的斗争，并一步步走出心灵的沉疴，也激励着其他所有被创伤困扰的人们走出困境。 奥尔加·特鲁希略（Olga Trujillo），社区律师、专业顾问和演讲者，主要处理家庭暴力、儿童虐待、性侵犯以及创伤带来的影响。曾获得由全国儿童联盟（National Children’s Alliance）颁发的优秀领导奖以及阳光女士基金会和平奖。')
INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (24, N'军武使命', N'<p>第一章 CHAPTER 01 黑水<br />
数年后，全世界范围内的人们总会讨论：漫天的黑色海啸袭来时你在做什么，跟你一起逃跑的人现在还在你身边吗？<br />
2026年4月 阿拉伯海<br />
海军&ldquo;蛟龙&rdquo;特种部队 长坂坡行动<br />
海面在疯狂地起伏，雨点疯狂地拍打着海面。这样的天气并不适合直升机飞行，可是，白色的Z-20&ldquo;海神鹰&rdquo;海军型通用战术直升机还是在风中飞舞着，像是一只在风雨中穿行的白色海燕。<br />
它试图稳住自己的身形，拼命地向东南方向飞行。飞行员的手臂很粗壮，稳稳地抓住操控杆。<br />
直升机里没有人说话，因为所有人的心都提着，虽然这架直升机经过了改装，但是能不能顶住这么大的狂风，仍然是个未知数。<br />
终于，这只白色的海燕穿过了海上 [&hellip;]</p>

<p>摘自：《军武使命》 &mdash; 岁月看客<br />
在豆瓣阅读书店查看：https://read.douban.com/ebook/43079099/<br />
本作品由凤凰联动授权豆瓣阅读全球范围内电子版制作与发行。<br />
&copy; 版权所有，侵权必究。</p>

<p>斗机拖着白色的尾烟照常起降，丝毫没有受到风雨的影响。<br />
&ldquo;奉宁&rdquo;号还算不上正式入列的航空母舰，毕竟当初购买它只是为了训练和试验使用，后来一系列航母下水，海上战斗力形成后，这匹&ldquo;老骥&rdquo;又找到了继续发光发热的途径&mdash;&mdash;成为特种作战前进基地船。<br />
直升机晃动着身躯，接近了航空母舰。<br />
电台因为风雨的干扰发出白噪音&hellip;&hellip;<br />
&ldquo;塔台，塔台，这里是&lsquo;神鹰&rsquo;。请求着陆，请求着陆。&rdquo;<br />
&ldquo;塔台收到，塔台收到，允许着陆，允许着陆。B3区域已经为你们开放，地面接待组已经准备就绪。&rdquo;<br />
雨还在不停地从天空黑色的云朵中滴落下来，&ldquo;海神鹰&rdquo;直升机的起落架稳稳地停在甲板上。<br />
&ldquo;快，快!&rdquo;身穿不同颜色衣服的甲板人员立刻围拢过来，固定飞机， [&hellip;]</p>

<p>摘自：《军武使命》 &mdash; 岁月看客<br />
在豆瓣阅读书店查看：https://read.douban.com/ebook/43079099/<br />
本作品由凤凰联动授权豆瓣阅读全球范围内电子版制作与发行。<br />
&copy; 版权所有，侵权必究。</p>', N'~/Images/43079099.jpg', N'网文小说', N'Jan  6 2018 12:47AM', N'2025年，因未知原因引发的大规模的地震海啸袭击了这世界的大部分地区。为了应对灾难成立了以亚洲国家为主的“亚洲共同体”、以欧美国家为主的“西方联盟”和以第三世界国家为主的“第三秩序”。世界进入三足鼎立的状态。 因为板块变动等一系列原因，全世界的土地面积大规模减少。三大阵营之间剑拔弩张。世界大战一触即发。 世界格局的改变导致隐藏在世界背后的秘密也渐渐的暴露出来，人们闻所未闻的神秘部队，让世界为之惊叹的特殊科技，藏身与人类历史背后的特殊势力...... 不到一年，这场不宣战的战争已经悄然开启。 人类的科技却因为战争的威胁而爆炸式增长。而科技的增长又反过来将世界带入黑暗混乱血腥杀戮的深渊。')
INSERT [dbo].[Book] ([book_id], [book_name], [book_mess], [book_image], [book_type], [book_time], [book_intr]) VALUES (25, N'贞观大闲人', N'<p>&nbsp;&nbsp;李素在挨揍。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一根黑紫色的藤条抓在李素他爹的手里，被抡得虎虎生风，劲气四射，颇具万马军中斩上将首级的气势，一记藤条挥下，狠狠落在李素的屁股上，发出啪的一声脆响。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李素痛呼，奋起自救，三两步躲开骤雨般落下的藤影，围着家里唯一一张破旧桌子和老爹左右周旋。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;瓜怂，给我站住，抽不死你！&rdquo;老爹喘着粗气，恶狠狠地瞪着李素。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李素当然没站住，隔着桌子叹气：&ldquo;爹，能讲道理不？&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老爹冷笑，他是典型的关中汉子，能动手尽量别吵吵。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;讲道理我嘴笨，今就想抽死你！&rdquo;老爹说完狠狠又舞了几下藤条，破空之声令人色变。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;父子俩围着桌子不依不饶又转了几个圈，战况陷入僵持。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这样下去不是办法，李素决定打破这个僵局。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;爹，你若觉得我哪里做得不对，就不能直说吗？&rdquo;李素无奈地试图跟这个不讲道理的老爹讲道理，语气很真诚。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老爹怒哼两声后，脸色稍有缓和，儿子像泥鳅滑不溜手，半晌下来他也追累了，现在有点借坡下驴的意思。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;直说了你会改么？&rdquo;老爹的目光里露出几许期待。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;当然不会，我是怕你憋出病来&hellip;&hellip;&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;父子二人顿时陷入短暂的寂静&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;片刻之后，破旧简陋的小屋内爆发出山崩地裂般的咆哮声，字正腔圆的关中腔。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;受死吧，瓜怂！&rdquo;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;****************************************************************<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李素终于从家中夺门逃出，高一脚低一脚走在乡间田陌上。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;不时有同村的庄户汉子擦肩而过，朝李素露出笑容，笑容里的意味令他恨不得用鞋底子扇他们的脸。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;田陌的尽头是一个小山包，山包上种着几株合抱粗的银杏，山包旁边正是闻名关中的泾河，冬日的泾河上漂浮着一块块薄冰，静静地随波逐流。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李素站在河边，默默看着流淌的河水，心情有些郁卒。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日挨揍的原因一点也不复杂。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大早上起床去井里挑水，准备将家里的水缸注满，挑了几桶后，李素忽然看见水缸中自己的倒影&mdash;&mdash;这年头穷苦人家三餐难继，铜镜这种东西不可能买得起，看见自己俊秀的脸庞随着水波悠悠荡漾，李素不由看呆了，他发现自己很帅，不仅帅而且白，要命的是，居然还有一股子忧郁的气质&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无论在任何时间任何地点，看见如此惊为天人赏心悦目的帅哥，谁会忍下心只看一眼？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于是李素看了第二眼，第三眼&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这一看便是小半个时辰，李素深深陶醉在自己英俊的容颜中不可自拔，浑然不知坐在门槛上的老爹那张老脸不停的抽抽&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寒门庄户人家，出了这么一号不要脸，不，太要脸的货，老爹怎能不勃然大怒？于是抄起离他最近的藤条，待将这孽子大义灭亲击杀于杖下。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老子揍儿子，无论从哪个时代来说都是天经地义，这种毫无道理的天经地义的事还很多，比如&ldquo;阴天里打孩子，闲着也是闲着&rdquo;，又比如&ldquo;棍棒底下出孝子&rdquo;，还比如&ldquo;舍不得孩子套不着狼&rdquo;&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;看看这些流传了不知多少年的混帐话，孩子招谁惹谁了？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;就算老子揍儿子真的天经地义，但&hellip;&hellip;李素来到这个陌生的时代才三天，十五岁的躯壳里藏着三十多岁的灵魂，更重要的是&hellip;&hellip;他和现在的爹根本不熟好不好？两个陌生人相处，哪怕做不到相敬如宾，也不能悍然下此毒手啊。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;没素质！<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&hellip;&hellip;&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一场意外的事故，一个意气风发的中年男人，莫名其妙来到了这个陌生的时代，进入了一具十五岁少年郎的躯壳。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大唐贞观十年，这是个壮丽磅礴的年代，六年前，李世民用刀剑和血光洗尽了当年渭水之盟的耻辱，活擒了**的颉利可汗，大唐兵锋终于渐渐露出了令人不敢直视的锋芒。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;也是这一年，意气风发的李世民失去了挚爱一生的长孙皇后，这个古往今来正面评价最高的女人，以一生的贤良温婉形象，完美地在世人眼中谢幕。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这一年的冬天，李素来了。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;村子并不大，只有一百多户人家，它地处泾河下游，属于泾阳县所辖，离都城长安很近，只有六十里左右，村子以前没有名字，最初是一百多年前的南北朝时期，从遥远的北方躲避突厥人的屠掠而迁移过来的人家，运气好找到了泾河河畔这块富饶的平原，两三户变成十几户，最后一百多户人聚住在一起，几位德高望重的宿老碰头商议了一下，给村子取名叫&ldquo;太平&rdquo;，后来隋朝一统，结束了乱世，太平村的名字也被官府正式载入册籍，这个名字一直延续到如今的大唐贞观。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;躲避战乱的百姓心里，有什么比&ldquo;太平&rdquo;二字更重要？<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;河边搬了一块光滑的石头，李素将石头表面细细的灰尘拂了又拂，直到石头彻底干净了，又蹲在河边使劲洗手，做完这一切后，李素才坐在石头上发呆。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;脑子里很乱，他依然不适应现在这副年轻的躯壳，总觉得浑身别扭。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;无可否认，这是一具健康的身体，年轻，有朝气，可以肯定没有抽烟酗酒贪色之类的坏毛病，除了稍微有点瘦弱，比他前世那被烟酒美色掏空的身体不知好了多少倍。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;然而，终究还是太陌生啊。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;从自己的身体，到触目所及的一草一木，再到整个在李素眼里看来比原始社会好不到哪里去的纯农业社会，陌生得仿佛在梦境中一般，自己似乎只是一个过客，冷眼旁观世间的一切悲喜。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;沉浸在复杂的思绪中，李素不知在河边坐了多久，直到渐渐暗沉的天色笼罩在苍穹之下，李素终于醒过神来，抬头看着天色叹了口气，然后站起身。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;虽然摊上这么一个没礼貌没素质的老爹，但终究是父子相依为命，总不能把他饿死。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;不情不愿回到家里，李素小心侦察了一下敌情，发现老爹合衣卧在床榻上，不知睡没睡着。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&hellip;&hellip;&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李素的爹当然也姓李，名叫李道正，很奇怪，寻常庄农汉子竟有一个如此有内涵有文化的名字，这是个很大的疑点，李素一度怀疑自己的出身一定是富贵至极，只不过老爹和那个显赫的家族为了考验他的品性，故意带着他住在这个贫苦潦倒的庄户人家里，只等他完成&ldquo;苦其心志，劳其筋骨，饿其体肤&rdquo;等诸多考验后再把他接回去享受荣华富贵，从此过上带着狗腿子**庄户人家女儿的美好日子。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三天后，李素发现自己真的想多了，美好憧憬的破碎令李素泪流满面&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这是一个破败的家，很穷，很苦，可以用&ldquo;家徒四壁&rdquo;来形容。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;简陋的床榻，破旧的矮桌，一具用来耕田的破犁头，还有一个磕破了边的铁锅，两只陶碗两双筷子&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这些便组成了一个家庭的全部。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;说实话，李素真觉得老爹应该好好反省一下自己，为什么一个快四十岁的男人会混得如此失败，就这点家当，似乎连路边的叫花子都能挺直了腰杆在父子二人面前充大款了。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;家中没有女人，据说母亲生李素时难产去世，从此父子二人相依为命，老爹也没有再娶的想法。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&mdash;&mdash;想法可能有过，不过家里这凄惨的光景，再加上李素这个十五岁高龄的拖油瓶，怕是没有女人愿意嫁过来吧。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;真的应该感谢老爹，没趁李素襁褓之时把他这个拖油瓶扔井里去然后再娶，足可见庄户汉子是多么的仁义厚道。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;想到这里，白天挨过一顿揍后的怨气莫名消去了不少。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;不消也不行，毕竟是他的亲爹，把他扔井里报复未免太没礼貌了&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&hellip;&hellip;&hellip;&hellip;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;端着一只陶罐，李素叹着气走到米缸前，开始准备做饭。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;揭开米缸的盖子，李素的脸色变了。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;里面空空如也，一粒黍米也找不到。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贞观十年，关中大旱，粮食欠收，虽然官府和主家将粮租一降再降，庄户人家还是食不裹腹。李世民领着满朝文武在太极宫前焚表祭天，哭着喊着求老天给个面子施几滴雨露，求到动情处君臣一千多人嚎啕痛哭不已。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;皇帝是天子，老天爷的儿子，但李世民很可能是老天爷家隔壁王叔叔生的，所以老天不打算给李世民这个面子。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这也就直接造成了春播还没开始，李素家已断了粮。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;站在空荡荡的米缸前，李素的脸色阴晴不定。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ldquo;我生得如此英俊白净，家里却断粮了！&rdquo;李素脸色难看地喃喃自语。<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;尽管两者毫无因果逻辑，但，这就是李素现在的心情。</p>', N'~/Images/180.jpg', N'国学经典', N'Jan  7 2018 12:46AM', N'醒掌天下权，醉卧美人膝，五千年风华烟雨，是非成败转头空！')
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Book_Comment] ON 

INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (13, 11, 10, N'213123123123', CAST(N'2017-12-27T11:38:34.413' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (14, 11, 10, N'3441324', CAST(N'2017-12-27T11:50:28.483' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (15, 11, 10, N'3441324432432', CAST(N'2017-12-27T11:50:31.623' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (16, 11, 10, N'344132443243243242', CAST(N'2017-12-27T11:50:34.600' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (18, 11, 14, N'这真的是一本好书呢', CAST(N'2018-01-05T22:20:13.213' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (19, 11, 15, N'我也觉得这是一本好书', CAST(N'2018-01-05T22:20:41.513' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (20, 12, 14, N'写的太好了，应该超越了家丁和回明！', CAST(N'2018-01-07T00:48:57.517' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (21, 12, 14, N'这书我养了一年多了，现在可以看了吗？', CAST(N'2018-01-07T00:49:49.547' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (22, 11, 14, N'21321', CAST(N'2018-01-07T22:49:14.397' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (23, 11, 14, N'21321321321', CAST(N'2018-01-07T22:49:17.117' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (24, 11, 14, N'afdsdsaffdsa', CAST(N'2018-01-07T22:49:22.997' AS DateTime))
INSERT [dbo].[Book_Comment] ([bc_id], [us_user_id], [bk_book_id], [bc_mess], [bc_time]) VALUES (25, 11, 14, N'qradgfagf', CAST(N'2018-01-07T22:51:55.703' AS DateTime))
SET IDENTITY_INSERT [dbo].[Book_Comment] OFF
SET IDENTITY_INSERT [dbo].[List_book_keep] ON 

INSERT [dbo].[List_book_keep] ([list_book_keep_id], [lbk_list_name], [lbk_book_id]) VALUES (17, N'只是一次测试', 15)
INSERT [dbo].[List_book_keep] ([list_book_keep_id], [lbk_list_name], [lbk_book_id]) VALUES (27, N'存在即是合理', 18)
INSERT [dbo].[List_book_keep] ([list_book_keep_id], [lbk_list_name], [lbk_book_id]) VALUES (28, N'离开的，留下的', 20)
INSERT [dbo].[List_book_keep] ([list_book_keep_id], [lbk_list_name], [lbk_book_id]) VALUES (29, N'这是一首简单的小情歌', 21)
INSERT [dbo].[List_book_keep] ([list_book_keep_id], [lbk_list_name], [lbk_book_id]) VALUES (31, N'离开的，留下的', 14)
SET IDENTITY_INSERT [dbo].[List_book_keep] OFF
SET IDENTITY_INSERT [dbo].[List_Keep] ON 

INSERT [dbo].[List_Keep] ([lk_id], [lk_user_id], [lk_list_name], [lk_time]) VALUES (7, 11, N'离开的，留下的', CAST(N'2018-01-06T03:11:57.773' AS DateTime))
INSERT [dbo].[List_Keep] ([lk_id], [lk_user_id], [lk_list_name], [lk_time]) VALUES (9, 12, N'人之彼岸', CAST(N'2018-01-08T01:16:02.787' AS DateTime))
INSERT [dbo].[List_Keep] ([lk_id], [lk_user_id], [lk_list_name], [lk_time]) VALUES (10, 17, N'当傻直男变成了一只猫，你还会觉得讨厌吗？', CAST(N'2018-01-08T11:18:46.140' AS DateTime))
SET IDENTITY_INSERT [dbo].[List_Keep] OFF
SET IDENTITY_INSERT [dbo].[List1] ON 

INSERT [dbo].[List1] ([list1_id], [list1_user_id], [list1_name], [list1_mess], [list1_image], [list1_time]) VALUES (7, 11, N'这是一首简单的小情歌', N'嗯哼很好', N'~\List_image\s29652135.jpg', CAST(N'2018-01-04T22:36:06.807' AS DateTime))
INSERT [dbo].[List1] ([list1_id], [list1_user_id], [list1_name], [list1_mess], [list1_image], [list1_time]) VALUES (8, 11, N'存在即是合理', N'存在主要又成为热议思潮，当今分裂的时代跟上个世纪的那个时代是多么相像啊', N'~\List_image\s29601677.jpg', CAST(N'2018-01-06T01:15:37.520' AS DateTime))
INSERT [dbo].[List1] ([list1_id], [list1_user_id], [list1_name], [list1_mess], [list1_image], [list1_time]) VALUES (9, 11, N'从大都到上都', N'这条路是元代的辇路，是皇帝往返两都之间的专属性道路，设有十八处纳钵。
这里是山川的终点，草原的起点，贯穿长城内外，是自古以来从蒙古高原进入华北平原的交通要道。
享受历史的丰富，探寻生命的意义，重新发现中国。', N'~\List_image\s29614505.jpg', CAST(N'2018-01-06T01:17:32.363' AS DateTime))
INSERT [dbo].[List1] ([list1_id], [list1_user_id], [list1_name], [list1_mess], [list1_image], [list1_time]) VALUES (10, 11, N'葛亮，与他想说出口的宿命', N'版权归作者所有，任何形式转载请联系作者。
作者：申仙（来自豆瓣）
来源：https://book.douban.com/review/8937526/


西格里夫·萨松写过一句心有猛虎，细嗅蔷薇，被奉做象征派写作手法运用的巅峰。而本书中在隐喻上的使用也几乎是随处可见，与书同名的第一章《谜鸦》自不多说，全文以一只被误认做八哥的乌鸦宠物贯穿前后，以鸟做比本身就不少见，大江健三郎所写的《个人的体验》就将鸟当做是新生的预兆，本书则让乌鸦预示着一种死亡，又代表着女主人心理变化的驱动。而其他篇章中出现的爬山虎、死婴、雪和痣，都成为了一类具象的事物，它们围绕在人物的生活里无数次出现，昭告着不同的领地。', N'~\List_image\s29563980.jpg', CAST(N'2018-01-06T01:19:56.140' AS DateTime))
INSERT [dbo].[List1] ([list1_id], [list1_user_id], [list1_name], [list1_mess], [list1_image], [list1_time]) VALUES (11, 11, N'现实不似你所见', N'有些物理学家是物理学的诗人。他们看待世界或物理现实，如同一首抒情叙事诗，以人类大脑能够破译的隐藏密码写就。卡洛•罗韦利就是其中之一。《现实不似你所见》阅读起来非常愉快，充满了奇妙的类比和想象，也是一首人类精神的赞歌。', N'~\List_image\s29561691.jpg', CAST(N'2018-01-06T01:35:27.173' AS DateTime))
INSERT [dbo].[List1] ([list1_id], [list1_user_id], [list1_name], [list1_mess], [list1_image], [list1_time]) VALUES (12, 11, N'人之彼岸', N'创业者任毅把自己分成多个相同的“自己”，便可以同时兼顾多场活动和约会；有一天钱睿回到家里，发现他刚刚在医院服侍的形如枯槁的母亲，竟然健朗地站在自己的面前；名为陈达的智能管家，“目睹”了主人林达被谋杀……智能产品正在变得更加智能，如果把时间线拉得很长很长，一直长到未来人出生后植入的人工芯片仿佛出生证明一样成为标配，你就再也无法分辨谁是人，谁是AI化的人了。那么这一天来临时，人类会觉得当人更好，还是当AI化的人更好？
郝景芳构思了六个中短篇科幻故事，它们的主角无疑都是人与AI。人与AI隔岸而望，作为理性的AI，是否一定能把人类非理性的一套心理表征学个差不多？在物理环境变成了智能产品的天下之后，人又该如何自处？六篇科幻故事之后，郝景芳用两篇非科幻思考回答了我们关于AI的所有困惑。', N'~\List_image\s29588977.jpg', CAST(N'2018-01-06T01:35:52.300' AS DateTime))
INSERT [dbo].[List1] ([list1_id], [list1_user_id], [list1_name], [list1_mess], [list1_image], [list1_time]) VALUES (13, 11, N'离开的，留下的', N'“我”在未婚夫彼得罗一家人的帮助下，出版了第一本小说，享受着成功的喜悦，而留在那不勒斯的莉拉却身陷贫困而卑贱的工厂生活。“我”像个骑士一样，再度介入莉拉的生活，并动用丈夫一家人的关系，让莉拉和恩佐的生活有了转机——他们成了那不勒斯地区最早学习、掌握计算机技术的人，他们顽强、坚韧的学习能力让他们开始积累了巨大的财富。', N'~\List_image\s29535271.jpg', CAST(N'2018-01-06T01:36:38.703' AS DateTime))
INSERT [dbo].[List1] ([list1_id], [list1_user_id], [list1_name], [list1_mess], [list1_image], [list1_time]) VALUES (15, 17, N'当傻直男变成了一只猫，你还会觉得讨厌吗？', N'她说她家的猫世界第一好看，说她家的猫胖得很瓷实就算洗了澡也不会缩水，说她家的猫非常直男气明明烦人得要死却自以为很幽默。

作为一个没有养过猫的人，就最后一点，我多问了一句，什么叫烦人得要死却自以为很幽默？', N'~\List_image\s29582683.jpg', CAST(N'2018-01-08T11:19:20.980' AS DateTime))
INSERT [dbo].[List1] ([list1_id], [list1_user_id], [list1_name], [list1_mess], [list1_image], [list1_time]) VALUES (16, 17, N'我只能说，幸好他是只猫！', N'文森特•凡•高，迄今为止最有名的画家之一，任谁都能数出几幅他的名画，如《向日葵》《星夜》《吃土豆的人》。但《文森特与凡•高》开了一个很奇特的脑洞，作者把凡•高的名和姓拆开，文森特是一只猫，而凡•高是一个没有天赋的穷画画的，他流传下来的画作都是那只叫文森特的猫画的。', N'~\List_image\p1111360.jpg', CAST(N'2018-01-08T11:20:12.173' AS DateTime))
SET IDENTITY_INSERT [dbo].[List1] OFF
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([mana_id], [mana_name], [mana_pwd]) VALUES (1, N'程鸿昊', N'1')
INSERT [dbo].[Manager] ([mana_id], [mana_name], [mana_pwd]) VALUES (2, N'张雷', N'1')
INSERT [dbo].[Manager] ([mana_id], [mana_name], [mana_pwd]) VALUES (6, N'张雷', N'1')
SET IDENTITY_INSERT [dbo].[Manager] OFF
SET IDENTITY_INSERT [dbo].[Topic] ON 

INSERT [dbo].[Topic] ([top_id], [us_user_id], [top_name], [top_mess], [top_image], [top_type], [top_time]) VALUES (10, 11, N'21321321321', N'<p>432143243214</p>
', N'~\Topic_image\s29652135.jpg', N'传统文学', CAST(N'2018-01-05T00:46:02.703' AS DateTime))
INSERT [dbo].[Topic] ([top_id], [us_user_id], [top_name], [top_mess], [top_image], [top_type], [top_time]) VALUES (12, 11, N'马克·斯特兰德：向潜意识挖掘灵感', N'<p>马克&middot;斯特兰德的童年是在不断的迁移中度过的。1934年，他出生在加拿大爱德华王子岛萨莫塞德一个销售员家庭，四岁时随父母迁居美国，之后，由于父亲工作的原因，相继在美国及哥伦比亚、秘鲁、墨西哥等地度过少年时代，这种居无定所，漂徙不定的童年生活的阴影后来折射在他的诗歌创作中，成为诗人探索人与异化世界的关系，表达人类生存的不确定性与无归属感的灵感来源。</p>

<p>1968年，斯特兰德发表诗集《移动的理由》，开始赢得作为一个诗人的全国性声誉。《保持事物的完整》是中国读者比较熟悉的一首诗，其中的诗句：</p>

<blockquote>桑婪 译</blockquote>

<blockquote>&ldquo;无论我在哪里 我都是缺失的部分。&rdquo;</blockquote>

<blockquote>&ldquo;我移动 是为了保持事物的完整。&rdquo;</blockquote>

<p>表达出自我与虚无之间的矛盾和调停，而这，正是斯特兰德诗歌的重要主题之一。</p>

<p>1957年，马克&middot;斯特兰德毕业于俄亥俄州安蒂奥克学院，获文学学士学位；随后两年，在耶鲁大学学习绘画，并于1959年获美术学士学位。早年的这段绘画经历和毕业后对美术的研究对他后来从事诗歌写作不无裨益，斯特兰德的诗因此善于营造一种宁静幽冥的梦幻色彩和视觉空间，有很强的画面感。如《我母亲在夏末的一个夜晚》，</p>

<blockquote>舒丹丹 译</blockquote>

<blockquote>&ldquo;她站着，倾听屋子， 望着晚来光线的潮气 穿过莎草下沉， 这最后的灰白色的云朵的岛屿 从视野中消褪，风 吹皱了月亮淡灰的外衣， 在黑色的仓房上。&rdquo;</blockquote>

<p>诗人的视角和声音在高与低，远与近，静默与喧嚣，梦幻与真实，意象与絮语之间轻松地游走，呈现出一派沉静而神秘的美感，犹如一帧宁静的黑白照片。</p>

<p>但很快，他就将主要兴趣从绘画转向了诗歌。1960年至1961年，斯特兰德获富布赖特基金资助在意大利和巴西学习诗歌写作，开始了他的诗歌生涯。期间深受巴西当代诗人卡洛斯&middot;德拉蒙德&middot;德&middot;安德拉德的影响。</p>

<p>1962年，在艾奥瓦大学获文学硕士学位并留校执教。之后，斯特兰德先后任教于美国及南美至少15所大学，他用一生的&ldquo;移动&rdquo;践行了他的诗歌理念。</p>

<p>&nbsp;</p>

<p><img src="https://img3.doubanio.com/view/note/l/public/p47509360.webp" /></p>

<p>&nbsp;</p>

<p>1968年，随着诗集《移动的理由》出版，马克&middot;斯特兰德声名雀起，他的诗不仅被选入众多诗集，其文体上的单纯直接及诗中比比皆是的超现实主义的古怪意象更一度被许多年轻诗人竞相效仿。</p>

<p>随后，斯特兰德获奖频频，包括1987年麦克阿瑟基金，1990-1991年美国桂冠诗人称号，1993年博林根奖，以及1998年因诗集《一个人的暴风雪》而获的普利策奖。</p>

<p>&nbsp;</p>

<p><img src="https://img3.doubanio.com/view/note/l/public/p47509361.webp" /></p>

<p>马克&middot;斯特兰德诗集首部简体中文译本 《我们生活的故事》</p>

<p>马克&middot;斯特兰德的诗通常被归入美国新超现实主义和深度意象派，这个流派深受西班牙和拉美超现实主义的影响，认为诗是超自然的艺术。</p>

<p>他们深信，每一个个体内心深处都有一股不应被束缚的野性力量，只有运用自由联想、非逻辑非时序的布局以及怪诞意象的叠加，才能展示和释放灵魂深处的宗教情怀和神性，引领读者进入幻觉世界，使人诗意地感受到现实世界的不确定性。</p>

<p>在这个流派中，对这种超现实主义的黑暗和神性探索最深的当属斯特兰德。斯特兰德的诗歌奇妙地混合了心理冥想和梦魇状态，力求摆脱思想意识的控制，深入挖掘潜意识领域，意象多诉诸日常又超越日常，语言简洁而肯定，在梦幻与现实，抽象和经验之间取得一种奇妙的平衡。</p>

<p>幽冥之思，不祥之兆，孤独与荒凉，自我与他者，缺失与虚无是斯特兰德诗歌的常见主题。他的诗擅长以精准的语言和超现实的意象刺激读者的理性，以丰富的隐喻和怪异的场景激发读者的兴趣，又常从感性世界迅速升华到形而上的境界。</p>

<p>如发表于诗集《移动的理由》中的《食诗》一诗，即是描述一个在图书馆里以诗歌为食，大口吃诗的怪人，之后变成一只狗，让管理员惊骇莫名的荒诞场景，</p>

<blockquote>桑婪 译</blockquote>

<blockquote>&ldquo;墨水从我的嘴角流出。 没有谁像我这样快乐。 我一直在食诗。&rdquo;</blockquote>

<p>但诗人没有停留在&ldquo;诗痴&rdquo;的隐喻以及对感性经验进行直观描写的层面上，而是在食物和语词两种意象之间游转，营设一种超现实的灵异氛围，对诗歌行为进行一种抽象而感性的观感再现。</p>

<p>诗歌最后一节</p>

<blockquote>桑婪 译</blockquote>

<blockquote>&ldquo;我是一个新的人。 我向她汪汪吼叫。 我在书香气的黑暗里高兴地嬉闹。&rdquo;</blockquote>

<p>隐喻了诗歌的力量能将人变成面目一新的&ldquo;新人&rdquo;，诗人兴致勃勃地以语词和意象邀请读者与他共享诗歌带来的这种迷惑和快乐。&ldquo;书香气的黑暗&rdquo;这个意象则点亮了全诗的精神：这是一种神奇的黑暗，一个光线幽暗却弥漫着书香的灵性空间；它预示着光明的前景，是诗歌所展示的无限空间和可能性。</p>

<p>斯特兰德主张诗人应向&ldquo;未知&rdquo;寻找灵感，超过自我的限制进入梦幻境界，在&ldquo;潜意识&rdquo;中获得诗歌的来源和方式。在1978年的散文《诗歌的手艺》中，他说，</p>

<blockquote>舒丹丹 译</blockquote>

<blockquote>&ldquo;诗歌的目的不是揭露，不是讲故事，不是叙述白日梦，也不是某种征候。诗歌就是它自己以及它诞生的方式；诗是自我指向的，不必被任何已知的秩序占先。&rdquo;</blockquote>

<p>他认为，&ldquo;最具伟大价值的诗是那些打破规则以求生存的诗，那些规则总是急迫地教人怎样写诗或怎样不要将诗写得离题。&rdquo;</p>

<p>尽管马克&middot;斯特兰德对写诗规则不感冒，但他还是从他所尊崇的诗人身上学到了不少技巧，如华莱士&middot;斯蒂文斯，伊丽莎白&middot;毕肖普，他的老师唐纳德&middot;加斯提斯，以及他同时代的诗人W.S.默温。他也从他翻译的诗人作品中学习写诗技巧，他曾翻译西班牙诗人拉斐尔&middot;阿尔贝蒂和巴西诗人卡洛斯&middot;德拉蒙德&middot;德&middot;安德拉德的诗作，这两人对他影响较大。</p>

<p><img src="https://img3.doubanio.com/view/note/l/public/p47509363.webp" /></p>

<p>在英语诗歌界，马克&middot;斯特兰德以其句法简洁而独树一帜，以奇特而悲伤的超现实意象最大程度地写出了一种强大清晰度的观察，写出了幻想与现实的相互可换性。</p>

<p>他早期的诗着意营造神秘气氛和探索灵魂的幽暗面，意象荒凉，句式简短，大量的肯定句和重复句夹杂富讽刺意味的幽默感，创造出独特的语感。</p>

<p>后期诗作风格则有所变化，诗句变长，自1978年的诗歌《纪念碑》开始，更有意尝试散文诗的写作。</p>

<p>此外，正如诗集《持续的生命》（1990年）标题所暗示的，斯特兰德对于灵魂极端孤立主题的探索兴趣减弱了，开始更为关注自我与他者之间的关联，力图唤起生命的奇异感与对自身存在的惊奇。有意思的是，他以窥视黑暗的妙法来探讨光明的可能。</p>

<p>收录马克&middot;斯特兰德前半生6部重要诗集，辑录108首佳作的《我们生活的故事》是其诗歌的首部简体中文译本，您可以从中更加直接且真实地感受斯特兰德的魅力。</p>

<p>&nbsp;</p>

<p><img src="https://img3.doubanio.com/view/note/l/public/p47509362.webp" /></p>

<p>《我们生活的故事：马克&middot;斯特兰德诗选（1964&mdash;1978）》 [美]马克&middot;斯特兰德 著 / 桑婪 译 浦睿文化&middot;湖南文艺出版社</p>

<p>马克&middot;斯特兰德，影响一代美国诗人的桂冠诗人，一生获奖无数，其诗歌被翻译成30多种语言。他被称为&ldquo;深沉的异化哀悼者&rdquo;，他机敏、克制，以深刻的智慧讲述我们被遮蔽的生活故事：有关现代生活的孤独、被异化、焦虑，以及面对广阔世界时的无力感。</p>

<p>《我们生活的故事》收录广为流传的《食诗》《新诗歌手册》《美好生活》《献给父亲的挽歌》《来自漫长而悲伤的聚会》《保持事物的完整》等名篇佳作。该诗集是当年度的美国国家图书奖提名作品，《波士顿环球报》的年度好书。</p>
', N'~\Topic_image\p47509359.webp.jpg', N'传统文学', CAST(N'2018-01-05T23:03:03.230' AS DateTime))
INSERT [dbo].[Topic] ([top_id], [us_user_id], [top_name], [top_mess], [top_image], [top_type], [top_time]) VALUES (13, 12, N'新的一年，你应该抡圆了生活', N'<p>版权归作者所有，任何形式转载请联系作者。<br />
作者：新经典（来自豆瓣）<br />
来源：https://www.douban.com/note/652250840/</p>

<p>时隔十五年，鲁豫最新作品《偶遇》终于与大家见面了。两年来，上万封读者来信，一百多个夜晚，鲁豫用她的人生经验与智慧，回应这个时代的悲喜。一封封来信，一个个故事，都是当代人面临的最典型、最艰难、最普遍的问题。鲁豫用她的诚恳，如知己，如诤友般，一往一复，回应彼此内心的艰难，把她对朋友、对爱情、对生活、对命运、对挫折、对时间的态度，都写进了新书《偶遇》。泥泞人生，这是鲁豫与他人的心灵偶遇，也是与这个时代的偶遇。</p>

<p>《偶遇》从多个层面展示了这个时代的爱、忧伤与困惑，是鲁豫继百万畅销书《心相约》十五年后，又一本力作。在本书中，鲁豫一改主持人发问的样貌，成为一个与年轻人热切交流的回答者，她自称小胖，用一颗赤诚之心，一颗对世界对生命对爱情的初心，来回应这个时代。</p>

<p>这个周末，新经典已为你选好去处，1月7日14点鲁豫现身王府井书店六楼多功能厅，与大家近距离互动，于万千书迷的福利，你一定要来哦！</p>

<p><br />
新的一年，你应该抡圆了生活</p>

<p>人性的脆弱、复杂会让情感不堪一击，因为所有的情感都不是板上钉钉的，都需要运气和努力，哪怕是看似理所应当的血脉亲情。</p>

<p>秋荔的来信</p>

<p>小胖，你好。马上要过年了，人人都在忙着买礼物、回家、团聚， 而我还没买票。</p>

<p>今年再不回家的话，这就是我第五个不回家的春节了。不是因为工作忙、路远，也不是因为没钱，是家里那个闷头猛抽烟的男人&mdash;我的父亲，一个从来不会笑的人。他身上那种无声的压力和冷漠，让我待在那个家的每一分每一秒都感觉窒息。</p>

<p>我跟他一年说的话，不会比我跟同事一天说得多。</p>

<p>农历腊月二十七，一周之后，是我的生日，但是我的朋友们没人知道。我骗他们说我生在大年夜，其实不是。我今年二十六岁，二十六年来我从来不过生日，因为这一天是我两位最亲的亲人的忌日！一位是我妈妈，一个大美女，人人都说我跟她长得像，可我只在照片里见过她。另一位是我弟弟，他只在这个世界上活了十几分钟，连一声哭声都没发出过。</p>

<p>1990 年腊月二十七，二十六年前我出生的那天，我妈在手术台上挣扎了几个小时后精疲力竭。医生说她羊水栓塞，撑不住了。我孪生弟弟被剖腹产生下来送去急救。到最后，母子三人只有我活了下来！我奶奶说爸爸昏过去两次，休克，样子非常可怕。他醒来后，不抱我，连看都不看。</p>

<p>我从小体质差，黄疸、肺炎都得过，在暖箱里待了很久。奶奶说我像一只病老鼠，从小病恹恹的没精神。姑姑们说我命硬，我长大后才明白她们口中的命硬，是会把亲人克死的意思。</p>

<p>如果可以选，我宁可从没出生，让我妈、我弟弟他们活下来， 或者我跟他们一起死了也好！从我生下来，我就被唯一的亲人漠视。所有谈起我妈和死去的弟弟的人都摇头叹息，在我面前叹气，好像我是带了两条命活下来的。没有人想过这是我能决定的吗！</p>

<p>从小到大，爸爸只是给钱让奶奶养大我，他连高中毕业必须到场的家长会都不去。我极少极少跟他单独接触，他很少说话，从来不笑，每次见面我都感觉他又老了很多，因为每次见他都隔了小半年。我上学的时候他出去打工，我工作了见面更少。我一年回家两次，住在奶奶家，他来看看，有时候连顿饭都不吃。</p>

<p>大二那年我得了肺炎，自己一个人在医院里打吊针，给奶奶打了很多电话没人接，最后打给他。我紧张得要命，那是我第一次对他哭。我在电话里什么话也说不出来，真的哭了很久，各种情绪混杂在一起，可直到最后，他也没有说一句安慰的话，哪怕是告诉我不要害怕。他给我打了钱，就像小时候把钱给奶奶一样，好像钱能解决一切问题，可能我是生是死都跟他无关吧。</p>

<p>看起来不能理解？呵呵，我生在一个重男轻女的家族里。我爷爷没给他的女儿们留任何遗产，我是这个家族里最小的女孩，是我爸唯一的孩子，是个女儿。我活下来了，他的儿子和妻子走了。所以，都能理解了。</p>

<p>对不起，小胖，我的故事有点负向，希望没影响你的心情。我不知道要不要回家，每年年底都会犹豫。奶奶几年前就开始轮流在儿女家过年，我回去只能去找他。他老了，快六十岁的人了，得了风湿病。我也想给他买东西，像我的同事们那样，从网上买大包小包的东西寄回家，可他会给回应吗？我甚至怀疑他会要吗？</p>

<p>想起他那种状态，冷淡到死，我想想都怕。小胖，我也想家， 可我真的不知道怎么办。</p>

<p><br />
小裴的来信</p>

<p>鲁豫姐，我是一个&ldquo;90 后&rdquo;女孩。三岁时一场大火改变了我的一生，我死里逃生，却留下永久的残疾。56 57</p>

<p>对一个女孩而言，烧伤带来的残疾是贯穿终身的烦恼。六年前， 我有幸遇到了一个不在乎我残缺的男孩子，他对我很好，我们的感情稳定而细腻。因为认识了他，我对生活重抱希望。我在上学他在上班，他虽不会说什么甜言蜜语，但只要逢年过节，他就会偷偷给我买一束花，会在我生日时偷偷给我买礼物，不昂贵，却用心；不精致，却温暖。</p>

<p>他是个温柔的人，小心保护着我因残疾而异常敏感和自卑的一颗心。走在街上，他故意无视路人对我异样的目光。他不会给我承诺，他说，说再多做不到又有什么用？但只要他能为我做到的，我不说他都会去做。自我们认识，从没变过。</p>

<p>可是，我们却怎么也没办法在一起，因为他家人一直不同意。的确，我是一个残疾人，我能理解他家里人的担忧和不满，可是我也想和自己爱的人在一起。我一直努力着和别人一样，我会做饭会洗衣服，会自己扎头发，她们会的我都会，可我却不能像她们一样和自己爱的人在一起。</p>

<p>曾经，他被家人打得流血，全家人求他放弃，可他说他做不到。他常说我做梦都想娶你，他常说一边是我最爱的人，一边是家人，怎么选择都是痛苦的。为了不让他为难，我们也曾试过几次放弃， 可是不行。人都是有感情的，六年相守，彼此依赖，我们离不开对方。</p>

<p>今年10 月，我来到他上班的城市，每天和他一起上班下班，回去给他做饭洗衣服，那是我最快乐的日子。后来我发现自己怀孕了， 我们都想把宝宝生下来，可他家人逼着我打掉了，那之后也把他带走了。我走之前，给叔叔（他的父亲）买了袄，因为知道他们要回家，而家里已经很冷。我爱他，所以也爱他的家人，我不恨他们，我理解他们对儿子婚姻的企盼。</p>

<p>可是，我也就想简简单单地和自己爱的人在一起。我身体残缺， 但心智和灵魂都是健全的，也并不影响正常生活。鲁豫姐，假如我们两个一起逃离家庭的束缚，执意去过想要的生活，他会快乐吗？一段时间之后，他会后悔吗？不被祝福的爱情会有永久的幸福吗？</p>

<p><br />
小胖的回信</p>

<p>Debbie Reynolds（黛比&middot;雷诺兹）和CarrieFisher（凯丽&middot;费雪） 母女俩年初的时候相继离世，前后仅隔了一天的时间。关于她俩的娱乐八卦，请大家自己去百度，我就不重复了，但她们各自的代表作《雨中曲》《星球大战》《当哈利遇到莎莉》，还有以她俩为原型的Postcards From The Edge (《岁月星尘》) 都可以抽空再看看。</p>

<p>母女俩最终葬在了一起，据说有一部分骨灰还特意混在了一块儿。人生最后的几年，她们的确是母女情深，可是曾经有十年，两个人断绝了往来。Carrie 说，她从小就痛恨生活在Debbie 的光环下。Debbie 也说，她不烤饼干，不接送孩子上学放学，她喜欢舞台。</p>

<p>我曾经非常不理解，父子、母女、亲人之间怎么会形同陌路， 甚至反目成仇？现在有点明白了，人性的脆弱、复杂会让情感不堪一击，因为所有的情感都不是板上钉钉的，都需要运气和努力，哪怕是看似理所应当的血脉亲情。</p>

<p>很同情秋荔的遭遇，但是我没法儿鼓励你，因为我是个悲观的人。我觉得好的情感都有可能变糟，而已经糟透了的情感变好几乎没什么可能。</p>

<p>但我要告诉你的是：你爸不是坏人，他不渣，他只是没了爱的力气和能力。</p>

<p>他失去妻子、儿子的那天就已经死了一半，剩下的一半只够他自己勉强地活下去。他是一个被悲伤完全击垮、根本无法复原的男人。你不能奢望一个心如死灰的人来爱你。</p>

<p>或者，在他心里，对你是有爱的，只是他的爱被厚重的悲哀伤痛完全包裹住了，既无法表达，也感受不到。</p>

<p>但是，你可以选择做女儿的方式。过年回家当然令人向往，孝顺当然必要，但是孝顺和亲情除了必需、必要之外，还应该是自然随意的。如果回家让你那么痛苦，如果你爸的冷漠让你完全无法承受，那春节你就不回家，又怎么了？</p>

<p>尽你所能，但是也要放过自己。</p>

<p>我没有办法预言，时间能不能够修补你和父亲之间的关系。我希望你们能够像Debbie和Carrie母女一样，有一天尽释前嫌。但是无论怎样，将来你爸老了，你要尽赡养的义务，因为人性最终应该超越情感。</p>

<p>还有小裴问我，男友会不会有一天后悔，不被祝福的爱情会有永久的幸福吗？我告诉你，就算被全天下看好、祝福、保佑的爱情，也不一定天长地久，也许天长地久本来就是传说。</p>

<p>所以，我们不是不要去爱，我们恰恰要去爱，既然明天那么不靠谱，那我们就为今天活着呗。所以小裴，你尤其要去爱。</p>

<p>有一点我不明白，也挺愤怒的：为什么一个成年的女性可以被强迫去打胎？！</p>

<p>小裴你要记住，你的身体选择权在你，你怎么会这么傻、这么懦弱，他们是不是威胁你了或者胁迫你了、伤害你了，如果是，你要立刻报警。</p>

<p>如果他们只是管闲事儿，所谓的晓之以理动之以情，那你就该让他们滚。小裴你是那种真正浴火重生的人，你更应该活得够本。</p>

<p>上中学的时候，我们班一个男生老说&ldquo;抡圆了生活&rdquo;，我特别喜欢这句话。你真的应该抡圆了生活。你想你连死都不怕，你还怕活吗？</p>

<p>真的，秋荔、小裴，我要祝福你们：新的一年，得勇敢点儿。</p>
', N'~\Topic_image\s29587930.jpg', N'青春小说', CAST(N'2018-01-07T00:53:19.767' AS DateTime))
INSERT [dbo].[Topic] ([top_id], [us_user_id], [top_name], [top_mess], [top_image], [top_type], [top_time]) VALUES (14, 14, N'韩陌，你说的“别闹”是什么意思？', N'<p>我把对你的思念写在海角沙寄给那年七号的雨季，有一些等待不能太漫长。<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;---《海角七号》东来东往</p>

<p>曾经很文青的时候听这首《海角七号》，当时并没有开始谈恋爱，但是感觉歌词很触动自己的灵魂，爱情是美好而忧郁的，是天使和魔鬼的共同体。</p>

<p>曾经在网上看到，说爱情其实是一道数学题，每个人的初始分为一百分，然后，两个人相处的过程中，优点加分，缺点减分，因为两个人靠的太近，缺点总是暴露的比优点更快，一直减分，直到两个人都累了，就开始计划分开，放大家各自去生活。</p>

<p>曾经还有一个说法，如果有一种东西能让女人变成&ldquo;侦探&rdquo;，那么，这绝对是因为爱情。我们总希望女人永远天真，可是，就像梁静茹的《问》一样，爱是女人的灵魂。这世间，最经不起比较的就是爱情。就像是别人家孩子一样的存在，别人家的老公如何如何好，别人家的老婆如何如何好。如果一旦开始做比较，那将是各种破败不堪。</p>

<p>这些曾经，满目疮痍。</p>

<p>在女人和男人的基础上，男人可以因为事业家庭而活着，女人会为了爱放弃事业，专心家庭，做一个贤内助，男人总是说：我抱起了砖，就无法拥抱你。其实女人也是一样，她不依赖独立一点，希望她省钱又希望它时尚，希望她有主见又不希望她固执，扪心自问你是在找媳妇吗？你确定你找的不是观音菩萨？有事业，漂亮，不固执，时尚，兼济苍生。韩陌就不会这么想，他要让苏想做什么做什么，淡淡的陪伴，虽然少了一点轰轰烈烈。</p>

<p>他们总是说我比较适合看言情类的书，一开始的时候，我心里也住了一个小公主，她也喜欢霸道总裁也喜欢小惊喜，后来小公主就长大了，她变成了一个食尽人间烟火的公主了，她的爱情观，开始有&ldquo;毒&rdquo;了。</p>

<p>风染白说的没错，&ldquo;时光这个东西是最无情的&rdquo;。从校服到婚纱的爱情，因为两个人之间的冷漠，没有火花而走向了离婚，重生后的苏小冉必然会变成钻石。</p>

<p>韩陌，其实真的是一个好男人。他有作为一个男人的担当，对自己心爱的女人的包容，默默付出，不计代价和后果的保护对方。开始，我讨厌韩陌，他总说：不要那么关心别人，管好你自己。我觉得他很自私，朋友有难，帮忙再正常不过了。直到，后记里高哥说：秦素素事件韩陌力排众议，第一次公私不分；苏在英国遭遇，也是他救护，保护她；飞机遇难事件，也是不惜代价的保护。这样的韩陌，还是那个白衣黑裤，笑容明媚说着：陌上花开，可缓缓归矣。</p>

<p>原来，在爱里一直卑微的不是苏小冉，是韩陌。苏和任何男生在一个平面图，他都会嫉妒，他没有疯狂的报复谁，只是默默地隐忍。</p>

<p>如果可以，让我们单手&ldquo;抱砖&rdquo;，另一只手，手牵手，约定一生一世一起走，一路人间共白头。</p>

<p>不得不说，这本书的题目很合适，《时光深处》，再见，再也不见，终于再见。痴缠的爱情，最是磨人，经历了时间考验和沉淀，留下来的，才是爱。相比较于《好久不见，秦先生》我可能更喜欢这本，我希望世界上的男人都像韩一样，千帆历尽，仍只守护一人。</p>

<p>姑娘，愿你早日遇良人。</p>
', N'~\Topic_image\p1099516.jpg', N'青春小说', CAST(N'2018-01-08T10:15:08.653' AS DateTime))
INSERT [dbo].[Topic] ([top_id], [us_user_id], [top_name], [top_mess], [top_image], [top_type], [top_time]) VALUES (15, 14, N'内在观念的熏染，需要几代人共同的努力', N'<p>几年前读过《遇见孩子，遇见更好的自己》，书中那句&ldquo;我们教育孩子，往往不是因为爱，而是因为害怕&rdquo;，当时心中的震撼现今依然能感觉到。<br />
<br />
如果见到作者的新书，毫不犹豫下单。读完之后，发现这本书有很熟悉的感觉。<br />
<br />
对我们这些七八十年代人来说，我们的父母就是这样教育我们的，做人要&ldquo;踏踏实实&rdquo;&ldquo;心口一致&rdquo;&ldquo;言而有信&rdquo;，年轻时候的我们，忙于进入新世界，学习新知识，对这些老生常谈很是不屑。<br />
<br />
现在年岁大了，自己也做了父母，发现当年父母的老生常谈一直印刻在我们身上，成为了我们的内核。如今，在面对自己的孩子的时候，这些在互联网时代成长起来的00后们，发现我们很难跟上他们的脚步，能够对他们或多或少产生影响的，还是这些传统的价值观。<br />
<br />
这其实是人性最基本的东西，可以代代相传的精神内核。<br />
<br />
除了道理之外，这本书还提供了方法，就是副标题&mdash;&mdash;找到彼此沟通的语言。<br />
<br />
我想，亲子之间的价值观相同，无论社会如何发展，代际之间差距会有多大，父母与子女之间总能找到相同的话题。<br />
<br />
我想，亲子之间只要心灵相通，总会找就接触的桥梁，不会出现&ldquo;同处一室却无话可说，彼此深爱却互不相识，渴望表达却没有语言&rdquo;的僵局。<br />
<br />
我想，内在观念的熏染与传承，需要亲子之间、甚至是几代人共同的努力，所以《遇见孩子，遇见更好的自己（挑战篇）》可以成为一本&ldquo;几代人共同的书&rdquo;。</p>
', N'~\Topic_image\s29559387.jpg', N'青春小说', CAST(N'2018-01-08T10:16:54.390' AS DateTime))
INSERT [dbo].[Topic] ([top_id], [us_user_id], [top_name], [top_mess], [top_image], [top_type], [top_time]) VALUES (16, 15, N'读有匪——我有过的那些感动', N'<p>版权归作者所有，任何形式转载请联系作者。<br />
作者：绿洲月牙泉（来自豆瓣）<br />
来源：https://book.douban.com/review/8939453/</p>

<p><br />
有一段时间总是翻来覆去地看有匪，感想太多也不知道从哪里开始抒发比较好，基本上皮皮给了一定篇幅的人物都会给我一些感触，重要的不重要的，一起构成了那个江湖庙堂。<br />
&nbsp;&nbsp;&nbsp;&nbsp;霉霉&mdash;&mdash;就是谢允&mdash;&mdash;是个让我不能不爱的角色。印象中皮皮写过的人基本都不是靠外貌描写来吸引我的，更多的是因为性格和经历，霉霉当然不例外，但他比较特别的就在于，皮皮对他出场的戏份用了对眼睛的特写：&ldquo;他约莫弱冠之龄，长着一双平湖似的眼睛，仿佛能把周围微末的月光悉数收敛进来，映出一弯纹丝不动的月色，极亮、也极安静。&rdquo;<br />
&nbsp;&nbsp;&nbsp;&nbsp;这双眼睛可以说一下子吸引了我，我第一感觉是眼前一亮，这个人一定很特别，他到底经历过什么，才能拥有这样一双不动声色的眼睛呢。<br />
&nbsp;&nbsp;&nbsp;&nbsp;霉霉和我们阿翡我一直觉得是两种经历下的同一种人，阿翡在桃花源一样的蜀中长大，天生有点直肠，而霉霉尝过对人世的失望和无奈之后还能每天开开心心，他扮千岁忧时扇面上题有&ldquo;生年不满百，常怀千岁忧&rdquo;的句子，他心里不可能不苦，一出生就注定的某些东西就压在他身上。印象非常深刻的是番外里写到他小时候的事情，那个自杀的太监给了他多大的震撼，时过境迁已经不得而知，但是不管曾经有过什么，他都扛下来了，还能写出《白骨传》来敌我不分地挖苦，是我们的想得开居士了。<br />
&nbsp;&nbsp;&nbsp;&nbsp;但真正给我第一次触动的应该是阿翡问他为什么因为一个老头哭坟就心甘情愿地去蜀中跑腿蹚浑水，他当时的回答是标准的溜嘴皮子，但也是他的心里话：&ldquo;这样的大英雄，趴在野地里哭得爬不起来，就像你这样漂亮的小姑娘有一天年华不再，苍颜白发一样让人难过，我既然碰见了，合该要管一管的。&rdquo;<br />
&nbsp;&nbsp;&nbsp;&nbsp;这让我想起一句话：自古美人如名将，不许人间见白头。<br />
&nbsp;&nbsp;&nbsp;&nbsp;我第一次读到那里的时候和周翡一样，是似懂非懂的。后来反刍，渐渐能明白他的意思，英雄迟暮，是很让人难过的。有匪里写到的霉霉，已经是那个能云淡风轻地面对一切，嬉笑人生的霉霉了，几乎没怎么见他烦恼过。但是他必然也有过难捱的时候，否则怎么会有后来的《离恨楼》、《白骨传》。一个人要悟到自己的人生，把人生经历拿出来玩笑一番，是需要极大的魄力和勇气的。<br />
&nbsp;&nbsp;&nbsp;&nbsp;以我看来，在地牢里和白骨阑珊月为伴的霉霉不落魄，那个在海岛上昏迷不醒的霉霉和平时的他也没什么不同，甚至后来危在旦夕，仍旧被关在&ldquo;金丝笼&rdquo;里要登基的霉霉，也是极有风度的。他狼狈的时刻有二，一是在蜀中为了阿翡而用了武功，导致自己身上的毒发作，于是想要离开的他，当时有一句话，火星四溅地砸进我心里：而举世尘埃飞舞，他这一颗却行将落定。<br />
&nbsp;&nbsp;&nbsp;&nbsp;我不知道他是抱着怎样的心情去赴死的，甚至连告别的话都没有说出，但是当时看得人很心疼。<br />
另外一处是京城酒楼上，假装不介怀地和阿翡讨论自己将来死之后的事情，最后却忍不住说：&ldquo;我想求你嫁一个短命的丈夫，这样二十年后我还能去找你。&rdquo;<br />
&nbsp;&nbsp;&nbsp;&nbsp;让人忍不住捂眼睛。<br />
&nbsp;&nbsp;&nbsp;&nbsp;而我最最喜欢的，是祭天时出现的霉霉：&ldquo;一个好像风吹便能倒下的人不知什么时候落到了小巷上面的墙上，一袭隆重的华服水淋淋地拖在地上，发冠也已经在砸殷沛的时候丢开了，发丝略显凌乱，盖了一层无论如何也化不开的细雪，好似花白了一片&hellip;&hellip;可他整个人却依然好似清风掠过高楼时端坐闻笛的翩翩公子。&rdquo;<br />
&nbsp;&nbsp;&nbsp;&nbsp;时隔数年，那个因为开罪李大当家，在四十八寨东躲西藏一宿，然后坐在树上吹一首破阵子的谢允，还是他，风采不减。<br />
&nbsp;&nbsp;&nbsp;&nbsp;这个人不能不喜欢，没法不喜欢。<br />
&nbsp;&nbsp;&nbsp;&nbsp;结局过后的番外里写，他想给媳妇做个男丫鬟。鬼门关前走几遭，他终于可以摆脱那副枷锁，过自己的平淡生活去了。<br />
&nbsp;&nbsp;&nbsp;&nbsp;祝福他。<br />
&nbsp;&nbsp;&nbsp;&nbsp;阿翡就留来压轴好了，说完霉霉，说一说段九娘。<br />
&nbsp;&nbsp;&nbsp;&nbsp;江湖上响当当的人物里，一字排开，双刀分南北，一剑定山川，关西枯荣手，蓬莱有散仙。最让我印象深刻的就是枯荣手段九娘。她这个人和南北刀山川剑放在一起显得不怎么正道，性格突出，年轻时狂得没边，出场时疯疯癫癫。<br />
&nbsp;&nbsp;&nbsp;&nbsp;我第一次看到她的部分，和阿翡一样心里是窝火的，直到后来重温，看到她和阿翡试刀，被一招捕风突然抓住心脏，鼻子一酸，为她流了泪。<br />
&nbsp;&nbsp;&nbsp;&nbsp;皮皮描写她在油灯下的样子，皱纹淡去，可以看出是个美人。一份情痴了二十年，临死前还念念不忘。她无心插柳的一道枯荣真气，阴差阳错成了阿翡刀法的一大助力，当年她心心念念要打赢心上人，二十年后在那个人的后代身上，集了两人的功夫，不知是不是巧合。<br />
&nbsp;&nbsp;&nbsp;&nbsp;她让人生气，却也是可爱又可怜，会温柔地为阿翡扎上头发，面对两大北斗时狂傲不减当年，同样也重情重诺，因为姐姐的央求，留在一个破院子里给人当被冷落的小妾二十年。<br />
&nbsp;&nbsp;&nbsp;&nbsp;希望她下辈子能得偿所愿。<br />
&nbsp;&nbsp;&nbsp;&nbsp;而她的心上人，江湖上成了神话的南刀李徵，阿翡的外祖父，正文里着墨不多，只有阿翡梦境里温柔的一笔，却已经让人神往。直到《少年弟子江湖老》里面此人初露眉角，是个打扮普普通通，性格温吞的人，却让人一看就喜欢。他是个对孩子碎嘴的老妈子，是个得过且过能避则避的吃货，也是个路见不平拔刀相助的大侠，是奉旨为匪的李老债主，无数人心中的大英雄。<br />
&nbsp;&nbsp;&nbsp;&nbsp;这样的人，也难怪会有后来的四十八寨。<br />
&nbsp;&nbsp;&nbsp;&nbsp;相比于南刀李徵之后有李瑾容杀伐果断，阿翡又是个武痴，硬是把破雪刀继承了下来，北刀要落魄得多，北刀后人纪云沉出场的时候是窝在一家小客栈，怎么看怎么对不起北刀的名声，更何况纪云沉和殷沛、花正隆之间一堆烂账，看得人一肚子气。<br />
&nbsp;&nbsp;&nbsp;&nbsp;他因为年少冲动酿成大错，然后固执又愚昧地为殷沛牺牲自己，可惜殷沛还是长成了一个混蛋，他谁都对不起，谁都辜负了。<br />
&nbsp;&nbsp;&nbsp;&nbsp;但是等到他死的时候，我的气又没了。<br />
&nbsp;&nbsp;&nbsp;&nbsp;不知道是那场雨浇灭了我心里的火，还是这个人的姿态最终打动了我，回光返照三炷香的时间，让他能杀了仇人，最后在地道里咽气，这个看的让人来气的故事，不知怎么就叫我哽咽了。<br />
&nbsp;&nbsp;&nbsp;&nbsp;少年听雨歌楼上，红烛昏罗帐&hellip;&hellip;而今听雨僧庐下，鬓已星星也。<br />
&nbsp;&nbsp;&nbsp;&nbsp;他也曾经意气风发，带着他的刀入关来，想闯一番大事业。<br />
&nbsp;&nbsp;&nbsp;&nbsp;没有什么比这样弄人的命运更叫人叹息，更叫人怜悯。<br />
&nbsp;&nbsp;&nbsp;&nbsp;说了纪云沉不得不说殷沛，关山剑殷闻岚之后，名门正派硬是把自己混成了邪魔外道。在整个正文里，我都是很讨厌他的，一个人经历过什么，都不是他可以用来堂而皇之报复社会的理由，他最后把自己弄得人不人鬼不鬼，我始终只有一句活该。<br />
&nbsp;&nbsp;&nbsp;&nbsp;但是后来我发现，他也可以有另一种命运。当我读完关于他身世的那个番外，不得不感叹一句造化弄人，福兮祸之所倚，没什么是绝对的。如果说他之前给我留下的印象是使劲蹦跶的跳梁小丑，活得比别的稍微久一些，顽强一些，那么后来，就是一个稀里糊涂走上绝路的可怜人了。<br />
&nbsp;&nbsp;&nbsp;&nbsp;他临死前阿翡的一句话，让他走得好受一些，却让我难过得不行。<br />
&nbsp;&nbsp;&nbsp;&nbsp;你名叫作殷沛，乃是殷闻岚之子&hellip;&hellip;<br />
&nbsp;&nbsp;&nbsp;&nbsp;出身于名门正派。<br />
&nbsp;&nbsp;&nbsp;&nbsp;他坏事做绝，为了给因海天一色盟约而丧命的家人报仇，我很想很想问他，那你为什么这么对待养大你的纪云沉，为什么这么对待自己，明明有更好的解决方法。可是如果换一条路就不是这个殷沛了，各人有各人的路，他就是选择了最残忍的方式。<br />
&nbsp;&nbsp;&nbsp;&nbsp;我不觉得他无辜，但觉得他很可怜。<br />
&nbsp;&nbsp;&nbsp;&nbsp;这和对纪云沉的那种，一路看过来，忽然发现他也是个人物的惋惜不同，是很纯粹的同情，揪心得不知如何是好的同情。<br />
&nbsp;&nbsp;&nbsp;&nbsp;提到海天一色盟约，它牵扯的人太广了。上一辈的人，大多因它受害甚至死去，李徵是，霍老堡主是，殷闻岚是，还有很多人都牵涉其中。一手堆起海天盟约的梁绍，更是促成了有匪开篇的故事，霉霉上蜀山。<br />
&nbsp;&nbsp;&nbsp;&nbsp;霉霉对梁绍的评价是，一手扶起半壁江山，算个英雄。<br />
&nbsp;&nbsp;&nbsp;&nbsp;这个人不可谓不厉害的，海天一色，假作真时真亦假，他机关算尽，海天一色针对的对象还真给他算计了进去。<br />
&nbsp;&nbsp;&nbsp;&nbsp;虽然若干年后，他的算计被捅了个底朝天，但他最初的目的已经达成，赵渊皇帝终身会活在恐惧中。<br />
&nbsp;&nbsp;&nbsp;&nbsp;和海天一色盟约有关的还有一个出乎我意料的人，是活人死人山的朱雀主木小乔。活人死人山是妥妥的反派，青龙白虎玄武三主都死于非命，最后只有一个木小乔还在。他刚出来的时候给人一种非常病态的感觉，在故事发展中扮演的角色也很模糊，到最后番外中才能窥探一二，亦正亦邪，不由得让人感叹，每个人都有他的无可奈何。<br />
&nbsp;&nbsp;&nbsp;&nbsp;而有匪这个故事中最大的反派应属北斗，他们直接或间接的促成了无数人的死亡和悲剧，连李徵也是遭到了他们的算计。七个北斗里有诸如仇天玑这样的跳梁小丑，也有沈天枢这样让人无法用一句话评价的人。沈天枢是这里面给我印象最深刻的，从在华容时利用仇天玑杀死段九娘的狠绝，到被直面戳破的两面三刀，他这个人，既是有武学天份的奇才，是可以很狂傲地说出我只效忠先帝的贪狼星，也是一个十足的小人。<br />
&nbsp;&nbsp;&nbsp;&nbsp;我不知道应该说他坏还是恶，为恶一生究竟是为了什么，这些都只有他自己知道。<br />
&nbsp;&nbsp;&nbsp;&nbsp;讲到北斗了还得绕回来，说说阿翡的病秧子老爹周以棠。周以棠乍一眼给人的印象，有点像李徵，都是和和气气的温吞人。但是等我去揣摩那些语句的时候我发现，这个人很具有欺骗性，他和李徵截然不同。就好比李徵当年只是希望他的小女儿能不受欺负，他问在心里问，为什么不肯认输呢？他希望李瑾容有条活路，平心静气地活几十年，这是他的父心拳拳。<br />
&nbsp;&nbsp;&nbsp;&nbsp;而周以棠，不论是他酒后&ldquo;失言&rdquo;的豺狼当道论，还是在离开四十八寨时对阿翡说的话，都表明他对阿翡的期望是能在乱世中有立足的能力。他居于蜀中这样一个世外桃源，却不是偏安一隅的人。就像李瑾容的恍然大悟，他那样一个人，怎么可能闭目塞听。他是有抱负的，不管是从前的甘棠先生还是后来的废人一个。<br />
&nbsp;&nbsp;&nbsp;&nbsp;情义两难全，他是个明白道理又有担当的人，李瑾容怎么跟梁绍有的过节，就是当年四十八寨求助，梁绍没有应。而周以棠呢，他私自调兵，解了四十八寨的危机，这是他对四十八寨的情，然后自废武功，还了梁绍的师恩。这之后他是走过生死边缘的人，只是他运气好熬过去了。他肯定也想过最坏的后果，但是他骨子里的决然支撑着他完成了他认为自己应该做的。<br />
&nbsp;&nbsp;&nbsp;&nbsp;直到霉霉带着安平令去蜀中请他，于是他出山了，接过半壁江山，力挽狂澜，那个甘棠先生又回来了。他懂得的太多，流露的太少，我只能从字里行间的蛛丝马迹里窥见一二。但我很喜欢他。<br />
&nbsp;&nbsp;&nbsp;&nbsp;而最后说说我们阿翡，可以说，读者是看着她成长的。一开始那个被揍了都不坑一声的倔丫头，那个惯会找死的水草精，到很久很久以后能把活人死人山一刀切的南刀，她的路很长，正文故事结束的时候她还没达到那个水平，但是那一路的艰辛和坚韧，她走完了。<br />
&nbsp;&nbsp;&nbsp;&nbsp;她从来没有退却过，说她是蜉蝣撼大树也好，她终归是撼动了的。有一个问题，李徵在心里问过李瑾容，他的小女儿为什么不肯认输呢，李瑾容也在心里问过阿翡，为什么不肯认输呢。<br />
&nbsp;&nbsp;&nbsp;&nbsp;没有为什么，她是天生要跨过那些难关的，一开始，是面对千机这样的庞然大物，后来她要在江湖风雨路上杀出一条道，直面北斗，被青龙主追杀，要护着她的四十八寨，要在几万大军中保下一群流民。她闯的关一次比一次难，稍有不慎就是致命，但她绝不认输绝不后退。<br />
&nbsp;&nbsp;&nbsp;&nbsp;曾看到有人说，破雪刀很适合阿翡。在李瑾容看来，其实是不适合的。破雪刀暴虐，而阿翡骨架纤细，强行练习只会事倍功半。可以说是老天不给她机会。但是阴差阳错，她得了段九娘的枯荣真气，她在几大高手的揠苗助长中练成了自己的刀，一次次面对几乎不可能完成的挑战，甚至连李徵都在梦中帮助她，教她练刀。<br />
始终让我难忘的是，在《托孤》中提到一笔，李徵没有想到的是，若干年后，四十八寨有了个漂亮水灵的小女儿，性情并不柔弱，天资有限，却将险些失传的破雪刀开出了&ldquo;无常&rdquo;一脉。<br />
&nbsp;&nbsp;&nbsp;&nbsp;我们最最可爱的水草精周翡，一次一次地扒开惊险，让惊喜叫别人看到。我真的特别喜欢这个小姑娘。不管她后来如何如何厉害，她在我眼里，还是那个一身短打，骨架纤细的周翡，是那个眼尾收了个优雅弧度，样貌不俗的水草精。天真得可笑，天真得可爱。<br />
&nbsp;&nbsp;&nbsp;&nbsp;而这个故事里还有太多我喜爱的人，不管是周翡心里的母老虎李瑾容，和她八字相冲的表哥李晟，还是告状精表妹李妍，强迫症的鱼老，大家闺秀吴楚楚，等等。这些人我都非常喜欢，说不过来，爱不过来。<br />
&nbsp;&nbsp;&nbsp;&nbsp;讲过对人物的喜爱之后，讲一讲这个故事本身。<br />
&nbsp;&nbsp;&nbsp;&nbsp;它的基调在第一句话就已经定了，朝分南北的飘摇乱世，上一辈的武林高手大多故去或隐退，青黄不接，北斗横着走。皮皮的故事一向有内在连贯的逻辑，一路发展至高潮迭起，说它荡气回肠也不为过。曾看到有人评论，有匪的主角虽然是周翡，写的却是上一辈的风华，我个人深以为然。有匪故事大致应该有两条线齐头并进，一条是阿翡的成长，另一条是海天一色，而阿翡的经历很大程度上是海天一色推动的。<br />
&nbsp;&nbsp;&nbsp;&nbsp;海天一色，我对它的理解一直是假作真时真亦假。最初读的时候它在我心里一直是一个很模糊的概念，要细细咀嚼，才能品味到它给人带来的震撼。故事开篇，霉霉带着安平令到蜀中是因为梁绍死了，而梁绍一手策划了海天一色。整个故事环环相扣，南刀、山川剑、霍家堡等等，其经历都因为海天一色。而阿翡离开四十八寨去接吴将军的遗孀，吴将军的女儿吴楚楚身上也带着海天一色的秘密。<br />
&nbsp;&nbsp;&nbsp;&nbsp;海天一色针对的第一对象就是霉霉他叔叔赵渊，不得不佩服梁绍老谋深算，赵渊一直活在恐惧当中。他一直说自己想把皇位给霉霉是真心的，有那么一段时间，我是被他迷惑的，不能分辨他的用心，他把毒已入骨的霉霉以先太子遗孤的头衔套上龙袍，到底是什么居心。后来我反复琢磨，觉得我对人心可能研究得不够，可他的举动，不可能没有海天一色的影响，甚至说他完全是因为海天一色，我也是相信的。<br />
&nbsp;&nbsp;&nbsp;&nbsp;海天一色的见证人死得差不多了，不代表没人知道，纸是包不住火的，这一点他心知肚明。所以他怕无孔不入的《白骨传》，他心虚得要命。<br />
&nbsp;&nbsp;&nbsp;&nbsp;我不知道他的余生会是怎样的，可是他坐在龙椅上，一定是坐得不舒坦的。<br />
&nbsp;&nbsp;&nbsp;&nbsp;说完海天一色再来捋一捋分段剧情，有匪以甘棠先生出山引出开篇，当时的阿翡才十来岁年纪，在自家门口被牵机当猴耍，连山门都出不去。几个春秋过去，她和李晟跟着王老夫人下山，这里是一个很重要的剧情分水岭，离家前李瑾容传了她破雪刀，因为李晟的离家出走，阿翡一路追去，见到了谢允和吴楚楚，此后周翡、李晟、吴楚楚三人开始了自己的成长。<br />
&nbsp;&nbsp;&nbsp;&nbsp;李晟的线比较短，从头到尾可以归纳为懂事了长大了，他渐渐明白了争强好胜没什么意义，到结局的时候已经能独当一面，被长辈们寄予希望能成为下一个山川剑殷闻岚那样的人物。<br />
&nbsp;&nbsp;&nbsp;&nbsp;吴楚楚也是一条短线，她身上带着海天一色的秘密，于是成为北斗追杀的对象，在华容事变中痛失母亲和弟弟，她又不会武功，只能靠着周翡带她东躲西藏。可能风霜经历多了人就会长大，后来找到了自己的路。<br />
这两个人戏份不算特别多，可能比不过殷沛和兴风作浪的北斗，不过我还是很喜欢他们，性格中存在着可爱的部分。<br />
&nbsp;&nbsp;&nbsp;&nbsp;而周翡呢，她带着初生牛犊不怕虎的一颗胆在朱雀主木小乔和贪狼星沈天枢的眼皮底下惊心动魄了一把，又在华容保下了一个吴楚楚，被段九娘打入体内的一道枯荣真气折磨得死去活来，之后还能笑得出来。到这里为止这个可爱的小姑娘已经完全地俘获了我的心。<br />
&nbsp;&nbsp;&nbsp;&nbsp;阿翡在外人看来可能有点呆，除了打架没什么沉迷的东西，可她总是在自己都没意识到的时候流露出自己的善良，比如她被段九娘气得不行，却还是在段九娘和沈天枢打架的时候帮忙，骗她说如果你不来找我就永远别想进我家的门了。她的出发点很简单，就是想段九娘能活下去的。之后她在客栈里真的等了段九娘三天，也许虽然段九娘性格不讨人喜欢，她还是宁可这个麻烦精来烦自己。<br />
&nbsp;&nbsp;&nbsp;&nbsp;之后在面对青龙主的时候是这样，面对殷沛临死的时候也是这样。她的性格不像外表那样是个小姑娘，凶巴巴的，脾气坏，但她的温柔却藏在某个地方，一旦有什么东西触碰到，就会弹出来。<br />
&nbsp;&nbsp;&nbsp;&nbsp;青龙主死后没多久她回了蜀中，结果运气不好，四十八寨刚好被围了。<br />
&nbsp;&nbsp;&nbsp;&nbsp;师兄师伯们，甚至是背叛了四十八寨的马吉利都是希望她能抽身的，连谢允也觉得他完全可以带走这个小姑娘。可是她偏不。对她来说四十八寨不仅仅是家，是她出门在外时的一个念想，还是南刀李徵一手建的一个桃花源，哪怕是螳臂当车，她也要留下来。<br />
&nbsp;&nbsp;&nbsp;&nbsp;霉霉在《离恨楼》里写过一段：有道是：音尘脉脉信笺黄，染胭脂雨，落寂两行，故园有风霜。<br />
&nbsp;&nbsp;&nbsp;&nbsp;四十八寨经历那些的时候，阿翡就在那里。<br />
&nbsp;&nbsp;&nbsp;&nbsp;离恨楼第一次出现在故事里是阿翡下山没多久，第一次劫后逢生的时候。霉霉自掀马甲说自己就是写曲的那个千岁忧，于是张晨飞就唱了这么一段。当时氛围轻松，我没有多想，但是渐渐的，能从这句话里咀嚼出许多滋味，不仅仅是四十八寨陷入危机的时候。<br />
&nbsp;&nbsp;&nbsp;&nbsp;霉霉和阿翡说过，他的家在旧都。<br />
&nbsp;&nbsp;&nbsp;&nbsp;那么，他不就是没有家了吗？对他来说，赵渊这个叔叔不是叔叔，是皇帝，赵明琛这个弟弟也不是弟弟，是皇子，而他有的端王身份，是他避之不及的，这些都是离他很远很远的东西。<br />
&nbsp;&nbsp;&nbsp;&nbsp;他不要那些，当然也要不起。<br />
&nbsp;&nbsp;&nbsp;&nbsp;而乱世中，多少艰难险阻，就是一句&ldquo;故园有风霜&rdquo;呢？<br />
&nbsp;&nbsp;&nbsp;&nbsp;强撑起四十八寨的李瑾容是这样，失去了亲人的吴楚楚是这样，甚至连殷沛也是这样。<br />
&nbsp;&nbsp;&nbsp;&nbsp;这个故事里可以咀嚼的东西太多，当然比起跌宕起伏和阴谋诡计，更吸引我的是人性和情感，江湖恩义。千言万语，说不清道不明，最后只能庆幸，我读到了这样一部好的作品。爱上皮皮，可能是十辈子修来的好运气。</p>
', N'~\Topic_image\s29609111.jpg', N'现代网文', CAST(N'2018-01-08T10:24:32.723' AS DateTime))
INSERT [dbo].[Topic] ([top_id], [us_user_id], [top_name], [top_mess], [top_image], [top_type], [top_time]) VALUES (17, 16, N'那些年轻人的孤独', N'<p>有一次和朋友聊起如今生活在虚拟世界里的年轻人，她说：&ldquo;我能理解他们追星、喜欢电竞主播，但我还是不大能理解他们为何要掏钱给主播买东西&mdash;&mdash;你喜欢这个主播是因为他在电竞上的专业能力吧，这和他推荐的商品是两回事吧？难道第一反应不应该是&lsquo;没想到你也开始做广告了&rsquo;吗？&rdquo;她所说的，的确代表了一种非常理性的看法，但在我看来，也许问题的重心并不是&ldquo;买东西&rdquo;本身，而是他们想通过这样的方式获得某种认同，想为自己的偶像做点什么，甚至买礼物来赢得他的赞许并显示自己是&ldquo;更忠诚的粉丝&rdquo;。换言之，我觉得他们那么做并不是因为傻，而是因为很孤独。</p>

<p>在读邓安庆的这本小说集时，我很自然地就想起了这件事。因为里面写到的许多年轻人，如果说有什么突出的相似之处，那或许就是孤独：一个把自己的全副心思寄托在没见过几次面的网友身上的女孩子，以及一个不断通过网上聊天索取温暖的男人（《我认识了一个索马里海盗》）；一个时不时就会消失一段时间的爱人（《消失》）；一个敏感自尊、为了理想几乎流落街头的文学青年（《你说今晚月光那么美》）；一个颇有思想、但试图去拯救自己学生时代喜欢的女生时又格外执拗地被某种英雄主义驱动的年轻人；以及一个在这个年代仍能毫不脸红地在嘈杂的场所当众谈论&ldquo;灵魂发烫&rdquo;这样词语的女孩子（《毕肖普之夜》），的确，毕肖普那句诗&ldquo;你为我写墓志铭时一定要说/这儿躺着全世界最孤独的人&rdquo;适合留给她。</p>

<p>这种孤独，不是某种书斋里内省的抽象精神状态，不是《百年孤独》里所说的&ldquo;孤独的反义词是团结&rdquo;这一意义上的孤独，也不是福克纳小说里描述的那种南方家族没落背景下的孤独，而是一种在中国式的社会剧烈变迁下，原子化的蚁族个人在面临万花筒式的动荡生活时所具有一种难以言说、又缺乏安全感的孤独。</p>

<p>如果比较一下前些年大红的日本小说家青山七惠的作品，其间的差异可说是颇为明显的。在《窗灯》中，&ldquo;我&rdquo;说到和大学同班男生之间的疏离是&ldquo;尽管我们互相认识，却从来没有过视线碰上了就打打招呼这种事&rdquo;。而在2007年芥川奖夺冠作品《一个人的好天气》中，恋情看起来也可有可无：&ldquo;跟阳平交朋友有两年半了，可我们从不出去约会，去年连生日礼物都没有互送。我们俩见面一般泡在屋子里，从没讨论过任何问题，也没吵过一次像样的架。说得好听一点，彼此的存在犹如空气。但实际上，我们互相都感觉对方是可有可无的，这跟空气有本质的区别。&rdquo;在想象将来最坏的情况时，也无非是&ldquo;没有恋人、没有朋友、没有自己的房子。可以依靠的只有自己的心和身体，可就连这些也不能完全相信了。即便如此，也得自己一个人想办法活下去。&rdquo;她笔下的年轻人尽管看上去是&ldquo;孤独&rdquo;的，但更主要表现出来的是缺乏社交的兴趣（&ldquo;宅&rdquo;），以至于除了自己的感受之外，难以对他人产生真切的感知，简言之，那是一种低欲望、低活力、但并无生存之忧的状态。</p>

<p>青山七惠的小说常被视为当代日本&ldquo;飞特族的青春自白&rdquo;，这些年轻人宁可选择自由职业而放弃更好的职场发展机会，因为他们在意自己的精神自由超过物质条件。相比起来，邓安庆笔下如果也有中国式的&ldquo;飞特族&rdquo;，那他们的孤独所伴随的一个首要特征往往是精神上的苦闷和物质上的巨大压力；如果他们有一份工作，那随之而来的又可能是日常生活的极度无聊与机械重复。也许会有自由，但这种自由需要付出巨大的代价：朝不保夕的生活和极大的精神与物质压力，以至于一个人很难平静地享受这种自由，因为一旦想要保有它就将面临让人崩溃的困苦。在这种情况下，选择在网络空间里和陌生人聊天，也显得像是为数不多的日常镇痛剂。他把《拯救》放在书稿的最后作为压轴，或许也是在暗示：最终能实现拯救的，还是一种内心的独立思考能力。</p>

<p>在他的笔下，这些年轻人好像是一些在城市的万花筒里像桌球一样偶尔碰撞、随后又彼此远离的个体。很少涉及他们的家庭背景，他们好像无始无终，忽然在生活中出现，又忽然消失，常常毫无征兆。他们苦闷地抱着自己仅有的自由坐在马路边，脆弱、敏感而自尊，应对外界刺激时可能会作出激烈、夸张而直接的反应，因为他们感到始终无力控制自己的生存环境。此时，公司里的导师通过鸡汤口号的反复灌输来让人获得斗志和信心（《光明的道路》），传销组织也以洋溢的热情给人以一种有所归属的感觉（《拯救》），然而那最终都被证明是虚幻乃至可怕的陷阱。这样一种氛围的可怕之处在于：它拆散了原本的纽带，在给人自由的同时也放弃了对他们的保护，告诉人去追逐梦想，但又不说明有什么路径可以实现，并且对失败者毫无保障，借用《狂热分子》中的说法，这是一个&ldquo;相当自由却缺乏舒缓失意感机制的社会&rdquo;。</p>

<p>能把这种氛围写出来，我想很大程度上也因为这是邓安庆本人相当熟悉的情景。王德威不久前曾说，当代中国小说家在写作资源和文学技法上，远比前人要好，但随之而来的问题是其中的&ldquo;中国特性&rdquo;在淡化，他们的生活经历及&ldquo;生活本身的危机所带来的复杂的密度&rdquo;上也没有前人那么多，因而他们的作品中想像的成分逐渐凌驾了现实经验的体会。这确实是一阵见血的评论。如果就此而言，邓安庆多少显得有些异类：他不像许多早早就有留学经历的新一代作家，倒是在底层社会摸爬滚打了许多年，在襄樊、苏州、西安、北京等多个城市之间游荡，从事过广告策划、内刊编辑、企业培训、木材加工、图书编辑、网络编审等诸多看上去不大相干的工作。虽然他在《我认识了一个索马里海盗》里甚至还以女性视角来写，这当然需要特殊的想像力，但总体上似乎可以认为，他是基于自己的生活观察而非文学想像来讲故事，也就是说，他的写作是在&ldquo;力图表现生活如其所是&rdquo;。这一点上，他是相当&ldquo;老实&rdquo;的，但对想要呈现真实生活的作家而言，不去添油加醋的自我克制是相当必要的。</p>

<p>像《消失》这样的故事乍看很不真实&mdash;&mdash;一个人怎么能在生活中渐渐透明化，继而凭空消失，过几天却又回来？但仅凭这一现实中不可能的情节就判定这属于文学幻想是不慎重的。正如卡夫卡的《变形记》所表明的那样，某个看似不可能的情节，不过是为了更好地凸显现实生活本身。实际上，这个情节也并不算是他的首创，日本导演今村昌平1967年就拍出一部纪实与虚构融合的电影《人间蒸发》，讲述当时有许多男人丢下工作和家庭，莫名其妙地就在生活中消失了。和五十年前的日本一样，当下中国也是一个经济高速成长但精神压力也空前的社会。在书末尾的跋中，他说&ldquo;人生的未来真是不可限量，不是指世俗层面，而是有很多小说在等着你把它写出来，现实生活轨迹很单调，而在书写的世界中，未来充满了无限可能性的光亮&rdquo;。是这样，文学始终是一个如何面对生活的问题，而这又会教会我们如何与自己相处。</p>
', N'~\Topic_image\s29511311.jpg', N'现代网文', CAST(N'2018-01-08T10:48:14.750' AS DateTime))
INSERT [dbo].[Topic] ([top_id], [us_user_id], [top_name], [top_mess], [top_image], [top_type], [top_time]) VALUES (18, 16, N'孤独的尽头是不再害怕', N'<p>当冲击发生在我们脆弱的时候，它的伤害会放大无数倍。我无法想象在那样年幼的时刻失去双亲，生活会遭受怎样的重击。失去这件事情，对于孩童来说，尤其严重。也许他们能够被其他亲人妥善照顾，但父母的存在永远无法取代。</p>

<p>父母的离开，三个孩子的反应是截然不同的。丽兹放大了她的个性，马蒂发展了他的个性，与此同时，尝试着融入生活，而主人公自己则陷入了迷茫。但唯一相似的是，他们都陷入了自我探索的时期，胆怯而孤独。</p>

<p>丽兹永远放纵，但无法彻底相信任何人，她陷入了无休止的短暂恋情中，永远无法深入，永远渴望新鲜，她说她不渴望安全感，而事实上，她最害怕自己表现得缺乏安全感。她，丽兹，必须永远成为焦点，成为可望不可及的那个人。而她的深处，隐隐被巨大的不安全感占据，她只能选择短频快的生活。她是这个家庭中最后一个摆脱孤独的人，她用了最久找到自己真正渴望的东西，安全感，家庭，爱，让她不再害怕。</p>

<p>马蒂，也许他从小就有着不符合年纪的成熟，但这并不意味着他有着更强的承受能力。他只是，更习惯沉默，和慢慢咀嚼。他与姐弟两人最大的不同在于，他在每个阶段都找到了自己的热爱。也许正是这种热爱，让他能够走过黑暗、孤独的日子。也许同样是因此，让他愿意努力去融入外面的生活。他也许只有平凡的热爱，但足够热爱依然能够成就伟大，他过上了普通人渴望的美好生活，普通，但是真的很幸福。只有当人足够成熟，才能够理解这种幸福，是非常可贵的。</p>

<p>主人公，花了很久找到自己真正的所爱，却因为胆怯而不敢追求，不论是阿尔瓦，还是写作，它的萌芽并不晚，可是都被怯懦、不确定、不自信，和对过去的沉溺而耽搁。他很早就懂得热爱的意义，所以他能看准最成功的乐队，但是他一直缺乏勇气迈出最重要的一步，他沉溺于回忆，沉溺于记录，沉溺于过去，他害怕未知，也害怕投入。他曾经热爱摄影，但不得伯乐，这也许也是他难以真正热爱的原因之一。但更重要的是，他无法感受到爱和安全感。直到他们住在一起，直到他终于和阿尔瓦在一起。</p>

<p>用尽人生的三分之一来感受孤独，最终战胜孤独的唯一武器，是不再害怕。每个人的安全感大概都有不同的来源，或许来自热爱，或许来自家庭的温暖，无论你渴求的是什么，希望你能早日找到，而不是用长久的时间来体会孤独的尽头。</p>
', N'~\Topic_image\s29576093.jpg', N'未来科幻', CAST(N'2018-01-08T10:49:18.300' AS DateTime))
SET IDENTITY_INSERT [dbo].[Topic] OFF
SET IDENTITY_INSERT [dbo].[Topic_Comment] ON 

INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (7, 11, 9, N'“行了，我现在谁的债也不欠了。无债一身轻啊！”

“你在那边，怎么还能搞到这样新的钱？”我纳闷地问。', CAST(N'2018-01-03T22:02:57.777' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (9, 11, 11, N'如果你已经了解了识别故事的切实可行的方法，那么接下来就要微调雷达，把最精彩的故事挑出来用在工作当中。尽管故事识别框架能帮你找到故事，但它很难帮你判断故事好不好用。一般来说，故事就影响力而言有以下几个层级： * 一般的故事给你流水账。 * 好故事给你画面。 * 最好的故事给你感受。 在 20 世纪早期，生物学家发现，一些动物学会了发现特定猎物的方法，进而成了无比高效...', CAST(N'2018-01-05T22:57:45.153' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (10, 12, 13, N'1231232131321', CAST(N'2018-01-07T00:53:58.767' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (11, 11, 11, N'嗯， 我也是这样子认为的', CAST(N'2018-01-07T21:54:32.103' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (12, 11, 11, N'地方萨芬', CAST(N'2018-01-07T21:58:52.427' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (13, 11, 11, N'地方撒发是', CAST(N'2018-01-07T21:58:56.277' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (14, 11, 11, N'惹我热无若', CAST(N'2018-01-07T21:59:00.133' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (15, 11, 11, N'而爱上广东佛山', CAST(N'2018-01-07T21:59:04.950' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (16, 11, 11, N'我觉得不行
', CAST(N'2018-01-07T22:02:35.227' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (17, 11, 11, N'4rsaf', CAST(N'2018-01-07T22:39:23.813' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (18, 11, 11, N'dfsafs', CAST(N'2018-01-07T22:39:26.453' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (19, 11, 11, N'fdsafds', CAST(N'2018-01-07T22:39:30.317' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (20, 11, 11, N'fdsabczbzc', CAST(N'2018-01-07T22:39:37.683' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (21, 12, 10, N'eww ', CAST(N'2018-01-08T00:56:43.957' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (22, 16, 10, N'

用尽人生的三分之一来感受孤独，最终战胜孤独的唯一武器，是不再害怕。每个人的安全感大概都有不同的来源，或许来自热爱，或许来自家庭的温暖，无论你渴求的是什么，希望你能早日找到，而不是用长久的时间来体会孤独的尽头。', CAST(N'2018-01-08T10:50:20.793' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (23, 16, 14, N'发生地方撒', CAST(N'2018-01-08T10:58:24.047' AS DateTime))
INSERT [dbo].[Topic_Comment] ([tc_id], [tc_user_id], [tc_top_id], [tc_mess], [tc_time ]) VALUES (24, 11, 18, N'jkdfjkdsjfs', CAST(N'2018-01-08T14:37:56.077' AS DateTime))
SET IDENTITY_INSERT [dbo].[Topic_Comment] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [user_name], [user_pwd], [user_email], [user_phone], [user_sex]) VALUES (11, N'程鸿昊', N'1', N'1@qq.com', N'12345678909', N'男')
INSERT [dbo].[Users] ([user_id], [user_name], [user_pwd], [user_email], [user_phone], [user_sex]) VALUES (14, N'张雷', N'1', N'987@qq.com', N'09876543281', N'男')
INSERT [dbo].[Users] ([user_id], [user_name], [user_pwd], [user_email], [user_phone], [user_sex]) VALUES (15, N'李婉儿', N'1', N'1321321@qq.com', N'09876574834', N'女')
INSERT [dbo].[Users] ([user_id], [user_name], [user_pwd], [user_email], [user_phone], [user_sex]) VALUES (16, N'路飞', N'1', N'82@qq.com', N'10928475643', N'男')
INSERT [dbo].[Users] ([user_id], [user_name], [user_pwd], [user_email], [user_phone], [user_sex]) VALUES (17, N'沉默的羔羊', N'1', N'iree@qq.com', N'09874738274', N'男')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Write] ON 

INSERT [dbo].[Write] ([wri_id], [wr_user_id], [wri_name], [wri_mess], [wri_image], [wri_time]) VALUES (18, 11, N'他的灵魂里不需要诗歌以外的任何东西', N'<p>睁着一只眼睛睡觉</p>

<p>不管风干什么， 窗户都无动于衷 没有咯咯作响，房屋的各个 地方 也没有发出惯常的喧哗&mdash;&mdash; 在连接点、桁架和嵌钉处 嘎吱作响。 相反， 它们静止着。而那些枫树， 有时 能造成破坏， 也紧握 枝条，没有发出 一点儿声音。 这是令我恐惧的夜晚， 充斥着 鬼魂。即使那半月 （一半是人， 一半黑暗），也在地平线上 侧卧着 洒下可疑的光芒 在我的地板上 燃烧，以它病态的面目 大肆地 向我逞威风。啊，我感觉死去一般， 永远包裹 在我的毯子里，并且 被忘记。 我的房间黏湿寒冷， 被月光控制着 显得诡异。那战栗 向我 袭来，摇晃我的骨头，我未了结的事情 放松下来， 于是我躺着，睁着一只眼睛睡觉， 希望 任何事情，任何事情都不会发生。</p>

<p>&nbsp;</p>

<hr />
<p>某事即将发生</p>

<p>它并不意味着 你在报纸上 读到的，或 你散播的谣言。</p>

<p>甚至并非你不愿提起的事： 你新房里碎裂的灰泥， 保险丝频繁地熔化，水龙头漏水， 儿童危险的游戏。</p>

<p>某事正在发生 而你无法弄清楚。 事情已经开始。 某事即将发生。</p>

<p>它在那混乱中 当新闻播音员弄错他的台词。 或在一个失败者颤抖的手中 当他拿起他最后一张牌。</p>

<p>星期天，它在那里，在下午早些时候， 当太阳烤焦屋顶 一块半燃烧的破布被吹走，没有影子， 飘在人行道和这座死气沉沉的城市的商场上空。</p>

<p>（仿阿尔伯特&middot;阿诺德&middot;肖勒）</p>

<p>&nbsp;</p>

<hr />
<p>静静站立</p>

<p>有人总在将风景 运送至翅膀。 空气之厚， 那儿变深的黑暗 将覆盖树木和花园， 海滨和水。</p>

<p>所有曾与我同在的地方 都将磨损。 我没有抬高我的嗓音 或举起一只手。我 没有能力使用武力， 当我感觉面临风险。</p>

<p>而如果这个动作像 一种偷窃，那么 我只不过是目睹了 一场犯罪。我别无选择。 我的角色是强加于我的， 它使我觉得紧张。</p>

<p>我希望我自由自在。 我不确定我站在何处 在朝向翅膀的漫长旅途中， 我坦然接受，当事物来临 又让它们离去。在这件事上 我没有最终决定权。</p>

<p>开关的咔嗒声， 镜头后拖沓的脚步声， 几乎使我怀疑 有人希望我出错。 然而，我所见的一切 都是平静而公开的。</p>

<p>这将继续多久， 我不确定。我的时间 都花在回忆所有 我能记起的往事上。 我尽最大努力去相信 没有什么完全地失去。</p>

<p>我哪儿都不去： 我的头脑不能很好地 维持我的消遣。就我 所知，试着挑个时间 我可能会做得更好 那时所有这一切都将结束，</p>

<p>最后一场开始， 灯光黯淡，而我， 从所有我并未真正 去过的地方被释放， 在幕布的另一边离去， 在一个即将结束的夜晚。</p>

<p>&nbsp;</p>

<hr />
<p>保持事物的完整</p>

<p>在田野里 我是田野的 缺席者。 情况 总是这样。 无论我在哪里 我都是缺失的部分。</p>

<p>当我行走 我分开空气 而空气总是 流动 填满我的身体 存在过的空间。</p>

<p>我们都有理由 移动。 我移动 是为了保持事物的完整。</p>

<p>&nbsp;</p>

<hr />
<p>美好生活</p>

<p>你站在窗边。 那里有一块心形的玻璃云。 那里，风的叹息犹如你言语中的洞穴。 你是外面树中的幽灵。</p>

<p>街道安静。 天气，如同明天，如同你的生活， 部分在这儿，部分在空中。 你什么也不能做。</p>

<p>美好生活没有先兆。 它经受住绝望的氛围， 然后出现，步行而来，不被认识，不带来什么， 而你就在那儿。</p>

<p>&nbsp;</p>

<hr />
<p>光的到来</p>

<p>即使这样晚，它还是发生了： 爱的到来，光的到来。 你醒来，蜡烛亮着，仿佛被它们自己点燃， 星星聚集，梦涌入你的枕头， 散发出空气温暖的芬芳。 即使这样晚，身体的骨头还是发光 而明天的灰尘在呼吸中闪耀。</p>

<p>&nbsp;</p>

<hr />
<p>故事</p>

<p>这是一个古老的故事：抱怨月亮 沉入海中，星星在第一缕光线中消隐， 抱怨露水打湿的草坪，银色的草坪，寒冷的草坪。</p>

<p>它继续着：一个男人凝视他的影子， 说那是他自己的灰烬在消散，说他的日子 是宇宙中真正的黑洞。但这都不是真的。</p>

<p>你知道我所指的是什么：它是关于最后的分钟、 小时，以及年头；它是我所讲的 关于我自己，关于你，关于每个人的故事。</p>
', N'~/Write_image/p47735520.webp.jpg', CAST(N'2018-01-05T23:26:37.137' AS DateTime))
INSERT [dbo].[Write] ([wri_id], [wr_user_id], [wri_name], [wri_mess], [wri_image], [wri_time]) VALUES (20, 16, N'从番茄到单核：一次学院派的升级', N'<p>版权归作者所有，任何形式转载请联系作者。<br />
作者：一块儿学酥（来自豆瓣）<br />
来源：https://book.douban.com/review/9024885/</p>

<p><br />
《单核工作法图解》被视为《番茄工作法图解》的姊妹篇，是作者史蒂夫&middot;诺特伯格时隔六年的新作。《番茄》是GTD（Get Things Down）类时间管理法中我很喜欢的作品。它生动，科学，有效。结合一款简洁的app&mdash;&mdash;番茄土豆，我将番茄工作法践行了许多年，也力荐给多位友人。而初读《单核》书名，联想CPU（一次只执行一条指令）以及番茄工作法的概念，我便将此书的核心内容预知了八九不离十。对比阅读之后，尤觉惊喜连连。《单核》是一本信息密度极高的诚意之作，是对《番茄》的继承、升级与延伸。本文也就这三方面展开评论。</p>

<p>【继承：GTD时间管理法的正道】</p>

<p>推荐一本书，可能因为它读而有益；而力荐这本书，则是因为我认为不读它可能令人陷入挫败&mdash;&mdash;似是而非地知道，便自以为知道，以至于践行偏颇的道路。《单核》与《番茄》都是Self-Help（国内归为成功学？）图书中我认为比较正派的。</p>

<p>这种&ldquo;正&rdquo;，首先体现在理清了GTD的基本原则&mdash;&mdash;专注少而重要的事；而不是完成满满的任务列表。时间管理的初级爱好者很可能迷恋于一度火爆的&ldquo;学霸时间表&rdquo;。我认为其中有三个疑点：</p>

<p>一、如果时间表是长期有效的，那么它应该是&ldquo;一沓&rdquo;，而不是一张。</p>

<p>二、如果时间表是普遍有效的，那么它应该司空见惯于名校和&ldquo;成功人士&rdquo;，而非引爆舆论。</p>

<p>三、细节不明。讲不清其中究竟有多少是计划，多少是记录；更难讲是时间表造就了学霸，还是说它只是学霸的怪癖之一。</p>

<p>尽管如此，有如附庸风雅似的，饱满的任务清单还是在热衷努力的人群中圈粉无数。在一张张混杂着吃饭，看电影，读书，备考的表单上，年轻人热火朝天地铺开战线，又前赴后继地陷入抑郁与怠惰的自我怀疑。因为&ldquo;刷单&rdquo;的成就感是虚的；&ldquo;成事&rdquo;的奖励才是实的。望梅或许止一时之渴，画饼充饥可能真会饿死。 凯利&middot;麦格尼格尔的《自控力》对其中机理有更清晰的剖析。</p>

<p>由此，我们认识到&ldquo;正&rdquo;的基础是科学。这里也顺带提一下另一种常见的时间管理法&mdash;&mdash;柳比歇夫时间记录法。它的现代演绎，便是英语老师艾力所著的《34枚金币时间管理法》。曾实践过，感觉可作为中短期的个人诊断或观测手段。过程中带来的&ldquo;愧疚感&rdquo;是一剂猛药，然而药不对症可能有毒。有关愧疚感与拖延症的更深刻论述，可以参见简&middot;博克的《拖延心理学》。时间记录姑且算是既未被证实也未被证伪的个人爱好吧。</p>

<p>而我赞同的正道精髓，在《单核》与《番茄》中是一脉相承的&mdash;&mdash;我们管理时间的目标，是用尽可能的少的时间工作。而其中奥义，在于通过长期的GTD，获得预估任务量和合理安排任务的能力。非常希望这样的好书，能使更多人警惕过度饱满的任务清单和日程表。</p>

<p>【升级：更完善的概念与参考文献】</p>

<p>单核对番茄在概念上进行了三点升级：</p>

<p>一、意象更普适，更易阐明抽象概念。国人做饭不大用厨房计时器，更是对番茄形的钟没概念。在看《番茄》前，番茄钟给我带来了困惑。与之相比，单核回归了更明确的意象。单核与番茄，孰与&ldquo;专注&rdquo;这个概念更近，也是一目了然的。</p>

<p>二、提升了非专注时间的必要性。时间盒（番茄钟，专注时间）之外的时段，被定义为&ldquo;全景时间&rdquo;。在《单核》中，&ldquo;拉金问题&rdquo;将全景时间的意义升华。这是《番茄》中论述相对较弱的部分。从中可以看到作者六年来的钻研方向。</p>

<p>三、周任务与集草器。对任务的差别化更为明确，并反复诠释&ldquo;重要&rdquo;和&ldquo;紧急&rdquo;的区别，使得重要更重，紧急更轻。可以说《单核》就像是一幅将《番茄》对比度调高的画作，更通透尽致。</p>

<p>这三点升级使得《单核》在GTD的&ldquo;正道&rdquo;上青出于蓝而胜于蓝。作者更是在108页，有理有据地指出了个人使用SMART工作法中张冠李戴的问题。很有意思。</p>

<p>此外，此书的&ldquo;科学性&rdquo;可谓在畅销书中登峰造极。此前《番茄》就以较为清晰的引用获得了我对其内容严谨性的认可。而《单核》更是以170页的精悍篇幅，引用了多达243条参考文献，包含通俗作品和学术发表。当鸡汤告诉忙碌的人们要学会停下来看风景时，《单核》引了一篇期刊文献证明了&ldquo;当人们计算着工资时，更没有耐心欣赏音乐&rdquo;。对有志于深入阅读和写作的读者，这是一条绝佳的捷径。</p>

<p>我相信这本书很快会在码农密度高、平均学历高的某些社群中火起来。也许有朝一日，不列参考文献的鸡汤，会引起读者对食品安全性的质疑。</p>

<p>【延伸：精而不简，五脏俱全】</p>

<p>《单核工作法图解》的副标题是&ldquo;事多到事少，拖延变高效&rdquo;。这并非对&ldquo;单核&rdquo;特性的描述，而是对全书的索引！这本书明修&ldquo;单核&rdquo;之道，却暗度到陈仓战拖。</p>

<p>《单核》总共有六个篇章：</p>

<p>第一章&ldquo;削减待办任务&rdquo;，介绍了单核的基本理念，主题明确地将时间管理拉回正道。</p>

<p>第二章&ldquo;现在专注一件事&rdquo;，谈的是意志力，从正面谈动力从哪里来以及如何节能。我从中看到了凯利&middot;麦格尼格尔的《自控力》。</p>

<p>第三章&ldquo;永不拖延&rdquo;，治的是拖延症，从反面讲障碍的成因与减小阻力。我从中看到了简&middot;博克的《拖延心理学》。</p>

<p>第四章&ldquo;循序渐进&rdquo;，则是对新手的鼓励与扫雷，落实了方法，澄清了误区。</p>

<p>第五章&ldquo;简化写作&rdquo;，指出了社交和团队协作的方法，是对外部环境的改善。</p>

<p>第六章&ldquo;给创意充电&rdquo;，谈了谈大脑的运转与养护，是对内部环境的修造。</p>

<p>最后附了个&ldquo;大脑地图&rdquo;，展现了脑科学的一些结果。</p>

<p>一口气读下来，想起冯友兰先生在《中国哲学简史》中的自序。&ldquo;小史者，非徒巨著之节略，姓名、学派之清单也。譬犹画图，小景之中，形神自足。非全史在胸，曷克臻此。唯其如是，读其书者，乃觉择焉虽精而语焉犹详也。&rdquo;</p>

<p>《单核》正是这样一本&ldquo;择虽精&rdquo;而&ldquo;语犹详&rdquo;的书。其体量不可谓集大成，但小小篇章中干货满满，风味浓郁。可在手畔置一本实体书，常常翻阅，习之自省。亦可借道其中征引，拥抱更广博而深入的阅读。我感觉这是一本精致和奇妙的小书。与之相遇并诚心阅读，是幸运的。</p>
', N'~/Write_image/s29602754.jpg', CAST(N'2018-01-08T10:54:54.247' AS DateTime))
INSERT [dbo].[Write] ([wri_id], [wr_user_id], [wri_name], [wri_mess], [wri_image], [wri_time]) VALUES (21, 16, N'翻译普鲁斯特，对我来说就是这样一个寻寻觅觅，搜索枯肠，时而痛苦，时而欢欣的过程', N'<p>&nbsp;</p>

<p>《追寻逝去的时光》译者|周克希<br />
&nbsp; &nbsp; &nbsp; &nbsp; 斯泰凡&middot;厄埃先生画得很慢，他显然服膺&ldquo;慢工出细活&rdquo;的信条。在他的画笔下，《追寻逝去的时光》中的人物、场景、风光都生动感人地展现在我们眼前。我去过伊利埃&mdash;&mdash;贡布雷的原型小镇，看到厄埃先生画得那么细腻的圣伊莱尔教堂、莱奥妮姑妈家的房间和花园里的铁条桌，以及小镇周围的景色，都感到格外亲切。</p>

<p><br />
&nbsp; &nbsp; &nbsp;《追寻逝去的时光》共分七卷。其中的第一卷《去斯万家那边》包括&ldquo;贡布雷&rdquo;、&ldquo;斯万的爱情&rdquo;和&ldquo;地方与地名：地名&rdquo;三个部分。第二卷包括&ldquo;在斯万夫人身旁&rdquo;和&ldquo;地方与地名：地方&rdquo;两个部分。厄埃先生从上世纪末着手编绘《追寻》漫画本，完成第一卷的&ldquo;贡布雷&rdquo;和第二卷的&ldquo;地方与地名：地方&rdquo;这两部分后，出了一个版本。那就是2006 年人民文学出版社版漫画本《追寻逝去的时光》的翻译蓝本。</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;眼下的这个译本，相当于厄埃先生迄今为止完成的全部工作，其中包括了除&ldquo;在斯万夫人身旁&rdquo;之外的前两卷所有内容。也就是说，整部七卷本的小说，尚剩五卷有待厄埃先生继续改编绘图、细细打磨。</p>

<p><br />
《追寻逝去的时光》图像小说<br />
&nbsp; &nbsp; &nbsp;《追寻逝去的时光》作为七卷本的长篇小说，它的长是毋庸置疑的。那么它是否冗长呢？这就是个见仁见智的问题了。作为一个译者，我的感受是&ldquo;译前觉是，译后觉非&rdquo;。翻译是最精细的阅读，我在第一卷译序中写过这种&ldquo;觉非&rdquo;的感受：&ldquo;每译几段，我总会预感到前面有美妙的东西在等着我，那些无比美妙的东西，往往有层坚壳裹着似的，要使劲（常常是使出浑身解数）打开壳，才会惊喜地发现里面闪光的内容。&rdquo;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;但这种美妙，即便小说中的原型人物也未必欣赏。普鲁斯特年轻时，经常出入上流社交圈的沙龙，是沙龙女主人眼中可爱的&ldquo;小马塞尔&rdquo;。第一卷出版后，普鲁斯特送了一本到德&middot;舍维涅侯爵夫人（comtesse de Chevign&eacute;）府上，事先已经知道是怎么回事的侯爵夫人恼羞成怒，终其一生不肯打开书来看上一眼。</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;作家、编辑，也未必欣赏。第一卷迟迟未能出版，一个受命审读的作家说：&ldquo;这部七百多页的稿子简直不知所云。它到底在讲些什么？它要把读者带到哪儿去？&mdash;&mdash;我只能说我一无所知，无可奉告！&rdquo;另一个出版社总编说：&ldquo;我这人可能是不开窍，我实在弄不明白，一位先生写他睡不着，在床上翻来覆去，怎么居然能写上好几十页。&rdquo;普鲁斯特在给朋友的信上激动地说：&ldquo;你把精神生活的体验，把你的思想、你的痛苦都浓缩在了（而不是稀释后加进）这七百页文稿里面，那个人手里拿着这文稿，却不屑一顾，还说出这种话来！&rdquo;</p>

<p><br />
&nbsp; &nbsp; &nbsp; &nbsp;那么，小说到底好在哪里呢？这是一个很大的问题。我仅从译者的角度，谈一点个人的印象。</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;普鲁斯特说他写的是一本&ldquo;大书&rdquo;。他在第七卷中写道：文学写的就是真正的生活，或者说唯一完全真实的生活&mdash;&mdash;不仅是自己的生活，而且是别人的生活。主人公从贡布雷的家出去，有两个&ldquo;边&rdquo;，也就是两条路。斯万家那边（去斯万家的路）意味着布尔乔亚、爱情（或者说情爱，包括异性恋和同性恋）、音乐。盖尔芒特家那边，意味着贵族世家、社交、绘画和文学写作。最后，两&ldquo;边&rdquo;交织在一起，作者就写出了这本&ldquo;大书&rdquo;，这本把他精神生活的体验，把他的思想、他的痛苦都浓缩进去的&ldquo;大书&rdquo;。</p>

<p><br />
《追寻逝去的时光》作者|马赛尔&middot;普鲁斯特<br />
&nbsp; &nbsp; &nbsp; &nbsp;他常说的一句话是：Allons plus loin（让我们走得更远些）。他写的各式各样的人物、社交场（沙龙）的众生相、人性的弱点，乃至静物、景色，都让人有&ldquo;写尽&rdquo;之感。即便是写一杯椴花茶，写家乡的一条河流、一池睡莲，都写得那么精彩、那么美妙。比如说，读到写静物或景色的段落，我会想起柳宗元的《小石潭记》，想起张岱的《湖心亭记》，虽然语言截然不同，但是那种隽永的风味，却是相通的。小说中，不同的人物说不同的话，这种声口毕肖的高超本领，使我想起《红楼梦》。他写临睡前母亲给小马塞尔朗读乔治&middot;桑的小说，写马塞尔去剧场看拉贝玛的演出，写凡特伊的小提琴钢琴奏鸣曲和七重奏，写陀思妥耶夫斯基的&ldquo;新颖的美&rdquo;，都让我眼前一亮，心中充满感动。第一卷第二部&ldquo;斯万的爱情&rdquo;，写斯万对奥黛特的爱情从萌生到式微的过程；所谓爱情的嫉妒，真是让他给写绝了。即便是写同性恋（如第四卷开头写夏尔吕男爵和裁缝絮比安的初次相遇），也写得那么出色，以至于柯莱特要说，写同性恋没人能比普鲁斯特写得更好了。他写勒格朗丹的snob（附庸风雅），常能使我发出会心的微笑。他对地名瑰丽的联想，令我惊叹，让我陶醉。他写大作家贝戈特，写大画家埃尔斯蒂尔，都让我感叹大手笔确非常人所能企及。是的，他写得很长，但他写得这么丰赡，这么细腻，这么从容，甚至这么幽默，我只觉得读这样的文字是享受，只觉得这样的长句不仅是必要的，而且是异常精彩的。</p>

<p><br />
&nbsp; &nbsp; &nbsp; 这部小说，什么都不缺，只缺一样东西：扣人心弦的情节。他无意于此，不去跟大仲马他们争这个活计 :）</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;让那位&ldquo;不开窍的&rdquo;总编弄不明白的那几十页文字，全然不像他所以为的那么无聊。 整部小说开篇的四十多页文字（相当于漫画本第3 页至第17页的内容），展示了整部小说独特的写作手法，正如普鲁斯特所说：&ldquo;这是一本非常现实的书，不过，为了模拟不由自主的回忆，在一定程度上借用了回忆往事的形式，从而使它有了优雅的形态，有了茎秆作依托&rdquo;。</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;众多人物、地方（他们或它们，会在以后的各卷中出现）在小说的屏幕上一一掠过：人物有爸爸妈妈、外婆和她的两个妹妹、女仆弗朗索瓦兹、斯万（在他身上，所费笔墨较多，为后面的&ldquo;斯万的爱情&rdquo;做了铺垫）、姑婆、莱奥妮姑妈，甚至热纳维埃芙&middot;德&middot;布拉邦（盖尔芒特家族传说中的先祖）；地方有巴黎、贡布雷、巴尔贝克、冬西埃尔，甚至威尼斯。</p>

<p><br />
女仆弗朗索瓦兹<br />
&nbsp; &nbsp; &nbsp; &nbsp;而那些&ldquo;金句银段&rdquo;，则已经显示出普鲁斯特文字迷人的风格。有好些段落，或以哲理的意味，或以温馨的情致，令我折服，让我难忘。例如：一个人睡着时，时光的系列围绕在他周围；一旦这种排列发生混乱，记忆犹如高处伸下的援手，把他拉出这片虚无的泥潭（把常人朦胧的感觉，用清晰的、带有哲理意味的语言表达出来，这是作者常用的叙述方式）；主人公&ldquo;我&rdquo;睡觉前等待妈妈的吻（很动人的段落）；斯万的来访（在长句的基调上，添上轻快、风趣的笔致）；妈妈坐在我床边朗读《弃儿弗朗沙》（又一个充满温情的段落）；当然还有那个有名的玛德莱娜小蛋糕的一大段。</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp;有好些句子，则是我心目中的金句。例如：&ldquo;习惯，是位灵巧而又姗姗来迟的协调大师&rdquo;，&ldquo;我们的社会形象，是他人思维的产物&rdquo;，&ldquo;往事隐匿在智力范围之外，在智力所不能及的地方，在某个我们根本意想不到的物质对象之中&rdquo;，&ldquo;这一物体，我们能在死亡来临之前遇到它，抑或永远都不能遇到它，纯粹出于偶然&rdquo;，&ldquo;一切的一切，形态缤纷，具体而微，全都从我的茶杯里浮现了出来&rdquo;。</p>

<p><br />
一位失眠的先生，在床上想了这么多，写成精彩的四十页文稿。这说明了什么？说明这位先生是个真正的大师。</p>

<p>大师的作品，通常都是难译的。</p>

<p>这部小说的翻译，首先难在句子的绵长、句法的精微。全书中有三分之二的句子超过5 行，有四分之一的句子超过10 行，最长的句子有394 个法文词、2417 个字母。至于一环套一环的从句，经常出现的同位语、插入句，以及让译者绞脑汁的代词、介词等&ldquo;小词&rdquo;，更会使你永远有&ldquo;一山放过一山拦&rdquo;之感。</p>

<p>而真正的难处，有时几乎是&ldquo;只可意会不可言传&rdquo;的。例如（还是只能选可以言传的例子:）），全书第一句是 Longtemps, je me suis couch&eacute; de bonne heure. 其中的longtemps 是long（长）和temps（时间）的组合词。放在逗号前，短而干脆，但它的意思既不是&ldquo;长期以来&rdquo;，也不是&ldquo;很久以前&rdquo;。现在我译成&ldquo;有很长一段时间&rdquo;，意思对了，结构却很松散。这第一句，据说普鲁斯特是在反复修改了二十多遍之后才定下来的。我看到过其中四个不同&ldquo;版本&rdquo;。说句当不得真的话，longtemps 译成文言文的&ldquo;久矣&rdquo;，倒有几分像。</p>

<p>第二卷的书名，原文是A l&rsquo;ombre des jeunes filles en fleurs，其中有三个关键词：少女，如花一般，在&hellip;&hellip;的影子下。曾见过的中文译名有&ldquo;在簪花少女身旁&rdquo;（簪花，无端让人产生古代仕女的联想），&ldquo;在少女们身旁&rdquo;（&ldquo;简洁&rdquo;到略去了&ldquo;如花一般&rdquo;的含义）等等。为找一个恰如其分的译名，岂止&ldquo;一名之立，旬月踟蹰&rdquo;。第二卷我译了两三年，就断断续续踟蹰了两三年。最后终于找到了一个较为合适（至少我这么认为）的译名：&ldquo;在少女花影下&rdquo;。一旦找到，却又觉得稀松平常了，这正是所谓&ldquo;看似寻常最奇崛，成如容易却艰辛&rdquo;。</p>

<p><br />
《追寻逝去的时光》图像小说(内封）<br />
&nbsp; &nbsp;翻译普鲁斯特，对我来说就是这样一个寻寻觅觅，搜索枯肠，时而痛苦，时而欢欣的过程。</p>
', N'~/Write_image/s29604959.jpg', CAST(N'2018-01-08T10:56:00.603' AS DateTime))
INSERT [dbo].[Write] ([wri_id], [wr_user_id], [wri_name], [wri_mess], [wri_image], [wri_time]) VALUES (22, 17, N'你讲道理的样子，像极了我昨夜喝的二斤白酒', N'<p>才女席慕容说：不是所有的人都能知道时光的含义，不是所有的人都懂得珍惜，这世间并没有分离与衰老的命运，只有肯爱与不肯爱的心。</p>

<p>我曾见过你的悲伤，比这世间的任何一种悲伤都悲伤。</p>

<p><br />
摇摇晃晃，我也能找到去你心里的路。喝了这二斤酒，我就准备上路了。<br />
&ldquo;为我好&rdquo;难道不是道德绑架吗？高举着为我好的名义，来指手画脚，为我好难道不是你以你个人的观点，干预我的生活？请你不要再说是为了我好，如果你是真的为了我好，就请给我的卡里打2万块钱吧！</p>

<p>我们对这个世界充满了好奇，喜欢问为什么？知道的越多反而会觉得自己更无知，我们好奇于太阳的东升西落，好奇于宇宙的奥秘，好奇于地心引力，有太多的不知道便会有太多的好奇，如今看来我们对这个世界依旧陌生。</p>

<p>人们喜欢将自己囚禁起来，强迫自己去抓住一些遥不可及的东西，越接近越遥远。为什么不试着&ldquo;放弃&rdquo;一下呢？回头看看其实手头的，已经很不错啦。事物总处于比上不足，比下有余的怪圈。不要吐槽人生总是慢半拍，佛曰：一切自有天定。&ldquo;上天&rdquo;指的是一种自然规律，就好比赶鸭子上架一样，难为鸭子，遵循事物本身的特点，才能更好的生活，你不想舍弃安逸的生活，有可能会错过诗和远方。</p>

<p>&nbsp;你现在的生活，真的是你想要的吗？你扪心自问一下，是吗？如果是你想要的，你为什么还不开心呢？喜悲虽然都是人类情绪的一种，悲大于喜的人生，真的是你想要的吗？就好比人们还喜欢钱多，喜欢富人奢靡的生活一样，没有人喜欢坏的，不喜欢好的。因为你的固步自封，不敢迈出去，你的人生就是每天的重复昨天的生活，一个有意识却又麻木的&lsquo;丧式&rsquo;人生，活着就得拼命的活着，赤手空拳也要搏出一番天地，安逸只会让人类的灵魂死亡，躯体的苟活毫无意义。</p>

<p>1991年冰心告诉铁凝，爱情不找，要等。于是铁凝50岁等来了爱情，爱情和婚姻之间不是等于关系，等不到那个珍惜你的人，你还可以再等等。其实关于爱情观每个人都有自己的看法，铁凝等来了自己的良人，你可能等来的是孤独终老。期待被爱又怕受伤害，就像网上有一句话：想要和对方同居又怕被干！世界上的两全其美，只是个例，与其去赌一个自己也不知道的未来，不如充实自己，经济独立能力完美，即使有一天被抛弃也不至于狼狈。</p>

<p>昨天见到我姐姐她给我讲了一个她朋友的故事：a小姐和b先生是夫妻，a小姐漂亮有钱有能力又体贴，并且从不嫌弃b先生能力不如自己强，人生真的是会戏弄人啊！如果让这样一个完美的女人幸福的过下去，那可还得了！ｂ先生遇到了c女士，为什么要称她为c女士呢？c女士大了ｂ先生将近二十岁，她的的女儿十八岁，而且本人已经绝经了。但b先生不顾怀孕五个月的a小姐的挽留，毅然决然的离婚了，表示自己可以净身出户，a小姐劝说无果，忍痛去堕胎，留不住的，那就是并不属于自己，留下的才是属于你的。姐姐很心痛的说了一句话：他们绝对是真爱！！！女孩子，要过精致的人生，顺其自然的去爱，爱人就在转角处，骑白马的王子和开宝马的王子，总有一个会来。</p>

<p>人生中别太把自己当回事儿。</p>

<p>为什么老师手里的奖状发到你跟前，没有了！</p>

<p>为什么排队两小时的包子，排到你没有了！</p>

<p>不局促，不张扬，&ldquo;世界以痛吻，我回报以歌&rdquo;，恰到好处把握一个度，不过分的把别人当回事儿，也不过分的把自己当回事，那个自卑的懦弱的自己，不能要。人类大多数的烦恼都是自找烦恼。</p>

<p>《愿所有的相遇，都恰逢其时》我只是感慨里面的爱情，似乎有一点不现实又有点难过，在你是花我便是爱丽丝---我爱过的女孩儿们中，初中的好友陈甜甜，感动了我，相信感冒被传染就会好的传说，多可爱。然后还有我要集训八天，给我写的八封信。高中的晗，我迷恋于她的故事，喜欢听她讲话。感谢这些女孩子们的出现和陪伴，他们生活在我的回忆里，虽然我们没能在一起，我没有荣幸可以照顾你们一生。</p>

<p>其实，我一点儿都不喜欢看别人总结人生，因为我感觉每个字，即使看起来是幸福的，也能让我感觉到悲伤，大太太用41个故事，独特的人生感悟，来告诉我的道理，我真的很不想听。道理都懂有什么用，我过不好的这一生，谁也没有办法。陪伴自己的友情，回忆里和正在爱的爱情，父母变老自己长大的亲情，这一切的一切，时光会告诉我们，我只盼着你走慢些，让我再细细品尝一番。</p>

<p>其实，长的好看的人给我讲道理，我也是听得，毕竟，长的好看，说什么都对。</p>
', N'~/Write_image/s29583897.jpg', CAST(N'2018-01-08T11:24:16.957' AS DateTime))
INSERT [dbo].[Write] ([wri_id], [wr_user_id], [wri_name], [wri_mess], [wri_image], [wri_time]) VALUES (23, 15, N'佐杜洛夫斯基的沙与金', N'<h2>1，从圣山到沙丘</h2>

<p>1973年，当年只有26岁的迈克尔&middot;赛杜感觉有些飘飘然了。他觉得自己作为一名初出茅庐的电影制片人，真的是有些慧眼如炬。早在两年之前，他在美国的一家地下影院里看到了一部颇为先锋的邪典电影《鼹鼠》，这部充满了杀戮、血浆、隐喻与宗教的电影让他印象深刻，于是他便将这部电影发行到了法国，结果大获成功。而在1973年这一年，他又再次引进了《鼹鼠》导演亚历桑德罗&middot;佐杜洛夫斯基的新片《圣山》，这部由传奇音乐巨星约翰&middot;列侬投资拍摄的邪典电影相较于之前的《鼹鼠》更加的神秘、诡谲、血腥、暴力，充满了令人难以捉摸的宗教隐喻，但却在彼时的法国掀起了一阵观影热潮，随后更是席卷了整个欧洲。因此，这也难怪迈克尔&middot;赛杜有些志得意满，毕竟在那时的法国，60年代新浪潮电影运动早已悄然落幕，一个新的现代电影时代正汹涌起潮，而他感到自己似乎站到了新时代的潮头。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070231.webp" style="width:720px" /></p>

<p>《鼹鼠》中的经典场景</p>

<p>&nbsp;</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070233.webp" style="width:720px" /></p>

<p>《圣山》的海报</p>

<p>他甚至感到自己肩负着某种历史使命，他觉得应该把自己的名字留在法国乃至世界的电影历史上。于是，在1974年的某一天，赛杜拨通了佐杜洛夫斯基的电话。</p>

<p>电话另一头的佐杜洛夫斯基同样有些飘飘然，但与年轻气盛的赛杜不一样，出生于1929年的佐杜洛夫斯基在1974年时已经45岁了，他的飘飘然显得孤傲而克制。在当时，这位出生于智利的怪才导演已经凭借着三部前卫电影&mdash;&mdash;争议颇多的《凡多与丽丝》、神秘吊诡的《鼹鼠》和血腥晦涩的《圣山》&mdash;&mdash;在欧洲影坛上为自己谋求了一席之地。尽管他的作品风格前卫，在情节上也晦涩难懂，但他还是凭借其致迷致幻的电影语言和讳莫如深的神秘主义，吸引了一大批忠实的地下电影拥护者，而这些拥护者中也不乏像约翰&middot;列侬这样著名的反文化公众人物。尤其是后两部作品，为他带来了巨大的赞誉，一时之间甚至被捧上了神坛，成为了超现实主义的邪典电影经典。所以在他接到赛杜的电话时，他正值野心膨胀之时，于他而言，睥睨天下的资本就藏于胸中，在那时的他看来，世上哪里还有什么难事？</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070232.webp" style="width:720px" /></p>

<p>《圣山》中的经典场景</p>

<p>所以，当赛杜打电话来说，他可以支持他完全由着自己的性子再拍一部电影的时候，佐杜洛夫斯基毫不犹豫地给出了自己野心勃勃的答案&mdash;&mdash;《沙丘》。</p>

<h2>2，精神世界的暗合</h2>

<p>然而其实在当时，佐杜洛夫斯基连看都没看过《沙丘》。《沙丘》是美国殿堂级科幻巨匠弗兰克&middot;赫伯特的代表作，其在科幻作品中的地位，可以与《指环王》之于奇幻小说作品相比肩。作为&ldquo;沙丘系列&rdquo;的首作，《沙丘》出版于1965年，并在出版当年即拿下了星云奖，并在次年折桂雨果奖，并被无数知名媒体书单收录，几乎每一份&ldquo;一生必读&rdquo;的书单中都少不了它的身影。《沙丘》在出版之后由接连推出了续集，到佐杜接到赛杜打来的电话时，&ldquo;沙丘系列&rdquo;的第二本《沙丘救世主》刚在1969年出版，而系列&ldquo;前三部曲&rdquo;的第三部则在两年后的1976年才出版。佐杜洛夫斯基并不掩饰自己对《沙丘》的陌生，但他却无比确信《沙丘》是一部与他气味相投的作品。事实上，尽管《沙丘》系列有着与《指环王》相比肩的文学地位，但在阅读通俗性上其实远远不及后者，创作者弗兰克&middot;赫伯特在随后的创作中把越来越多的笔墨放到了对哲学、宗教等形而上学的描写上，大段大段的意识流描写使得这部作品对读者的要求也越来越高。而这种对精神世界的神秘追求，或许在有的人眼中代表着枯燥、晦涩与拖沓，但却正中佐杜洛夫斯基的下怀。</p>

<p>&nbsp;</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070234.webp" style="width:720px" /></p>

<p>佐杜洛夫斯基版《沙丘》的内部海报</p>

<p>佐杜洛夫斯基的作品中，同样充满了大量游离于现实世界之外的、光怪陆离的精神元素，在《鼹鼠》中，一个名为&ldquo;鼹鼠&rdquo;抢手因为妻子被杀而被迫与儿子一起踏上了复仇之路，而在这一部看似平常的西部片中，却杂糅了基督教、萨满教、密宗等诸多宗教隐喻和哲学思辨，而到了之后的《圣山》，则彻头彻尾地变为一部没有逻辑的精神创作，通过大量超出常人认知范畴的血腥、残暴、诡异、荒诞的场景刻画，实现了对精神世界的探索和对信仰的拷问。所以，如果要为《沙丘》选择一个导演，将其从枯燥的文字变为光怪陆离的视觉元素，佐杜洛夫斯基应该是当时的不二之选。</p>

<p>1974年的那通电话之后，佐杜洛夫斯基前往巴黎，专心创作电影版的《沙丘》。但他没想到的是，他的这趟巴黎之行，并没能如愿地在电影史上留下传奇，却阴差阳错地在漫画史上留下了浓墨重彩的一笔。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070235.webp" style="width:720px" /></p>

<p>佐杜洛夫斯基和莫比斯的合影</p>

<h2>3，寻找精神的战士</h2>

<p>其实，佐杜洛夫斯基并不适合商业电影的世界，他的电影非常私人化，只是他&ldquo;佐氏哲学&rdquo;的一种表达载体，他从不会去考虑投资商或观众的感受，所以，作为&ldquo;邪典电影&rdquo;鼻祖级的创作者，他的声誉却从未存在于更大范围的认知之中，相比于更为大众所熟知的昆汀&middot;塔伦蒂诺、大卫&middot;林奇等邪典电影代表人，佐杜洛夫斯基的声誉更局限于最为核心的小圈子之中。佐杜洛夫斯基本人对电影持有一种近乎苛求的偏执，他希望在其中表达完全不受拘束的个人意志，因此他甚至对整个电影制度都深恶痛绝，在他看来，电影应该是艺术家自己的纯粹发声和表达，不应该受到来自其任何方面的掣肘，不管是体裁上的，还是资金上的。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070236.webp" style="width:720px" /></p>

<p>佐杜洛夫斯基和他的《沙丘》团队</p>

<p>所以，佐杜洛夫斯基无视电影制作的&ldquo;游戏规则&rdquo;，力图将《沙丘》作为一种纯粹私人意志的表达。首先他改写了整个剧本，尽管他非常欣赏弗兰克&middot;赫伯特的创作，但他还是根据自己的想象完全地改写了整个故事，大的故事框架得以保留，但其中很多人物的设定和命运都被重新定义，他希望呈现的，并不是赫伯特的沙丘，而是他佐杜洛夫斯基自己的沙丘。然后，他寻找了他梦想中的&ldquo;精神战士&rdquo;与他一起把这座私人化的沙丘建造起来，他找来了莫比斯为他绘制故事板并设计人物造型、克里斯&middot;福斯来设计飞船、H&middot;R&middot;吉格来设计太空城堡和美陈布景、丹&middot;奥班农来负责特效设计。在演员的选定上，佐杜洛夫斯基更是大胆，他将滚石主唱米克&middot;贾格尔、奥逊&middot;威尔斯、阿兰&middot;德龙、葛洛丽亚&middot;斯旺森等人统统招致麾下，甚至以每小时10万美金的天价邀请到了当时如日中天的超现实主义艺术家萨尔瓦多&middot;达利前来饰演&ldquo;帝王&rdquo;一角，这样的选角在当年可以说是既超级豪华又颇具话题性的卡司名单了，甚至可以说的令人着迷，又令人为之痴狂。</p>

<p><img src="https://img1.doubanio.com/view/thing_review/l/public/p1070237.webp" style="width:720px" /></p>

<p>莫比斯为《沙丘》所做的美术设计</p>

<p>当然，佐杜洛夫斯基为了组建自己的&ldquo;梦之队&rdquo;，付出了极为高昂的代价，他为了劝说当时已对电影事业毫无兴趣的奥逊&middot;威尔斯加入，向他许诺包下他最喜欢的一家餐厅，每天由米其林三星主厨为他烹饪菜肴，而他许诺给达利的&ldquo;最高男演员片酬&rdquo;10万美元时薪也绝对碾压当年所有的一线影星。除此之外，从1974年到1977年，佐杜洛夫斯基为这部电影做了整整四年的前期工作，光是几千页的前期概念设计就花去了200多万美元，这已然是当年一部普通电影的所有预算了，而佐杜洛夫斯基对整部片子的预算更是达到了前无古人的1500万美元，这个数字在当年已经是天文数字一般的存在，远远超出了投资方给出的950万美元。</p>

<p><img src="https://img1.doubanio.com/view/thing_review/l/public/p1070239.webp" style="width:720px" /></p>

<p>达利与莫比斯所设计的&ldquo;帝王&rdquo;</p>

<p>佐杜洛夫斯基怎么都没有想到，自己为之披肝沥血的《沙丘》最终会被金钱拖垮。</p>

<h2>4，传奇的宿命落幕</h2>

<p>约翰&middot;列侬算是对佐杜洛夫斯基有知遇之恩，正是因为对《鼹鼠》的赞赏有加，约翰&middot;列侬赞助了佐杜洛夫斯基100万美金用以拍摄他的下一部电影，并不对这部电影做任何的束缚。佐杜洛夫斯基用这100万美金拍摄了后来被称为邪典电影巅峰之作的《圣山》，对后世的Cult文化产生了意义深远的影响。</p>

<p><img src="https://img1.doubanio.com/view/thing_review/l/public/p1070238.webp" style="width:720px" /></p>

<p>《鼹鼠》中的枪手形象已经成为邪典文化的符号</p>

<p>《圣山》拍摄于1973年，当时的总预算是150万美元，已是墨西哥预算最高的影片，其在影片中所用的场景和调度，都已是当时的顶级制作水准，而仅仅在几年之后，佐杜洛夫斯基为自己的新片《沙丘》就开出了1500万的疯狂预算，这不能不令人咋舌。事实上，到1977年的时候，《沙丘》的预算还差500万的缺口，佐杜洛夫斯基来到好莱坞游说，希望得到大电影公司的资助。但面对一个从未有过好莱坞制作经验的导演、一部被大刀阔斧改编的科幻名著作品、一部理念远超当代认知水准的电影创意，以及一部长达12小时的煌煌巨著时，没有一家电影公司愿意为佐氏的疯狂买单，而《沙丘》的黯然落幕也就成了顺理成章的事情。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070241.webp" style="width:720px" /></p>

<p>佐杜洛夫斯基和莫比斯绘制的故事版非常细致</p>

<p>1978年，原著作者弗兰克&middot;赫伯特受邀为电影版《沙丘》撰写了新的剧本，1979年，雷德利&middot;斯科特受邀接替佐杜洛夫斯基成为《沙丘》的导演，虽然雷德利&middot;斯科特最终也并没有真正完成《沙丘》的拍摄，但佐杜洛夫斯基正式与这个改变了一生的作品擦肩而过，一个传奇就此落幕。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070240.webp" style="width:720px" /></p>

<p>佐杜洛夫斯基为《沙丘》所作的设计图册拥有十分惊人的体量</p>

<p>有人慨叹，佐杜之后，影史再无沙丘。</p>

<h2>5，沙丘精神的延续</h2>

<p>1974年，当佐杜洛夫斯基第一次找到特效师丹&middot;奥班农的时候，后者还是个名不见经传的小角色，只有一部名叫《黑色星球》的小成本科幻电影拿得出手。奥班农是最早加入佐杜洛夫斯基《沙丘》团队的成员之一，他甚至为此变卖了自己的家产，从美国移居巴黎，以图报答佐氏的知遇之恩。所以在佐氏《沙丘》黯然收场之时，奥班农曾一度濒临崩溃，甚至住进了精神病院。随后，奥班农与人合写了一篇名为《星际怪兽》的故事，而这个故事正是《异形》的前身。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070243.webp" style="width:648px" /></p>

<p>丹&middot;奥班农和H&middot;R&middot;吉格</p>

<p>1979年，交出《沙丘》导筒的雷德利&middot;斯科特，执导了让自己名声大噪的《异形》，而该片的编剧之一则正是丹&middot;奥班农，正是他请来了自己在《沙丘》剧组中的老朋友们&mdash;&mdash;莫比斯为《异形》做了最初的概念设计、吉格设计了那个令人惊骇的异形生物、克里斯&middot;福斯则设计了片中的飞船诺斯特罗莫号，他们将为《沙丘》所做的很多设计全都带到了《异形》之中，让《沙丘》以某一种形式得到了延续。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070242.webp" style="width:720px" /></p>

<p>H&middot;R&middot;吉格为《沙丘》所做的设计</p>

<p>&nbsp;</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070244.webp" style="width:640px" /></p>

<p>画风阴郁黑暗的H&middot;R&middot;吉格是由达利所推荐的</p>

<p>当然，《沙丘》对后世的影响远不止此。《星球大战》中的光剑对决很有可能也是受到了《沙丘》分镜设计的影响、《飞侠哥顿》中的宫殿设计则与《沙丘》中的宫殿设计在构造和装饰上如出一辙、《决胜时空战区》中的人物造型则与莫比斯为《沙丘》所做的造型设计颇为相似、《超时空接触》中的宇宙长镜头则几乎脱胎于佐杜洛夫斯基早年的开场设想，而在《终结者》、《黑客帝国》、《夺宝奇兵》等经典影片中，也都可以看到《沙丘》的影子，而最近的一次致敬则出现在《异形》的前传电影《普罗米修斯》中，吉格将自己曾为《沙丘》所设计的哈空能城堡用在了这部电影之中。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070245.webp" style="width:520px" /></p>

<p>《普罗米修斯》VS《沙丘》</p>

<p>在佐杜洛夫斯基为《沙丘》所改编的结局中，主人公保罗被割喉，但他并没有死去，他成为了救世主，他的意识进入到了所有人的身体中，他的生命在所有人的身体中得到了延续。佐杜洛夫斯基或许并没有想到，当年他为保罗安排的结局，如今映照到了他的《沙丘》身上，《沙丘》虽然胎死腹中，但它却成为了无数其他电影的一部分，《沙丘》的精神总归没有寂灭，而是以另一种方式，被保留了下来。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070246.webp" style="width:720px" /></p>

<p>纪录片《佐杜洛夫斯基的沙丘完整的再现了《沙丘》的兴起与落幕</p>

<p>而佐杜洛夫斯基自己保留《沙丘》精髓的方式，就是去创作漫画。</p>

<h2>6，创建新的宇宙</h2>

<p>莫比斯的第一个被佐杜洛夫斯基招入麾下的人，当时的莫比斯已经凭借《蓝莓中尉》等作品成为法国最为知名的漫画家，而让佐杜洛夫斯基一眼认定莫比斯就是自己要找的&ldquo;摄像机&rdquo;的作品，正是这部莫比斯最为脍炙人口的作品《蓝莓中尉》。在佐杜洛夫斯基的眼中，莫比斯是近乎完美的画面呈现者，他可以将自己笔下的文字以最为精准的画面表现出来，而且速度奇快，用佐杜自己的话说，就是&ldquo;他是个天才，他不仅仅是个非常出众的艺术家，他还非常的迅速，唰唰唰唰唰地就画完了&rdquo;。在漫长的前期准备时间里，佐杜洛夫斯基和莫比斯一起，为他们心中的《沙丘》画了3000多副分镜画面，几乎把影片的每一幕都精准地用画面呈现了出来，哪里要走位、哪里要特写、哪里有情绪&hellip;&hellip;.莫比斯可能没有想到，他笔下的这些画面，启迪了无数后来者在科幻电影中的灵光一闪。</p>

<p><img src="https://img1.doubanio.com/view/thing_review/l/public/p1070247.webp" style="width:600px" /></p>

<p>&nbsp;</p>

<p><img src="https://img1.doubanio.com/view/thing_review/l/public/p1070249.webp" style="width:720px" /></p>

<p>莫比斯为《沙丘》所作的分镜美轮美奂</p>

<p>虽然《沙丘》最终没有拍成，但莫比斯并没有就此而从电影圈子中隐退，他此后又参加了多部电影的创作，除了上文提到的《异形》之外，《创战纪》、《第五元素》、《小尼莫》等诸多电影名作都留下了莫比斯的大名。《沙丘》之于莫比斯而言，可谓是失之桑榆而收之东隅。</p>

<p><img src="https://img1.doubanio.com/view/thing_review/l/public/p1070248.webp" style="width:424px" /></p>

<p>莫比斯为《第五元素》所作的美术设计</p>

<p>在我看来，佐杜洛夫斯基的《沙丘》更像是一道大门，虽然这道通往瑰丽未来的大门最终轰然崩塌，但它还是深刻地改变了很多人的命运，莫比斯、克里斯&middot;福斯、H&middot;R&middot;吉格和丹&middot;奥班农莫不如此，他们依靠着在《沙丘》中所获得的宝贵经验，得以在电影的路上越走越远，最终登堂入室，各自有了各自的代表作，成为各自领域的大师级人物。但唯有佐杜洛夫斯基没有通过这道大门，或许是因为他投入了太多，一时间无法接受这黯淡的结局，导致了他在此后相当长的时间里都没有力气再去触碰电影拍摄，或许是因为被伤害得太深，他需要疗伤。</p>

<p>他疗伤的方式就是漫画，而他的搭档则正是莫比斯。在《沙丘》电影项目宣告失败之后，佐杜洛夫斯基和莫比斯将他们为电影所做的工作进行了改编和扩展，最终开创了一个新的宇宙&mdash;&mdash;&ldquo;佐氏宇宙（Jodoverse）&rdquo;&mdash;&mdash;这是一个充满了科幻、爱情、勇气、背叛、阴谋、权力争斗和神秘主义的宏大宇宙观，而全景式呈现这个宇宙的作品则是大名鼎鼎的&ldquo;史上最佳漫画&rdquo;&mdash;&mdash;《印卡石（L&#39;Incal）》，以及由它所衍生出来的几部作品，《合金男爵（Metabarons）》、《天科教士（The Technopriests）》、《卡斯塔卡家族（Castaka）》和《麦加莱克斯（M&eacute;galex）》等。而《印卡石》更是直接影响了吕克&middot;贝松的科幻名作《第五元素》，后者有大量的电影场景和故事情节都直接取材自《印卡石》漫画，究其原因，其实是因为《第五元素》的美术设计，正是出自《印卡石》的画师莫比斯之手。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070251.webp" style="width:720px" /></p>

<p>《印卡石》为佐氏宇宙的开篇之作</p>

<p>&nbsp;</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070250.webp" style="width:720px" /></p>

<p>《印卡石》中天空城市场景也出现在了《第五元素》中</p>

<p>相比于失败了的电影版《沙丘》，《印卡石》和《合金男爵》却带给了佐杜洛夫斯基无数的赞誉，他的&ldquo;佐氏宇宙&rdquo;成为了相当独特的存在，佐杜洛夫斯基没在《沙丘》中施展出来的雄心壮志，全都都在这里得到了实现。</p>

<h2>7，诡谲太空的缺憾美</h2>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070253.webp" style="width:720px" /></p>

<p>《合金男爵》出自阿根廷著名画师胡安&middot;希门尼斯</p>

<p>佐杜洛夫斯基有一句非常有名的话，&ldquo;大多数的导演用眼睛拍电影，而我则用我的睾丸去拍&rdquo;，他力图用这种狂放不羁的话语，去与那些他看不起的寻常导演划清界限。他的这句话，同样适用于他的漫画创作，他笔下的&ldquo;佐氏宇宙&rdquo;绝对与大多数的漫画作品不一样&mdash;&mdash;同样是太空歌剧，差不多同时代的法漫《星际特工》专注于人与宇宙的关系，抛开天马行空的星际外衣，故事的内核仍然是人文而浪漫的，你在其中依然可以看到爱情的浪漫和人性的高尚光辉；而&ldquo;佐氏宇宙&rdquo;则不然，它延续了佐杜洛夫斯基一贯的疯狂，故事没有绝对的正邪之分，也没有一以贯之的道德标准，残暴、伦理、悖论无不在每一页中轮番上演，不断地突破读者想象力的边界，在佐杜洛夫斯基的笔下，似乎永远都百无禁忌，很多传统漫画绝难一见的场景和情节，在他的笔下不过是稀松平常的一笔。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070252.webp" style="width:720px" /></p>

<p>胡安&middot;希门尼斯的画风瑰丽而充满史诗感，令人过目难忘</p>

<p>佐杜洛夫斯基对一切非常规的、不完整的、不完美的东西抱都有极大的热爱，在他早期的电影中，这一点就体现得尤为明显，无论是那部被捧上邪典电影神坛的《鼹鼠》，还是那部被誉为午夜场电影鼻祖的《圣山》，每一部电影中都充斥着各色各样的畸形人和残缺人，而他的这种奇怪的嗜好也延续到了他的漫画作品中，尤其是《合金男爵》中。在《合金男爵》的世界中，每一任合金男爵都必须经过一个&ldquo;残损&rdquo;的仪式，将自己的一部分肢体破坏掉，然后用机械体取而代之。在佐杜洛夫斯基的眼中，完整的个体是不存在的，任何人都必有缺陷，残缺并非是缺点，而是一种现实的诗意，甚至是对现实的超越，只要正视自己的残缺，才能获得能力上顿悟。在合金男爵家族中，&ldquo;痛觉忍耐&rdquo;被视为一种崇高的能力认定，有的人为此被碾碎双脚而不肯流一滴泪，而有的人则亲自切开自己的颅骨，而这正是佐杜洛夫斯基对&ldquo;残缺即美&rdquo;的一种观念映射。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070254.webp" style="width:720px" /></p>

<p>合金男爵的&ldquo;残损&rdquo;仪式</p>

<p>佐杜洛夫斯基&ldquo;残缺美&rdquo;观念的峰值出现在第三代合金男爵&ldquo;钢头&rdquo;身上，他是自小被父亲轰掉了脑袋的&ldquo;无头人&rdquo;，依靠连接在身体上的钢铁头颅生活，而后来他将自己的身体与只保有脑袋的&ldquo;末代诗人&rdquo;莎澜连接在一起，成为双生共体的&ldquo;渺漠&rdquo;，世上最强的身躯与世上最懂诗意情爱的头颅相结合，或许这才是佐杜洛夫斯基眼中最为独特的存在，而这样的奇思怪想恐怕也只有佐杜这样妖孽的脑袋才想象得出。事实上，佐杜洛夫斯基本人也是一个诗人，他自小爱好文学，曾对写诗异常痴迷，所以从某种意义上而言，只有一颗脑袋的&ldquo;末代诗人&rdquo;莎澜恐怕正是佐杜洛夫斯基对自己的自我解嘲。佐杜洛夫斯基对残缺的热爱不仅仅停留在肉体之上，在伦理上同样如此。在《合金男爵》中，伦理的残缺也成为一个重要的命题，首当其冲的就是父子相弑的家族传统，要想获得合金男爵的称号，就必须在最终试炼中杀死自己的父亲，很多人认为这种近乎疯狂的构想来源于佐杜洛夫斯基与其父极为糟糕的父子关系。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070255.webp" style="width:720px" /></p>

<p>失去头颅的&ldquo;钢头&rdquo;和他失去双眼的妻子</p>

<p>尽管《印卡石》是直接诞生于佐氏《沙丘》的漫画作品，但它更多的继承了莫比斯对于《沙丘》的美术设计，真正继承佐氏《沙丘》邪典精髓的，反而是这部衍生之作《合金男爵》。佐杜洛夫斯基把很多天马行空的怪点子都用到了《合金男爵》之中，其中最为教人印象深刻的一处就是所谓的&ldquo;滴血受孕&rdquo;&mdash;&mdash;在《沙丘》中，主人公保罗的父亲因被阉割而失去了生育能力（这也充分展现了佐杜洛夫斯基对&ldquo;肢体残缺&rdquo;的迷恋），而他却用一滴血让保罗的母亲受孕并生下保罗，而这个桥段在《合金男爵》中也得以保留，末代男爵无名，正是由其母阿格娜与其兄长的一滴血孕育而生。同样，贯穿整个《合金男爵》故事始终的宇宙资源&ldquo;神菌&rdquo;也与《沙丘》中的神秘香料&ldquo;美兰极&rdquo;遥相呼应。</p>

<p><img src="https://img3.doubanio.com/view/thing_review/l/public/p1070256.webp" style="width:720px" /></p>

<p>《合金男爵》中的滴血受孕</p>

<p>或许在佐杜洛夫斯基的眼中，《合金男爵》才是他自己的《沙丘》。</p>

<h2>8，俄狄浦斯的杀与死</h2>

<p>在古希腊悲剧中，俄狄浦斯的故事最为令人唏嘘，他在不知情的情况下，杀死了自己的父亲并娶了自己的母亲，在知道真相后，刺瞎了自己的双眼并自我放逐，而在《合金男爵》中几乎翻版了这个经典的悲剧故事。</p>

<p>第二代合金男爵阿格纳由于在出生时被注入了神菌而只能漂浮在空中，他被自己的父亲所嫌弃，并由母亲欧尼瑞塔抚养成人，但成年后的阿格纳最终在试炼中亲手杀死了自己的父亲成为了第二代合金男爵，后来阿格纳娶了欧妲公主为妻，并生下一名男婴，但阿格纳却发现自己的妻子的灵魂在多年前就已经死去，而妻子体内所容纳的竟然是自己的母亲欧尼瑞塔，愤怒的阿格纳在男孩降生的瞬间一枪爆掉了他的头颅，这个无头男孩就是后来的第三代合金男爵钢头。</p>

<p><img src="https://img1.doubanio.com/view/thing_review/l/public/p1070257.webp" style="width:720px" /></p>

<p>阿格纳爆掉亲生儿子的头颅</p>

<p>希腊式的悲剧在以往佐杜洛夫斯基的作品中并不多见，我们有理由相信，这个桥段更多的是他受《沙丘》原著作者弗兰克&middot;赫伯特的影响所致。在沙丘系列中，主人公保罗所处的阿崔迪斯家族正是来自于颇具传奇色彩的希腊阿特柔斯家族，而后者则是古希腊最为著名的阿伽门农悲剧中的主要人物。而在《沙丘的救世主》中，主人公保罗的最终结局正是刺瞎双眼并自我流放，与俄狄浦斯如出一辙。</p>

<p>或许，《合金男爵》之所以会让人难忘，就在于其独特的悲剧语境。合金男爵一族本就应是因祸事而起，出卖了家族世代相守的、最为宝贵的&ldquo;神菌&rdquo;秘密，才换来了在一颗丰沃星球上苟安的自由，因此从根本上讲，合金男爵就注定是悲剧的，他们世代恪守着自己的合金武士道，却与自己的人伦永远背道而驰，父子相残、母子结合、兄妹共生、自体繁殖&hellip;&hellip;几乎所有的伦理禁忌都被他们一一打破，而最终留给他们的只可能是悲剧性的孤寂，而末代合金男爵无名宣告永远不生育子嗣，看似带给这个家族灭门灾祸，但实际上确实给这个被诅咒的家族做一个体面的了结。</p>

<p><img src="https://img1.doubanio.com/view/thing_review/l/public/p1070259.webp" style="width:720px" /></p>

<p>末代合金男爵&ldquo;无名&rdquo;</p>

<p>反思永远是佐杜洛夫斯基的一个核心命题，他总是披着神秘的外衣去讲述一个看似癫狂的故事，但他真正想做的，其实是对这种行为的反思与追问，一如《鼹鼠》是对宗教的追问，又如《圣山》是对信仰的追问，再如《金属男爵》实际上是对神性的追问&mdash;&mdash;无敌之后又如何？</p>

<h2>9，未完的传奇</h2>

<p>佐杜洛夫斯基的名字就像是一种宗教一样，它代表着孤傲、神秘、不屈、真实和疯狂，爱他的人爱得死心塌地，而恨他的人也恨得咬牙切齿。但对于死硬了一辈子的佐杜而言，他根本就不在乎，如今已经87岁高龄的佐老爷子，除了头发白了点儿，皱纹深了点儿，还是当年的气势，一点儿都没有向现实妥协的意思。</p>

<p><img src="https://img1.doubanio.com/view/thing_review/l/public/p1070258.webp" style="width:720px" /></p>

<p>将近90岁高龄的佐杜洛夫斯基</p>

<p>2011年，在出镜纪录片《佐杜洛夫斯基的&lt;沙丘&gt;》时，他和几十年未见的迈克尔&middot;赛杜终于重逢，而此时距离他俩1973年的那通豪气干云的电话已经过去了38年，在当年的《沙丘》项目搁浅之后，两人就闹得不欢而散各走各路，而在此次重逢之后，这两位昔日的老战友终于重归于好，甚至又搅和在一起拍起电影来。只不过，这一次佐老爷子没有玩大的，他把镜头对准了自己，打算拍一个自传电影五部曲，这种老子宇宙第一爱谁谁的自知自觉也就只有他能有了。在暌违导筒23年之后，他终于再次做起导演，前面的两部已经出来了，一部叫《现实之舞》，一部叫《诗无尽头》，但票房惨淡到不忍直视，但佐杜似乎根本就不在意，当然，他的忠实粉丝们也根本不在意。</p>

<p>而在漫画方面，《合金男爵》在推出了前传故事《卡斯塔卡家族》之后，全新的故事《合金男爵新传》也相继出版，而最新的第五卷也将在明年推出，不知道横扫宇宙无人能敌的末代合金男爵，如今尚能战否？</p>

<p>传奇尚未终结，且让我们拭目以待。</p>
', N'~/Write_image/s29564168.jpg', CAST(N'2018-01-08T11:27:52.263' AS DateTime))
INSERT [dbo].[Write] ([wri_id], [wr_user_id], [wri_name], [wri_mess], [wri_image], [wri_time]) VALUES (24, 11, N'关于政治，你一定误解了这些概念', N'<p>版权归作者所有，任何形式转载请联系作者。<br />
作者：新经典（来自豆瓣）<br />
来源：https://www.douban.com/note/652250840/</p>

<p>时隔十五年，鲁豫最新作品《偶遇》终于与大家见面了。两年来，上万封读者来信，一百多个夜晚，鲁豫用她的人生经验与智慧，回应这个时代的悲喜。一封封来信，一个个故事，都是当代人面临的最典型、最艰难、最普遍的问题。鲁豫用她的诚恳，如知己，如诤友般，一往一复，回应彼此内心的艰难，把她对朋友、对爱情、对生活、对命运、对挫折、对时间的态度，都写进了新书《偶遇》。泥泞人生，这是鲁豫与他人的心灵偶遇，也是与这个时代的偶遇。</p>

<p>《偶遇》从多个层面展示了这个时代的爱、忧伤与困惑，是鲁豫继百万畅销书《心相约》十五年后，又一本力作。在本书中，鲁豫一改主持人发问的样貌，成为一个与年轻人热切交流的回答者，她自称小胖，用一颗赤诚之心，一颗对世界对生命对爱情的初心，来回应这个时代。</p>

<p><br />
新的一年，你应该抡圆了生活</p>

<p>人性的脆弱、复杂会让情感不堪一击，因为所有的情感都不是板上钉钉的，都需要运气和努力，哪怕是看似理所应当的血脉亲情。</p>

<p>秋荔的来信</p>

<p>小胖，你好。马上要过年了，人人都在忙着买礼物、回家、团聚， 而我还没买票。</p>

<p>今年再不回家的话，这就是我第五个不回家的春节了。不是因为工作忙、路远，也不是因为没钱，是家里那个闷头猛抽烟的男人&mdash;我的父亲，一个从来不会笑的人。他身上那种无声的压力和冷漠，让我待在那个家的每一分每一秒都感觉窒息。</p>

<p>我跟他一年说的话，不会比我跟同事一</p>
', N'~/Write_image/s6121661.jpg', CAST(N'2018-01-08T14:45:49.870' AS DateTime))
SET IDENTITY_INSERT [dbo].[Write] OFF
SET IDENTITY_INSERT [dbo].[Write_Comment] ON 

INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (8, 11, 15, N'版权归作者所有，任何形式转载请联系作者。
作者：星空（来自豆瓣）
来源：https://book.douban.com/review/8950911/


 作为一名知名的茶艺培训学校资深讲师、高级茶艺师、评茶员，再加上幼年时在云南茶区长大的经历，白子一懂得这么多的茶不足为奇，难能可贵的倒是在于她十一年来在茶山一路游历、一路见闻的那一种坚持不懈和乐此不疲。因为爱所以才爱，一定是这样的。不然，世界上喜欢茶的人太多了，谈茶论道者也有之，从茶叶说到茶具，再说到茶道，即便说得天花乱坠，也不算多么稀奇；但如白子一这样，中央财经大学毕业之后本来已经进入了投行工作，后来却更愿意去做自己喜欢做的事情，走上了爱茶、做茶、研究茶的这一条实在不能说是轻松的旅程——如果不是因为发自内心的喜欢，又何苦来折磨自己呢？！更何况，她不仅是坐而论道，更是在且行且品呢！', CAST(N'2018-01-03T23:14:55.563' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (10, 11, 18, N'版权归作者所有，任何形式转载请联系作者。
作者：张志明（来自豆瓣）
来源：https://book.douban.com/review/8964415/


中国社会的热门新闻可以说为创作者提供了绝佳的故事题材，刘震云的《吃瓜时代的儿女们》并不生产荒诞，他只是现实生活的搬运工，生活才是最佳编剧，我们都是主角。

     一口气读下来，不觉得累，有过《一句顶一万句》《我不是潘金莲》的创作积累，从描绘中国人的千年孤独到官场现形记，刘老师在故事的叙述和文字的驾驭能力上更加娴熟和精炼，都是干货，没有一点拖泥带水。', CAST(N'2018-01-05T23:27:45.997' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (12, 11, 18, N'我也是这样觉得的', CAST(N'2018-01-07T20:51:58.817' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (13, 11, 18, N'dsafjkldasjfkldj ', CAST(N'2018-01-07T22:18:59.557' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (14, 11, 18, N'fdsafds a', CAST(N'2018-01-07T22:19:04.253' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (15, 11, 18, N'fdsaf s', CAST(N'2018-01-07T22:19:07.760' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (16, 11, 18, N'dfsafdasfdsa', CAST(N'2018-01-07T22:19:11.553' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (17, 11, 18, N'fdsaf ', CAST(N'2018-01-07T22:19:20.580' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (18, 11, 18, N'12313', CAST(N'2018-01-07T22:26:11.967' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (19, 11, 18, N'153fshfshfdhfsgdfgds', CAST(N'2018-01-07T22:26:16.757' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (20, 11, 18, N'gfdsgfdsg', CAST(N'2018-01-07T22:26:19.793' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (21, 11, 18, N'gfdsgfdcxv', CAST(N'2018-01-07T22:26:23.403' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (22, 11, 18, N'gdfvcnvxcgf', CAST(N'2018-01-07T22:26:28.183' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (23, 11, 18, N'gf', CAST(N'2018-01-07T22:26:38.653' AS DateTime))
INSERT [dbo].[Write_Comment] ([wc_id], [wc_user_id], [wc_wri_id], [wc_mess], [wc_time]) VALUES (24, 11, 23, N'hjhkj
', CAST(N'2018-01-08T14:42:22.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[Write_Comment] OFF
SET IDENTITY_INSERT [dbo].[Write_Keep] ON 

INSERT [dbo].[Write_Keep] ([wk_id], [wk_user_id], [wk_wri_id], [wk_time]) VALUES (3, 11, 14, CAST(N'2018-01-03T16:03:56.903' AS DateTime))
INSERT [dbo].[Write_Keep] ([wk_id], [wk_user_id], [wk_wri_id], [wk_time]) VALUES (4, 11, 14, CAST(N'2018-01-03T22:21:06.547' AS DateTime))
INSERT [dbo].[Write_Keep] ([wk_id], [wk_user_id], [wk_wri_id], [wk_time]) VALUES (5, 11, 15, CAST(N'2018-01-03T23:14:21.617' AS DateTime))
INSERT [dbo].[Write_Keep] ([wk_id], [wk_user_id], [wk_wri_id], [wk_time]) VALUES (13, 11, 23, CAST(N'2018-01-08T14:42:27.913' AS DateTime))
SET IDENTITY_INSERT [dbo].[Write_Keep] OFF
USE [master]
GO
ALTER DATABASE [D:\2017下学年\期末作业\遇见读书论坛\WEBAPPLICATION1\APP_DATA\YJ.MDF] SET  READ_WRITE 
GO
