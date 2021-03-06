USE [master]
GO
/****** Object:  Database [Productos]    Script Date: 1/10/2021 10:25:15 ******/
CREATE DATABASE [Productos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Productos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Productos.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Productos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Productos_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Productos] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Productos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Productos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Productos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Productos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Productos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Productos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Productos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Productos] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Productos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Productos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Productos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Productos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Productos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Productos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Productos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Productos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Productos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Productos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Productos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Productos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Productos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Productos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Productos] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Productos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Productos] SET RECOVERY FULL 
GO
ALTER DATABASE [Productos] SET  MULTI_USER 
GO
ALTER DATABASE [Productos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Productos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Productos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Productos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Productos', N'ON'
GO
USE [Productos]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/10/2021 10:25:15 ******/
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
/****** Object:  Table [dbo].[Marcas]    Script Date: 1/10/2021 10:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 1/10/2021 10:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[IdMarca] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductosDetalles]    Script Date: 1/10/2021 10:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosDetalles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Detalle] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductosDetalles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211001131854_InitialDB', N'5.0.10')
SET IDENTITY_INSERT [dbo].[Marcas] ON 

INSERT [dbo].[Marcas] ([Id], [Nombre]) VALUES (1, N'HP')
INSERT [dbo].[Marcas] ([Id], [Nombre]) VALUES (2, N'Dell')
INSERT [dbo].[Marcas] ([Id], [Nombre]) VALUES (3, N'Asus')
SET IDENTITY_INSERT [dbo].[Marcas] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id], [Nombre], [IdMarca], [Precio]) VALUES (1, N'Mouse', 1, CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([Id], [Nombre], [IdMarca], [Precio]) VALUES (2, N'Teclado', 1, CAST(1200.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([Id], [Nombre], [IdMarca], [Precio]) VALUES (3, N'Kit Teclado & Mouse', 2, CAST(2200.00 AS Decimal(18, 2)))
INSERT [dbo].[Productos] ([Id], [Nombre], [IdMarca], [Precio]) VALUES (4, N'Monitor', 3, CAST(32000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET IDENTITY_INSERT [dbo].[ProductosDetalles] ON 

INSERT [dbo].[ProductosDetalles] ([Id], [IdProducto], [Detalle]) VALUES (1, 1, N'Gamer')
INSERT [dbo].[ProductosDetalles] ([Id], [IdProducto], [Detalle]) VALUES (2, 2, N'Multimedia')
INSERT [dbo].[ProductosDetalles] ([Id], [IdProducto], [Detalle]) VALUES (3, 3, N'Gamer')
INSERT [dbo].[ProductosDetalles] ([Id], [IdProducto], [Detalle]) VALUES (4, 4, N'Ips')
SET IDENTITY_INSERT [dbo].[ProductosDetalles] OFF
USE [master]
GO
ALTER DATABASE [Productos] SET  READ_WRITE 
GO
