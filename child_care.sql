USE [master]
GO
/****** Object:  Database [ChildCare]    Script Date: 9/22/2023 12:24:58 AM ******/
CREATE DATABASE [ChildCare]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChildCare', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ChildCare.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChildCare_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ChildCare_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ChildCare] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChildCare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChildCare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChildCare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChildCare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChildCare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChildCare] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChildCare] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChildCare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChildCare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChildCare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChildCare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChildCare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChildCare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChildCare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChildCare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChildCare] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChildCare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChildCare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChildCare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChildCare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChildCare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChildCare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChildCare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChildCare] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChildCare] SET  MULTI_USER 
GO
ALTER DATABASE [ChildCare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChildCare] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChildCare] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChildCare] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChildCare] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChildCare] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ChildCare] SET QUERY_STORE = ON
GO
ALTER DATABASE [ChildCare] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ChildCare]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](256) NOT NULL,
	[role] [nvarchar](256) NOT NULL,
	[password] [nvarchar](256) NOT NULL,
	[fullName] [nvarchar](256) NULL,
	[avatar] [nvarchar](256) NULL,
	[mobile] [varchar](20) NULL,
	[gender] [tinyint] NOT NULL,
	[address] [nvarchar](1000) NULL,
	[status] [tinyint] NOT NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [int] NOT NULL,
	[serviceId] [int] NULL,
	[point] [float] NOT NULL,
	[content] [nvarchar](1000) NOT NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](1000) NULL,
	[fileName] [nvarchar](256) NULL,
	[contentType] [nvarchar](100) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Media] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NOT NULL,
	[title] [nvarchar](256) NULL,
	[content] [nvarchar](1000) NULL,
	[readAt] [datetime] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[method] [int] NOT NULL,
	[reservationId] [int] NOT NULL,
	[status] [int] NULL,
	[referenceId] [varchar](50) NULL,
	[amount] [float] NOT NULL,
	[paymentUrl] [varchar](1000) NULL,
	[paymentQr] [varchar](1000) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[authorId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[title] [nvarchar](1000) NOT NULL,
	[thumbnail] [nvarchar](1000) NOT NULL,
	[content] [text] NOT NULL,
	[status] [tinyint] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](1000) NOT NULL,
	[description] [nvarchar](1000) NULL,
	[thumbnail] [nvarchar](1000) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_PostCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [int] NOT NULL,
	[staffId] [int] NULL,
	[email] [varbinary](256) NOT NULL,
	[mobile] [varchar](20) NULL,
	[gender] [tinyint] NULL,
	[address] [nvarchar](1000) NULL,
	[status] [tinyint] NULL,
	[total] [float] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationItem]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[staffId] [int] NOT NULL,
	[reservationId] [int] NOT NULL,
	[serviceId] [int] NOT NULL,
	[servicePrice] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_ReservationItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[thumbnail] [nvarchar](1000) NULL,
	[title] [nvarchar](1000) NULL,
	[price] [float] NULL,
	[salePrice] [float] NULL,
	[briefInformation] [nvarchar](1000) NULL,
	[description] [nvarchar](1000) NULL,
	[status] [tinyint] NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceCategory]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](1000) NOT NULL,
	[thumbnail] [nvarchar](1000) NULL,
	[description] [nvarchar](1000) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_ServiceCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceMedia]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceMedia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mediaId] [int] NOT NULL,
	[serviceId] [int] NOT NULL,
 CONSTRAINT [PK_ServiceMedia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[type] [int] NULL,
	[key] [varchar](256) NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](1000) NOT NULL,
	[status] [nvarchar](1000) NULL,
	[description] [nvarchar](1000) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlideItem]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlideItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[slideId] [int] NOT NULL,
	[image] [nvarchar](1000) NOT NULL,
	[title] [nvarchar](1000) NULL,
	[subTitle] [nvarchar](1000) NULL,
	[backLink] [nvarchar](1000) NULL,
	[description] [nvarchar](1000) NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_SlideItem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Token]    Script Date: 9/22/2023 12:24:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Token](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NOT NULL,
	[type] [tinyint] NULL,
	[value] [varchar](256) NULL,
	[isValid] [nchar](10) NULL,
	[expiredAt] [datetime] NOT NULL,
	[createdAt] [datetime] NOT NULL,
	[updatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_Token] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account] FOREIGN KEY([customerId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Account]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Service] FOREIGN KEY([serviceId])
REFERENCES [dbo].[Service] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Service]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Account]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Reservation] FOREIGN KEY([reservationId])
REFERENCES [dbo].[Reservation] ([id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Reservation]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Author] FOREIGN KEY([authorId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Author]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_PostCategory] FOREIGN KEY([categoryId])
REFERENCES [dbo].[PostCategory] ([id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_PostCategory]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Customer] FOREIGN KEY([customerId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Customer]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Staff] FOREIGN KEY([staffId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Staff]
GO
ALTER TABLE [dbo].[ReservationItem]  WITH CHECK ADD  CONSTRAINT [FK_ReservationItem_Reservation] FOREIGN KEY([reservationId])
REFERENCES [dbo].[Reservation] ([id])
GO
ALTER TABLE [dbo].[ReservationItem] CHECK CONSTRAINT [FK_ReservationItem_Reservation]
GO
ALTER TABLE [dbo].[ReservationItem]  WITH CHECK ADD  CONSTRAINT [FK_ReservationItem_Service] FOREIGN KEY([serviceId])
REFERENCES [dbo].[Service] ([id])
GO
ALTER TABLE [dbo].[ReservationItem] CHECK CONSTRAINT [FK_ReservationItem_Service]
GO
ALTER TABLE [dbo].[ReservationItem]  WITH CHECK ADD  CONSTRAINT [FK_ReservationItem_Staff] FOREIGN KEY([staffId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[ReservationItem] CHECK CONSTRAINT [FK_ReservationItem_Staff]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_ServiceCategory] FOREIGN KEY([categoryId])
REFERENCES [dbo].[ServiceCategory] ([id])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_ServiceCategory]
GO
ALTER TABLE [dbo].[ServiceMedia]  WITH CHECK ADD  CONSTRAINT [FK_ServiceMedia_Media] FOREIGN KEY([mediaId])
REFERENCES [dbo].[Media] ([id])
GO
ALTER TABLE [dbo].[ServiceMedia] CHECK CONSTRAINT [FK_ServiceMedia_Media]
GO
ALTER TABLE [dbo].[ServiceMedia]  WITH CHECK ADD  CONSTRAINT [FK_ServiceMedia_Service] FOREIGN KEY([serviceId])
REFERENCES [dbo].[Service] ([id])
GO
ALTER TABLE [dbo].[ServiceMedia] CHECK CONSTRAINT [FK_ServiceMedia_Service]
GO
ALTER TABLE [dbo].[SlideItem]  WITH CHECK ADD  CONSTRAINT [FK_SlideItem_Slide] FOREIGN KEY([slideId])
REFERENCES [dbo].[Slide] ([id])
GO
ALTER TABLE [dbo].[SlideItem] CHECK CONSTRAINT [FK_SlideItem_Slide]
GO
ALTER TABLE [dbo].[Token]  WITH CHECK ADD  CONSTRAINT [FK_Token_Token] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Token] CHECK CONSTRAINT [FK_Token_Token]
GO
USE [master]
GO
ALTER DATABASE [ChildCare] SET  READ_WRITE 
GO
