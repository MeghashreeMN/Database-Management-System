CREATE DATABASE University

USE [University]
GO
/****** Object:  Table [dbo].[Classroom]    Script Date: 10/28/2021 5:22:03 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 10/28/2021 5:22:03 PM ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 10/28/2021 5:22:03 PM ******/
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
/****** Object:  Table [dbo].[Instructor]    Script Date: 10/28/2021 5:22:03 PM ******/
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
/****** Object:  Table [dbo].[Prereq]    Script Date: 10/28/2021 5:22:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prereq](
	[course_id] [int] NULL,
	[prereq_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Section]    Script Date: 10/28/2021 5:22:03 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 10/28/2021 5:22:03 PM ******/
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
/****** Object:  Table [dbo].[Takes]    Script Date: 10/28/2021 5:22:03 PM ******/
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
/****** Object:  Table [dbo].[Teaches]    Script Date: 10/28/2021 5:22:03 PM ******/
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
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 10/28/2021 5:22:03 PM ******/
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
