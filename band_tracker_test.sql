USE [master]
GO
/****** Object:  Database [band_tracker_test]    Script Date: 6/16/17 3:05:22 PM ******/
CREATE DATABASE [band_tracker_test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'band_tracker', FILENAME = N'C:\Users\JohnDowd\band_tracker_test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'band_tracker_log', FILENAME = N'C:\Users\JohnDowd\band_tracker_test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [band_tracker_test] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [band_tracker_test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [band_tracker_test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [band_tracker_test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [band_tracker_test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [band_tracker_test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [band_tracker_test] SET ARITHABORT OFF 
GO
ALTER DATABASE [band_tracker_test] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [band_tracker_test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [band_tracker_test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [band_tracker_test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [band_tracker_test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [band_tracker_test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [band_tracker_test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [band_tracker_test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [band_tracker_test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [band_tracker_test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [band_tracker_test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [band_tracker_test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [band_tracker_test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [band_tracker_test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [band_tracker_test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [band_tracker_test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [band_tracker_test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [band_tracker_test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [band_tracker_test] SET  MULTI_USER 
GO
ALTER DATABASE [band_tracker_test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [band_tracker_test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [band_tracker_test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [band_tracker_test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [band_tracker_test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [band_tracker_test] SET QUERY_STORE = OFF
GO
USE [band_tracker_test]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [band_tracker_test]
GO
/****** Object:  Table [dbo].[bands]    Script Date: 6/16/17 3:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venues]    Script Date: 6/16/17 3:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venues_bands]    Script Date: 6/16/17 3:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venues_bands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[venue_id] [int] NULL,
	[band_id] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[venues_bands] ON 

INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (1, 6, 14)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (2, 6, 15)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (3, 7, 18)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (4, 8, 18)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (5, 11, 19)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (6, 11, 20)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (7, 12, 23)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (8, 13, 23)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (9, 16, 24)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (10, 16, 25)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (11, 17, 28)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (12, 18, 28)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (13, 21, 29)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (14, 21, 30)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (15, 22, 33)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (16, 23, 33)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (17, 26, 34)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (18, 26, 35)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (19, 27, 37)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (20, 29, 39)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (21, 30, 39)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (22, 33, 40)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (23, 33, 41)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (24, 34, 43)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (25, 36, 45)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (26, 37, 45)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (27, 40, 46)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (28, 40, 47)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (29, 41, 48)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (31, 42, 52)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (32, 44, 54)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (33, 45, 54)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (34, 48, 55)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (35, 48, 56)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (36, 49, 57)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (38, 50, 61)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (39, 52, 63)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (40, 53, 63)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (42, 56, 65)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (43, 56, 66)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (44, 57, 67)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (46, 58, 71)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (47, 60, 73)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (48, 61, 73)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (50, 64, 75)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (51, 64, 76)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (52, 65, 77)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (54, 66, 81)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (55, 68, 84)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (56, 69, 84)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (58, 72, 86)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (59, 72, 87)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (60, 73, 88)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (62, 74, 92)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (63, 76, 95)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (64, 77, 95)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (66, 80, 97)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (67, 80, 98)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (68, 81, 99)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (70, 82, 103)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (71, 84, 106)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (72, 85, 106)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (74, 88, 108)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (75, 88, 109)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (76, 89, 110)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (78, 90, 114)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (79, 92, 117)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (80, 93, 117)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (82, 96, 119)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (83, 96, 120)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (84, 97, 121)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (86, 98, 125)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (87, 100, 128)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (88, 101, 128)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (90, 104, 130)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (91, 104, 131)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (92, 105, 132)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (94, 106, 136)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (95, 108, 139)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (96, 109, 139)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (98, 112, 141)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (99, 112, 142)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (100, 113, 143)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (102, 114, 147)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (103, 116, 150)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (104, 117, 150)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (106, 120, 152)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (107, 120, 153)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (108, 121, 154)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (110, 122, 158)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (111, 124, 161)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (112, 125, 161)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (114, 128, 163)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (115, 128, 164)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (116, 129, 165)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (118, 130, 169)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (119, 132, 172)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (120, 133, 172)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (122, 136, 174)
GO
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (123, 136, 175)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (124, 137, 176)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (126, 138, 180)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (127, 140, 183)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (128, 141, 183)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (130, 144, 185)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (131, 144, 186)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (132, 145, 187)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (134, 146, 191)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (135, 148, 194)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (136, 149, 194)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (138, 152, 196)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (139, 152, 197)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (140, 153, 198)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (142, 154, 202)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (143, 156, 205)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (144, 157, 205)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (146, 160, 207)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (147, 160, 208)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (148, 161, 209)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (150, 162, 213)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (151, 164, 216)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (152, 165, 216)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (154, 168, 218)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (155, 168, 219)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (156, 169, 220)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (158, 170, 224)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (159, 172, 227)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (160, 173, 227)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (162, 176, 229)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (163, 176, 230)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (164, 177, 231)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (166, 178, 235)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (167, 180, 238)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (168, 181, 238)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (170, 184, 240)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (171, 184, 241)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (172, 185, 242)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (174, 186, 246)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (175, 188, 249)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (176, 189, 249)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (178, 192, 251)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (179, 192, 252)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (180, 193, 253)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (182, 194, 257)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (183, 196, 260)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (184, 197, 260)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (186, 200, 262)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (187, 200, 263)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (188, 202, 264)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (190, 203, 268)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (191, 205, 271)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (192, 206, 271)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (194, 209, 273)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (195, 209, 274)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (196, 211, 275)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (198, 212, 279)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (199, 214, 282)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (200, 215, 282)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (202, 218, 284)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (203, 218, 285)
INSERT [dbo].[venues_bands] ([id], [venue_id], [band_id]) VALUES (204, 220, 286)
SET IDENTITY_INSERT [dbo].[venues_bands] OFF
USE [master]
GO
ALTER DATABASE [band_tracker_test] SET  READ_WRITE 
GO
