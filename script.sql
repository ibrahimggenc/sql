USE [master]
GO
/****** Object:  Database [logindb]    Script Date: 16.08.2021 08:39:42 ******/
CREATE DATABASE [logindb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'logindb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\logindb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'logindb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\logindb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [logindb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [logindb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [logindb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [logindb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [logindb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [logindb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [logindb] SET ARITHABORT OFF 
GO
ALTER DATABASE [logindb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [logindb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [logindb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [logindb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [logindb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [logindb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [logindb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [logindb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [logindb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [logindb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [logindb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [logindb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [logindb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [logindb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [logindb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [logindb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [logindb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [logindb] SET RECOVERY FULL 
GO
ALTER DATABASE [logindb] SET  MULTI_USER 
GO
ALTER DATABASE [logindb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [logindb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [logindb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [logindb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [logindb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [logindb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'logindb', N'ON'
GO
ALTER DATABASE [logindb] SET QUERY_STORE = OFF
GO
USE [logindb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16.08.2021 08:39:43 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 16.08.2021 08:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[surname] [nvarchar](max) NULL,
	[adress] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 16.08.2021 08:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Title] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210806082051_init', N'5.0.8')
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [name], [surname], [adress]) VALUES (1, N'İBRAHİM', N'GENÇ', N'MASLAK')
INSERT [dbo].[Customers] ([Id], [name], [surname], [adress]) VALUES (2, N'ALİ', N'VELİ', N'SARIYER')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Surname], [Username], [Email], [Password], [Title]) VALUES (1, N'ibrahim ', N'genç', N'ibrahim', N'ibrahimgenc@geskopikit.com.tr', N'ibrahim', 1)
INSERT [dbo].[User] ([Id], [Name], [Surname], [Username], [Email], [Password], [Title]) VALUES (2, N'deneme', N'deneme', N'deneme', N'erol@geskopikit.com.tr', N'deneme', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
USE [master]
GO
ALTER DATABASE [logindb] SET  READ_WRITE 
GO
