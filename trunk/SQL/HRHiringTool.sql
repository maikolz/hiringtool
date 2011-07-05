USE [master]
GO
/****** Object:  Database [HRHiringTool]    Script Date: 06/13/2011 14:04:44 ******/
CREATE DATABASE [HRHiringTool] 
GO
ALTER DATABASE [HRHiringTool] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRHiringTool].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRHiringTool] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HRHiringTool] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HRHiringTool] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HRHiringTool] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HRHiringTool] SET ARITHABORT OFF
GO
ALTER DATABASE [HRHiringTool] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HRHiringTool] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HRHiringTool] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HRHiringTool] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HRHiringTool] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HRHiringTool] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HRHiringTool] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HRHiringTool] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HRHiringTool] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HRHiringTool] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HRHiringTool] SET  DISABLE_BROKER
GO
ALTER DATABASE [HRHiringTool] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HRHiringTool] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HRHiringTool] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HRHiringTool] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HRHiringTool] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HRHiringTool] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HRHiringTool] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HRHiringTool] SET  READ_WRITE
GO
ALTER DATABASE [HRHiringTool] SET RECOVERY SIMPLE
GO
ALTER DATABASE [HRHiringTool] SET  MULTI_USER
GO
ALTER DATABASE [HRHiringTool] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HRHiringTool] SET DB_CHAINING OFF
GO

USE [HRHiringTool]
GO
/****** Object:  Table [dbo].[CandidateInOpeningStatus]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CandidateInOpeningStatus](
	[ID_CandidateInOpeningStatus] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_CandidateInOpeningStatus] PRIMARY KEY CLUSTERED 
(
	[ID_CandidateInOpeningStatus] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CandidateStatus]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CandidateStatus](
	[ID_Status] [bigint] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_CandidateStatus] PRIMARY KEY CLUSTERED 
(
	[ID_Status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobPosition]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobPosition](
	[ID_JobPosition] [bigint] NOT NULL,
	[Name] [varchar](50) NULL,
	[Status] [char](10) NULL,
 CONSTRAINT [PK_JobPosition_1] PRIMARY KEY CLUSTERED 
(
	[ID_JobPosition] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Document]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Document](
	[ID_Document] [bigint] NOT NULL,
	[Name] [char](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[Document] [varbinary](MAX) NULL, 
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[ID_Document] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID_Rol] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[ID_Rol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhoneType]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhoneType](
	[ID_PhoneType] [bigint] NOT NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_PhoneType] PRIMARY KEY CLUSTERED 
(
	[ID_PhoneType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID_User] [bigint] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[Name] [char](30) NOT NULL,
	[Lastname] [char](30) NULL,
	[Password] [varchar](30) NULL,
	[Status] [char](10) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SkillCategory]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SkillCategory](
	[ID_SkillCategory] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_SkillCategory] PRIMARY KEY CLUSTERED 
(
	[ID_SkillCategory] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Skill](
	[ID_Skill] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [nchar](255) NULL,
	[ID_SkillCategory] [bigint] NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[ID_Skill] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[ID_Department] [bigint] NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](255) NULL,
	[Phone] [varchar](30) NULL,
	[ID_User] [bigint] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID_Department] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[ID_UserRoles] [bigint] NOT NULL,
	[ID_User] [bigint] NOT NULL,
	[ID_Role] [bigint] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[ID_UserRoles] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPositionSkills]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPositionSkills](
	[ID_PositionSkill] [bigint] NOT NULL,
	[ID_Skill] [bigint] NOT NULL,
	[ID_JobPosition] [bigint] NOT NULL,
	[PositionScore] [decimal](10, 2) NULL,
 CONSTRAINT [PK_PositionSkills] PRIMARY KEY CLUSTERED 
(
	[ID_PositionSkill] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobOpening]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobOpening](
	[ID_Opening] [bigint] NOT NULL,
	[Deadline] [date] NULL,
	[ID_JobPosition] [bigint] NOT NULL,
	[ID_Department] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Status] [char](10) NULL,	
 CONSTRAINT [PK_JobPosition] PRIMARY KEY CLUSTERED 
(
	[ID_Opening] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidate](
	[ID_Candidate] [bigint] NOT NULL,
	[Name] [char](100) NOT NULL,
	[Lastname] [char](100) NOT NULL,
	[SLastName] [char](100) NULL,
	[SalaryExpectation] [decimal](10, 2) NULL,
	[Photo] [image] NULL,
	[Email] [varchar](100) NULL,
	[Address] [varchar](255) NULL,
	[Status] [char](10) NULL,
	[ID_JobOpenning] [bigint] NOT NULL,
 CONSTRAINT [PK_Candidate] PRIMARY KEY CLUSTERED 
(
	[ID_Candidate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OpeningNotes]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OpeningNotes](
	[ID_Note] [bigint] NOT NULL,
	[Note] [varchar](max) NULL,
	[DateTime] [datetime] NULL,
	[ID_JobOpening] [bigint] NOT NULL,
	[ID_User] [bigint] NOT NULL,
 CONSTRAINT [PK_OpeningNotes] PRIMARY KEY CLUSTERED 
(
	[ID_Note] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CandidateDocuments]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateDocuments](
	[ID_CandidateDocs] [bigint] NOT NULL,
	[ID_Candidate] [bigint] NOT NULL,
	[ID_Document] [bigint] NOT NULL,
	[LastUpdate] [datetime] NULL,
	[ID_User] [bigint] NOT NULL,
 CONSTRAINT [PK_CandidateDocuments] PRIMARY KEY CLUSTERED 
(
	[ID_CandidateDocs] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeningCandidates]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningCandidates](
	[ID_OpeningCandidate] [bigint] NOT NULL,
	[ID_Candidate] [bigint] NOT NULL,
	[ID_Opening] [bigint] NOT NULL,
	[ID_CandidateInOpeningStatus] [bigint] NOT NULL,
 CONSTRAINT [PK_OpeningCandidates] PRIMARY KEY CLUSTERED 
(
	[ID_OpeningCandidate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notes](
	[ID_Note] [bigint] NOT NULL,
	[ID_Candidate] [bigint] NOT NULL,
	[ID_User] [bigint] NOT NULL,
	[Note] [varchar](255) NULL,
	[DateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[ID_Note] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CandidateStatusRegistry]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CandidateStatusRegistry](
	[ID_StatusRegistry] [bigint] NOT NULL,
	[ID_Candidate] [bigint] NOT NULL,
	[ID_CandidateStatus] [bigint] NOT NULL,
	[Status] [char](10) NULL,
	[DateTime] [datetime] NULL,
 CONSTRAINT [PK_CandidateStatusRegistry] PRIMARY KEY CLUSTERED 
(
	[ID_StatusRegistry] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CandidateSkills]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateSkills](
	[ID_CandidateSkill] [bigint] NOT NULL,
	[ID_Candidate] [bigint] NOT NULL,
	[ID_Skill] [bigint] NOT NULL,
	[Score] [decimal](10, 2) NULL,
 CONSTRAINT [PK_CandidateSkills] PRIMARY KEY CLUSTERED 
(
	[ID_CandidateSkill] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidatePhones]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CandidatePhones](
	[ID_CandidatePhone] [bigint] NOT NULL,
	[Phone] [varchar](30) NULL,
	[Status] [nchar](10) NULL,
	[ID_Candidate] [bigint] NOT NULL,
	[ID_PhoneType] [bigint] NOT NULL,
 CONSTRAINT [PK_CandidatePhones] PRIMARY KEY CLUSTERED 
(
	[ID_CandidatePhone] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CandidateInOpeningStatusRegistry]    Script Date: 06/13/2011 14:04:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CandidateInOpeningStatusRegistry](
	[ID_CandidateInOpeningStatusRegistry] [bigint] NOT NULL,
	[DateTime] [datetime] NULL,
	[ID_CandidateInOpeningStatus] [bigint] NOT NULL,
	[Comment] [varchar](max) NULL,
	[ID_User] [bigint] NOT NULL,
	[ID_CandidateInOpening] [bigint] NOT NULL,
 CONSTRAINT [PK_CandidateInOpenningStatusRegistry] PRIMARY KEY CLUSTERED 
(
	[ID_CandidateInOpeningStatusRegistry] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  ForeignKey [FK_Skill_SkillCategory]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[Skill]  WITH CHECK ADD  CONSTRAINT [FK_Skill_SkillCategory] FOREIGN KEY([ID_SkillCategory])
REFERENCES [dbo].[SkillCategory] ([ID_SkillCategory])
GO
ALTER TABLE [dbo].[Skill] CHECK CONSTRAINT [FK_Skill_SkillCategory]
GO
/****** Object:  ForeignKey [FK_Department_User]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID_User])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_User]
GO
/****** Object:  ForeignKey [FK_UserRoles_Role]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[Role] ([ID_Rol])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Role]
GO
/****** Object:  ForeignKey [FK_UserRoles_User]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID_User])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_User]
GO
/****** Object:  ForeignKey [FK_JobPositionSkills_JobPosition]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[JobPositionSkills]  WITH CHECK ADD  CONSTRAINT [FK_JobPositionSkills_JobPosition] FOREIGN KEY([ID_JobPosition])
REFERENCES [dbo].[JobPosition] ([ID_JobPosition])
GO
ALTER TABLE [dbo].[JobPositionSkills] CHECK CONSTRAINT [FK_JobPositionSkills_JobPosition]
GO
/****** Object:  ForeignKey [FK_JobPositionSkills_Skill]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[JobPositionSkills]  WITH CHECK ADD  CONSTRAINT [FK_JobPositionSkills_Skill] FOREIGN KEY([ID_Skill])
REFERENCES [dbo].[Skill] ([ID_Skill])
GO
ALTER TABLE [dbo].[JobPositionSkills] CHECK CONSTRAINT [FK_JobPositionSkills_Skill]
GO
/****** Object:  ForeignKey [FK_JobOpening_Department]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[JobOpening]  WITH CHECK ADD  CONSTRAINT [FK_JobOpening_Department] FOREIGN KEY([ID_Department])
REFERENCES [dbo].[Department] ([ID_Department])
GO
ALTER TABLE [dbo].[JobOpening] CHECK CONSTRAINT [FK_JobOpening_Department]
GO
/****** Object:  ForeignKey [FK_JobOpening_JobPosition]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[JobOpening]  WITH CHECK ADD  CONSTRAINT [FK_JobOpening_JobPosition] FOREIGN KEY([ID_JobPosition])
REFERENCES [dbo].[JobPosition] ([ID_JobPosition])
GO
ALTER TABLE [dbo].[JobOpening] CHECK CONSTRAINT [FK_JobOpening_JobPosition]
GO
/****** Object:  ForeignKey [FK_Candidate_JobOpening]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_JobOpening] FOREIGN KEY([ID_JobOpenning])
REFERENCES [dbo].[JobOpening] ([ID_Opening])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_JobOpening]
GO
/****** Object:  ForeignKey [FK_OpeningNotes_JobOpening]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[OpeningNotes]  WITH CHECK ADD  CONSTRAINT [FK_OpeningNotes_JobOpening] FOREIGN KEY([ID_JobOpening])
REFERENCES [dbo].[JobOpening] ([ID_Opening])
GO
ALTER TABLE [dbo].[OpeningNotes] CHECK CONSTRAINT [FK_OpeningNotes_JobOpening]
GO
/****** Object:  ForeignKey [FK_OpeningNotes_User]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[OpeningNotes]  WITH CHECK ADD  CONSTRAINT [FK_OpeningNotes_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID_User])
GO
ALTER TABLE [dbo].[OpeningNotes] CHECK CONSTRAINT [FK_OpeningNotes_User]
GO
/****** Object:  ForeignKey [FK_CandidateDocuments_Candidate]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateDocuments]  WITH CHECK ADD  CONSTRAINT [FK_CandidateDocuments_Candidate] FOREIGN KEY([ID_Candidate])
REFERENCES [dbo].[Candidate] ([ID_Candidate])
GO
ALTER TABLE [dbo].[CandidateDocuments] CHECK CONSTRAINT [FK_CandidateDocuments_Candidate]
GO
/****** Object:  ForeignKey [FK_CandidateDocuments_Document]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateDocuments]  WITH CHECK ADD  CONSTRAINT [FK_CandidateDocuments_Document] FOREIGN KEY([ID_Document])
REFERENCES [dbo].[Document] ([ID_Document])
GO
ALTER TABLE [dbo].[CandidateDocuments] CHECK CONSTRAINT [FK_CandidateDocuments_Document]
GO
/****** Object:  ForeignKey [FK_CandidateDocuments_User]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateDocuments]  WITH CHECK ADD  CONSTRAINT [FK_CandidateDocuments_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID_User])
GO
ALTER TABLE [dbo].[CandidateDocuments] CHECK CONSTRAINT [FK_CandidateDocuments_User]
GO
/****** Object:  ForeignKey [FK_OpeningCandidates_Candidate]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[OpeningCandidates]  WITH CHECK ADD  CONSTRAINT [FK_OpeningCandidates_Candidate] FOREIGN KEY([ID_Candidate])
REFERENCES [dbo].[Candidate] ([ID_Candidate])
GO
ALTER TABLE [dbo].[OpeningCandidates] CHECK CONSTRAINT [FK_OpeningCandidates_Candidate]
GO
/****** Object:  ForeignKey [FK_OpeningCandidates_JobOpening]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[OpeningCandidates]  WITH CHECK ADD  CONSTRAINT [FK_OpeningCandidates_JobOpening] FOREIGN KEY([ID_Opening])
REFERENCES [dbo].[JobOpening] ([ID_Opening])
GO
ALTER TABLE [dbo].[OpeningCandidates] CHECK CONSTRAINT [FK_OpeningCandidates_JobOpening]
GO
/****** Object:  ForeignKey [FK_Notes_Candidate]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_Candidate] FOREIGN KEY([ID_Candidate])
REFERENCES [dbo].[Candidate] ([ID_Candidate])
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_Candidate]
GO
/****** Object:  ForeignKey [FK_Notes_User]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_Notes_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID_User])
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_Notes_User]
GO
/****** Object:  ForeignKey [FK_CandidateStatusRegistry_Candidate]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateStatusRegistry]  WITH CHECK ADD  CONSTRAINT [FK_CandidateStatusRegistry_Candidate] FOREIGN KEY([ID_Candidate])
REFERENCES [dbo].[Candidate] ([ID_Candidate])
GO
ALTER TABLE [dbo].[CandidateStatusRegistry] CHECK CONSTRAINT [FK_CandidateStatusRegistry_Candidate]
GO
/****** Object:  ForeignKey [FK_CandidateStatusRegistry_CandidateStatus]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateStatusRegistry]  WITH CHECK ADD  CONSTRAINT [FK_CandidateStatusRegistry_CandidateStatus] FOREIGN KEY([ID_CandidateStatus])
REFERENCES [dbo].[CandidateStatus] ([ID_Status])
GO
ALTER TABLE [dbo].[CandidateStatusRegistry] CHECK CONSTRAINT [FK_CandidateStatusRegistry_CandidateStatus]
GO
/****** Object:  ForeignKey [FK_CandidateSkills_Candidate]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateSkills]  WITH CHECK ADD  CONSTRAINT [FK_CandidateSkills_Candidate] FOREIGN KEY([ID_Candidate])
REFERENCES [dbo].[Candidate] ([ID_Candidate])
GO
ALTER TABLE [dbo].[CandidateSkills] CHECK CONSTRAINT [FK_CandidateSkills_Candidate]
GO
/****** Object:  ForeignKey [FK_CandidateSkills_Skill]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateSkills]  WITH CHECK ADD  CONSTRAINT [FK_CandidateSkills_Skill] FOREIGN KEY([ID_Skill])
REFERENCES [dbo].[Skill] ([ID_Skill])
GO
ALTER TABLE [dbo].[CandidateSkills] CHECK CONSTRAINT [FK_CandidateSkills_Skill]
GO
/****** Object:  ForeignKey [FK_CandidatePhones_Candidate]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidatePhones]  WITH CHECK ADD  CONSTRAINT [FK_CandidatePhones_Candidate] FOREIGN KEY([ID_Candidate])
REFERENCES [dbo].[Candidate] ([ID_Candidate])
GO
ALTER TABLE [dbo].[CandidatePhones] CHECK CONSTRAINT [FK_CandidatePhones_Candidate]
GO
/****** Object:  ForeignKey [FK_CandidatePhones_PhoneType]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidatePhones]  WITH CHECK ADD  CONSTRAINT [FK_CandidatePhones_PhoneType] FOREIGN KEY([ID_PhoneType])
REFERENCES [dbo].[PhoneType] ([ID_PhoneType])
GO
ALTER TABLE [dbo].[CandidatePhones] CHECK CONSTRAINT [FK_CandidatePhones_PhoneType]
GO
/****** Object:  ForeignKey [FK_CandidateInOpeningStatusRegistry_CandidateInOpeningStatus]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateInOpeningStatusRegistry]  WITH CHECK ADD  CONSTRAINT [FK_CandidateInOpeningStatusRegistry_CandidateInOpeningStatus] FOREIGN KEY([ID_CandidateInOpeningStatus])
REFERENCES [dbo].[CandidateInOpeningStatus] ([ID_CandidateInOpeningStatus])
GO
ALTER TABLE [dbo].[CandidateInOpeningStatusRegistry] CHECK CONSTRAINT [FK_CandidateInOpeningStatusRegistry_CandidateInOpeningStatus]
GO
/****** Object:  ForeignKey [FK_CandidateInOpeningStatusRegistry_OpeningCandidates]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateInOpeningStatusRegistry]  WITH CHECK ADD  CONSTRAINT [FK_CandidateInOpeningStatusRegistry_OpeningCandidates] FOREIGN KEY([ID_CandidateInOpening])
REFERENCES [dbo].[OpeningCandidates] ([ID_OpeningCandidate])
GO
ALTER TABLE [dbo].[CandidateInOpeningStatusRegistry] CHECK CONSTRAINT [FK_CandidateInOpeningStatusRegistry_OpeningCandidates]
GO
/****** Object:  ForeignKey [FK_CandidateInOpeningStatusRegistry_User]    Script Date: 06/13/2011 14:04:45 ******/
ALTER TABLE [dbo].[CandidateInOpeningStatusRegistry]  WITH CHECK ADD  CONSTRAINT [FK_CandidateInOpeningStatusRegistry_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID_User])
GO
ALTER TABLE [dbo].[CandidateInOpeningStatusRegistry] CHECK CONSTRAINT [FK_CandidateInOpeningStatusRegistry_User]
GO
