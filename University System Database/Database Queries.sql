USE [master]
GO
/****** Object:  Database [University]    Script Date: 10/30/2021 9:57:19 PM ******/
CREATE DATABASE [University]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'University', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\University.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'University_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\University_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [University] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University] SET ARITHABORT OFF 
GO
ALTER DATABASE [University] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University] SET  DISABLE_BROKER 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University] SET RECOVERY FULL 
GO
ALTER DATABASE [University] SET  MULTI_USER 
GO
ALTER DATABASE [University] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [University] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'University', N'ON'
GO
USE [University]
GO
/****** Object:  Table [dbo].[Classroom]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classroom](
	[building] [varchar](100) NOT NULL,
	[room_number] [int] NOT NULL,
	[capacity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[building] ASC,
	[room_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] NOT NULL,
	[title] [varchar](50) NULL,
	[credits] [int] NULL,
	[dept_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Course__8F1EF7AE77B7AEEA] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[dept_name] [varchar](100) NOT NULL,
	[building] [varchar](100) NULL,
	[budget] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dept_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Instructor](
	[ID] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[salary] [decimal](15, 2) NULL,
	[dept_name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prereq]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prereq](
	[course_id] [int] NULL,
	[prereq_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Section]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Section](
	[sec_id] [int] NOT NULL,
	[semester] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[time_slot_id] [int] NOT NULL,
	[building] [varchar](100) NOT NULL,
	[room_number] [int] NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [PK__Section__4246D76BB6AAE6B8] PRIMARY KEY CLUSTERED 
(
	[sec_id] ASC,
	[semester] ASC,
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[tot_cred] [int] NULL,
	[dept_name] [varchar](100) NOT NULL,
	[instructor_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Takes]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Takes](
	[student_id] [int] NULL,
	[sec_id] [int] NULL,
	[semester] [varchar](50) NULL,
	[year] [int] NULL,
	[grade] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teaches]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teaches](
	[instructor_id] [int] NOT NULL,
	[sec_id] [int] NULL,
	[semester] [varchar](50) NULL,
	[year] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 10/30/2021 9:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[time_slot_id] [int] NOT NULL,
	[day] [date] NULL,
	[start_time] [time](7) NULL,
	[end_time] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[time_slot_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Burnham', 420, 80)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Burnham', 439, 60)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Burnham', 440, 60)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Burnham', 441, 60)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Douglas', 304, 80)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Douglas', 502, 60)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Douglas', 504, 140)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Douglas', 506, 120)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Douglas', 525, 100)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Lincoln', 300, 120)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Lincoln', 424, 60)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Lincoln', 425, 80)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Lincoln', 426, 140)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Stevenson', 435, 60)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Stevenson', 529, 100)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Stevenson', 530, 100)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Stevenson', 531, 140)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Stevenson', 533, 80)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Taft', 305, 120)
GO
INSERT [dbo].[Classroom] ([building], [room_number], [capacity]) VALUES (N'Taft', 500, 60)
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (1, N'Intro to Marketing', 4, N'Marketing')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (2, N'Basics of Finance', 2, N'Finance')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (3, N'Accounting Foundation', 2, N'Accounting')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (4, N'BDV basics', 2, N'Information Decision Sciences')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (5, N'Operations management', 4, N'Operations')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (6, N'ISSP', 2, N'Information Decision Sciences')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (7, N'Intro to Statistics', 4, N'Information Decision Sciences')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (8, N'Data Mining', 2, N'Business Analytics')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (9, N'Project Management', 2, N'Business Administration')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (10, N'Web Analytics', 4, N'Business Administration')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (11, N'ADBMS', 3, N'Information Decision Sciences')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (12, N'Java Foundations', 3, N'Information Decision Sciences')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (13, N'Python', 2, N'Information Decision Sciences')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (14, N'Vendor Management', 2, N'Business Administration')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (15, N'Co-Op', 4, N'Computer Science')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (16, N'Machine Learning', 4, N'Computer Science')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (17, N'Modern Architecture', 4, N'Architecture')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (18, N'Intermediate French', 2, N'French')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (19, N'Engaged Humatities', 2, N'Humanities')
GO
INSERT [dbo].[Course] ([course_id], [title], [credits], [dept_name]) VALUES (20, N'World History of Art', 4, N'Art History')
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Accounting', N'Stevenson', 400000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Applied Health Sciences', N'Lincoln', 500000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Architecture', N'Taft', 450000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Art History', N'Burnham', 400000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Business Administration', N'Stevenson', 450000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Business Analytics', N'Quad1', 500000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Chemistry', N'Quad4', 350000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Computer Science', N'Lincoln', 650000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Dental Administration', N'Quad5', 450000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Finance', N'Douglas', 300000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'French', N'Burnham', 400000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Humanities', N'Lincoln', 450000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Information Decision Sciences', N'Quad3', 600000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Intellectual Property', N'Taft', 650000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Italian', N'Burnham', 350000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Marketing', N'Taft', 500000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Mathematics', N'Lincoln', 700000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Music', N'Quad6', 450000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Operations', N'Lincoln', 450000)
GO
INSERT [dbo].[Department] ([dept_name], [building], [budget]) VALUES (N'Statistics', N'Quad2', 550000)
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (101, N'Arsh Khan', CAST(70000.00 AS Decimal(15, 2)), N'Marketing')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (103, N'Robert Hill', CAST(80000.00 AS Decimal(15, 2)), N'Finance')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (105, N'John Botts', CAST(75000.00 AS Decimal(15, 2)), N'Accounting')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (107, N'Yingda Jang', CAST(65000.00 AS Decimal(15, 2)), N'Art History')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (109, N'Matt Channel', CAST(90000.00 AS Decimal(15, 2)), N'Business Analytics')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (111, N'Frank Vickers', CAST(76000.00 AS Decimal(15, 2)), N'Marketing')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (113, N'Patricia King', CAST(86000.00 AS Decimal(15, 2)), N'Applied Health Sciences')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (115, N'Michael Naidu', CAST(81000.00 AS Decimal(15, 2)), N'Accounting')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (117, N'Bill Watts', CAST(71000.00 AS Decimal(15, 2)), N'Chemistry')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (119, N'Martha Sargent', CAST(96000.00 AS Decimal(15, 2)), N'Operations')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (121, N'Ann Varela', CAST(76000.00 AS Decimal(15, 2)), N'French')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (123, N'Christian Fraust', CAST(86000.00 AS Decimal(15, 2)), N'Finance')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (125, N'Fred Schuler', CAST(81000.00 AS Decimal(15, 2)), N'Accounting')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (127, N'Arvind Nair', CAST(71000.00 AS Decimal(15, 2)), N'Humanities')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (129, N'Eva Lord', CAST(96000.00 AS Decimal(15, 2)), N'Operations')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (131, N'Hasan Minhaj', CAST(70000.00 AS Decimal(15, 2)), N'Italian')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (133, N'Teresa Lisbon', CAST(80000.00 AS Decimal(15, 2)), N'Finance')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (135, N'Amit Jha', CAST(75000.00 AS Decimal(15, 2)), N'Accounting')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (137, N'Patrick Jane', CAST(65000.00 AS Decimal(15, 2)), N'Music')
GO
INSERT [dbo].[Instructor] ([ID], [name], [salary], [dept_name]) VALUES (139, N'Wylie Shaw', CAST(90000.00 AS Decimal(15, 2)), N'Mathematics')
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (1, NULL)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (2, 2)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (3, 4)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (4, NULL)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (5, 3)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (6, 7)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (7, 2)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (8, NULL)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (9, 18)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (10, 9)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (11, 19)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (12, NULL)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (13, NULL)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (14, NULL)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (15, 7)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (16, 8)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (17, 9)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (18, 10)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (19, NULL)
GO
INSERT [dbo].[Prereq] ([course_id], [prereq_id]) VALUES (20, NULL)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3211, N'1', 2021, 1, N'Taft', 500, 1)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3212, N'1', 2021, 3, N'Stevenson', 435, 3)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3213, N'1', 2021, 5, N'Lincoln', 424, 5)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3214, N'2', 2022, 7, N'Stevenson', 530, 7)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3215, N'2', 2022, 9, N'Lincoln', 425, 9)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3216, N'3', 2022, 11, N'Douglas', 504, 11)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3217, N'3', 2022, 13, N'Burnham', 420, 13)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3218, N'3', 2022, 15, N'Lincoln', 425, 15)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3219, N'4', 2023, 17, N'Stevenson', 531, 17)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3220, N'4', 2023, 19, N'Lincoln', 426, 19)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3244, N'1', 2021, 2, N'Douglas', 525, 2)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3245, N'1', 2021, 4, N'Burnham', 420, 4)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3246, N'2', 2022, 6, N'Douglas', 502, 6)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3247, N'2', 2022, 8, N'Burnham', 440, 8)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3248, N'2', 2022, 10, N'Taft', 305, 10)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3249, N'3', 2022, 12, N'Stevenson', 529, 12)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3250, N'3', 2022, 14, N'Lincoln', 424, 14)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3251, N'4', 2023, 16, N'Douglas', 506, 16)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3252, N'4', 2023, 18, N'Stevenson', 435, 18)
GO
INSERT [dbo].[Section] ([sec_id], [semester], [year], [time_slot_id], [building], [room_number], [course_id]) VALUES (3253, N'5', 2023, 20, N'Stevenson', 533, 20)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225277, N'Anne Sullivan', 32, N'Finance', 101)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225301, N'Erin Gruwell', 44, N'Marketing', 103)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225325, N'Frederick Douglass', 32, N'Accounting', 105)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225349, N'Friedrich Froebel', 32, N'Humanities', 107)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225373, N'Maria Montessori', 44, N'Operations', 111)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225397, N'Spike Lee', 40, N'Marketing', 137)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225421, N'Toni Morrison', 36, N'Finance', 139)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225445, N'Toru Kumon', 44, N'Marketing', 133)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225469, N'Dan Dunne', 46, N'Operations', 139)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225493, N'Marva Collins', 34, N'Accounting', 119)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225517, N'Gerald Lambeau', 44, N'Marketing', 121)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225541, N'Joe Clark', 44, N'Operations', 113)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225565, N'Naina Mathur ', 28, N'Italian', 115)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225589, N'Albus Dumbledore', 26, N'Italian', 107)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225613, N'George Feeny', 46, N'Finance', 105)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225637, N'Shota Aizawa', 32, N'Accounting', 137)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225661, N'Yukio Okumura', 32, N'Operations', 139)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225685, N'Izumi Curtis', 44, N'Finance', 101)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225709, N'Dewey Finn', 46, N'Operations', 105)
GO
INSERT [dbo].[Student] ([ID], [name], [tot_cred], [dept_name], [instructor_id]) VALUES (660225733, N'Hitesh Asnani', 42, N'Finance', 115)
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225277, 3211, N'1', 2021, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225301, 3244, N'1', 2021, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225325, 3212, N'1', 2021, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225349, 3245, N'1', 2021, N'B         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225373, 3213, N'1', 2021, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225397, 3246, N'2', 2022, N'B         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225421, 3214, N'2', 2022, N'B         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225445, 3247, N'2', 2022, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225469, 3215, N'2', 2022, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225493, 3248, N'2', 2022, N'B         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225517, 3216, N'3', 2022, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225541, 3249, N'3', 2022, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225565, 3217, N'3', 2022, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225589, 3250, N'3', 2022, N'B         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225613, 3218, N'3', 2022, N'B         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225637, 3251, N'4', 2023, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225661, 3219, N'4', 2023, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225685, 3252, N'4', 2023, N'B         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225709, 3220, N'4', 2023, N'A         ')
GO
INSERT [dbo].[Takes] ([student_id], [sec_id], [semester], [year], [grade]) VALUES (660225733, 3253, N'5', 2023, N'A         ')
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (101, 3211, N'1', 2021)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (103, 3244, N'1', 2021)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (105, 3212, N'1', 2021)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (107, 3245, N'1', 2021)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (109, 3213, N'1', 2021)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (111, 3246, N'2', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (113, 3214, N'2', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (115, 3247, N'2', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (117, 3215, N'2', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (119, 3248, N'2', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (121, 3216, N'3', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (123, 3249, N'3', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (125, 3217, N'3', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (127, 3250, N'3', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (129, 3218, N'3', 2022)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (131, 3251, N'4', 2023)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (133, 3219, N'4', 2023)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (135, 3252, N'4', 2023)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (137, 3220, N'4', 2023)
GO
INSERT [dbo].[Teaches] ([instructor_id], [sec_id], [semester], [year]) VALUES (139, 3253, N'5', 2023)
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (1, CAST(N'2021-08-23' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (2, CAST(N'2021-08-24' AS Date), CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (3, CAST(N'2021-08-25' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:30:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (4, CAST(N'2021-08-26' AS Date), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (5, CAST(N'2021-08-31' AS Date), CAST(N'06:00:00' AS Time), CAST(N'07:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (6, CAST(N'2021-09-01' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:45:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (7, CAST(N'2021-09-03' AS Date), CAST(N'06:00:00' AS Time), CAST(N'09:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (8, CAST(N'2021-09-04' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:30:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (9, CAST(N'2021-09-06' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (10, CAST(N'2021-09-13' AS Date), CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (11, CAST(N'2021-09-23' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:30:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (12, CAST(N'2021-09-24' AS Date), CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (13, CAST(N'2021-10-01' AS Date), CAST(N'06:00:00' AS Time), CAST(N'07:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (14, CAST(N'2021-10-03' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:45:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (15, CAST(N'2021-10-05' AS Date), CAST(N'06:00:00' AS Time), CAST(N'09:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (16, CAST(N'2021-10-06' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:30:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (17, CAST(N'2021-10-09' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (18, CAST(N'2021-10-11' AS Date), CAST(N'06:00:00' AS Time), CAST(N'09:00:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (19, CAST(N'2021-10-13' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:30:00' AS Time))
GO
INSERT [dbo].[TimeSlot] ([time_slot_id], [day], [start_time], [end_time]) VALUES (20, CAST(N'2021-10-15' AS Date), CAST(N'09:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK__Course__dept_nam__182C9B23] FOREIGN KEY([dept_name])
REFERENCES [dbo].[Department] ([dept_name])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK__Course__dept_nam__182C9B23]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD FOREIGN KEY([dept_name])
REFERENCES [dbo].[Department] ([dept_name])
GO
ALTER TABLE [dbo].[Prereq]  WITH CHECK ADD  CONSTRAINT [FK__Prereq__course_i__1A14E395] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Prereq] CHECK CONSTRAINT [FK__Prereq__course_i__1A14E395]
GO
ALTER TABLE [dbo].[Prereq]  WITH CHECK ADD  CONSTRAINT [FK__Prereq__prereq_i__1B0907CE] FOREIGN KEY([prereq_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Prereq] CHECK CONSTRAINT [FK__Prereq__prereq_i__1B0907CE]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK__Section__239E4DCF] FOREIGN KEY([building], [room_number])
REFERENCES [dbo].[Classroom] ([building], [room_number])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK__Section__239E4DCF]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK__Section__course___24927208] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK__Section__course___24927208]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK__Section__time_sl__22AA2996] FOREIGN KEY([time_slot_id])
REFERENCES [dbo].[TimeSlot] ([time_slot_id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK__Section__time_sl__22AA2996]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([dept_name])
REFERENCES [dbo].[Department] ([dept_name])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([instructor_id])
REFERENCES [dbo].[Instructor] ([ID])
GO
ALTER TABLE [dbo].[Takes]  WITH CHECK ADD  CONSTRAINT [FK__Takes__32E0915F] FOREIGN KEY([sec_id], [semester], [year])
REFERENCES [dbo].[Section] ([sec_id], [semester], [year])
GO
ALTER TABLE [dbo].[Takes] CHECK CONSTRAINT [FK__Takes__32E0915F]
GO
ALTER TABLE [dbo].[Takes]  WITH CHECK ADD  CONSTRAINT [FK__Takes__36B12243] FOREIGN KEY([sec_id], [semester], [year])
REFERENCES [dbo].[Section] ([sec_id], [semester], [year])
GO
ALTER TABLE [dbo].[Takes] CHECK CONSTRAINT [FK__Takes__36B12243]
GO
ALTER TABLE [dbo].[Takes]  WITH CHECK ADD  CONSTRAINT [FK__Takes__38996AB5] FOREIGN KEY([sec_id], [semester], [year])
REFERENCES [dbo].[Section] ([sec_id], [semester], [year])
GO
ALTER TABLE [dbo].[Takes] CHECK CONSTRAINT [FK__Takes__38996AB5]
GO
ALTER TABLE [dbo].[Takes]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Takes]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Takes]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK__Teaches__35BCFE0A] FOREIGN KEY([sec_id], [semester], [year])
REFERENCES [dbo].[Section] ([sec_id], [semester], [year])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK__Teaches__35BCFE0A]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD FOREIGN KEY([instructor_id])
REFERENCES [dbo].[Instructor] ([ID])
GO
USE [master]
GO
ALTER DATABASE [University] SET  READ_WRITE 
GO
