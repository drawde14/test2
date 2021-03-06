﻿
USE [master]
GO

/****** Object:  Database [WaterIndex]    Script Date: 6/1/2020 7:11:17 PM ******/
CREATE DATABASE [WaterIndex]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WaterIndex', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WaterIndex.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WaterIndex_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WaterIndex.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [WaterIndex] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WaterIndex].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [WaterIndex] SET ANSI_NULL_DEFAULT ON
GO

ALTER DATABASE [WaterIndex] SET ANSI_NULLS ON
GO

ALTER DATABASE [WaterIndex] SET ANSI_PADDING ON
GO

ALTER DATABASE [WaterIndex] SET ANSI_WARNINGS ON
GO

ALTER DATABASE [WaterIndex] SET ARITHABORT ON
GO

ALTER DATABASE [WaterIndex] SET AUTO_CLOSE OFF
GO

ALTER DATABASE [WaterIndex] SET AUTO_SHRINK OFF
GO

ALTER DATABASE [WaterIndex] SET AUTO_UPDATE_STATISTICS ON
GO

ALTER DATABASE [WaterIndex] SET CURSOR_CLOSE_ON_COMMIT OFF
GO

ALTER DATABASE [WaterIndex] SET CURSOR_DEFAULT  LOCAL
GO

ALTER DATABASE [WaterIndex] SET CONCAT_NULL_YIELDS_NULL ON
GO

ALTER DATABASE [WaterIndex] SET NUMERIC_ROUNDABORT OFF
GO

ALTER DATABASE [WaterIndex] SET QUOTED_IDENTIFIER ON
GO

ALTER DATABASE [WaterIndex] SET RECURSIVE_TRIGGERS OFF
GO

ALTER DATABASE [WaterIndex] SET  DISABLE_BROKER
GO

ALTER DATABASE [WaterIndex] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO

ALTER DATABASE [WaterIndex] SET DATE_CORRELATION_OPTIMIZATION OFF
GO

ALTER DATABASE [WaterIndex] SET TRUSTWORTHY OFF
GO

ALTER DATABASE [WaterIndex] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO

ALTER DATABASE [WaterIndex] SET PARAMETERIZATION SIMPLE
GO

ALTER DATABASE [WaterIndex] SET READ_COMMITTED_SNAPSHOT OFF
GO

ALTER DATABASE [WaterIndex] SET HONOR_BROKER_PRIORITY OFF
GO

ALTER DATABASE [WaterIndex] SET RECOVERY FULL
GO

ALTER DATABASE [WaterIndex] SET  MULTI_USER
GO

ALTER DATABASE [WaterIndex] SET PAGE_VERIFY CHECKSUM
GO

ALTER DATABASE [WaterIndex] SET DB_CHAINING OFF
GO

ALTER DATABASE [WaterIndex] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO

ALTER DATABASE [WaterIndex] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO

ALTER DATABASE [WaterIndex] SET DELAYED_DURABILITY = DISABLED
GO

ALTER DATABASE [WaterIndex] SET QUERY_STORE = OFF
GO

USE [WaterIndex]
GO

/****** Object:  Table [dbo].[Apartment]    Script Date: 6/1/2020 7:11:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Building]    Script Date: 6/1/2020 7:11:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Estimate]    Script Date: 6/1/2020 7:11:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Index]    Script Date: 6/1/2020 7:11:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Price]    Script Date: 6/1/2020 7:11:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Role]    Script Date: 6/1/2020 7:11:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[User]    Script Date: 6/1/2020 7:11:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

USE [master]
GO

ALTER DATABASE [WaterIndex] SET  READ_WRITE
GO
