USE [HungTest]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Level] [tinyint] NOT NULL,
	[JoinDate] [datetime2](7) NOT NULL,
	[IsEnable] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Name] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Contact] [nvarchar](250) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Barcode] [nvarchar](13) NULL,
	[Type] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Barcode] [nvarchar](13) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Name] [nvarchar](250) NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[Pin] [bit] NULL,
	[Enable] [bit] NOT NULL,
	[ExpirationDate] [datetime2](7) NULL,
	[Unit] [nvarchar](50) NULL,
	[Img] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Barcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Name] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Contact1] [nvarchar](250) NULL,
	[Contact2] [nvarchar](250) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysParam]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysParam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Key] [nvarchar](250) NULL,
	[Value] [nvarchar](250) NULL,
 CONSTRAINT [PK_SysParam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[Type] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[SuplierId] [int] NOT NULL,
	[IsPayment] [bit] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Payment] [decimal](18, 2) NOT NULL,
	[PayBack] [decimal](18, 2) NOT NULL,
	[BillNumber] [nvarchar](15) NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionDetail]    Script Date: 2020/03/16 16:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionDetail](
	[Barcode] [nvarchar](13) NOT NULL,
	[TracsactionId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[SuplierId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsPayment] [bit] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_TransactionDetail] PRIMARY KEY CLUSTERED 
(
	[Barcode] ASC,
	[TracsactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191105025047_InitialCreate', N'3.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191125045434_20191125', N'3.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191210064735_20191210', N'3.0.0')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'edbe82b9-b0ae-47f5-987c-5a21e11df940', N'subAdmin', N'SUBADMIN', N'3023ee2c-c2e7-47c7-9dbf-dff931ba9937')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ef85a141-b049-4a05-8f20-41db7ddd56c6', N'admin', N'ADMIN', N'83d52e83-1cfb-47bf-8e29-566fa1fa9b52')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ec0f0708-8348-4b29-9abe-9e01e7ff831a', N'edbe82b9-b0ae-47f5-987c-5a21e11df940')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'211accbb-8f51-49ff-b9ca-0632ffa83fd7', N'ef85a141-b049-4a05-8f20-41db7ddd56c6')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Level], [JoinDate], [IsEnable]) VALUES (N'211accbb-8f51-49ff-b9ca-0632ffa83fd7', N'hungnt03', N'HUNGNT03', N'hungnt.hut56@gmail.com', N'HUNGNT.HUT56@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOwHepAoQu8fD3epaXlB8KqiZExJKIc0bvhFFvxS98r2l4fK4iQcaG/xEn0qzA4zsQ==', N'OP7TT6M6SKHWRRSKCK3OR7LC7GPVL7IP', N'0861bf88-c8f5-4145-bb8a-93f02c04615d', NULL, 0, 0, NULL, 1, 0, N'hung1', N'nguyen', 1, CAST(N'2017-11-20T13:34:39.0090603' AS DateTime2), 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Level], [JoinDate], [IsEnable]) VALUES (N'58286d53-9a4d-4444-b372-1d10452ecfc9', N'hungnt.hut56@gmail.com', N'HUNGNT.HUT56@GMAIL.COM', N'hungnt.hut56@gmail.com', N'HUNGNT.HUT56@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGo+4y+ANzECLOdl9Dl0HLzAVS8zQQs+0fTSSRTgc7fBrvpGw+O9LP+Jv9UcCcpjAQ==', N'WI7KXFZFFG3HFPWRKUCGYDJPPXNGPXI2', N'3f579cc2-2ff6-4ee1-b9f4-299909897a20', NULL, 0, 0, NULL, 1, 0, N'Hung', N'Nguyen', 1, CAST(N'2017-11-05T14:04:58.8900287' AS DateTime2), 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Level], [JoinDate], [IsEnable]) VALUES (N'b8fcda36-040b-40fc-9126-5a438bfd56a3', N'hungnt04', N'HUNGNT04', N'hungnt.s18@gmail.com', N'HUNGNT.S18@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDXuuSXe12GgQDa10HNHKvDRJ3r4deDAZXbW2IdjqD9WKk6ygRnRNagssXZGUfCCPQ==', N'MKHUCHPQFUTJJ7LTIYBIHNUJUZPX4SWW', N'd58ab093-1ef6-4aa6-aee4-48a6b5049570', NULL, 0, 0, NULL, 1, 0, N'nguyen trong ', N'hung', 1, CAST(N'2019-12-04T09:56:53.4608571' AS DateTime2), 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Level], [JoinDate], [IsEnable]) VALUES (N'ec0f0708-8348-4b29-9abe-9e01e7ff831a', N'hungnt05', N'HUNGNT05', N'hunngt05@gmail.com', N'HUNNGT05@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKQs4H3Cn2TA8uiSKBaws2yrBQHjGqo6Jq7qki/CAZFNxJ0Hu3DzSl1Ei6xKAqC41g==', N'53QHCIVFVJB3MWUJNQXEC4PUCCSZUCT6', N'c4975dd7-ac0d-43a6-9566-2e558ef17bfe', NULL, 0, 0, NULL, 1, 0, N'nguyen', N'hung', 1, CAST(N'2019-12-04T10:26:03.5186770' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Name], [Description]) VALUES (1, NULL, NULL, CAST(N'2019-12-18T16:17:37.1414126' AS DateTime2), N'hungnt03', N'Thực phẩm', N'Thực phẩm')
INSERT [dbo].[Category] ([Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Name], [Description]) VALUES (2, NULL, NULL, CAST(N'2019-12-05T16:39:00.9434101' AS DateTime2), N'hungnt03', N'Rượu bia', N'Rượu bia')
INSERT [dbo].[Category] ([Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Name], [Description]) VALUES (13, NULL, NULL, CAST(N'2019-12-18T16:17:57.1459367' AS DateTime2), N'hungnt03', N'Thuốc lá', N'Thuốc lá')
INSERT [dbo].[Category] ([Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Name], [Description]) VALUES (1006, CAST(N'2020-03-12T14:50:05.9581139' AS DateTime2), N'hungnt03', NULL, NULL, N'Mỹ phẩm', N'Mỹ phẩm')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Name], [Address], [Contact]) VALUES (1, CAST(N'2019-12-07T15:07:51.2945161' AS DateTime2), N'hungnt03', NULL, NULL, N'1', N'1', N'2')
SET IDENTITY_INSERT [dbo].[Customer] OFF
INSERT [dbo].[Product] ([Barcode], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Name], [Quantity], [Price], [CategoryId], [SupplierId], [Pin], [Enable], [ExpirationDate], [Unit], [Img]) VALUES (N'3110354325000', CAST(N'2019-12-09T16:24:03.5960342' AS DateTime2), N'hungnt03', NULL, NULL, N'Thuốc lá Thăng Long', 12, CAST(10000.00 AS Decimal(18, 2)), 1, 1, 1, 1, CAST(N'2019-12-09T00:00:00.0000000' AS DateTime2), N'Bao', N'Assert\Product\3110354325000.jpg')
INSERT [dbo].[Product] ([Barcode], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Name], [Quantity], [Price], [CategoryId], [SupplierId], [Pin], [Enable], [ExpirationDate], [Unit], [Img]) VALUES (N'8934988021028', CAST(N'2020-03-16T16:47:33.5069628' AS DateTime2), N'hungnt03', NULL, NULL, N'Dầu ăn simply 2l', 0, CAST(130000.00 AS Decimal(18, 2)), 1, 1, 0, 1, CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), N'chai', N'8934988021028.jpg')
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Name], [Address], [Contact1], [Contact2]) VALUES (1, CAST(N'2019-12-11T00:00:00.0000000' AS DateTime2), N'hungnt03', NULL, NULL, N'Thuỷ bibica', N'bibica', N'0963123192', N'01697714415')
INSERT [dbo].[Supplier] ([Id], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Name], [Address], [Contact1], [Contact2]) VALUES (2, CAST(N'2020-03-12T15:26:36.3285802' AS DateTime2), N'hungnt03', CAST(N'2020-03-13T08:38:49.9908345' AS DateTime2), N'hungnt03', N'Hung G7Hung G7Hung G7Hung G7Hung G7Hung G7Hung G7H', N'上ノ山３４番地の１, ToomNa1431号', N'070-449-3210', NULL)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
