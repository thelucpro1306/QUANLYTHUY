USE [master]
GO
/****** Object:  Database [OnlineShop123]    Script Date: 5/16/2022 6:45:05 AM ******/
CREATE DATABASE [OnlineShop123]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineShop123', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OnlineShop123.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineShop123_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OnlineShop123_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OnlineShop123] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineShop123].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineShop123] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineShop123] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineShop123] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineShop123] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineShop123] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineShop123] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineShop123] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineShop123] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineShop123] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineShop123] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineShop123] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineShop123] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineShop123] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineShop123] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineShop123] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineShop123] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineShop123] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineShop123] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineShop123] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineShop123] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineShop123] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineShop123] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineShop123] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineShop123] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineShop123] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineShop123] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineShop123] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineShop123] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineShop123] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineShop123] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OnlineShop123] SET QUERY_STORE = OFF
GO
USE [OnlineShop123]
GO
/****** Object:  Table [dbo].[About]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [varchar](50) NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Apointment]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apointment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingDate] [date] NOT NULL,
	[BookingTime] [time](7) NULL,
	[ServicesId] [bigint] NULL,
	[Note] [ntext] NULL,
	[ClientID] [bigint] NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Userid] [bigint] NULL,
	[Email] [varchar](50) NULL,
	[status] [int] NULL,
	[DateCreate] [datetime] NULL,
 CONSTRAINT [PK_Apointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[dob] [datetime] NULL,
	[gender] [bit] NOT NULL,
	[email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Form_Id] [bigint] NULL,
	[UserId] [bigint] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Images] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](500) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupID] [varchar](50) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeltailsMedicalForm]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeltailsMedicalForm](
	[id_Form] [bigint] NOT NULL,
	[id_ill] [bigint] NOT NULL,
	[Symptom] [varchar](120) NULL,
	[Diagnose] [varchar](150) NULL,
 CONSTRAINT [PK_DeltailsMedicalForm] PRIMARY KEY CLUSTERED 
(
	[id_Form] ASC,
	[id_ill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[Status] [bit] NULL,
	[Content] [nvarchar](520) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[illness]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[illness](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[illName] [varchar](50) NULL,
 CONSTRAINT [PK_illness] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalExaminationForm]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalExaminationForm](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[PetName] [varchar](50) NULL,
	[Weight] [float] NULL,
	[HairColor] [varchar](50) NULL,
	[Species] [varchar](50) NULL,
	[PetGender] [bit] NULL,
	[Image] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_MedicalExaminationForm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](20) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Images] [nvarchar](250) NULL,
	[MoreImage] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludeVAT] [bit] NULL,
	[Quatity] [int] NOT NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicess]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicess](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Cost] [int] NULL,
	[Description] [ntext] NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_Servicess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [varchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Style] [nvarchar](50) NULL,
	[Value] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](250) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](250) NULL,
	[Status] [bit] NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[GroupID] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Apointment] ON 

INSERT [dbo].[Apointment] ([Id], [BookingDate], [BookingTime], [ServicesId], [Note], [ClientID], [Name], [Phone], [Userid], [Email], [status], [DateCreate]) VALUES (1, CAST(N'2022-05-20' AS Date), NULL, 3, N'adssadsadsa', NULL, N'Dang Duy Nhat', N'0353830837', NULL, N'nhatdang261@gmail.com', -1, CAST(N'2022-05-12T22:14:01.297' AS DateTime))
INSERT [dbo].[Apointment] ([Id], [BookingDate], [BookingTime], [ServicesId], [Note], [ClientID], [Name], [Phone], [Userid], [Email], [status], [DateCreate]) VALUES (2, CAST(N'2022-05-13' AS Date), NULL, 3, N'sadsadsadsadasd', NULL, N'hiep', N'0353830837', NULL, N'nhatdang261@gmail.com', -1, CAST(N'2022-05-12T23:04:46.807' AS DateTime))
INSERT [dbo].[Apointment] ([Id], [BookingDate], [BookingTime], [ServicesId], [Note], [ClientID], [Name], [Phone], [Userid], [Email], [status], [DateCreate]) VALUES (3, CAST(N'2022-05-14' AS Date), NULL, 3, N'dsadadqweqe', NULL, N'test', N'102321033', NULL, N'koco@gmail.com', -1, CAST(N'2022-05-12T23:12:25.283' AS DateTime))
INSERT [dbo].[Apointment] ([Id], [BookingDate], [BookingTime], [ServicesId], [Note], [ClientID], [Name], [Phone], [Userid], [Email], [status], [DateCreate]) VALUES (4, CAST(N'2022-05-14' AS Date), NULL, 1, NULL, NULL, N'Dang Duy Nhat', N'0353830837', NULL, N'nhatdang261@gmail.com', -1, CAST(N'2022-05-12T23:15:48.967' AS DateTime))
INSERT [dbo].[Apointment] ([Id], [BookingDate], [BookingTime], [ServicesId], [Note], [ClientID], [Name], [Phone], [Userid], [Email], [status], [DateCreate]) VALUES (5, CAST(N'2022-05-13' AS Date), NULL, 1, NULL, NULL, N'hiep', N'0353830837', NULL, N'nhatdang261@gmail.com', -1, CAST(N'2022-05-12T23:17:05.017' AS DateTime))
INSERT [dbo].[Apointment] ([Id], [BookingDate], [BookingTime], [ServicesId], [Note], [ClientID], [Name], [Phone], [Userid], [Email], [status], [DateCreate]) VALUES (6, CAST(N'2022-05-21' AS Date), NULL, 1, NULL, NULL, N'Luong The Luc', N'+10963236305', NULL, N'thelucpro1306@gmail.com', -1, CAST(N'2022-05-14T14:53:32.950' AS DateTime))
INSERT [dbo].[Apointment] ([Id], [BookingDate], [BookingTime], [ServicesId], [Note], [ClientID], [Name], [Phone], [Userid], [Email], [status], [DateCreate]) VALUES (7, CAST(N'2022-05-21' AS Date), NULL, 2, N'sadasdasda', NULL, N'Luong The Luc', N'+10963236305', NULL, N'thelucpro1306@gmail.com', -1, CAST(N'2022-05-14T14:53:43.277' AS DateTime))
INSERT [dbo].[Apointment] ([Id], [BookingDate], [BookingTime], [ServicesId], [Note], [ClientID], [Name], [Phone], [Userid], [Email], [status], [DateCreate]) VALUES (8, CAST(N'2022-05-20' AS Date), NULL, 1, NULL, NULL, N'Luong The Luc', N'+10963236305', NULL, N'thelucpro1306@gmail.com', -1, CAST(N'2022-05-14T14:55:18.333' AS DateTime))
SET IDENTITY_INSERT [dbo].[Apointment] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([id], [Name], [dob], [gender], [email], [Phone], [Address], [Form_Id], [UserId]) VALUES (1, N'Dang Duy Nhat', CAST(N'2022-05-13T00:00:00.000' AS DateTime), 0, N'nhatdang261@gmail.com', N'0353830837', N'24/4 ?p Hoà Bình, Xã Giang Ði?n , Huy?n Tr?ng Bom', 1, 1)
INSERT [dbo].[Client] ([id], [Name], [dob], [gender], [email], [Phone], [Address], [Form_Id], [UserId]) VALUES (2, N'Luong The Luc', CAST(N'2022-05-21T00:00:00.000' AS DateTime), 1, N'thelucpro1306@gmail.com', N'+10963236305', N'1', NULL, NULL)
INSERT [dbo].[Client] ([id], [Name], [dob], [gender], [email], [Phone], [Address], [Form_Id], [UserId]) VALUES (3, N'Luong The Luc', CAST(N'2022-05-20T00:00:00.000' AS DateTime), 0, N'thelucpro1306@gmail.com', N'+10963236305', N'1', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[MedicalExaminationForm] ON 

INSERT [dbo].[MedicalExaminationForm] ([id], [PetName], [Weight], [HairColor], [Species], [PetGender], [Image], [CreateDate]) VALUES (1, N'Milu', 3, N'yellow', N'dog', 1, NULL, CAST(N'2121-12-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[MedicalExaminationForm] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicess] ON 

INSERT [dbo].[Servicess] ([id], [Name], [Cost], [Description], [Image]) VALUES (1, N'Services1 ', 100000, N'none', NULL)
INSERT [dbo].[Servicess] ([id], [Name], [Cost], [Description], [Image]) VALUES (2, N'Services2 ', 100000, N'none', NULL)
INSERT [dbo].[Servicess] ([id], [Name], [Cost], [Description], [Image]) VALUES (3, N'Services3 ', 100000, N'none', NULL)
INSERT [dbo].[Servicess] ([id], [Name], [Cost], [Description], [Image]) VALUES (4, N'Services1 ', 100000, N'none', NULL)
SET IDENTITY_INSERT [dbo].[Servicess] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateTime], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [Phone], [GroupID]) VALUES (1, N'admin', N'4297f44b13955235245b2497399d7a93', N'LucLuong', N'1', N'theluc13@gmail.com', CAST(N'2022-04-26T20:39:10.947' AS DateTime), NULL, NULL, NULL, 1, N'012312312', N'ADMIN')
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateTime], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [Phone], [GroupID]) VALUES (3, N'luongtheluc', N'202cb962ac59075b964b07152d234b70', N'Luong The Luc', N'1', N'thelucpro1306@gmail.com', NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateTime], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [Phone], [GroupID]) VALUES (4, N'luongtheluc1', N'4297f44b13955235245b2497399d7a93', N'Luong The Luc', N'1', N'EWQESA@DAS.COM', NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateTime], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [Phone], [GroupID]) VALUES (5, N'admin12', N'4297f44b13955235245b2497399d7a93', N'Luc Luong', NULL, N'lucpro1306@gmail.com', CAST(N'2022-05-04T20:08:25.983' AS DateTime), NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateTime], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [Phone], [GroupID]) VALUES (6, N'admin123', N'4297f44b13955235245b2497399d7a93', N'Luc Luong', NULL, N'gaew@ada.gsf', CAST(N'2022-05-04T20:12:23.373' AS DateTime), NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateTime], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [Phone], [GroupID]) VALUES (7, N'nhat', N'ec59c4b347b013a355a615451d33ac26', N'Dang Duy Nhat', NULL, N'nhatdang261@gmail.com', CAST(N'2022-05-09T20:19:28.103' AS DateTime), NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateTime], [CreateBy], [ModifiedDate], [ModifiedBy], [Status], [Phone], [GroupID]) VALUES (9, N'nhat', N'1', N'DuyNhat', N'1', N'Email', CAST(N'2121-12-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, 1, NULL, N'MEMBER')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Quan tri')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thanh vien')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Quan Ly')
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quatity]  DEFAULT ((0)) FOR [Quatity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_Table_1_status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[Apointment]  WITH CHECK ADD  CONSTRAINT [FK_Apointment_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Apointment] CHECK CONSTRAINT [FK_Apointment_Client]
GO
ALTER TABLE [dbo].[Apointment]  WITH CHECK ADD  CONSTRAINT [FK_Apointment_Servicess] FOREIGN KEY([ServicesId])
REFERENCES [dbo].[Servicess] ([id])
GO
ALTER TABLE [dbo].[Apointment] CHECK CONSTRAINT [FK_Apointment_Servicess]
GO
ALTER TABLE [dbo].[Apointment]  WITH CHECK ADD  CONSTRAINT [FK_Apointment_User1] FOREIGN KEY([Userid])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Apointment] CHECK CONSTRAINT [FK_Apointment_User1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_MedicalExaminationForm1] FOREIGN KEY([Form_Id])
REFERENCES [dbo].[MedicalExaminationForm] ([id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_MedicalExaminationForm1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_User1] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_User1]
GO
ALTER TABLE [dbo].[DeltailsMedicalForm]  WITH CHECK ADD  CONSTRAINT [FK_DeltailsMedicalForm_illness] FOREIGN KEY([id_ill])
REFERENCES [dbo].[illness] ([id])
GO
ALTER TABLE [dbo].[DeltailsMedicalForm] CHECK CONSTRAINT [FK_DeltailsMedicalForm_illness]
GO
ALTER TABLE [dbo].[DeltailsMedicalForm]  WITH CHECK ADD  CONSTRAINT [FK_DeltailsMedicalForm_MedicalExaminationForm] FOREIGN KEY([id_Form])
REFERENCES [dbo].[MedicalExaminationForm] ([id])
GO
ALTER TABLE [dbo].[DeltailsMedicalForm] CHECK CONSTRAINT [FK_DeltailsMedicalForm_MedicalExaminationForm]
GO
/****** Object:  StoredProcedure [dbo].[procAccountLogin]    Script Date: 5/16/2022 6:45:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[procAccountLogin]
	@username varchar(50),
	@password varchar(50)
as
begin
	declare @count int
	declare @res bit
	select @count = COUNT(*) from Sp_Account_Login s
	where s.UserName = @username and s.Password  = @password
	if @count >0
		set @res = 1
	else
		set @res = 0

	select @res
end
GO
USE [master]
GO
ALTER DATABASE [OnlineShop123] SET  READ_WRITE 
GO
