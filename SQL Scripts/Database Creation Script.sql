USE [master]
GO

/****** Object:  Database [DOTproj]    Script Date: 10/26/2022 8:54:56 PM ******/
CREATE DATABASE [DOTproj]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DOTproj', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DOTproj.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DOTproj_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DOTproj_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DOTproj].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [DOTproj] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DOTproj] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DOTproj] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DOTproj] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DOTproj] SET ARITHABORT OFF 
GO

ALTER DATABASE [DOTproj] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [DOTproj] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DOTproj] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DOTproj] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DOTproj] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DOTproj] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DOTproj] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DOTproj] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DOTproj] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DOTproj] SET  DISABLE_BROKER 
GO

ALTER DATABASE [DOTproj] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DOTproj] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DOTproj] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DOTproj] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DOTproj] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DOTproj] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [DOTproj] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DOTproj] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [DOTproj] SET  MULTI_USER 
GO

ALTER DATABASE [DOTproj] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DOTproj] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DOTproj] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DOTproj] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [DOTproj] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [DOTproj] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [DOTproj] SET QUERY_STORE = OFF
GO

ALTER DATABASE [DOTproj] SET  READ_WRITE 
GO

