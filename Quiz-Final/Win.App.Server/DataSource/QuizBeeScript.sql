-----------------------------Delete database if exists----------------------------
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'QuizBee')
BEGIN 
	--Take database offline ignoring any connection made
	ALTER DATABASE [QuizBee] SET OFFLINE WITH ROLLBACK IMMEDIATE;

	--Bring online before delete 
	ALTER DATABASE [QuizBee] SET ONLINE;

	DROP DATABASE [QuizBee]; 

END 

-----------------------------Create database----------------------------------------

CREATE DATABASE [QuizBee];
USE [QuizBee]
GO
-----------------------------Create the QuizL1 Table----------------------------------
CREATE TABLE [dbo].[QuizL1](
	[QuestionNumber] [int] NOT NULL,
	[Questions] [varchar](max) NOT NULL,
	[Option1] [varchar](max) NOT NULL,
	[Option2] [varchar](max) NOT NULL,
	[Option3] [varchar](max) NOT NULL,
	[Option4] [varchar](max) NOT NULL,
	[TimeFrame] [int] NOT NULL,
	[AnswerKey] [varchar](255) NOT NULL,
	[DifficultyLevel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------Create the QuizL2 Table----------------------------------
CREATE TABLE [dbo].[QuizL2](
	[QuestionNumber] [int] NOT NULL,
	[Questions] [varchar](max) NOT NULL,
	[Option1] [varchar](max) NOT NULL,
	[Option2] [varchar](max) NOT NULL,
	[Option3] [varchar](max) NOT NULL,
	[Option4] [varchar](max) NOT NULL,
	[TimeFrame] [int] NOT NULL,
	[AnswerKey] [varchar](255) NOT NULL,
	[DifficultyLevel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------Create the QuizL3 Table----------------------------------
CREATE TABLE [dbo].[QuizL3](
	[QuestionNumber] [int] NOT NULL,
	[Questions] [varchar](max) NOT NULL,
	[Option1] [varchar](max) NOT NULL,
	[Option2] [varchar](max) NOT NULL,
	[Option3] [varchar](max) NOT NULL,
	[Option4] [varchar](max) NOT NULL,
	[TimeFrame] [int] NOT NULL,
	[AnswerKey] [varchar](255) NOT NULL,
	[DifficultyLevel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------Create the Clincher Table----------------------------------
CREATE TABLE [dbo].[Clincher](
	[QuestionNumber] [int] NOT NULL,
	[Questions] [varchar](max) NOT NULL,
	[Option1] [varchar](max) NOT NULL,
	[Option2] [varchar](max) NOT NULL,
	[Option3] [varchar](max) NOT NULL,
	[Option4] [varchar](max) NOT NULL,
	[TimeFrame] [int] NOT NULL,
	[AnswerKey] [varchar](255) NOT NULL,
	[DifficultyLevel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------Create the GenericQuiz Table----------------------------------
CREATE TABLE [dbo].[GQuiz](
	[QuestionNumber] [int] NOT NULL,
	[Questions] [varchar](max) NOT NULL,
	[Option1] [varchar](max) NOT NULL,
	[Option2] [varchar](max) NOT NULL,
	[Option3] [varchar](max) NOT NULL,
	[Option4] [varchar](max) NOT NULL,
	[TimeFrame] [int] NOT NULL,
	[AnswerKey] [varchar](255) NOT NULL,
	[DifficultyLevel] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


-----------------------------Create the Contestant Score Table-------------------------
CREATE TABLE [dbo].[ContestantScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContestantName] [nvarchar](50) NULL,
	[Score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------Create the GContestant Score Table-------------------------
CREATE TABLE [dbo].[GContestantScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContestantName] [nvarchar](50) NULL,
	[Score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------Create the Participants Table-------------------------
CREATE TABLE [dbo].[Participants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](max) NULL,
	[Participant1] [varchar](max) NULL,
	[Participant2] [varchar](max) NULL,
	[Participant3] [varchar](max) NULL,
	[Participant4] [varchar](max) NULL,
	[Participant5] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------Create the GParticipants Table-------------------------
CREATE TABLE [dbo].[GParticipants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](max) NULL,
	[Participant1] [varchar](max) NULL,
	[Participant2] [varchar](max) NULL,
	[Participant3] [varchar](max) NULL,
	[Participant4] [varchar](max) NULL,
	[Participant5] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[AdminAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AdminAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[TallySheet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContestantName] [nvarchar](50) NOT NULL,
	[QuestionNumber] [int] NOT NULL,
	[Answer] [varchar](250) NULL,
	
 CONSTRAINT [PK_TallySheet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]



-----------------------------Prepare Sample Data---------------------------------- 
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (1, N'Question 1', N'Q1A', N'Q1B', N'Q1C', N'Q1D', 5, N'Q1A', 1)
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (2, N'Question 2', N'Q2A', N'Q2B', N'Q2C', N'Q2D', 10, N'Q2B', 1)
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (3, N'Question 3', N'Q3A', N'Q3B', N'Q3C', N'Q3D', 15, N'Q3D', 2)
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (4, N'Question 4', N'Q4A', N'Q4B', N'Q4C', N'Q4D', 20, N'Q4C', 2)
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (5, N'Question 5', N'Q5A', N'Q5B', N'Q5C', N'Q5D', 25, N'Q5A', 3)
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (6, N'Question 6', N'Q6A', N'Q6B', N'Q6C', N'Q6D', 30, N'Q6B', 3)
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (7, N'Question 7', N'Q7A', N'Q7B', N'Q7C', N'Q7D', 25, N'Q7A', 3)
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (8, N'Question 8', N'Q8A', N'Q8B', N'Q8C', N'Q8D', 30, N'Q8C', 1)
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (9, N'Question 9', N'Q9A', N'Q9B', N'Q9C', N'Q9D', 20, N'Q9A', 2)
INSERT [dbo].[QuizL1] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (10, N'Question 10', N'Q10A', N'Q10B', N'Q10C', N'Q10D', 25, N'Q10B', 3)

--
INSERT [dbo].[QuizL2] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (10, N'Question 10', N'Q10A', N'Q10B', N'Q10C', N'Q10D', 25, N'Q10B', 3)
INSERT [dbo].[QuizL3] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (10, N'Question 10', N'Q10A', N'Q10B', N'Q10C', N'Q10D', 25, N'Q10B', 3)
INSERT [dbo].[Clincher] ([QuestionNumber], [Questions], [Option1], [Option2], [Option3], [Option4], [TimeFrame], [AnswerKey], [DifficultyLevel]) VALUES (10, N'Question 10', N'Q10A', N'Q10B', N'Q10C', N'Q10D', 25, N'Q10B', 3)

--Admin Account
SET IDENTITY_INSERT [dbo].[AdminAccount] ON
INSERT [dbo].[AdminAccount] ([Id], [UserName], [Password], [FullName]) VALUES (1, N'Admin', N'@dm!n', N'Administrator')
SET IDENTITY_INSERT [dbo].[AdminAccount] OFF