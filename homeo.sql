  <system.net>
<mailSettings>
  <smtp from="doctor@babafareedhomeoclinic.com">
    <network host="relay-hosting.secureserver.net" port="25" userName="doctor@babafareedhomeoclinic.com" password="Fatcow123" defaultCredentials="false"/>
  </smtp>
</mailSettings>     
</system.net>






USE [master]
GO
/****** Object:  Database [HomeoClinic]    Script Date: 5/5/2020 5:50:13 PM ******/
CREATE DATABASE [HomeoClinic] ON  PRIMARY 
( NAME = N'HomeoClinic', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\HomeoClinic.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HomeoClinic_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\HomeoClinic_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HomeoClinic] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HomeoClinic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HomeoClinic] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HomeoClinic] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HomeoClinic] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HomeoClinic] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HomeoClinic] SET ARITHABORT OFF 
GO
ALTER DATABASE [HomeoClinic] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HomeoClinic] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HomeoClinic] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HomeoClinic] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HomeoClinic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HomeoClinic] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HomeoClinic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HomeoClinic] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HomeoClinic] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HomeoClinic] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HomeoClinic] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HomeoClinic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HomeoClinic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HomeoClinic] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HomeoClinic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HomeoClinic] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HomeoClinic] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HomeoClinic] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HomeoClinic] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HomeoClinic] SET  MULTI_USER 
GO
ALTER DATABASE [HomeoClinic] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HomeoClinic] SET DB_CHAINING OFF 
GO
USE [HomeoClinic]
GO
/****** Object:  Table [dbo].[AdminReg]    Script Date: 5/5/2020 5:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminReg](
	[Aid] [int] IDENTITY(1,1) NOT NULL,
	[AName] [nvarchar](50) NULL,
	[AEmail] [nvarchar](50) NULL,
	[APass] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blog]    Script Date: 5/5/2020 5:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[Bid] [int] IDENTITY(1,1) NOT NULL,
	[BName] [nvarchar](50) NULL,
	[BDescription] [nvarchar](max) NULL,
	[BPic] [nvarchar](max) NULL,
	[DateTime] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Consultation]    Script Date: 5/5/2020 5:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultation](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[ConDAte] [nvarchar](50) NULL,
	[ConTime] [nvarchar](50) NULL,
	[ConType] [nvarchar](50) NULL,
	[ConReason] [nvarchar](50) NULL,
	[Did] [int] NULL,
	[PatientName] [nvarchar](50) NULL,
	[Uid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConsultationTime]    Script Date: 5/5/2020 5:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultationTime](
	[Conid] [int] IDENTITY(1,1) NOT NULL,
	[Ctime] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Conid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 5/5/2020 5:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Did] [int] IDENTITY(1,1) NOT NULL,
	[DocName] [nvarchar](50) NULL,
	[DocEmail] [nvarchar](50) NULL,
	[DocGender] [nvarchar](50) NULL,
	[DocQualification] [nvarchar](max) NULL,
	[DPic] [nvarchar](50) NULL,
	[DContact] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[login]    Script Date: 5/5/2020 5:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[Lid] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 5/5/2020 5:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Qid] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[QTime] [nvarchar](50) NULL,
	[Uid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserReg]    Script Date: 5/5/2020 5:50:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReg](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[UName] [nvarchar](50) NULL,
	[UGender] [nvarchar](50) NULL,
	[UEmail] [nvarchar](50) NULL,
	[UPass] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
	[UContact] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AdminReg] ON 

INSERT [dbo].[AdminReg] ([Aid], [AName], [AEmail], [APass], [role]) VALUES (1, N'umer', N'muhammadumer94@yahoo.com', N'baby', N'Admin')
INSERT [dbo].[AdminReg] ([Aid], [AName], [AEmail], [APass], [role]) VALUES (2, N'Rehan Ahmed', N'Rehan_std@hotmail.com', N'Fatcow123', N'Admin')
INSERT [dbo].[AdminReg] ([Aid], [AName], [AEmail], [APass], [role]) VALUES (3, N'Fayyaz Ur Rehman', N'doctor@babafareedhomeoclinic.com', N'Fatcow123', N'Admin')
SET IDENTITY_INSERT [dbo].[AdminReg] OFF
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([Bid], [BName], [BDescription], [BPic], [DateTime]) VALUES (3, N'Wikipedia', N'Text messages are used for personal, family, business and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal messages has become an accepted part of many cultures, as happened earlier with emailing.[1] This makes texting a quick and easy way to communicate with friends, family and colleagues, including in contexts where a call would be impolite or inappropriate (e.g., calling very late at night or when one knows the other person is busy with family or work activities).', N'~/Images/Blogs/slide8.jpg', N'4/21/2020 4:37:29 PM')
INSERT [dbo].[Blog] ([Bid], [BName], [BDescription], [BPic], [DateTime]) VALUES (4, N'Car ', N'A car (or automobile) is a wheeled motor vehicle used for transportation. Most definitions of cars say that they run primarily on roads, seat one to eight people, have four tires, and mainly transport people rather than goods.[2][3]

Cars came into global use during the 20th century, and developed economies depend on them. The year 1886 is regarded as the birth year of the modern car when German inventor Karl Benz patented his Benz Patent-Motorwagen. Cars became widely available in the early 20th century. One of the first cars accessible to the masses was the 1908 Model T, an American car manufactured by the Ford Motor Company. Cars were rapidly adopted in the US, where they replaced animal-drawn carriages and carts.

', N'~/Images/Blogs/Homeo.jpg', N'5/3/2020 10:16:30 PM')
INSERT [dbo].[Blog] ([Bid], [BName], [BDescription], [BPic], [DateTime]) VALUES (6, N'Corona Virus', N'The virus that causes COVID-19 is mainly transmitted through droplets generated when an infected person coughs, sneezes, or exhales. These droplets are too heavy to hang in the air, and quickly fall on floors or surfaces.
You can be infected by breathing in the virus if you are within close proximity of someone who has COVID-19, or by touching a contaminated surface and then your eyes, nose or mouth.
', N'~/Images/Blogs/Homeo1.jpg', N'5/4/2020 8:23:06 PM')
SET IDENTITY_INSERT [dbo].[Blog] OFF
SET IDENTITY_INSERT [dbo].[Consultation] ON 

INSERT [dbo].[Consultation] ([Cid], [ConDAte], [ConTime], [ConType], [ConReason], [Did], [PatientName], [Uid]) VALUES (5, N'2020-05-07', N'01:00PM', N'Online Appointment', N'cough syndrome', 2, N'razia', 1)
INSERT [dbo].[Consultation] ([Cid], [ConDAte], [ConTime], [ConType], [ConReason], [Did], [PatientName], [Uid]) VALUES (6, N'2020-05-21', N'03:15PM', N'Online Appointment', N'Fever from last 2 days', 3, N'faraz', 3)
SET IDENTITY_INSERT [dbo].[Consultation] OFF
SET IDENTITY_INSERT [dbo].[ConsultationTime] ON 

INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (1, N'12:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (2, N'12:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (3, N'12:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (4, N'12:45PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (5, N'01:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (6, N'01:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (7, N'01:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (8, N'01:45PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (9, N'02:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (10, N'02:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (11, N'02:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (12, N'02:45PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (13, N'03:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (14, N'03:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (17, N'04:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (18, N'04:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (19, N'04:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (20, N'04:45PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (21, N'05:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (22, N'05:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (23, N'05:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (24, N'05:45PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (26, N'06:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (27, N'06:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (28, N'06:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (29, N'06:45PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (30, N'07:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (31, N'07:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (32, N'07:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (33, N'07:45PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (34, N'08:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (35, N'08:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (36, N'08:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (37, N'08:45PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (38, N'09:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (39, N'09:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (40, N'09:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (42, N'10:00PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (43, N'10:15PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (45, N'11:30PM')
INSERT [dbo].[ConsultationTime] ([Conid], [Ctime]) VALUES (51, N'11:45PM')
SET IDENTITY_INSERT [dbo].[ConsultationTime] OFF
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([Did], [DocName], [DocEmail], [DocGender], [DocQualification], [DPic], [DContact]) VALUES (2, N'Shabana Fayyaz', N'shabbo@gmail.com', N'Female', N'DHMS RHMP 20 years Experience', N'~/Images/Doctor/Penguins.jpg', N'03352722117')
INSERT [dbo].[Doctor] ([Did], [DocName], [DocEmail], [DocGender], [DocQualification], [DPic], [DContact]) VALUES (3, N'fayyaz ur rehman', N'fayyaz@gmail.com', N'Male', N'DHMS RHMP 30 years experience', N'~/Images/Doctor/Tulips.jpg', N'03352722178')
INSERT [dbo].[Doctor] ([Did], [DocName], [DocEmail], [DocGender], [DocQualification], [DPic], [DContact]) VALUES (4, N'Abdul Wajid', N'AbdulWajid@yahoo.com', N'Male', N'Senior Doctor at Agha khan university hosptital. have done MBBS from Canada michigan university.', N'~/Images/Doctor/faraz.jpg', N'03352722118')
INSERT [dbo].[Doctor] ([Did], [DocName], [DocEmail], [DocGender], [DocQualification], [DPic], [DContact]) VALUES (6, N'Dr Riaz', N'Riaz@hotmail.com', N'Male', N'MBBS From SIUT Pakistan.Serving as a Senior doctor in Abbasi Shaheed Hosptial', N'~/Images/Doctor/Doctor.png', N'03352655897')
INSERT [dbo].[Doctor] ([Did], [DocName], [DocEmail], [DocGender], [DocQualification], [DPic], [DContact]) VALUES (8, N'DR Shumaila', N'Shumaila@AKH.com', N'Male', N'MBBS from London', N'~/Images/Doctor/Doctor.png', N'02225887963')
SET IDENTITY_INSERT [dbo].[Doctor] OFF
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([Lid], [Email], [Password], [role]) VALUES (1, N'muhammad.faraz9@yahoo.com', N'prolexgreen', N'User')
INSERT [dbo].[login] ([Lid], [Email], [Password], [role]) VALUES (2, N'muhammadumer94@yahoo.com', N'baby', N'Admin')
INSERT [dbo].[login] ([Lid], [Email], [Password], [role]) VALUES (3, N'eshaalfaraz@yahoo.com', N'12345', N'User')
INSERT [dbo].[login] ([Lid], [Email], [Password], [role]) VALUES (4, N'Rehan_std@hotmail.com', N'Fatcow123', N'Admin')
INSERT [dbo].[login] ([Lid], [Email], [Password], [role]) VALUES (5, N'ansarmuahammadfaraz@gmail.com', N'eshmaal', N'User')
INSERT [dbo].[login] ([Lid], [Email], [Password], [role]) VALUES (6, N'doctor@babafareedhomeoclinic.com', N'Fatcow123', N'Admin')
SET IDENTITY_INSERT [dbo].[login] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (1, N'My question?', N'4/30/2020 1:41:36 AM', NULL)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (2, N'Hello Dear! whats up?', N'4/30/2020 1:47:32 AM', NULL)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (3, N'Hello dear whats up bro', N'4/30/2020 2:03:55 AM', 1)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (4, N'Hello dear whats up bro', N'4/30/2020 2:03:55 AM', 1)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (5, N'faraz dear', N'4/30/2020 2:04:19 AM', 1)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (6, N'faraz dear', N'4/30/2020 2:04:20 AM', 1)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (7, N'hello', N'4/30/2020 2:10:36 AM', 1)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (8, N'my name is faraz and my question is that i m facing gum bleeding problem from 2 weeks..so what van i do?', N'5/5/2020 2:12:29 PM', 3)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (9, N'my name is faraz and my question is that i m facing gum bleeding problem from 2 weeks..so what van i do?', N'5/5/2020 2:12:30 PM', 3)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (10, N'How to stop Gum Bleeding?Please help me out', N'5/5/2020 2:17:12 PM', 3)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (11, N'How to stop Gum Bleeding?Please help me out', N'5/5/2020 2:17:13 PM', 3)
INSERT [dbo].[Question] ([Qid], [Question], [QTime], [Uid]) VALUES (12, N'I Am suffering from Cold from 2 days..help me?', N'5/5/2020 2:27:56 PM', 1)
SET IDENTITY_INSERT [dbo].[Question] OFF
SET IDENTITY_INSERT [dbo].[UserReg] ON 

INSERT [dbo].[UserReg] ([Uid], [UName], [UGender], [UEmail], [UPass], [role], [UContact]) VALUES (1, N'faraz', N'male', N'muhammad.faraz9@yahoo.com', N'prolexgreen', N'User', N'033527222117')
INSERT [dbo].[UserReg] ([Uid], [UName], [UGender], [UEmail], [UPass], [role], [UContact]) VALUES (2, N'eshaal Faraz', N'Female', N'eshaalfaraz@yahoo.com', N'12345', N'User', N'03352566558')
INSERT [dbo].[UserReg] ([Uid], [UName], [UGender], [UEmail], [UPass], [role], [UContact]) VALUES (3, N'Rahim Ansar', N'Male', N'ansarmuahammadfaraz@gmail.com', N'eshmaal', N'User', N'03352722117')
SET IDENTITY_INSERT [dbo].[UserReg] OFF
ALTER TABLE [dbo].[Consultation]  WITH CHECK ADD  CONSTRAINT [FK_Consultation_Doctor] FOREIGN KEY([Did])
REFERENCES [dbo].[Doctor] ([Did])
GO
ALTER TABLE [dbo].[Consultation] CHECK CONSTRAINT [FK_Consultation_Doctor]
GO
ALTER TABLE [dbo].[Consultation]  WITH CHECK ADD  CONSTRAINT [FK_Consultation_UserReg] FOREIGN KEY([Uid])
REFERENCES [dbo].[UserReg] ([Uid])
GO
ALTER TABLE [dbo].[Consultation] CHECK CONSTRAINT [FK_Consultation_UserReg]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_UserReg] FOREIGN KEY([Uid])
REFERENCES [dbo].[UserReg] ([Uid])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_UserReg]
GO
USE [master]
GO
ALTER DATABASE [HomeoClinic] SET  READ_WRITE 
GO
