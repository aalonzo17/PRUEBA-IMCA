USE [master]
GO
/****** Object:  Database [prueba]    Script Date: 8/29/2024 10:17:08 PM ******/
CREATE DATABASE [prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prueba', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\prueba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prueba_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\prueba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [prueba] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prueba] SET  ENABLE_BROKER 
GO
ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prueba] SET RECOVERY FULL 
GO
ALTER DATABASE [prueba] SET  MULTI_USER 
GO
ALTER DATABASE [prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prueba] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prueba] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'prueba', N'ON'
GO
ALTER DATABASE [prueba] SET QUERY_STORE = ON
GO
ALTER DATABASE [prueba] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [prueba]
GO
/****** Object:  Table [dbo].[FacturaD]    Script Date: 8/29/2024 10:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturaD](
	[FacturaNo] [int] NULL,
	[ProductoNo] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturaH]    Script Date: 8/29/2024 10:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturaH](
	[FacturaNo] [int] NULL,
	[Estatus] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 8/29/2024 10:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoNo] [int] NULL,
	[ProductoNombre] [varchar](100) NULL,
	[Marca] [varchar](200) NULL,
	[Precio] [decimal](10, 2) NULL,
	[Stock] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[FacturaD] ([FacturaNo], [ProductoNo], [Cantidad], [Precio]) VALUES (1001, 1, 2, CAST(800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FacturaD] ([FacturaNo], [ProductoNo], [Cantidad], [Precio]) VALUES (1001, 2, 1, CAST(500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FacturaD] ([FacturaNo], [ProductoNo], [Cantidad], [Precio]) VALUES (1002, 3, 1, CAST(600.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FacturaD] ([FacturaNo], [ProductoNo], [Cantidad], [Precio]) VALUES (1003, 1, 1, CAST(800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[FacturaH] ([FacturaNo], [Estatus]) VALUES (1001, N'Pagada')
GO
INSERT [dbo].[FacturaH] ([FacturaNo], [Estatus]) VALUES (1002, N'Pendiente')
GO
INSERT [dbo].[FacturaH] ([FacturaNo], [Estatus]) VALUES (1003, N'Cancelada')
GO
INSERT [dbo].[Productos] ([ProductoNo], [ProductoNombre], [Marca], [Precio], [Stock]) VALUES (1, N'Laptop', N'Dell', CAST(800.00 AS Decimal(10, 2)), 50)
GO
INSERT [dbo].[Productos] ([ProductoNo], [ProductoNombre], [Marca], [Precio], [Stock]) VALUES (2, N'Smartphone', N'Samsung', CAST(500.00 AS Decimal(10, 2)), 100)
GO
INSERT [dbo].[Productos] ([ProductoNo], [ProductoNombre], [Marca], [Precio], [Stock]) VALUES (3, N'Tablet', N'Apple', CAST(600.00 AS Decimal(10, 2)), 30)
GO
USE [master]
GO
ALTER DATABASE [prueba] SET  READ_WRITE 
GO
