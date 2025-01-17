/****** Object:  Database [MasDb]    Script Date: 7/15/2022 2:27:05 PM ******/
CREATE DATABASE [MasDb]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 2 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [MasDb] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [MasDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasDb] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [MasDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MasDb] SET  MULTI_USER 
GO
ALTER DATABASE [MasDb] SET ENCRYPTION ON
GO
ALTER DATABASE [MasDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [MasDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[Id] [nvarchar](100) NOT NULL,
	[CreatorId] [nvarchar](100) NOT NULL,
	[MentorId] [nvarchar](100) NOT NULL,
	[SlotId] [nvarchar](100) NOT NULL,
	[BriefProblem] [nvarchar](max) NULL,
	[IsApprove] [bit] NULL,
	[StartTime] [datetime] NOT NULL,
	[MentorDescription] [nvarchar](1000) NULL,
	[FinishTime] [datetime] NOT NULL,
	[IsPassed] [bit] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Majors]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Majors](
	[Id] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Majors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasUsers]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasUsers](
	[Id] [nvarchar](100) NOT NULL,
	[IdentityId] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Avatar] [nvarchar](max) NOT NULL,
	[Introduce] [nvarchar](1000) NULL,
	[Rate] [float] NOT NULL,
	[NumOfRate] [int] NOT NULL,
	[NumOfAppointment] [int] NOT NULL,
	[IsMentor] [bit] NULL,
	[MeetUrl] [nvarchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_MasUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MentorSubjects]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MentorSubjects](
	[Id] [nvarchar](100) NOT NULL,
	[MentorId] [nvarchar](100) NOT NULL,
	[SubjectId] [nvarchar](100) NOT NULL,
	[BriefInfo] [nvarchar](500) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_MentorSubjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [nvarchar](100) NOT NULL,
	[AppointmentId] [nvarchar](100) NOT NULL,
	[CreatorId] [nvarchar](100) NOT NULL,
	[QuestionContent] [nvarchar](500) NOT NULL,
	[Answer] [nvarchar](max) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [nvarchar](100) NOT NULL,
	[AppointmentId] [nvarchar](100) NOT NULL,
	[CreatorId] [nvarchar](100) NOT NULL,
	[MentorId] [nvarchar](100) NOT NULL,
	[Vote] [int] NOT NULL,
	[Comment] [nvarchar](500) NULL,
	[IsApprove] [bit] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slots]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slots](
	[Id] [nvarchar](100) NOT NULL,
	[MentorId] [nvarchar](100) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[FinishTime] [datetime] NOT NULL,
	[IsPassed] [bit] NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Slots] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlotSubjects]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlotSubjects](
	[Id] [nvarchar](100) NOT NULL,
	[SlotId] [nvarchar](100) NOT NULL,
	[SubjectId] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SlotSubjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 7/15/2022 2:27:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [nvarchar](100) NOT NULL,
	[MajorId] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220702023902_Initial', N'6.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220714140127_Modify Appointment', N'6.0.6')
GO
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'0a68cbf4-8953-44a0-ac24-9b37302b3f3e', N'baa7dd70-8650-4718-817a-2eb74b7b554a', N'8face6ee-16a7-4f66-9277-53637e428715', N'af362faf-338c-48f5-a04b-0e6d8843cbc2', N'test', 1, CAST(N'2022-07-15T07:00:00.000' AS DateTime), N'', CAST(N'2022-07-15T09:00:00.000' AS DateTime), 0, CAST(N'2022-07-14T22:58:01.570' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'31a8c599-d544-43a1-9760-499e2dea59ee', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'53fd1684-70ce-424a-bab0-2c69dc87ea30', N'bomb site A all in pistol can bao nhieu tien', 1, CAST(N'2022-07-13T03:30:00.000' AS DateTime), N'', CAST(N'2022-07-13T04:30:00.000' AS DateTime), 1, CAST(N'2022-07-10T13:29:18.793' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'7c965a76-6844-43e7-a926-c8e5456ba760', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'9ab55a1e-e238-4c71-b2f7-70e20c809595', N'buy high sell low', 1, CAST(N'2022-07-13T21:00:00.000' AS DateTime), N'', CAST(N'2022-07-13T22:00:00.000' AS DateTime), 1, CAST(N'2022-07-10T01:58:54.433' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'919dd198-3c01-4e31-914c-20d42e472a33', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'c4c1da92-291c-4f89-8488-098bfe6eb155', N'XML problem about crawl data', 1, CAST(N'2022-07-09T13:30:34.037' AS DateTime), N'', CAST(N'2022-07-09T15:30:34.037' AS DateTime), 1, CAST(N'2022-07-07T10:11:47.377' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'91bd4534-121e-4f58-ad69-c2159053b01f', N'fd153cfe-e7bb-4aaa-bc03-8e7319d86c3c', N'8face6ee-16a7-4f66-9277-53637e428715', N'af362faf-338c-48f5-a04b-0e6d8843cbc2', N'Thầy ơi...em có vài thắc mắc phàn vector, mong thầy có thể giải đáp', 1, CAST(N'2022-07-15T07:00:00.000' AS DateTime), N'', CAST(N'2022-07-15T09:00:00.000' AS DateTime), 0, CAST(N'2022-07-13T08:40:31.823' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'a42e261f-71ed-4b8c-b33a-410ddc460ced', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'9bbacaac-9050-482e-9593-4289374e7a4d', N'slot', NULL, CAST(N'2022-07-19T01:39:33.183' AS DateTime), N'', CAST(N'2022-07-19T02:39:33.183' AS DateTime), 0, CAST(N'2022-07-13T14:42:57.787' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'a4bf3c10-803c-40bd-99e2-225a414df9f4', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'41fa2613-f196-447e-8823-cdcb3de7d794', N'i have problemO?', NULL, CAST(N'2022-07-14T01:00:00.000' AS DateTime), N'', CAST(N'2022-07-14T03:00:00.000' AS DateTime), 1, CAST(N'2022-07-13T09:02:20.500' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'b24bf7c4-90fa-4edf-aec7-858c307f1929', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'8face6ee-16a7-4f66-9277-53637e428715', N'11e222dc-94f6-494d-8b42-abfff9bb19fa', N'send appointment', 0, CAST(N'2022-07-14T00:00:00.000' AS DateTime), N'Appointment Decision', CAST(N'2022-07-14T02:00:00.000' AS DateTime), 1, CAST(N'2022-07-13T13:09:36.913' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'b47d47f9-8b40-47e3-afb0-65a6c7930b66', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'7ac72294-03ce-4d5f-9216-be1d6c781972', N'huy dep trai', 1, CAST(N'2022-07-13T01:00:00.000' AS DateTime), N'Appointment Decision', CAST(N'2022-07-13T02:00:00.000' AS DateTime), 1, CAST(N'2022-07-12T12:24:22.150' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'bc0bc2d9-9c15-40d7-accb-03fdf0590135', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'b273f388-edf9-4c72-9988-1234eae2ce2f', N'XML crawl data homework needs help', 1, CAST(N'2022-07-05T18:00:04.737' AS DateTime), N'', CAST(N'2022-07-05T19:30:04.737' AS DateTime), 1, CAST(N'2022-07-05T14:14:29.093' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'cb05a6ef-03dc-4bc9-8d64-1b76b382062c', N'fd153cfe-e7bb-4aaa-bc03-8e7319d86c3c', N'8face6ee-16a7-4f66-9277-53637e428715', N'11e222dc-94f6-494d-8b42-abfff9bb19fa', N'Thầy ơi...slot này thầy mentor đề tài nào v...', 0, CAST(N'2022-07-14T00:00:00.000' AS DateTime), N'Appointment Decision', CAST(N'2022-07-14T02:00:00.000' AS DateTime), 1, CAST(N'2022-07-13T07:25:08.267' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'ed704b15-7e64-46c5-ad35-ff4fe299b7a6', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'44a8a510-bcc8-4ee1-acec-fa9d08144439', N'  sxs', 1, CAST(N'2022-07-11T22:30:00.000' AS DateTime), N'', CAST(N'2022-07-12T00:30:00.000' AS DateTime), 1, CAST(N'2022-07-11T15:14:13.570' AS DateTime), NULL, 1)
INSERT [dbo].[Appointments] ([Id], [CreatorId], [MentorId], [SlotId], [BriefProblem], [IsApprove], [StartTime], [MentorDescription], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'f48f5ad6-fa1e-4e45-89f6-fa5cb08ab0cb', N'fd153cfe-e7bb-4aaa-bc03-8e7319d86c3c', N'8face6ee-16a7-4f66-9277-53637e428715', N'db1aba23-b681-4c20-9d23-58f8159f67bb', N'Thầy ơi cho em tham gia, em muốn đi chuyên toán để làm AI, mong đc sự hướng dẫn của thầy ạ!', 1, CAST(N'2022-07-16T02:00:00.000' AS DateTime), N'', CAST(N'2022-07-16T04:00:00.000' AS DateTime), 0, CAST(N'2022-07-14T20:51:27.450' AS DateTime), NULL, 1)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'37a4a81f-e75c-42ea-a2b8-32d8da44383c', N'user', N'USER', N'f71247bc-65b3-427d-837f-492298e683d3')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'47731b97-8f5d-4825-98dc-6cb0a58b220f', N'admin', N'ADMIN', N'e177a044-d5ae-41c2-a56c-0cb5384b06bb')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'firebase', N'QxIJ1V8fYyYCoZJgsnVVDH0AihE3', N'firebase', N'371f5bb3-a28a-4166-b4a8-9744bdc97cd9')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'firebase', N'y1LMlT0W0vPLL9pgf3vmt1Kj6FF2', N'firebase', N'46ede5c2-fbd3-4f76-852b-f8e3d4de94e3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2054dcb3-078d-4b5d-8a4d-b8ec507ea89c', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'371f5bb3-a28a-4166-b4a8-9744bdc97cd9', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3b384908-e21d-4779-b640-5ac005a9a16e', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'46ede5c2-fbd3-4f76-852b-f8e3d4de94e3', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'489ec844-2c77-43b5-91f5-83d249598e49', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4bc1cf01-cc43-47d0-9a4a-604955506ab5', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'91d257cc-ef39-42f9-a958-116fd41bbde3', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b083b164-b7f2-46b8-82dd-f04691e7da1e', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd6f8cf04-16b1-4382-91df-4007633f5cbc', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e9213e40-0824-43fe-a5e6-77503d5b5d6c', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fbab423e-948b-4abe-9112-bebd6dabd3d5', N'37a4a81f-e75c-42ea-a2b8-32d8da44383c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'122b84d5-76f6-4acb-8839-5c7769507c1f', N'47731b97-8f5d-4825-98dc-6cb0a58b220f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5c3317a6-d47b-4300-9b9b-eda8ffdbf4ca', N'47731b97-8f5d-4825-98dc-6cb0a58b220f')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'122b84d5-76f6-4acb-8839-5c7769507c1f', N'hung@gmail.com', N'HUNG@GMAIL.COM', N'hung@gmail.com', N'HUNG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGgAJnV1QBdQnL6dpqOqcdVoQ9b6rlkSAR+sYYHGMp5SICV2LaJflSD6ucmEeJX0iA==', N'VFKDLMDS4DS7GFUINDIUIPPR35F2CBH2', N'6513233e-deda-4474-a6d1-fbbf8718aacd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2054dcb3-078d-4b5d-8a4d-b8ec507ea89c', N'MinhMentor@fe.edu.vn', N'MINHMENTOR@FE.EDU.VN', N'MinhMentor@fe.edu.vn', N'MINHMENTOR@FE.EDU.VN', 0, N'AQAAAAEAACcQAAAAEI2/JZJ3vFFIYoo5tYtaD+IA+O77gK+uvOSQzChA8tWYjg141MstGP/i2ym2lFQ8mg==', N'323COKUYR4MNPIIH7HHS3F6MTLD5WEEZ', N'd7e40ace-1dc0-4b0a-8388-44a0e672cb25', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'371f5bb3-a28a-4166-b4a8-9744bdc97cd9', N'nnhao9a3@gmail.com', N'NNHAO9A3@GMAIL.COM', N'nnhao9a3@gmail.com', N'NNHAO9A3@GMAIL.COM', 1, NULL, N'WW3VZH5YVDHCZCU4MEM4LEFDBVCG7EAL', N'2d8b789b-050a-46aa-be5d-1c39c29f7119', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3b384908-e21d-4779-b640-5ac005a9a16e', N'mentor22@example.com', N'MENTOR22@EXAMPLE.COM', N'mentor22@example.com', N'MENTOR22@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEJdqPX1y/zWnptE/HfeMR88KnOm7gq9Eq/Oh/LbklAoUtGQTmtylap12TrObCzMeLg==', N'Z75GVI2MFOK5CKDEZIHMCTDSWNTE3YON', N'd0958eae-4435-42bc-a776-43fc94f5eadd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'46ede5c2-fbd3-4f76-852b-f8e3d4de94e3', N'nguyenhuuhuy203@gmail.com', N'NGUYENHUUHUY203@GMAIL.COM', N'nguyenhuuhuy203@gmail.com', N'NGUYENHUUHUY203@GMAIL.COM', 1, NULL, N'TIUZM7ZBWRU4NOXTZ5CBHK3GHCVQM2C4', N'e37fa52a-21f3-479a-b2be-f9d33349c785', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'489ec844-2c77-43b5-91f5-83d249598e49', N'quochung@gmail.com', N'QUOCHUNG@GMAIL.COM', N'quochung@gmail.com', N'QUOCHUNG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAl+rEI/XMhkrtsS9Q7qpXZsz57Df5at3tQ27QXJCJ/vtvQgCLEhnImL6f7Q9NXMEg==', N'4THTIQUMBJKJP5QBP6KUBXAUHRNWTV7M', N'4d3056fd-f350-4b42-bfd3-9df83edb5eeb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4bc1cf01-cc43-47d0-9a4a-604955506ab5', N'mentor1@gmail.com', N'MENTOR1@GMAIL.COM', N'mentor1@gmail.com', N'MENTOR1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGtZei/lTIfq++umKHlfGCeMWb9UshikPxZB8jbiGQCBITBr0LpTMb4wPZqOV/pWwg==', N'L6SXDJZJKCGVCT4L3PQIXKFQK2KZZMJ2', N'bdb18a89-8b4f-4b45-acf4-35981526c7ca', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5c3317a6-d47b-4300-9b9b-eda8ffdbf4ca', N'admin@example.com', N'ADMIN@EXAMPLE.COM', N'admin@example.com', N'ADMIN@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEBLVX6pqRUwklXJYHkJLL2KHr9nRDY82FyM7ZBmrWVkCsHQMBZy8MNx/ggCCqBHatQ==', N'4WACDTLW2GCNXSW3YIKDRU76OCVF5HDD', N'8836d7d4-0039-4733-81a0-d85750dcc537', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'91d257cc-ef39-42f9-a958-116fd41bbde3', N'signinmail14102000@gmail.com', N'SIGNINMAIL14102000@GMAIL.COM', N'signinmail14102000@gmail.com', N'SIGNINMAIL14102000@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFhxZFgcN4MBxIAMPxvjKoG4BknzFfCzawkFK/KNF1FaHf4llf/VpHGWC5wOU9wQSw==', N'Y72U2QDTOBR4ILKANXHJ6POF6DYWMYBJ', N'568f4a40-4e6f-4fee-802e-963c4086882f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b083b164-b7f2-46b8-82dd-f04691e7da1e', N'DuongMentor@fe.edu.vn', N'DUONGMENTOR@FE.EDU.VN', N'DuongMentor@fe.edu.vn', N'DUONGMENTOR@FE.EDU.VN', 0, N'AQAAAAEAACcQAAAAENShfsMC7S2NQsQSKwotCjWtEStPJXAVoJebjV+ydxk5fUSkruUziuYGXkg1sUdYYw==', N'ZGB2L5FEICD3EW4ZSJB5NI65YGMRZ6IB', N'd2bd28bc-4b16-4109-81b0-a646bd0ad318', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd6f8cf04-16b1-4382-91df-4007633f5cbc', N'nnhaodev14102000@gmail.com', N'NNHAODEV14102000@GMAIL.COM', N'nnhaodev14102000@gmail.com', N'NNHAODEV14102000@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFxSecMtU5ESv1b+by8sBMgF3rWDjkcZ2guZBsXSPZLq3tEBat07vj5q+WoY44gHtg==', N'O7RO2UCVNRLJL5OYPRJ5ER572LZM7YOO', N'2683d7d7-6fa8-4e5e-816f-997ca0dddaa9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e9213e40-0824-43fe-a5e6-77503d5b5d6c', N'hunguser@gmail.com', N'HUNGUSER@GMAIL.COM', N'hunguser@gmail.com', N'HUNGUSER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFx/vUu5PNbZs3iqQgoWffEHNjakgXyj23qcUdAcaEN2ETfg51YdyDqEay2Wp8jDAA==', N'KGN3APUJCPJMLHNH2WZBM2TLLFPY75ZY', N'fbbc31c3-6e15-4eb5-b32f-913d4bf527bf', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fbab423e-948b-4abe-9112-bebd6dabd3d5', N'user@example.com', N'USER@EXAMPLE.COM', N'user@example.com', N'USER@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEOx8xzBxxHe8GCKIBtgBW9Bd8A/m8+EzgjKo0EGBLDH1fu+xPH8tb3FP3cZt1gsG/Q==', N'MGYJ7MMGSDJXWF2YEU3AXUIX3W4E4XTC', N'08f857a9-b54a-4428-bbc8-8e09aee38653', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Majors] ([Id], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'2c05d52e-b48b-4a97-baff-27a1cbfe6318', N'GD', N'Graphics Design', N'Learn to become a graphic designer.', CAST(N'2022-07-02T10:08:03.900' AS DateTime), NULL, 1)
INSERT [dbo].[Majors] ([Id], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'834c126b-eca4-4a65-89b9-970969f19a18', N'IA', N'Information Assurance', N'Learn more in how to security system.', CAST(N'2022-07-02T10:08:03.900' AS DateTime), NULL, 1)
INSERT [dbo].[Majors] ([Id], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'8bf72ee8-81bc-45e6-991e-3f1cb3d27839', N'EN', N'English Major', N'English Major', CAST(N'2022-07-12T18:57:25.813' AS DateTime), NULL, 1)
INSERT [dbo].[Majors] ([Id], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'c9906955-fac2-4c68-afd5-6081420772af', N'SE', N'Software Engineering', N'Learn more in how to design and develop software.', CAST(N'2022-07-02T10:08:03.900' AS DateTime), NULL, 1)
GO
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'489ec844-2c77-43b5-91f5-83d249598e49', N'Vu Quoc Hung Mentor', N'quochung@gmail.com', N'', N'I am very much looking forward to meeting you so we can talk more about the program and get
to know each other. I am available on (all dates and times at which you are available). Please
let me know what date and time works best for you!', 5, 1, 11, 1, N'https://meet.google.com/mrd-ywqp-yyq', CAST(N'2022-07-05T08:48:38.920' AS DateTime), CAST(N'2022-07-12T20:00:24.863' AS DateTime), 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'e9213e40-0824-43fe-a5e6-77503d5b5d6c', N'Hung Student Vu', N'hunguser@gmail.com', N'', N'I am a student looking for mentors, new student profile 123456', 0, 0, 0, NULL, N'https://meet.google.com/hung-url-xyz', CAST(N'2022-07-05T08:47:26.960' AS DateTime), CAST(N'2022-07-12T23:56:38.897' AS DateTime), 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'3e5510f7-f2ed-46f0-b056-0426e8eaee7f', N'3b384908-e21d-4779-b640-5ac005a9a16e', N'Mentor Huynh Tran', N'mentor22@example.com', N'', N'Abc xyz', 0, 0, 0, NULL, N'', CAST(N'2022-07-11T14:38:13.360' AS DateTime), NULL, 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'46b3ce3f-3e2f-44db-85b8-d21037777a40', N'4bc1cf01-cc43-47d0-9a4a-604955506ab5', N'Mentor Nguyen', N'mentor1@gmail.com', N'', N'I am mentor nguyen with IT Skills', 0, 0, 0, 1, N'', CAST(N'2022-07-11T09:22:15.643' AS DateTime), NULL, 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'4fc312ab-df07-488a-8c25-1ae59a252def', N'46ede5c2-fbd3-4f76-852b-f8e3d4de94e3', N'string', N'nguyenhuuhuy203@gmail.com', N'string', N'string', 0, 0, 0, NULL, N'string', CAST(N'2022-07-12T17:07:59.853' AS DateTime), CAST(N'2022-07-12T17:09:12.767' AS DateTime), 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'77f231de-0158-4333-902b-8f5e518e8b26', N'371f5bb3-a28a-4166-b4a8-9744bdc97cd9', N'Hào Nguyễn', N'nnhao9a3@gmail.com', N'https://lh3.googleusercontent.com/a-/AOh14GgwR4ZZLbOU5vASZL5IDmZc4EnR1DHs89DJd0fF0g=s96-c', N'', 0, 0, 0, NULL, N'', CAST(N'2022-07-12T16:50:26.340' AS DateTime), NULL, 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'8face6ee-16a7-4f66-9277-53637e428715', N'2054dcb3-078d-4b5d-8a4d-b8ec507ea89c', N'Nhat Minh', N'MinhMentor@fe.edu.vn', N'', N'Chuyên Toán', 0, 0, 4, 1, N'aaabbbccc...hhhhssss', CAST(N'2022-07-12T17:35:36.910' AS DateTime), CAST(N'2022-07-12T20:44:25.767' AS DateTime), 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'baa7dd70-8650-4718-817a-2eb74b7b554a', N'fbab423e-948b-4abe-9112-bebd6dabd3d5', N'Test', N'user@example.com', N'', N'Test', 0, 0, 0, 1, N'', CAST(N'2022-07-12T21:37:09.653' AS DateTime), NULL, 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'bf81bd21-802e-46b7-8c5c-46616227b923', N'b083b164-b7f2-46b8-82dd-f04691e7da1e', N'Minh Duong', N'DuongMentor@fe.edu.vn', N'', N'Chuyên hướng dẫn làm project', 0, 0, 0, 1, N'', CAST(N'2022-07-12T17:35:46.817' AS DateTime), NULL, 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'e8a0c7b9-38b1-4e1e-9ba2-9a9b67e7f337', N'91d257cc-ef39-42f9-a958-116fd41bbde3', N'Huynh Lam', N'signinmail14102000@gmail.com', N'', N'Mình thích làm văn, làm toán...và mình chuyên toán...', 0, 0, 0, NULL, N'https://meet.google.com/mrd-ywqp-yyy', CAST(N'2022-07-12T17:26:47.320' AS DateTime), NULL, 1)
INSERT [dbo].[MasUsers] ([Id], [IdentityId], [Name], [Email], [Avatar], [Introduce], [Rate], [NumOfRate], [NumOfAppointment], [IsMentor], [MeetUrl], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'fd153cfe-e7bb-4aaa-bc03-8e7319d86c3c', N'd6f8cf04-16b1-4382-91df-4007633f5cbc', N'Nhut Hao', N'nnhaodev14102000@gmail.com', N'', N'Mình là coder, là developer...', 0, 0, 0, NULL, N'https://meet.google.com/mrd-ywqp-xxx', CAST(N'2022-07-12T17:27:10.237' AS DateTime), NULL, 1)
GO
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'1302fe99-9005-4e73-9a31-d4fc34ab3cc7', N'8face6ee-16a7-4f66-9277-53637e428715', N'88d201a9-0865-4ab2-b479-08d87901048b', N'briefInfo', CAST(N'2022-07-12T18:14:52.983' AS DateTime), NULL, 0)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'16a513f3-9837-40ca-9fe9-93334ede97b2', N'8face6ee-16a7-4f66-9277-53637e428715', N'daf6a36e-6238-4a2a-b80d-cc5685535e8c', N'I''m best at This subject', CAST(N'2022-07-12T17:58:03.643' AS DateTime), NULL, 1)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'16de8050-625f-4b5d-b211-72c1a1c11164', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'83412495-f2c6-4dd3-937d-a1c37796efd8', N'briefInfo', CAST(N'2022-07-10T21:05:13.187' AS DateTime), NULL, 0)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'25f1df45-0f38-4fda-8594-11d58696f1d7', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'c5f1f166-5ccc-4c7d-91bf-fdd01c3e739a', N'briefInfo', CAST(N'2022-07-10T01:27:47.137' AS DateTime), NULL, 1)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'2e1ee994-5b8a-4d78-8f1e-f870430017ac', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'88d201a9-0865-4ab2-b479-08d87901048b', N'briefInfo', CAST(N'2022-07-10T01:19:19.390' AS DateTime), NULL, 1)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'650cbb26-b150-408d-b640-eb0df0589cd5', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'83412495-f2c6-4dd3-937d-a1c37796efd8', N'briefInfo', CAST(N'2022-07-10T21:06:06.140' AS DateTime), NULL, 0)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'7da5b00e-7051-4e81-a3d3-99fe853169eb', N'8face6ee-16a7-4f66-9277-53637e428715', N'fbf78f2f-30d8-4426-a0c0-574d636b34b6', N'5 years experience in tech this in FPT University', CAST(N'2022-07-12T17:58:57.987' AS DateTime), NULL, 1)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'7e409a94-ea17-43bb-a8d9-23ba3606dd9c', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'Introduction to XML', CAST(N'2022-07-05T09:00:46.477' AS DateTime), NULL, 1)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'7f051b5f-597b-410b-a05a-1002a1063bc4', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'cf117e31-822b-45de-903d-8ca1f0ad8426', N'Introduction to java and OOP', CAST(N'2022-07-05T09:00:23.593' AS DateTime), NULL, 1)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'9a2eac5a-fbfe-463e-823b-2ceac20f0d8f', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', N'c5f1f166-5ccc-4c7d-91bf-fdd01c3e739a', N'briefInfo', CAST(N'2022-07-10T01:26:11.987' AS DateTime), NULL, 0)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'ebb6e0c4-f1dd-42ce-a6be-33ea10db711f', N'8face6ee-16a7-4f66-9277-53637e428715', N'0edfe76b-7ffd-43b6-b891-49d908c0d7d5', N'briefInfo', CAST(N'2022-07-12T19:24:52.730' AS DateTime), NULL, 0)
INSERT [dbo].[MentorSubjects] ([Id], [MentorId], [SubjectId], [BriefInfo], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'f2047f7d-a867-4ae3-a925-d21409a8f54b', N'8face6ee-16a7-4f66-9277-53637e428715', N'1cf02e08-a7ff-433a-8787-0ce0e8dc36e6', N'I am a mentor for this subject', CAST(N'2022-07-12T17:57:04.120' AS DateTime), NULL, 1)
GO
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'06f2593e-6b8b-4442-9c10-0e6c4f6e24d1', N'ed704b15-7e64-46c5-ad35-ff4fe299b7a6', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'ưppo', N'đâsdas', CAST(N'2022-07-11T15:24:10.253' AS DateTime), CAST(N'2022-07-11T15:27:37.853' AS DateTime), 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'557594e0-d8b5-4115-ac2d-869941645c88', N'919dd198-3c01-4e31-914c-20d42e472a33', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'Validate crawl data ???', NULL, CAST(N'2022-07-07T10:24:15.670' AS DateTime), NULL, 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'8849e189-6c5c-48b6-b81d-443af1f516c6', N'91bd4534-121e-4f58-ad69-c2159053b01f', N'fd153cfe-e7bb-4aaa-bc03-8e7319d86c3c', N'aaaaa', NULL, CAST(N'2022-07-15T09:08:19.017' AS DateTime), NULL, 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'946ea0ca-e124-4c50-985e-ed16c862a53d', N'f48f5ad6-fa1e-4e45-89f6-fa5cb08ab0cb', N'fd153cfe-e7bb-4aaa-bc03-8e7319d86c3c', N'Lộ trình học toán như nào ạ?', N'Cứ học thôi...aaa', CAST(N'2022-07-15T08:59:32.060' AS DateTime), CAST(N'2022-07-15T09:01:04.330' AS DateTime), 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'95859e8a-f744-462b-bbc8-f3e307f86ba3', N'bc0bc2d9-9c15-40d7-accb-03fdf0590135', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'question about farcry 5 ', NULL, CAST(N'2022-07-10T13:47:45.933' AS DateTime), NULL, 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'b00bb323-7076-4559-86e2-4a597d22a39a', N'7c965a76-6844-43e7-a926-c8e5456ba760', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'hoa tri cua natri la may', NULL, CAST(N'2022-07-10T16:01:08.270' AS DateTime), NULL, 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'c65dcebf-1ee0-41f9-a957-c9eea5eaea15', N'919dd198-3c01-4e31-914c-20d42e472a33', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'Quiz 1 training', NULL, CAST(N'2022-07-07T10:24:27.847' AS DateTime), NULL, 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'd69352eb-593c-4175-870b-9cbdc9702ebb', N'919dd198-3c01-4e31-914c-20d42e472a33', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'Crawl data from a RSS vnexpress website?', N'Click RSS file
Validate data
abc
xyz
kakakakkakakakaka
', CAST(N'2022-07-07T10:14:07.987' AS DateTime), CAST(N'2022-07-08T10:18:52.733' AS DateTime), 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'e1f0f02f-b9b1-46ea-bc5e-3fcd5d463ac4', N'ed704b15-7e64-46c5-ad35-ff4fe299b7a6', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'them cau hoi', NULL, CAST(N'2022-07-11T15:23:05.657' AS DateTime), NULL, 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'e3b8564e-0886-428b-9724-4f0aa8fee46a', N'31a8c599-d544-43a1-9760-499e2dea59ee', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'hom nay la thu may', NULL, CAST(N'2022-07-10T14:10:01.157' AS DateTime), NULL, 1)
INSERT [dbo].[Questions] ([Id], [AppointmentId], [CreatorId], [QuestionContent], [Answer], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'f3f78bc3-a7c9-491c-82e5-c04b3b2cd344', N'91bd4534-121e-4f58-ad69-c2159053b01f', N'fd153cfe-e7bb-4aaa-bc03-8e7319d86c3c', N'Vector là gì ạ?', N'alaf vectorraaaaaa', CAST(N'2022-07-13T08:50:25.697' AS DateTime), CAST(N'2022-07-13T08:53:52.417' AS DateTime), 1)
GO
INSERT [dbo].[Ratings] ([Id], [AppointmentId], [CreatorId], [MentorId], [Vote], [Comment], [IsApprove], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'06291533-3c88-4e43-8989-526391281377', N'919dd198-3c01-4e31-914c-20d42e472a33', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', 5, N'Have good crawl data method', NULL, CAST(N'2022-07-08T10:51:01.490' AS DateTime), NULL, 0)
INSERT [dbo].[Ratings] ([Id], [AppointmentId], [CreatorId], [MentorId], [Vote], [Comment], [IsApprove], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'fb3df3ff-78e8-4399-b750-ff83a567af12', N'bc0bc2d9-9c15-40d7-accb-03fdf0590135', N'170ecf86-2b93-4167-8ddd-c184bd3017de', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', 5, N'Good advice, answer question quickly', 1, CAST(N'2022-07-07T09:58:44.903' AS DateTime), NULL, 1)
GO
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'0c1ec833-07dd-4937-8a8c-ec30c305d11f', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-15T00:00:00.000' AS DateTime), CAST(N'2022-07-15T01:00:00.000' AS DateTime), 0, CAST(N'2022-07-10T12:06:48.933' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'11073509-e5d9-4f1f-9da3-a06d0f84c8fe', N'8face6ee-16a7-4f66-9277-53637e428715', CAST(N'2022-07-14T07:00:00.000' AS DateTime), CAST(N'2022-07-14T09:00:00.000' AS DateTime), 0, CAST(N'2022-07-13T07:51:47.137' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'11e222dc-94f6-494d-8b42-abfff9bb19fa', N'8face6ee-16a7-4f66-9277-53637e428715', CAST(N'2022-07-14T00:00:00.000' AS DateTime), CAST(N'2022-07-14T02:00:00.000' AS DateTime), 0, CAST(N'2022-07-12T20:57:50.307' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'25f8b24b-a380-4c03-a0d4-3637282f0b19', N'8face6ee-16a7-4f66-9277-53637e428715', CAST(N'2022-07-13T07:00:58.277' AS DateTime), CAST(N'2022-07-13T09:30:58.277' AS DateTime), 0, CAST(N'2022-07-12T20:52:09.017' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'321a2a73-22b4-4cd6-9d62-51e14566dede', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-05T13:00:04.737' AS DateTime), CAST(N'2022-07-05T14:30:04.737' AS DateTime), 1, CAST(N'2022-07-05T09:11:40.130' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'3963f2a1-4ac3-4986-aa7f-d0dd7fb8e833', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-09T09:30:34.037' AS DateTime), CAST(N'2022-07-09T10:30:34.037' AS DateTime), 1, CAST(N'2022-07-07T09:36:46.107' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'41fa2613-f196-447e-8823-cdcb3de7d794', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-14T01:00:00.000' AS DateTime), CAST(N'2022-07-14T03:00:00.000' AS DateTime), 0, CAST(N'2022-07-10T12:05:32.173' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'44a8a510-bcc8-4ee1-acec-fa9d08144439', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-11T22:30:00.000' AS DateTime), CAST(N'2022-07-12T00:30:00.000' AS DateTime), 0, CAST(N'2022-07-10T12:09:40.010' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'4ba69705-ec12-4af8-a96c-b3d3dc12cdea', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-18T07:00:00.000' AS DateTime), CAST(N'2022-07-18T09:00:00.000' AS DateTime), 0, CAST(N'2022-07-13T01:50:10.287' AS DateTime), NULL, 0)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'53fd1684-70ce-424a-bab0-2c69dc87ea30', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-13T03:30:00.000' AS DateTime), CAST(N'2022-07-13T04:30:00.000' AS DateTime), 0, CAST(N'2022-07-10T13:23:28.050' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'7ac72294-03ce-4d5f-9216-be1d6c781972', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-13T01:00:00.000' AS DateTime), CAST(N'2022-07-13T02:00:00.000' AS DateTime), 0, CAST(N'2022-07-10T01:12:53.947' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'7c5f71ab-04ab-4e7b-a12c-6e427bb1fc03', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-09T18:30:34.037' AS DateTime), CAST(N'2022-07-09T20:30:34.037' AS DateTime), 1, CAST(N'2022-07-07T09:37:20.510' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'954e8f5d-3b83-42eb-9d6b-25bbf2c3865c', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-15T23:00:00.000' AS DateTime), CAST(N'2022-07-16T00:00:00.000' AS DateTime), 0, CAST(N'2022-07-12T17:57:34.957' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'9656aa8b-1136-489f-8ec8-dbc094a57889', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-06T09:00:04.737' AS DateTime), CAST(N'2022-07-06T10:30:04.737' AS DateTime), 1, CAST(N'2022-07-05T09:12:49.640' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'9ab55a1e-e238-4c71-b2f7-70e20c809595', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-13T21:00:00.000' AS DateTime), CAST(N'2022-07-13T22:00:00.000' AS DateTime), 0, CAST(N'2022-07-10T01:10:59.300' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'9bbacaac-9050-482e-9593-4289374e7a4d', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-19T01:39:33.183' AS DateTime), CAST(N'2022-07-19T02:39:33.183' AS DateTime), 0, CAST(N'2022-07-10T12:40:08.967' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'a4fc8cb7-23cb-4548-b08e-ee76ba57bca5', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-06T13:00:04.737' AS DateTime), CAST(N'2022-07-06T14:30:04.737' AS DateTime), 1, CAST(N'2022-07-05T09:12:59.950' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'a80d7aa0-f0df-4ef8-b6ec-38f2b251fd60', N'8face6ee-16a7-4f66-9277-53637e428715', CAST(N'2022-07-16T06:00:00.000' AS DateTime), CAST(N'2022-07-16T10:00:00.000' AS DateTime), 0, CAST(N'2022-07-15T09:11:30.710' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'af362faf-338c-48f5-a04b-0e6d8843cbc2', N'8face6ee-16a7-4f66-9277-53637e428715', CAST(N'2022-07-15T07:00:00.000' AS DateTime), CAST(N'2022-07-15T09:00:00.000' AS DateTime), 0, CAST(N'2022-07-13T08:39:23.160' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'b273f388-edf9-4c72-9988-1234eae2ce2f', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-05T18:00:04.737' AS DateTime), CAST(N'2022-07-05T19:30:04.737' AS DateTime), 1, CAST(N'2022-07-05T09:11:54.083' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'babdf6cc-bf3d-453f-ba30-5344a8d89276', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-21T01:00:00.000' AS DateTime), CAST(N'2022-07-21T03:00:00.000' AS DateTime), 0, CAST(N'2022-07-10T20:34:01.713' AS DateTime), NULL, 0)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'c4c1da92-291c-4f89-8488-098bfe6eb155', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-09T13:30:34.037' AS DateTime), CAST(N'2022-07-09T15:30:34.037' AS DateTime), 1, CAST(N'2022-07-07T09:37:01.883' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'd84cd24e-5396-4f4e-82f5-ba4909419d97', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-18T01:00:00.000' AS DateTime), CAST(N'2022-07-18T02:00:00.000' AS DateTime), 0, CAST(N'2022-07-10T12:28:35.847' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'db1aba23-b681-4c20-9d23-58f8159f67bb', N'8face6ee-16a7-4f66-9277-53637e428715', CAST(N'2022-07-16T02:00:00.000' AS DateTime), CAST(N'2022-07-16T04:00:00.000' AS DateTime), 0, CAST(N'2022-07-14T20:42:34.770' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'e64cfd04-667a-48e9-a246-1119c61a27a7', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-10T09:30:34.037' AS DateTime), CAST(N'2022-07-10T10:30:34.037' AS DateTime), 1, CAST(N'2022-07-07T09:37:59.650' AS DateTime), NULL, 1)
INSERT [dbo].[Slots] ([Id], [MentorId], [StartTime], [FinishTime], [IsPassed], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'f709c36d-4a58-492c-bd88-7a7f549dd24d', N'0032f30a-a27e-4245-b07b-b0a3e3fae393', CAST(N'2022-07-21T02:00:00.000' AS DateTime), CAST(N'2022-07-21T03:00:00.000' AS DateTime), 0, CAST(N'2022-07-14T20:38:49.717' AS DateTime), NULL, 0)
GO
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'0d999bb5-aa61-43a3-ad26-22f401de4f7e', N'53fd1684-70ce-424a-bab0-2c69dc87ea30', N'c5f1f166-5ccc-4c7d-91bf-fdd01c3e739a', N'description', CAST(N'2022-07-10T13:23:28.050' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'1e8fd536-5397-4c66-b884-2f2ade8c4c79', N'db1aba23-b681-4c20-9d23-58f8159f67bb', N'daf6a36e-6238-4a2a-b80d-cc5685535e8c', N'description', CAST(N'2022-07-14T20:42:34.770' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'2fc1c4be-2fce-4f8b-b99c-2b5d9f05bdbb', N'e64cfd04-667a-48e9-a246-1119c61a27a7', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'XML Master x7', CAST(N'2022-07-07T09:37:59.650' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'30273c6c-6aed-4d9d-9c2e-bace6049c753', N'b273f388-edf9-4c72-9988-1234eae2ce2f', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'XML trainning', CAST(N'2022-07-05T09:11:54.083' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'387e2bdf-e3f7-416d-bd2f-2bc73a674e77', N'0c1ec833-07dd-4937-8a8c-ec30c305d11f', N'c5f1f166-5ccc-4c7d-91bf-fdd01c3e739a', N'description', CAST(N'2022-07-10T12:06:48.933' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'39851cf3-48df-4c67-9b04-33f9dab72570', N'c4c1da92-291c-4f89-8488-098bfe6eb155', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'XML Master x7', CAST(N'2022-07-07T09:37:01.883' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'4cff6941-7c33-44e1-8a4c-6456e589909e', N'd84cd24e-5396-4f4e-82f5-ba4909419d97', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'description', CAST(N'2022-07-10T12:28:35.847' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'50858309-64d9-4f58-b3d9-c66d6cece05d', N'954e8f5d-3b83-42eb-9d6b-25bbf2c3865c', N'88d201a9-0865-4ab2-b479-08d87901048b', N'description', CAST(N'2022-07-12T17:57:34.983' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'51ce7e99-3755-4539-98fb-6d80c128c25e', N'321a2a73-22b4-4cd6-9d62-51e14566dede', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'XML trainning', CAST(N'2022-07-05T09:11:40.130' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'56fa9c93-e84f-4feb-b333-b3a558fbf8d6', N'7ac72294-03ce-4d5f-9216-be1d6c781972', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'description', CAST(N'2022-07-10T01:12:53.947' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'6b07ec52-04d2-4f48-af9a-2520c0c30999', N'9ab55a1e-e238-4c71-b2f7-70e20c809595', N'cf117e31-822b-45de-903d-8ca1f0ad8426', N'description', CAST(N'2022-07-10T01:10:59.300' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'729d38e0-dae4-4a43-9e4d-10c891eb11cf', N'44a8a510-bcc8-4ee1-acec-fa9d08144439', N'88d201a9-0865-4ab2-b479-08d87901048b', N'description', CAST(N'2022-07-10T12:09:40.010' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'840c9eff-94f1-47a9-9c44-29b59dc67d90', N'3963f2a1-4ac3-4986-aa7f-d0dd7fb8e833', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'XML Master x7', CAST(N'2022-07-07T09:36:46.107' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'956f6d22-738d-4d54-9b64-e07e6ff9d412', N'4ba69705-ec12-4af8-a96c-b3d3dc12cdea', N'cf117e31-822b-45de-903d-8ca1f0ad8426', N'description', CAST(N'2022-07-13T01:50:10.290' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'a4fdf4f7-ed93-4547-98d5-7be6fc22bd38', N'11e222dc-94f6-494d-8b42-abfff9bb19fa', N'fbf78f2f-30d8-4426-a0c0-574d636b34b6', N'description', CAST(N'2022-07-12T20:57:50.307' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'af2e7f09-ec3e-4b79-b321-0ef2a47e5390', N'9bbacaac-9050-482e-9593-4289374e7a4d', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'string', CAST(N'2022-07-10T12:40:08.967' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'c5aecb9a-33e6-43e0-b86b-7b228db94e7c', N'a4fc8cb7-23cb-4548-b08e-ee76ba57bca5', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'XML trainning', CAST(N'2022-07-05T09:12:59.950' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'cb0125bc-51ef-4d20-9e04-ddfb3f010e4b', N'11073509-e5d9-4f1f-9da3-a06d0f84c8fe', N'daf6a36e-6238-4a2a-b80d-cc5685535e8c', N'description', CAST(N'2022-07-13T07:51:47.203' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'd45f655a-a4d4-49af-bf2f-3d5f3895e3ae', N'af362faf-338c-48f5-a04b-0e6d8843cbc2', N'fbf78f2f-30d8-4426-a0c0-574d636b34b6', N'description', CAST(N'2022-07-13T08:39:23.190' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'dcc04e51-0f11-4da0-a20d-2e0c6f9ab659', N'41fa2613-f196-447e-8823-cdcb3de7d794', N'c5f1f166-5ccc-4c7d-91bf-fdd01c3e739a', N'description', CAST(N'2022-07-10T12:05:32.173' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'e11469b0-5deb-420c-801a-8a1218aa24fd', N'a80d7aa0-f0df-4ef8-b6ec-38f2b251fd60', N'fbf78f2f-30d8-4426-a0c0-574d636b34b6', N'description', CAST(N'2022-07-15T09:11:30.717' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'e3d2ecd5-73d7-458b-9c32-4ef80195ecb7', N'25f8b24b-a380-4c03-a0d4-3637282f0b19', N'1cf02e08-a7ff-433a-8787-0ce0e8dc36e6', N'ÔN thi toán rời rạc 1', CAST(N'2022-07-12T20:52:09.110' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'e5ec7f6e-5543-4abc-be8f-9f6f64f6ca01', N'7c5f71ab-04ab-4e7b-a12c-6e427bb1fc03', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'XML Master x7', CAST(N'2022-07-07T09:37:20.510' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'ea0fad7c-134c-4f99-baf6-71473f8378d8', N'babdf6cc-bf3d-453f-ba30-5344a8d89276', N'cf117e31-822b-45de-903d-8ca1f0ad8426', N'description', CAST(N'2022-07-10T20:34:01.720' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'f45973ac-6b6f-467c-89c3-a918df497007', N'f709c36d-4a58-492c-bd88-7a7f549dd24d', N'88d201a9-0865-4ab2-b479-08d87901048b', N'description', CAST(N'2022-07-14T20:38:49.717' AS DateTime), NULL, 1)
INSERT [dbo].[SlotSubjects] ([Id], [SlotId], [SubjectId], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'ff4d438f-6d26-445c-acc6-09085781c3a0', N'9656aa8b-1136-489f-8ec8-dbc094a57889', N'5904729a-9787-46f4-90b9-7dada7108cd7', N'XML trainning', CAST(N'2022-07-05T09:12:49.640' AS DateTime), NULL, 1)
GO
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'0edfe76b-7ffd-43b6-b891-49d908c0d7d5', N'c9906955-fac2-4c68-afd5-6081420772af', N'SWP490', N'Capstone Project ', N'Đồ án tốt nghiệp', CAST(N'2022-07-12T17:43:38.680' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'1cf02e08-a7ff-433a-8787-0ce0e8dc36e6', N'c9906955-fac2-4c68-afd5-6081420772af', N'MAD101', N'Discrete mathematics', N'Toán rời rạc', CAST(N'2022-07-12T17:45:06.220' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'5904729a-9787-46f4-90b9-7dada7108cd7', N'c9906955-fac2-4c68-afd5-6081420772af', N'PRX301', N'Advanced XML for Java and Javascript', N'', CAST(N'2022-07-02T10:08:04.870' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'664cd47d-33b8-4957-b459-cd285774f10a', N'8bf72ee8-81bc-45e6-991e-3f1cb3d27839', N'ESC111', N'English Speaking Context', N'Speaking level 10', CAST(N'2022-07-12T19:08:24.177' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'7fffdfd7-7981-4eb7-a1d8-c7c5247c0ea8', N'c9906955-fac2-4c68-afd5-6081420772af', N'SWD302', N'Software Design', N'', CAST(N'2022-07-02T10:08:04.870' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'83412495-f2c6-4dd3-937d-a1c37796efd8', N'c9906955-fac2-4c68-afd5-6081420772af', N'SWR302', N'Software Requirements', N'', CAST(N'2022-07-02T10:08:04.870' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'88d201a9-0865-4ab2-b479-08d87901048b', N'c9906955-fac2-4c68-afd5-6081420772af', N'SWT301', N'Software Testing', N'', CAST(N'2022-07-02T10:08:04.870' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'c5f1f166-5ccc-4c7d-91bf-fdd01c3e739a', N'c9906955-fac2-4c68-afd5-6081420772af', N'SWP301', N'Mini Capstone', N'', CAST(N'2022-07-02T10:08:04.870' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'cf117e31-822b-45de-903d-8ca1f0ad8426', N'c9906955-fac2-4c68-afd5-6081420772af', N'PRO192', N'Object-Oriented Programming', N'', CAST(N'2022-07-02T10:08:04.870' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'daf6a36e-6238-4a2a-b80d-cc5685535e8c', N'c9906955-fac2-4c68-afd5-6081420772af', N'MAS291', N'Probability & statistics', N'Xác xuất thống kê...', CAST(N'2022-07-12T17:42:52.373' AS DateTime), NULL, 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'fa237bef-135a-4db5-87ca-a94142a2d445', N'c9906955-fac2-4c68-afd5-6081420772af', N'LAB231', N'Web Java Lab', N'Practice Java Web with projects and collect 1200 LOC', CAST(N'2022-07-12T18:54:30.687' AS DateTime), CAST(N'2022-07-12T19:12:10.137' AS DateTime), 1)
INSERT [dbo].[Subjects] ([Id], [MajorId], [Code], [Title], [Description], [CreateDate], [UpdateDate], [IsActive]) VALUES (N'fbf78f2f-30d8-4426-a0c0-574d636b34b6', N'c9906955-fac2-4c68-afd5-6081420772af', N'MAE101', N'Mathematics for Engineering', N'Toán cao cấp...', CAST(N'2022-07-12T17:39:01.550' AS DateTime), NULL, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Appointments_SlotId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Appointments_SlotId] ON [dbo].[Appointments]
(
	[SlotId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MentorSubjects_MentorId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_MentorSubjects_MentorId] ON [dbo].[MentorSubjects]
(
	[MentorId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MentorSubjects_SubjectId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_MentorSubjects_SubjectId] ON [dbo].[MentorSubjects]
(
	[SubjectId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Questions_AppointmentId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_AppointmentId] ON [dbo].[Questions]
(
	[AppointmentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Ratings_AppointmentId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Ratings_AppointmentId] ON [dbo].[Ratings]
(
	[AppointmentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Slots_MentorId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Slots_MentorId] ON [dbo].[Slots]
(
	[MentorId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SlotSubjects_SlotId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_SlotSubjects_SlotId] ON [dbo].[SlotSubjects]
(
	[SlotId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SlotSubjects_SubjectId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_SlotSubjects_SubjectId] ON [dbo].[SlotSubjects]
(
	[SubjectId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Subjects_MajorId]    Script Date: 7/15/2022 2:27:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Subjects_MajorId] ON [dbo].[Subjects]
(
	[MajorId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointments] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [StartTime]
GO
ALTER TABLE [dbo].[Appointments] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [FinishTime]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Slots_SlotId] FOREIGN KEY([SlotId])
REFERENCES [dbo].[Slots] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Slots_SlotId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[MentorSubjects]  WITH CHECK ADD  CONSTRAINT [FK_MentorSubjects_MasUsers_MentorId] FOREIGN KEY([MentorId])
REFERENCES [dbo].[MasUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MentorSubjects] CHECK CONSTRAINT [FK_MentorSubjects_MasUsers_MentorId]
GO
ALTER TABLE [dbo].[MentorSubjects]  WITH CHECK ADD  CONSTRAINT [FK_MentorSubjects_Subjects_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MentorSubjects] CHECK CONSTRAINT [FK_MentorSubjects_Subjects_SubjectId]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Appointments_AppointmentId] FOREIGN KEY([AppointmentId])
REFERENCES [dbo].[Appointments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Appointments_AppointmentId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Appointments_AppointmentId] FOREIGN KEY([AppointmentId])
REFERENCES [dbo].[Appointments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Appointments_AppointmentId]
GO
ALTER TABLE [dbo].[Slots]  WITH CHECK ADD  CONSTRAINT [FK_Slots_MasUsers_MentorId] FOREIGN KEY([MentorId])
REFERENCES [dbo].[MasUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Slots] CHECK CONSTRAINT [FK_Slots_MasUsers_MentorId]
GO
ALTER TABLE [dbo].[SlotSubjects]  WITH CHECK ADD  CONSTRAINT [FK_SlotSubjects_Slots_SlotId] FOREIGN KEY([SlotId])
REFERENCES [dbo].[Slots] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SlotSubjects] CHECK CONSTRAINT [FK_SlotSubjects_Slots_SlotId]
GO
ALTER TABLE [dbo].[SlotSubjects]  WITH CHECK ADD  CONSTRAINT [FK_SlotSubjects_Subjects_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SlotSubjects] CHECK CONSTRAINT [FK_SlotSubjects_Subjects_SubjectId]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Majors_MajorId] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Majors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_Majors_MajorId]
GO
ALTER DATABASE [MasDb] SET  READ_WRITE 
GO
