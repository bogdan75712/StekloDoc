USE [master]
GO
/****** Object:  Database [StekloPacket]    Script Date: 06.06.2022 19:41:28 ******/
CREATE DATABASE [StekloPacket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StekloPacket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StekloPacket.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StekloPacket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StekloPacket_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StekloPacket] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StekloPacket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StekloPacket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StekloPacket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StekloPacket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StekloPacket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StekloPacket] SET ARITHABORT OFF 
GO
ALTER DATABASE [StekloPacket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StekloPacket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StekloPacket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StekloPacket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StekloPacket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StekloPacket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StekloPacket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StekloPacket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StekloPacket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StekloPacket] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StekloPacket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StekloPacket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StekloPacket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StekloPacket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StekloPacket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StekloPacket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StekloPacket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StekloPacket] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StekloPacket] SET  MULTI_USER 
GO
ALTER DATABASE [StekloPacket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StekloPacket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StekloPacket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StekloPacket] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StekloPacket] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StekloPacket] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [StekloPacket] SET QUERY_STORE = OFF
GO
USE [StekloPacket]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IDCategory] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IDCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[IDClient] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](150) NOT NULL,
	[Phone] [char](12) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[IDOrder] [int] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[IDClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[IDColor] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[IDColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomWindows]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomWindows](
	[IDCustomWindow] [int] NOT NULL,
	[IDWindowSill] [int] NOT NULL,
	[IDGlazingType] [int] NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[Photo] [varbinary](max) NULL,
 CONSTRAINT [PK_CustomWindows] PRIMARY KEY CLUSTERED 
(
	[IDCustomWindow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GlazingType]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlazingType](
	[IDGlazingType] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GlazingType] PRIMARY KEY CLUSTERED 
(
	[IDGlazingType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeType]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeType](
	[IDHomeType] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[HomeType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HomeType] PRIMARY KEY CLUSTERED 
(
	[IDHomeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeftSash]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeftSash](
	[IDLeftSash] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LeftSash] PRIMARY KEY CLUSTERED 
(
	[IDLeftSash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[IDManufacturer] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[IDManufacturer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediumSash]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediumSash](
	[IDMediumSash] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MediumSash] PRIMARY KEY CLUSTERED 
(
	[IDMediumSash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[IDOrderDetail] [int] IDENTITY(1,1) NOT NULL,
	[IDOrder] [int] NOT NULL,
	[IDWindow] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[IDOrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[IDOrder] [int] NOT NULL,
	[IDClient] [int] NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[Sale] [decimal](18, 2) NOT NULL,
	[Montage] [bit] NULL,
	[Demontage] [bit] NULL,
	[OrderDate] [date] NOT NULL,
	[OrderPerformDate] [date] NULL,
	[IDUser] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfileType]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfileType](
	[IDProfileType] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[IDManufacturer] [int] NOT NULL,
 CONSTRAINT [PK_ProfileType] PRIMARY KEY CLUSTERED 
(
	[IDProfileType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RightSash]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RightSash](
	[IDRightSash] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RightSash] PRIMARY KEY CLUSTERED 
(
	[IDRightSash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IDUser] [int] NOT NULL,
	[Login] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[IDRole] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Windows]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Windows](
	[IDWindow] [int] NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[IDColor] [int] NOT NULL,
	[IDManufacturer] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[IDCategory] [int] NOT NULL,
	[IDWindowType] [int] NOT NULL,
	[IDWindowSill] [int] NOT NULL,
	[IDProfileType] [int] NOT NULL,
	[IDHomeType] [int] NOT NULL,
	[IDGlazingType] [int] NOT NULL,
	[IDLeftSash] [int] NOT NULL,
	[IDRigthSash] [int] NOT NULL,
	[IDMediumSash] [int] NOT NULL,
 CONSTRAINT [PK_Windows] PRIMARY KEY CLUSTERED 
(
	[IDWindow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WindowSill]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WindowSill](
	[IDWindowSill] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_WindowSill] PRIMARY KEY CLUSTERED 
(
	[IDWindowSill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WindowsType]    Script Date: 06.06.2022 19:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WindowsType](
	[IDWindowType] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_WindowsType] PRIMARY KEY CLUSTERED 
(
	[IDWindowType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomWindows]  WITH CHECK ADD  CONSTRAINT [FK_CustomWindows_GlazingType] FOREIGN KEY([IDGlazingType])
REFERENCES [dbo].[GlazingType] ([IDGlazingType])
GO
ALTER TABLE [dbo].[CustomWindows] CHECK CONSTRAINT [FK_CustomWindows_GlazingType]
GO
ALTER TABLE [dbo].[CustomWindows]  WITH CHECK ADD  CONSTRAINT [FK_CustomWindows_WindowSill] FOREIGN KEY([IDWindowSill])
REFERENCES [dbo].[WindowSill] ([IDWindowSill])
GO
ALTER TABLE [dbo].[CustomWindows] CHECK CONSTRAINT [FK_CustomWindows_WindowSill]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([IDOrder])
REFERENCES [dbo].[Orders] ([IDOrder])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Windows] FOREIGN KEY([IDWindow])
REFERENCES [dbo].[Windows] ([IDWindow])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Windows]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Client] FOREIGN KEY([IDClient])
REFERENCES [dbo].[Client] ([IDClient])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Client]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([IDUser])
REFERENCES [dbo].[Users] ([IDUser])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[ProfileType]  WITH CHECK ADD  CONSTRAINT [FK_ProfileType_Manufacturer] FOREIGN KEY([IDManufacturer])
REFERENCES [dbo].[Manufacturer] ([IDManufacturer])
GO
ALTER TABLE [dbo].[ProfileType] CHECK CONSTRAINT [FK_ProfileType_Manufacturer]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role1] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([IDRole])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role1]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_Category] FOREIGN KEY([IDCategory])
REFERENCES [dbo].[Category] ([IDCategory])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_Category]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_Colors] FOREIGN KEY([IDColor])
REFERENCES [dbo].[Colors] ([IDColor])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_Colors]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_GlazingType] FOREIGN KEY([IDGlazingType])
REFERENCES [dbo].[GlazingType] ([IDGlazingType])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_GlazingType]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_HomeType] FOREIGN KEY([IDHomeType])
REFERENCES [dbo].[HomeType] ([IDHomeType])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_HomeType]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_LeftSash] FOREIGN KEY([IDLeftSash])
REFERENCES [dbo].[LeftSash] ([IDLeftSash])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_LeftSash]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_Manufacturer] FOREIGN KEY([IDManufacturer])
REFERENCES [dbo].[Manufacturer] ([IDManufacturer])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_Manufacturer]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_MediumSash] FOREIGN KEY([IDMediumSash])
REFERENCES [dbo].[MediumSash] ([IDMediumSash])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_MediumSash]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_ProfileType] FOREIGN KEY([IDProfileType])
REFERENCES [dbo].[ProfileType] ([IDProfileType])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_ProfileType]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_RightSash] FOREIGN KEY([IDRigthSash])
REFERENCES [dbo].[RightSash] ([IDRightSash])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_RightSash]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_WindowSill] FOREIGN KEY([IDWindowSill])
REFERENCES [dbo].[WindowSill] ([IDWindowSill])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_WindowSill]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_WindowsType] FOREIGN KEY([IDWindowType])
REFERENCES [dbo].[WindowsType] ([IDWindowType])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_WindowsType]
GO
USE [master]
GO
ALTER DATABASE [StekloPacket] SET  READ_WRITE 
GO
