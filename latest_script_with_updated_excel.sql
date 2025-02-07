USE [master]
GO
/****** Object:  Database [Trade]    Script Date: 22.01.2025 15:43:26 ******/
CREATE DATABASE [Trade]

GO
ALTER DATABASE [Trade] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trade].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trade] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trade] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trade] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trade] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trade] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trade] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Trade] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trade] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trade] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trade] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trade] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trade] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trade] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trade] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trade] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trade] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trade] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trade] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trade] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trade] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trade] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Trade] SET  MULTI_USER 
GO
ALTER DATABASE [Trade] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trade] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trade] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trade] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trade] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Trade] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Trade] SET QUERY_STORE = OFF
GO
USE [Trade]
GO
/****** Object:  Table [dbo].[City]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dealer]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dealer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DealerName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Dealer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameCategory]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[OrderArticleID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[PickUpPointID] [int] NOT NULL,
	[ClientName] [nvarchar](100) NULL,
	[Code] [nvarchar](10) NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF66E890CC] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickUpPoint]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickUpPoint](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IndexNumber] [nvarchar](20) NOT NULL,
	[CityID] [int] NOT NULL,
	[StreetID] [int] NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_PickUpPoint] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleID] [int] NOT NULL,
	[NameCategoryID] [int] NOT NULL,
	[Unit] [nvarchar](10) NOT NULL,
	[ProductCost] [decimal](10, 2) NOT NULL,
	[MaxDiscount] [int] NOT NULL,
	[ManufacturerID] [int] NOT NULL,
	[DealerID] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[ProductDiscount] [int] NOT NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductDescription] [nvarchar](150) NOT NULL,
	[ProductPictureName] [nvarchar](50) NULL,
	[ProductPicture] [image] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductArticle]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductArticle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Article] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_ProductArticle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Streets]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Streets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Streets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22.01.2025 15:43:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](100) NOT NULL,
	[UserRoleID] [int] NOT NULL,
 CONSTRAINT [PK__User__1788CCAC39E4EEAD] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([ID], [CityName]) VALUES (1, N'г. Нефтеюганск')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Dealer] ON 

INSERT [dbo].[Dealer] ([ID], [DealerName]) VALUES (1, N'PetShop')
INSERT [dbo].[Dealer] ([ID], [DealerName]) VALUES (2, N'ZooMir')
SET IDENTITY_INSERT [dbo].[Dealer] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (2, N'Chappy')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (4, N'Dreames')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (6, N'LIKER')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (7, N'Nobby')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (9, N'TitBit')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (10, N'Triol')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (11, N'trixie')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (12, N'True Touch')
INSERT [dbo].[Manufacturer] ([ID], [ManufacturerName]) VALUES (13, N'ZooM')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[NameCategory] ON 

INSERT [dbo].[NameCategory] ([ID], [ProductCategoryName]) VALUES (1, N'Игрушка')
INSERT [dbo].[NameCategory] ([ID], [ProductCategoryName]) VALUES (2, N'Клетка')
INSERT [dbo].[NameCategory] ([ID], [ProductCategoryName]) VALUES (3, N'Лакомство')
INSERT [dbo].[NameCategory] ([ID], [ProductCategoryName]) VALUES (4, N'Лежак')
INSERT [dbo].[NameCategory] ([ID], [ProductCategoryName]) VALUES (5, N'Миска')
INSERT [dbo].[NameCategory] ([ID], [ProductCategoryName]) VALUES (6, N'Мячик')
INSERT [dbo].[NameCategory] ([ID], [ProductCategoryName]) VALUES (7, N'Сухой корм')
INSERT [dbo].[NameCategory] ([ID], [ProductCategoryName]) VALUES (8, N'Щетка-варежка')
SET IDENTITY_INSERT [dbo].[NameCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (1, 1, 30, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, N'601', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (2, 2, 10, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, N'602', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (3, 3, 9, 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова Майя Артемьевна', N'603', 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (4, 4, 11, 1, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, N'604', 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (5, 5, 23, 1, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, N'605', 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (6, 6, 16, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов Роберт Васильевич', N'606', 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (7, 7, 14, 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, N'607', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (8, 8, 19, 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, N'608', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (9, 9, 27, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова Эмилия Артёмовна', N'609', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (10, 10, 21, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова Виктория Степановна', N'610', 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (11, 1, 12, 1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, N'601', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (12, 2, 29, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, N'602', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (13, 3, 25, 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова Майя Артемьевна', N'603', 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (14, 4, 5, 2, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, N'604', 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (15, 5, 6, 10, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, N'605', 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (16, 6, 4, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов Роберт Васильевич', N'606', 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (17, 7, 22, 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, N'607', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (18, 8, 27, 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, N'608', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (19, 9, 20, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова Эмилия Артёмовна', N'609', 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderArticleID], [Quantity], [OrderDate], [DeliveryDate], [PickUpPointID], [ClientName], [Code], [StatusID]) VALUES (20, 10, 28, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова Виктория Степановна', N'610', 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([ID], [Status]) VALUES (1, N'Завершен')
INSERT [dbo].[OrderStatus] ([ID], [Status]) VALUES (2, N'Новый ')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[PickUpPoint] ON 

INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (1, N'344288', 1, 28, 1)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (2, N'614164', 1, 25, 30)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (3, N'394242', 1, 7, 43)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (4, N'660540', 1, 23, 25)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (5, N'125837', 1, 30, 40)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (6, N'125703', 1, 16, 49)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (7, N'625283', 1, 17, 46)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (8, N'614611', 1, 11, 50)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (9, N'454311', 1, 14, 19)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (10, N'660007', 1, 15, 19)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (11, N'603036', 1, 20, 4)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (12, N'450983', 1, 8, 26)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (13, N'394782', 1, 28, 3)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (14, N'603002', 1, 4, 28)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (15, N'450558', 1, 12, 30)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (16, N'394060', 1, 26, 43)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (17, N'410661', 1, 29, 50)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (18, N'625590', 1, 7, 20)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (19, N'625683', 1, 1, 1)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (20, N'400562', 1, 5, 32)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (21, N'614510', 1, 9, 47)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (22, N'410542', 1, 21, 46)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (23, N'620839', 1, 27, 8)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (24, N'443890', 1, 7, 1)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (25, N'603379', 1, 24, 46)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (26, N'603721', 1, 3, 41)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (27, N'410172', 1, 22, 13)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (28, N'420151', 1, 2, 32)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (29, N'125061', 1, 18, 8)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (30, N'630370', 1, 30, 24)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (31, N'614753', 1, 19, 35)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (32, N'426030', 1, 9, 44)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (33, N'450375', 1, 6, 44)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (34, N'625560', 1, 13, 12)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (35, N'630201', 1, 8, 17)
INSERT [dbo].[PickUpPoint] ([ID], [IndexNumber], [CityID], [StreetID], [House]) VALUES (36, N'190949', 1, 10, 26)
SET IDENTITY_INSERT [dbo].[PickUpPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (1, 30, 3, N'шт.', CAST(123.00 AS Decimal(10, 2)), 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (2, 12, 8, N'шт.', CAST(149.00 AS Decimal(10, 2)), 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (3, 10, 7, N'шт.', CAST(1200.00 AS Decimal(10, 2)), 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (4, 29, 3, N'шт.', CAST(86.00 AS Decimal(10, 2)), 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (5, 9, 3, N'шт.', CAST(166.00 AS Decimal(10, 2)), 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (6, 25, 7, N'шт.', CAST(1700.00 AS Decimal(10, 2)), 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (7, 11, 6, N'шт.', CAST(300.00 AS Decimal(10, 2)), 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (8, 5, 1, N'шт.', CAST(199.00 AS Decimal(10, 2)), 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (9, 23, 5, N'шт.', CAST(234.00 AS Decimal(10, 2)), 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (10, 6, 3, N'шт.', CAST(170.00 AS Decimal(10, 2)), 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (11, 3, 1, N'шт.', CAST(600.00 AS Decimal(10, 2)), 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (12, 16, 1, N'шт.', CAST(300.00 AS Decimal(10, 2)), 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (13, 4, 7, N'шт.', CAST(4100.00 AS Decimal(10, 2)), 30, 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (14, 15, 5, N'шт.', CAST(385.00 AS Decimal(10, 2)), 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (15, 24, 7, N'шт.', CAST(280.00 AS Decimal(10, 2)), 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (16, 26, 7, N'шт.', CAST(1700.00 AS Decimal(10, 2)), 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (17, 14, 1, N'шт.', CAST(510.00 AS Decimal(10, 2)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (18, 22, 1, N'шт.', CAST(510.00 AS Decimal(10, 2)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (19, 13, 7, N'шт.', CAST(2190.00 AS Decimal(10, 2)), 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (20, 17, 3, N'шт.', CAST(177.00 AS Decimal(10, 2)), 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (21, 19, 6, N'шт.', CAST(100.00 AS Decimal(10, 2)), 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (22, 27, 1, N'шт.', CAST(640.00 AS Decimal(10, 2)), 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (23, 20, 4, N'шт.', CAST(800.00 AS Decimal(10, 2)), 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (24, 8, 2, N'шт.', CAST(3500.00 AS Decimal(10, 2)), 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (25, 1, 5, N'шт.', CAST(400.00 AS Decimal(10, 2)), 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (26, 18, 5, N'шт.', CAST(292.00 AS Decimal(10, 2)), 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (27, 2, 6, N'шт.', CAST(600.00 AS Decimal(10, 2)), 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (28, 7, 3, N'шт.', CAST(140.00 AS Decimal(10, 2)), 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (29, 21, 3, N'шт.', CAST(50.00 AS Decimal(10, 2)), 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[Product] ([ID], [ProductArticleID], [NameCategoryID], [Unit], [ProductCost], [MaxDiscount], [ManufacturerID], [DealerID], [ProductCategoryID], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPictureName], [ProductPicture]) VALUES (30, 28, 7, N'шт.', CAST(600.00 AS Decimal(10, 2)), 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductArticle] ON 

INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (1, N'B427R5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (2, N'D356R4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (3, N'D563F4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (4, N'D643B5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (5, N'E345R4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (6, N'E431R5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (7, N'E434U6')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (8, N'E466T6')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (9, N'E532Q5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (10, N'F432F4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (11, N'G345E4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (12, N'G453T5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (13, N'G542F5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (14, N'H342F5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (15, N'H432F4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (16, N'H436R4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (17, N'H542R6')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (18, N'H643W2')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (19, N'K436T5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (20, N'K452T5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (21, N'M356R4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (22, N'Q245F5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (23, N'R356F4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (24, N'S245R4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (25, N'T432F4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (26, N'V352R4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (27, N'V527T5')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (28, N'W548O7')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (29, N'Y324F4')
INSERT [dbo].[ProductArticle] ([ID], [Article]) VALUES (30, N'А112Т4')
SET IDENTITY_INSERT [dbo].[ProductArticle] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [CategoryName]) VALUES (1, N'Для животных')
INSERT [dbo].[ProductCategory] ([ID], [CategoryName]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[ProductCategory] ([ID], [CategoryName]) VALUES (3, N'Товары для собак')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Streets] ON 

INSERT [dbo].[Streets] ([ID], [Street]) VALUES (1, N'ул. 8 Марта')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (2, N'ул. Вишневая')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (3, N'ул. Гоголя')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (4, N'ул. Дзержинского')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (5, N'ул. Зеленая')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (6, N'ул. Клубная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (7, N'ул. Коммунистическая')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (8, N'ул. Комсомольская')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (9, N'ул. Маяковского')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (10, N'ул. Мичурина')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (11, N'ул. Молодежная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (12, N'ул. Набережная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (13, N'ул. Некрасова')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (14, N'ул. Новая')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (15, N'ул. Октябрьская')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (16, N'ул. Партизанская')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (17, N'ул. Победы')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (18, N'ул. Подгорная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (19, N'ул. Полевая')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (20, N'ул. Садовая')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (21, N'ул. Светлая')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (22, N'ул. Северная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (23, N'ул. Солнечная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (24, N'ул. Спортивная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (25, N'ул. Степная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (26, N'ул. Фрунзе')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (27, N'ул. Цветочная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (28, N'ул. Чехова')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (29, N'ул. Школьная')
INSERT [dbo].[Streets] ([ID], [Street]) VALUES (30, N'ул. Шоссейная')
SET IDENTITY_INSERT [dbo].[Streets] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (2, N'Яковлева', N'Ярослава', N'Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (3, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (4, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (5, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (6, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (7, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (8, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (9, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRoleID]) VALUES (10, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[OrderStatus] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickUpPoint] FOREIGN KEY([PickUpPointID])
REFERENCES [dbo].[PickUpPoint] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickUpPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ProductArticle] FOREIGN KEY([OrderArticleID])
REFERENCES [dbo].[ProductArticle] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ProductArticle]
GO
ALTER TABLE [dbo].[PickUpPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickUpPoint_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[PickUpPoint] CHECK CONSTRAINT [FK_PickUpPoint_City]
GO
ALTER TABLE [dbo].[PickUpPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickUpPoint_Streets] FOREIGN KEY([StreetID])
REFERENCES [dbo].[Streets] ([ID])
GO
ALTER TABLE [dbo].[PickUpPoint] CHECK CONSTRAINT [FK_PickUpPoint_Streets]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Dealer] FOREIGN KEY([DealerID])
REFERENCES [dbo].[Dealer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Dealer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameCategory] FOREIGN KEY([NameCategoryID])
REFERENCES [dbo].[NameCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductArticle] FOREIGN KEY([ProductArticleID])
REFERENCES [dbo].[ProductArticle] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductArticle]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__UserRole__267ABA7A] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__UserRole__267ABA7A]
GO
USE [master]
GO
ALTER DATABASE [Trade] SET  READ_WRITE 
GO
