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
	[point] [int] NOT NULL,
	[content] [nvarchar](1000) NOT NULL,
	[createdAt] [datetime] NULL,
	[updatedAt] [datetime] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
-- Tạo bảng Feedbackimg
CREATE TABLE [dbo].[Feedbackimg] (
    [Feedbackimgid] INT IDENTITY(1,1) NOT NULL,
    [thumbnail] nvarchar(MAX) NOT NULL,
    CONSTRAINT [PK_Feedbackimg] PRIMARY KEY CLUSTERED ([Feedbackimgid] ASC)
);

go

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
	[describe] [nvarchar](max) NULL,
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
	[hour] [nvarchar](50) null ,
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
-- Thêm cột id trong bảng Feedbackimg để làm khóa ngoại
ALTER TABLE [dbo].[Feedbackimg]
ADD [feedbackId] [int] NOT NULL;

-- Tạo khóa ngoại để liên kết cột feedbackId trong bảng Feedbackimg với cột id trong bảng Feedback
ALTER TABLE [dbo].[Feedbackimg]
ADD CONSTRAINT [FK_Feedbackimg_Feedback]
FOREIGN KEY ([feedbackId])
REFERENCES [dbo].[Feedback] ([id]);


GO
-- Insert data into the [dbo].[Account] table
INSERT INTO [ChildCare].[dbo].[Account] ([email], [role], [password], [fullName], [avatar], [mobile], [gender], [address], [status], [createdAt], [updatedAt])
VALUES
    ('user1@example.com', 'admin', '123', 'User One', 'avatar1.jpg', '1234567890', 1, 'Address 1', 1, GETDATE(), GETDATE()),
    ('user2@example.com', 'user', '123', 'User Two', 'avatar2.jpg', '9876543210', 2, 'Address 2', 2, GETDATE(), GETDATE()),
	 ('user1@example.com', 'Doctor for regular medical examination', '123', 'User One', 'team1.jpg', '1234567890', 1, 'Address 1', 3, GETDATE(), GETDATE()),
    ('user2@example.com', 'Endocrinologist', '123', 'User Two', 'team2.jpg', '9876543210', 2, 'Address 2', 3, GETDATE(), GETDATE()),
 ('user1@example.com', 'Gynecological and childbirth care doctor', '123', 'User One', 'team1.jpg', '1234567890', 1, 'Address 1', 3, GETDATE(), GETDATE()),
    ('user2@example.com', 'Doctor', '123', 'User Two', 'team3.jpg', '9876543210', 2, 'Address 2', 3, GETDATE(), GETDATE());


-- Insert data into the [dbo].[Media] table
INSERT INTO [ChildCare].[dbo].[Media] ([url], [fileName], [contentType], [createdAt], [updatedAt])
VALUES
    ('https://example.com/media/media1.jpg', 'media1.jpg', 'image/jpeg', GETDATE(), GETDATE()),
    ('https://example.com/media/media2.jpg', 'media2.jpg', 'image/jpeg', GETDATE(), GETDATE());

-- Insert data into the [dbo].[Notification] table
INSERT INTO [ChildCare].[dbo].[Notification] ([accountId], [title], [content], [readAt], [createdAt], [updatedAt])
VALUES
    (1, 'Notification 1', 'Notification content 1', NULL, GETDATE(), GETDATE()),
    (2, 'Notification 2', 'Notification content 2', NULL, GETDATE(), GETDATE());



-- Insert data into the [dbo].[PostCategory] table
INSERT INTO [ChildCare].[dbo].[PostCategory] ([title], [description], [thumbnail], [createdAt], [updatedAt])
VALUES
    ('News', 'Category description 1', 'team1.jpg', GETDATE(), GETDATE()),
    ('blog ', 'Category description 2', 'team1.jpg', GETDATE(), GETDATE()),
    ('blog children', 'Category description 1', 'team1.jpg', GETDATE(), GETDATE());
-- Insert data into the [dbo].[Post] table


INSERT INTO [dbo].[Post]
           ([authorId]
           ,[categoryId]
           ,[title]
           ,[thumbnail]
           ,[content]
           ,[status]
           ,[createdAt]
           ,[updatedAt]
           ,[describe])
     VALUES
                (1, 
            3, 
			N'Pay attention to children',
			'quantam.png',
            '<h2>Caring for children, what is the right way to care?</h2>
<h4>(TCTG) - Nowadays, the living standards and income levels of many families are increasingly improving, and parents also have the opportunity to pay more attention and care for their children. However, do parents ever wonder if their care is enough and in the right way? On the occasion of International Childrens Day June 1, we address this issue:</h4>
    <h5>Let have fun and share together</h5>
<P>In recent years, fun programs on the occasion of International Childrens Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and adults. Parents. Many families saw this as an opportunity to have fun together and share feelings about life. Looking at children and their parents holding hands, or racing together, making toys together, sees the childrens eyes sparkling with happiness.</P>
<P>In recent years, fun programs on the occasion of International Children Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and adults. Parents. Many families saw this as an opportunity to have fun together and share feelings about life. Looking at children and their parents holding hands, or racing together, making toys together, sees the childrens eyes sparkling with happiness.</P>
<img src="images/quantam.png" alt="Children playing" class="center-image">
<h5>Caring too much is not necessarily a good thing</h5>
<P>The benefits of taking care of and caring for children probably do not need much discussion. What we want to say here is that the current way of caring for parents has some inappropriate points. This manifests itself as follows: one is to only care about making sure the children eat, drink, and study well, but pay little attention to their spiritual life; Second, taking care of the children is too detailed and thorough.</P>
<P>The benefits of taking care of and caring for children probably do not need much discussion. What we want to say here is that the current way of caring for parents has some inappropriate points. This manifests itself as follows: one is to only care about making sure the children eat, drink, and study well, but pay little attention to their spiritual life; Second, taking care of the children is too detailed and thorough.</P>
',
			1, 
            GETDATE(), -- createdAt, thời điểm tạo bài viết
            GETDATE() ,-- updatedAt, thời điểm cập nhật bài viết
'In recent years, fun programs on the occasion of International Children Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and young people. parents. Many families have considered this an opportunity to have fun together and share experiences. In recent years, fun programs on the occasion of International Childrens Day June 1 or Mid-Autumn Festival have been organized by the Vietnam Museum of Ethnology. All welcome the participation of a large number of children and parents. Many families see this as an opportunity to have fun together and share memories.'
           )
		   go
		   
INSERT INTO [dbo].[Post]
           ([authorId]
           ,[categoryId]
           ,[title]
           ,[thumbnail]
           ,[content]
           ,[status]
           ,[createdAt]
           ,[updatedAt]
           ,[describe])
     VALUES
                (1, 
            2, 
			N'Blog new',
			'blog.jpg',
            '<h2>Caring for children, what is the right way to care?</h2>
<h4>(TCTG) - Nowadays, the living standards and income levels of many families are increasingly improving, and parents also have the opportunity to pay more attention and care for their children. However, do parents ever wonder if their care is enough and in the right way? On the occasion of International Childrens Day June 1, we address this issue:</h4>
    <h5>Let have fun and share together</h5>
<P>In recent years, fun programs on the occasion of International Childrens Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and adults. Parents. Many families saw this as an opportunity to have fun together and share feelings about life. Looking at children and their parents holding hands, or racing together, making toys together, sees the childrens eyes sparkling with happiness.</P>
<P>In recent years, fun programs on the occasion of International Children Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and adults. Parents. Many families saw this as an opportunity to have fun together and share feelings about life. Looking at children and their parents holding hands, or racing together, making toys together, sees the childrens eyes sparkling with happiness.</P>
<img src="images/quantam.png" alt="Children playing" class="center-image">
<h5>Caring too much is not necessarily a good thing</h5>
<P>The benefits of taking care of and caring for children probably do not need much discussion. What we want to say here is that the current way of caring for parents has some inappropriate points. This manifests itself as follows: one is to only care about making sure the children eat, drink, and study well, but pay little attention to their spiritual life; Second, taking care of the children is too detailed and thorough.</P>
<P>The benefits of taking care of and caring for children probably do not need much discussion. What we want to say here is that the current way of caring for parents has some inappropriate points. This manifests itself as follows: one is to only care about making sure the children eat, drink, and study well, but pay little attention to their spiritual life; Second, taking care of the children is too detailed and thorough.</P>
',
			1, 
            GETDATE(), -- createdAt, thời điểm tạo bài viết
            GETDATE() ,-- updatedAt, thời điểm cập nhật bài viết
'In recent years, fun programs on the occasion of International Children Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and young people. parents. Many families have considered this an opportunity to have fun together and share experiences. In recent years, fun programs on the occasion of International Childrens Day June 1 or Mid-Autumn Festival have been organized by the Vietnam Museum of Ethnology. All welcome the participation of a large number of children and parents. Many families see this as an opportunity to have fun together and share memories.'
           )

		   go
		   INSERT INTO [dbo].[Post]
           ([authorId]
           ,[categoryId]
           ,[title]
           ,[thumbnail]
           ,[content]
           ,[status]
           ,[createdAt]
           ,[updatedAt]
           ,[describe])
     VALUES
                (1, 
            1, 
			N'news Hoa Lac',
			'new.jpg',
            '<h2>Caring for children, what is the right way to care?</h2>
<h4>(TCTG) - Nowadays, the living standards and income levels of many families are increasingly improving, and parents also have the opportunity to pay more attention and care for their children. However, do parents ever wonder if their care is enough and in the right way? On the occasion of International Childrens Day June 1, we address this issue:</h4>
    <h5>Let have fun and share together</h5>
<P>In recent years, fun programs on the occasion of International Childrens Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and adults. Parents. Many families saw this as an opportunity to have fun together and share feelings about life. Looking at children and their parents holding hands, or racing together, making toys together, sees the childrens eyes sparkling with happiness.</P>
<P>In recent years, fun programs on the occasion of International Children Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and adults. Parents. Many families saw this as an opportunity to have fun together and share feelings about life. Looking at children and their parents holding hands, or racing together, making toys together, sees the childrens eyes sparkling with happiness.</P>
<img src="images/quantam.png" alt="Children playing" class="center-image">
<h5>Caring too much is not necessarily a good thing</h5>
<P>The benefits of taking care of and caring for children probably do not need much discussion. What we want to say here is that the current way of caring for parents has some inappropriate points. This manifests itself as follows: one is to only care about making sure the children eat, drink, and study well, but pay little attention to their spiritual life; Second, taking care of the children is too detailed and thorough.</P>
<P>The benefits of taking care of and caring for children probably do not need much discussion. What we want to say here is that the current way of caring for parents has some inappropriate points. This manifests itself as follows: one is to only care about making sure the children eat, drink, and study well, but pay little attention to their spiritual life; Second, taking care of the children is too detailed and thorough.</P>
',
			1, 
            GETDATE(), -- createdAt, thời điểm tạo bài viết
            GETDATE() ,-- updatedAt, thời điểm cập nhật bài viết
'In recent years, fun programs on the occasion of International Children Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and young people. parents. Many families have considered this an opportunity to have fun together and share experiences. In recent years, fun programs on the occasion of International Childrens Day June 1 or Mid-Autumn Festival have been organized by the Vietnam Museum of Ethnology. All welcome the participation of a large number of children and parents. Many families see this as an opportunity to have fun together and share memories.'
           )

		    go
		   
INSERT INTO [dbo].[Post]
           ([authorId]
           ,[categoryId]
           ,[title]
           ,[thumbnail]
           ,[content]
           ,[status]
           ,[createdAt]
           ,[updatedAt]
           ,[describe])
     VALUES
                (1, 
            3, 
			N'Take care but keep your mind young',
			'about-img.jpg',
            '<h2>Caring for children, what is the right way to care?</h2>
<h4>(TCTG) - Nowadays, the living standards and income levels of many families are increasingly improving, and parents also have the opportunity to pay more attention and care for their children. However, do parents ever wonder if their care is enough and in the right way? On the occasion of International Childrens Day June 1, we address this issue:</h4>
    <h5>Lets have fun and share together</h5>
<P>In recent years, fun programs on the occasion of International Children Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and adults. Parents. Many families saw this as an opportunity to have fun together and share feelings about life. Looking at children and their parents holding hands, or racing together, making toys together, sees the childrens eyes sparkling with happiness.</P>
<P>In recent years, fun programs on the occasion of International Children Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and adults. Parents. Many families saw this as an opportunity to have fun together and share feelings about life. Looking at children and their parents holding hands, or racing together, making toys together, sees the childrens eyes sparkling with happiness.</P>
<img src="images/quantam.png" alt="Children playing" class="center-image">
<h5>Caring too much is not necessarily a good thing</h5>
<P>The benefits of taking care of and caring for children probably do not need much discussion. What we want to say here is that the current way of caring for parents has some inappropriate points. This manifests itself as follows: one is to only care about making sure the children eat, drink, and study well, but pay little attention to their spiritual life; Second, taking care of the children is too detailed and thorough.</P>
<P>The benefits of taking care of and caring for children probably do not need much discussion. What we want to say here is that the current way of caring for parents has some inappropriate points. This manifests itself as follows: one is to only care about making sure the children eat, drink, and study well, but pay little attention to their spiritual life; Second, taking care of the children is too detailed and thorough.</P>
',
			1, 
            GETDATE(), -- createdAt, thời điểm tạo bài viết
            GETDATE() ,-- updatedAt, thời điểm cập nhật bài viết
'In recent years, fun programs on the occasion of International Children Day June 1 or Mid-Autumn Festival organized by the Vietnam Museum of Ethnology have received the participation of a large number of children and young people. parents. Many families have considered this an opportunity to have fun together and share experiences. In recent years, fun programs on the occasion of International Childrens Day June 1 or Mid-Autumn Festival have been organized by the Vietnam Museum of Ethnology. All welcome the participation of a large number of children and parents. Many families see this as an opportunity to have fun together and share memories.'
           )


-- Insert data into the [dbo].[Reservation] table
INSERT INTO [ChildCare].[dbo].[Reservation] ([customerId], [staffId], [email], [mobile], [gender], [address], [status], [total], [createdAt], [updatedAt])
VALUES
    (1, 1, CONVERT(varbinary, 'customer1@example.com'), CONVERT(varbinary, '1234567890'), 1, CONVERT(varbinary, 'Customer Address 1'), 1, 100.00, GETDATE(), GETDATE()),
    (2, 2, CONVERT(varbinary, 'customer2@example.com'), CONVERT(varbinary, '9876543210'), 2, CONVERT(varbinary, 'Customer Address 2'), 1, 150.00, GETDATE(), GETDATE());

	go
	-- Insert data into the [dbo].[ServiceCategory] table
INSERT INTO [ChildCare].[dbo].[ServiceCategory] ([title], [thumbnail], [description], [createdAt], [updatedAt])
VALUES
    ('Daily babysitting', 't1.png', 'Daily babysitting', GETDATE(), GETDATE()),
    ('Care for children under ', 't2.png', 'Care for children under 3 years old', GETDATE(), GETDATE()),
	('Preschool education', 't3.png', 'Preschool education', GETDATE(), GETDATE()),
    ('After-school care', 't4.png', 'After-school care', GETDATE(), GETDATE());
	go
	-- Insert data into the [dbo].[Service] table
INSERT INTO [dbo].[Service]
           ([categoryId]
           ,[thumbnail]
           ,[title]
           ,[price]
           ,[salePrice]
           ,[briefInformation]
           ,[description]
           ,[status]
           ,[createdAt]
           ,[updatedAt])
     VALUES
           (1, 'Service1.jpg', 'Daily Child Care', 50.00, 45.00, 'We offer daily child care for children from 6 months to 12 years old. Our child care staff is professionally trained and loves children, ensuring a safe and comfortable environment.', 'Description of the service.', 1, GETDATE(), GETDATE()),
           (2, 'Service2.jpg', 'Care for children under 3 years old', 60.00, 55.00, 'Exclusively for children under 3 years old, we provide specialized care services to ensure their development and safety.', 'Description of the service.', 1, GETDATE(), GETDATE()),
		   (2, 'Service2.jpg', 'Care for children under 3 years old', 60.00, 55.00, 'Exclusively for children under 3 years old, we provide specialized care services to ensure their development and safety.', 'Description of the service.', 1, GETDATE(), GETDATE()),
		   (2, 'Service2.jpg', 'Care for children under 3 years old', 60.00, 55.00, 'Exclusively for children under 3 years old, we provide specialized care services to ensure their development and safety.', 'Description of the service.', 1, GETDATE(), GETDATE());


-- Insert data into the [dbo].[Setting] table
INSERT INTO [ChildCare].[dbo].[Setting] ([name], [type], [key], [value], [createdAt], [updatedAt])
VALUES
    ('Setting 1', 1, 'setting_key1', 'setting_value1', GETDATE(), GETDATE()),
    ('Setting 2', 2, 'setting_key2', 'setting_value2', GETDATE(), GETDATE());

-- Insert data into the [dbo].[Slide] table
INSERT INTO [ChildCare].[dbo].[Slide] ([title], [status], [description], [createdAt], [updatedAt])
VALUES
    ('Daily Child Care', 'Active', 'We offer daily child care for children from 6 months to 12 years old.', GETDATE(), GETDATE()),
    ('Daily Child Care', 'Active', 'Exclusively for children under 3 years old', GETDATE(), GETDATE());

-- Insert data into the [dbo].[SlideItem] table
INSERT INTO [ChildCare].[dbo].[SlideItem] ([slideId], [image], [title], [subTitle], [backLink], [description], [createdAt], [updatedAt])
VALUES
    (1, 'slider-img.jpg', 'Daily Child Care', 'Child', 'https://example.com/link1', 'Exclusively for children under 3 years old', GETDATE(), GETDATE()),
    (2, 'contact-img.jpg', 'Daily Child Care', 'Child', 'https://example.com/link2', 'We offer daily child care for children from 6 months to 12 years old.', GETDATE(), GETDATE());

-- Insert data into the [dbo].[Token] table
INSERT INTO [ChildCare].[dbo].[Token] ([accountId], [type], [value], [isValid], [expiredAt], [createdAt], [updatedAt])
VALUES
    (1, 1, 'token_value1', 'Valid', DATEADD(DAY, 30, GETDATE()), GETDATE(), GETDATE()),
    (2, 2, 'token_value2', 'Valid', DATEADD(DAY, 30, GETDATE()), GETDATE(), GETDATE());
	-- Insert data into the [dbo].[Feedback] table
INSERT INTO [ChildCare].[dbo].[Feedback] ([customerId], [serviceId], [point], [content], [createdAt], [updatedAt])
VALUES
    (1, 2, 2, 'Feedback content 1', GETDATE(), GETDATE()),
    (2, 2, 2, 'Feedback content 2', GETDATE(), GETDATE());

-- Insert data into the [dbo].[Feedbackimg] table
INSERT INTO [ChildCare].[dbo].[Feedbackimg] ([thumbnail], [feedbackId])
VALUES
    ('team1.jpg', 1),
    ('team1.jpg', 2);
