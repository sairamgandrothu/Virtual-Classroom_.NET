USE [master]
GO
/****** Object:  Database [OTeaching]    Script Date: 11-04-2025 10:54:58 ******/
CREATE DATABASE [OTeaching]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OTeaching', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OTeaching.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OTeaching_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\OTeaching_log.ldf' , SIZE = 4224KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [OTeaching] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OTeaching].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OTeaching] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OTeaching] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OTeaching] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OTeaching] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OTeaching] SET ARITHABORT OFF 
GO
ALTER DATABASE [OTeaching] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OTeaching] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OTeaching] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OTeaching] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OTeaching] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OTeaching] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OTeaching] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OTeaching] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OTeaching] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OTeaching] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OTeaching] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OTeaching] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OTeaching] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OTeaching] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OTeaching] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OTeaching] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OTeaching] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OTeaching] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OTeaching] SET  MULTI_USER 
GO
ALTER DATABASE [OTeaching] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OTeaching] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OTeaching] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OTeaching] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OTeaching] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OTeaching] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OTeaching] SET QUERY_STORE = OFF
GO
USE [OTeaching]
GO
/****** Object:  Table [dbo].[CategoryMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryMst](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[CName] [nvarchar](50) NULL,
	[Edate] [datetime] NULL,
 CONSTRAINT [PK_CategoryMst] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseMst](
	[class] [varchar](50) NOT NULL,
	[course] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CSEAttMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSEAttMst](
	[rollno] [nvarchar](50) NOT NULL,
	[studentname] [varchar](50) NOT NULL,
	[dateofclasss] [varchar](50) NOT NULL,
	[attendancestatus] [varchar](50) NOT NULL,
	[class] [varchar](50) NOT NULL,
	[starttime] [varchar](50) NOT NULL,
	[endtime] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CSETableMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSETableMst](
	[rollno] [nvarchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENTCAttMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTCAttMst](
	[rollno] [nvarchar](50) NOT NULL,
	[studentname] [varchar](50) NOT NULL,
	[dateofclasss] [varchar](50) NOT NULL,
	[attendancestatus] [varchar](50) NOT NULL,
	[class] [varchar](50) NOT NULL,
	[starttime] [varchar](50) NOT NULL,
	[endtime] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENTCTableMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTCTableMst](
	[rollno] [nvarchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBackMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBackMst](
	[FID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Feedback] [nvarchar](500) NULL,
	[EDate] [datetime] NULL,
 CONSTRAINT [PK_FeedBackMst] PRIMARY KEY CLUSTERED 
(
	[FID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ITAttMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITAttMst](
	[rollno] [nvarchar](50) NOT NULL,
	[studentname] [varchar](50) NOT NULL,
	[dateofclasss] [varchar](50) NOT NULL,
	[attendancestatus] [varchar](50) NOT NULL,
	[class] [varchar](50) NOT NULL,
	[starttime] [varchar](50) NOT NULL,
	[endtime] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ITTableMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITTableMst](
	[rollno] [nvarchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageMst](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [nvarchar](50) NULL,
	[Tname] [nvarchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](500) NULL,
	[Status] [int] NULL,
	[EDate] [datetime] NULL,
 CONSTRAINT [PK_MessageMst] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotMst](
	[name] [varchar](50) NOT NULL,
	[title] [varchar](100) NOT NULL,
	[message] [varchar](500) NOT NULL,
	[date] [varchar](50) NOT NULL,
	[time] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationMst](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Pincode] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EDate] [datetime] NULL,
 CONSTRAINT [PK_RegistrationMst] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffMst](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Pincode] [nvarchar](50) NULL,
	[Image] [nvarchar](1000) NULL,
	[Qualification] [nvarchar](50) NULL,
	[Experience] [nvarchar](50) NULL,
	[CName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_StaffMst] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentMst](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Image] [nvarchar](500) NULL,
	[Course] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Pincode] [nvarchar](50) NULL,
	[Uname] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EDate] [datetime] NULL,
 CONSTRAINT [PK_StudentMst] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadMst](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[Staff] [nvarchar](50) NULL,
	[Course] [nvarchar](50) NULL,
	[Title] [nvarchar](500) NULL,
	[Upload] [nvarchar](1000) NULL,
	[Download] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Edate] [datetime] NULL,
 CONSTRAINT [PK_UploadMst] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoMst]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoMst](
	[VID] [int] IDENTITY(1,1) NOT NULL,
	[Staff] [nvarchar](50) NULL,
	[Course] [nvarchar](50) NULL,
	[Title] [nvarchar](100) NULL,
	[Video] [nvarchar](500) NULL,
	[Download] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Edate] [datetime] NULL,
 CONSTRAINT [PK_VideoMst] PRIMARY KEY CLUSTERED 
(
	[VID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[catemst_DELETE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[catemst_DELETE] 
@CID AS INT
AS
BEGIN
	
	DELETE FROM CATEGORYMST WHERE CID=@CID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[catemst_INSERT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[catemst_INSERT] 
@CNAME AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO CATEGORYMST VALUES(@CNAME,GETDATE())
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[catemst_SELECT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[catemst_SELECT] 

AS
BEGIN
	
	SELECT * FROM CATEGORYMST
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[catemst_UPDATE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[catemst_UPDATE] 
@CID AS INT,
@CNAME AS NVARCHAR(256)
AS
BEGIN
	
	UPDATE CATEGORYMST SET CName=@CNAME  WHERE CID=@CID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[FEEDBACKMST_DELETE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FEEDBACKMST_DELETE] 

@FID AS INT

AS
BEGIN
	
	DELETE FROM FeedBackMst WHERE FID=@FID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[FEEDBACKMST_INSERT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FEEDBACKMST_INSERT] 

@EMAIL AS NVARCHAR(256),
@MOBILE AS NVARCHAR(256),
@FEEDBACK AS NVARCHAR(500)

AS
BEGIN
	
	INSERT INTO FeedBackMst VALUES(@EMAIL,@MOBILE,@FEEDBACK,GETDATE())
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[FEEDBACKMST_SELECT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FEEDBACKMST_SELECT] 

AS
BEGIN
	
	SELECT* FROM FeedBackMst
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST_DELETE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MESSAGEMST_DELETE] 

@MID AS INT

AS
BEGIN
	
DELETE FROM MessageMst WHERE MID=@MID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST_INSERT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MESSAGEMST_INSERT] 

@FNAME AS NVARCHAR(256),
@TNAME AS NVARCHAR(256),
@SUBJECT AS NVARCHAR(500),
@MSG AS NVARCHAR(1000)

AS
BEGIN
	
INSERT INTO MessageMst VALUES (@FNAME,@TNAME,@SUBJECT,@MSG,0,GETDATE())
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST_SELECT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MESSAGEMST_SELECT] 

AS
BEGIN
	
	SELECT* FROM MessageMst
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST_SELECT_bY_ID]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MESSAGEMST_SELECT_bY_ID] 

@MID AS INT

AS
BEGIN
	
SELECT * FROM MessageMst  WHERE MID=@MID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST_SELECT_bY_STATUS]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MESSAGEMST_SELECT_bY_STATUS] 

@STATUS AS INT

AS
BEGIN
	
SELECT * FROM MessageMst  WHERE STATUS=@STATUS
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST_SELECT_STATUS_FNAME]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MESSAGEMST_SELECT_STATUS_FNAME] 

@FNAME AS NVARCHAR(256),
@STATUS AS INT


AS
BEGIN
	
SELECT * FROM MessageMst  WHERE FNAME=@FNAME AND STATUS=@STATUS
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST_SELECT_STATUS_TNAME]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MESSAGEMST_SELECT_STATUS_TNAME] 

@TNAME AS NVARCHAR(256),
@STATUS AS INT


AS
BEGIN
	
SELECT * FROM MessageMst  WHERE TNAME=@TNAME AND STATUS=@STATUS
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[MESSAGEMST_UPDATE_STATUS]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MESSAGEMST_UPDATE_STATUS] 
@STATUS AS INT,
@MID AS INT

AS
BEGIN
	
UPDATE MessageMst SET STATUS=@STATUS WHERE MID=@MID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[REGMST_DELETE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REGMST_DELETE] 
@RID AS INT
AS
BEGIN
	
	DELETE FROM RegistrationMst WHERE RID=@RID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[REGMST_INSERT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REGMST_INSERT] 
@NAME AS NVARCHAR(250),
@MOBILE AS NVARCHAR(250),
@ADD AS NVARCHAR(250),
@CITY AS NVARCHAR(250),
@PIN AS NVARCHAR(250),
@EMAIL AS NVARCHAR(250),
@PASS AS NVARCHAR(250)
AS
BEGIN
	
	INSERT INTO RegistrationMst VALUES(@NAME,@MOBILE,@ADD,@CITY,@PIN,@EMAIL,@PASS,GETDATE())
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[REGMST_SELECT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REGMST_SELECT] 

AS
BEGIN
	
	SELECT* FROM RegistrationMst
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[REGMST_UPDATE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REGMST_UPDATE] 
@RID AS INT,
@NAME AS NVARCHAR(256),
@MOBILE AS NVARCHAR(256),
@ADD AS NVARCHAR(256),
@CITY AS NVARCHAR(256),
@PIN AS NVARCHAR(256),
@EMAIL AS NVARCHAR(256),
@PASS AS NVARCHAR(256)

AS
BEGIN
	
	UPDATE RegistrationMst SET Name=@NAME,Mobile=@MOBILE,Address=@ADD,City=@CITY,Pincode=@PIN,Email=@EMAIL,Password=@PASS  WHERE RID=@RID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_Change_Password]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STAFFMST_Change_Password] 

@pass as nvarchar(256),
@uname as nvarchar(256)


AS
BEGIN
	
	update StaffMst set password=@pass where Email=@uname 
	 
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_DELETE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STAFFMST_DELETE] 
@SID AS INT
AS
BEGIN
	
	DELETE FROM StaffMst WHERE SID=@SID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_INSERT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STAFFMST_INSERT] 
@NAME AS NVARCHAR(250),
@MOBILE AS NVARCHAR(250),
@ADD AS NVARCHAR(250),
@CITY AS NVARCHAR(250),
@PIN AS NVARCHAR(250),
@IMG AS NVARCHAR(250),
@QULI AS NVARCHAR(250),
@EXPIRENCE AS NVARCHAR(250),
@CNAME AS NVARCHAR(250),
@EMAIL AS NVARCHAR(250),
@PASS AS NVARCHAR(250)
AS
BEGIN
	
	INSERT INTO StaffMst VALUES(@NAME,@MOBILE,@ADD,@CITY,@PIN,@IMG,@QULI,@EXPIRENCE,@CNAME,@EMAIL,@PASS)
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_SELECT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STAFFMST_SELECT] 

AS
BEGIN
	
	SELECT* FROM StaffMst
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_SELECT_by_COURSE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STAFFMST_SELECT_by_COURSE] 

@CNAME as nvarchar(256)

AS
BEGIN
	
	SELECT * FROM StaffMst where CName=@CNAME
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_SELECT_BY_EMAIL]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STAFFMST_SELECT_BY_EMAIL] 
@email as nvarchar(256)
AS
BEGIN
	
	SELECT* FROM StaffMst where Email=@email
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_SELECT_check_pass]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STAFFMST_SELECT_check_pass] 

@pass as nvarchar(256),
@uname as nvarchar(256)


AS
BEGIN
	
	SELECT* FROM StaffMst where Email=@uname and password=@pass
	 
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_SELECT_FOR_LOGIN]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STAFFMST_SELECT_FOR_LOGIN] 

@email as nvarchar(256),
@pass as nvarchar(256)

AS
BEGIN
	
	SELECT * FROM StaffMst where Email=@email and Password=@pass
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_SELECT_Forgot_Password]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STAFFMST_SELECT_Forgot_Password] 
@email as nvarchar(256),
@mobile as nvarchar(256)

AS
BEGIN
	
	SELECT* FROM StaffMst where Email=@email and mobile=@mobile
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STAFFMST_UPDATE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STAFFMST_UPDATE] 
@SID AS INT,
@EMAIL AS NVARCHAR(256),
@MOBILE AS NVARCHAR(256),
@ADD AS NVARCHAR(256),
@CITY AS NVARCHAR(256),
@PIN AS NVARCHAR(256),
@IMG AS NVARCHAR(500),
@QULI AS NVARCHAR(256),
@EXPERIENCE AS NVARCHAR(256)



AS
BEGIN
	
	UPDATE StaffMst SET Mobile=@MOBILE,Address=@ADD,City=@CITY,Pincode=@PIN,image=@IMG,Qualification=@QULI,Experience=@EXPERIENCE,Email=@EMAIL WHERE SID=@SID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENT_SELECT_Forgot_Password]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STUDENT_SELECT_Forgot_Password] 
@email as nvarchar(256),
@mobile as nvarchar(256)

AS
BEGIN
	
	SELECT* FROM StudentMst where Email=@email and mobile=@mobile
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENTMST_Change_Password]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENTMST_Change_Password] 

@pass as nvarchar(256),
@uname as nvarchar(256)


AS
BEGIN
	
	update StudentMst set password=@pass where uname=@uname 
	 
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENTMST_DELETE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENTMST_DELETE]

@SID AS INT

AS
BEGIN
	
	DELETE FROM StudentMst WHERE SID=@SID
	 
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENTMST_INSERT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENTMST_INSERT] 

@NAME AS NVARCHAR(256),
@EMAIL AS NVARCHAR(256),
@MOBILE AS NVARCHAR(256),
@IMAGE AS NVARCHAR(500),
@COURSE AS NVARCHAR(256),
@ADD AS NVARCHAR(256),
@CITY AS NVARCHAR(256),
@PIN AS NVARCHAR(256),
@UNAME AS NVARCHAR(256),
@PASS AS NVARCHAR(256)

AS
BEGIN
	
	INSERT INTO STUDENTMST VALUES (@NAME,@EMAIL,@MOBILE,@IMAGE,@COURSE,@ADD,@CITY,@PIN,@UNAME,@PASS,GETDATE())
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENTMST_SELECT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENTMST_SELECT] 

AS
BEGIN
	
	SELECT* FROM STUDENTMST
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENTMST_select_by_EMAIL]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STUDENTMST_select_by_EMAIL] 

@EMAIL as nvarchar(256)
AS
BEGIN
	
	select * from  StudentMst  where EMAIL=@EMAIL
	 
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENTMST_select_by_uname]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STUDENTMST_select_by_uname] 

@uname as nvarchar(256)
AS
BEGIN
	
	select * from  StudentMst  where uname=@uname 
	 
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENTMST_SELECT_check_pass]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENTMST_SELECT_check_pass] 

@pass as nvarchar(256),
@uname as nvarchar(256)


AS
BEGIN
	
	SELECT* FROM StudentMst where uname=@uname and password=@pass
	 
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENTMST_select_FOR_login]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STUDENTMST_select_FOR_login] 

@UNAME as nvarchar(256),
@PASS AS NVARCHAR(256)

AS
BEGIN
	
	select * from  StudentMst  where UNAME=@UNAME AND PASSWORD=@PASS
	 
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENTMST_UPDATE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENTMST_UPDATE] 

@SID AS INT,
@EMAIL AS NVARCHAR(256),
@MOBILE AS NVARCHAR(256),
@IMAGE AS NVARCHAR(500),
@ADD AS NVARCHAR(256),
@CITY AS NVARCHAR(256),
@PIN AS NVARCHAR(256)


AS
BEGIN
-- txtemail.Text, txtmobile.Text, Imgprofile.ImageUrl.ToString(), txtadd.Text, txtcity.Text, txtpin.Text)
	
	UPDATE STUDENTMST SET EMAIL=@EMAIL, MOBILE= @MOBILE, IMAGE= @IMAGE,  Address = @ADD, CITY = @CITY, PINCODE = @PIN WHERE SID=@SID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_DELETE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPLOADMST_DELETE] 
@UID AS INT
AS
BEGIN
	
	DELETE FROM UploadMst WHERE UID=@UID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_DOWNLOADED]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UPLOADMST_DOWNLOADED] 

@UID AS INT
AS
BEGIN
	
	UPDATE UploadMst SET Download = Download + 1 WHERE UID=@UID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_INSERT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPLOADMST_INSERT]
@staff as nvarchar(256),
@cname as nvarchar(256),
@TITLE AS NVARCHAR(500),
@DETAIL AS NVARCHAR(1000)

AS
BEGIN
	
	INSERT INTO UploadMst VALUES(@staff,@cname, @TITLE,@DETAIL,0,'Active',GETDATE())
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_SELECT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPLOADMST_SELECT] 

AS
BEGIN
	
	SELECT * FROM UploadMst
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_SELECT_BY_COURSE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPLOADMST_SELECT_BY_COURSE] 
@course as nvarchar(256)

AS
BEGIN
	
	SELECT * FROM UploadMst where Course=@course and status='Active'
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_SELECT_BY_staff]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UPLOADMST_SELECT_BY_staff] 
@staff as nvarchar(256)

AS
BEGIN
	
	SELECT * FROM UploadMst where Staff=@staff
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_SELECT_BY_UID]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UPLOADMST_SELECT_BY_UID] 
@uid as int
AS
BEGIN
	
	SELECT * FROM UploadMst where uid=@uid
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_SELECT_TOP_DOWNLOAD]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPLOADMST_SELECT_TOP_DOWNLOAD] 

AS
BEGIN
	
	SELECT TOP 5 * FROM UploadMst where status='Active' ORDER BY DOWNLOAD desc
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_UPDATE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPLOADMST_UPDATE] 
@UID AS INT,
@SID AS INT,
@TITLE AS NVARCHAR(500),
@DETAIL AS NVARCHAR(1000),
@DOWNLOAD AS NVARCHAR(1200),
@STATUS AS INT

AS
BEGIN
	
	UPDATE UploadMst SET Title=@TITLE,Detail=@DETAIL,Download=@DOWNLOAD,Status=@STATUS  WHERE UID=@UID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[UPLOADMST_UPDATE_STATUS]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UPLOADMST_UPDATE_STATUS] 

@UID AS INT,
@STATUS AS NVARCHAR(256)
AS
BEGIN
	
	UPDATE UploadMst SET STATUS=@STATUS WHERE UID=@UID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VIDEOMST_DELETE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VIDEOMST_DELETE] 
@VID AS INT
AS
BEGIN
	
	DELETE FROM VideoMst WHERE VID=@VID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VideoMst_DOWNLOADED]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VideoMst_DOWNLOADED] 

@VID AS INT
AS
BEGIN
	
	UPDATE VideoMst SET Download = Download + 1 WHERE VID=@VID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VIDEOMST_INSERT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VIDEOMST_INSERT]
@staff as nvarchar(256),
@cname as nvarchar(256),
@TITLE AS NVARCHAR(500),
@vIDEO AS NVARCHAR(1000)

AS
BEGIN
	
	INSERT INTO VideoMst VALUES(@staff,@cname, @TITLE,@vIDEO,0,'Active',GETDATE())
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VIDEOMST_SELECT]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VIDEOMST_SELECT] 

AS
BEGIN
	
	SELECT * FROM VideoMst
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VideoMst_SELECT_BY_COURSE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VideoMst_SELECT_BY_COURSE] 
@course as nvarchar(256)

AS
BEGIN
	
	SELECT * FROM VideoMst where Course=@course and status='Active'
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VideoMst_SELECT_BY_staff]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VideoMst_SELECT_BY_staff] 
@staff as nvarchar(256)

AS
BEGIN
	
	SELECT * FROM VideoMst where Staff=@staff
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VideoMst_SELECT_BY_VID]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VideoMst_SELECT_BY_VID] 
@Vid as int
AS
BEGIN
	
	SELECT * FROM VideoMst where Vid=@Vid
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VideoMst_SELECT_TOP_DOWNLOAD]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VideoMst_SELECT_TOP_DOWNLOAD] 

AS
BEGIN
	
	SELECT TOP 5 * FROM VideoMst where status='Active' ORDER BY DOWNLOAD desc 
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VIDEOMST_UPDATE]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VIDEOMST_UPDATE] 
@VID AS INT,
@SID AS INT,
@TITLE AS NVARCHAR(500),
@VIDEO AS NVARCHAR(1000),
@STATUS AS INT

AS
BEGIN
	
	UPDATE VideoMst SET Title=@TITLE,Video=@VIDEO,Status=@STATUS  WHERE VID=@VID
	
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[VideoMst_UPDATE_STATUS]    Script Date: 11-04-2025 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VideoMst_UPDATE_STATUS] 

@VID AS INT,
@STATUS AS NVARCHAR(256)
AS
BEGIN
	
	UPDATE VideoMst SET STATUS=@STATUS WHERE VID=@VID
	
	
	
END

GO
USE [master]
GO
ALTER DATABASE [OTeaching] SET  READ_WRITE 
GO
