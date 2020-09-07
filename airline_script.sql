USE [master]
GO
/****** Object:  Database [AirlineEntity]    Script Date: 8/09/2020 11:41:31 AM ******/
CREATE DATABASE [AirlineEntity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AirlineEntity_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AirlineEntity.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AirlineEntity_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AirlineEntity.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AirlineEntity] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AirlineEntity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AirlineEntity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AirlineEntity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AirlineEntity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AirlineEntity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AirlineEntity] SET ARITHABORT OFF 
GO
ALTER DATABASE [AirlineEntity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AirlineEntity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AirlineEntity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AirlineEntity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AirlineEntity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AirlineEntity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AirlineEntity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AirlineEntity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AirlineEntity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AirlineEntity] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AirlineEntity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AirlineEntity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AirlineEntity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AirlineEntity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AirlineEntity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AirlineEntity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AirlineEntity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AirlineEntity] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AirlineEntity] SET  MULTI_USER 
GO
ALTER DATABASE [AirlineEntity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AirlineEntity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AirlineEntity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AirlineEntity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AirlineEntity] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AirlineEntity] SET QUERY_STORE = OFF
GO
USE [AirlineEntity]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 8/09/2020 11:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Departure] [varchar](50) NULL,
	[destination] [varchar](50) NULL,
	[Member] [varchar](50) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 8/09/2020 11:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Msg] [varchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/09/2020 11:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Post] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flight]    Script Date: 8/09/2020 11:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Flight] [varchar](50) NULL,
	[departure] [varchar](50) NULL,
	[Destination] [varchar](50) NULL,
 CONSTRAINT [PK_Flight] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 8/09/2020 11:41:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [AirlineEntity] SET  READ_WRITE 
GO
