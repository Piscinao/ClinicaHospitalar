IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paciente]') AND type in (N'U'))
ALTER TABLE [dbo].[Paciente] DROP CONSTRAINT IF EXISTS [FK_Paciente_EstadoPaciente_EstadoPacienteId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT IF EXISTS [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paciente]') AND type in (N'U'))
ALTER TABLE [dbo].[Paciente] DROP CONSTRAINT IF EXISTS [DF__Paciente__Estado__6FE99F9F]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[Paciente]
GO
/****** Object:  Table [dbo].[Mural]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[Mural]
GO
/****** Object:  Table [dbo].[EstadoPaciente]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[EstadoPaciente]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 06/11/2019 03:18:20 ******/
DROP TABLE IF EXISTS [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 06/11/2019 03:18:20 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 06/11/2019 03:18:21 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 06/11/2019 03:18:21 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 06/11/2019 03:18:21 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 06/11/2019 03:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 06/11/2019 03:18:21 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 06/11/2019 03:18:21 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 06/11/2019 03:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoPaciente]    Script Date: 06/11/2019 03:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoPaciente](
	[Id] [uniqueidentifier] NOT NULL,
	[Descricao] [varchar](30) NOT NULL,
 CONSTRAINT [PK_EstadoPaciente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mural]    Script Date: 06/11/2019 03:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mural](
	[MuralId] [int] IDENTITY(1,1) NOT NULL,
	[Data] [datetime2](7) NOT NULL,
	[Titulo] [varchar](100) NULL,
	[Aviso] [varchar](100) NULL,
	[Autor] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Mural] PRIMARY KEY CLUSTERED 
(
	[MuralId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 06/11/2019 03:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](80) NOT NULL,
	[DataNascimento] [datetime2](7) NOT NULL,
	[DataInternacao] [datetime2](7) NOT NULL,
	[Email] [varchar](150) NULL,
	[Ativo] [bit] NOT NULL,
	[Cpf] [varchar](11) NULL,
	[TipoPaciente] [int] NOT NULL,
	[Sexo] [int] NOT NULL,
	[Rg] [varchar](15) NULL,
	[RgOrgao] [varchar](10) NULL,
	[RgDataEmissao] [datetime2](7) NOT NULL,
	[EstadoPacienteId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190903163410_Initial-Migration', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190924222639_AddPaciente', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191002055529_DelEstadoPaciente', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191005000630_AddEstadoPacienteFake', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191005001007_AddEstadoPaciente', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191005002316_AddFieldIdEstadoPacienteInPaciente', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191105083158_AddMovimentoPaciente', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191105083450_AddMovimentoPacienteAndDate', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191105133514_AddMappingsEstadoPacienteEPacienteMap', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191105134646_AddMappingsEstadoPacienteEPacienteMapApplyAll', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191105135254_AddMappingsEstadoPacienteEPacienteMapApplyAll2', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191106041532_DelMovimentoPaciente', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191106044456_AddInitialMigrationForIntity', N'2.2.6-servicing-10079')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'65a04383-7e28-464a-82f6-9cd5a588605f', N'carlos.poetarj@gmail.com', N'CARLOS.POETARJ@GMAIL.COM', N'carlos.poetarj@gmail.com', N'CARLOS.POETARJ@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELuy4PmlIUm+dk0hFKwi5LVDmQhvtY8eYkUTIVqY6qLZv+SGTnFKEXFMTUjzkf6E2w==', N'OHPGXWGJ6JDTEVUQ3QLD67DQW3VNTXQS', N'fafe55de-7887-4a23-8f23-e666cefa5ea5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8b9a49f4-cff8-4e3b-861d-b5109b6e12da', N'carlos.itdevelop@gmail.com', N'CARLOS.ITDEVELOP@GMAIL.COM', N'carlos.itdevelop@gmail.com', N'CARLOS.ITDEVELOP@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPcNdP8giyHB7hZAEJDEZDUCp0yII3KuomqDd6el+Bh8S3a4d31tGDsOnAZuXPtLJg==', N'KBAQHYBMUXOR76LNVHXQL3DYPVAFQM5M', N'716526a2-5100-47d4-85bf-dad61f9607ac', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd2a05c12-bdfa-4684-a140-fff927e7d614', N'carlos.itdeveloper@gmail.com', N'CARLOS.ITDEVELOPER@GMAIL.COM', N'carlos.itdeveloper@gmail.com', N'CARLOS.ITDEVELOPER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDojpgwxEcdGqdlDeyC7Omw2xMBMyl4ng2uiouctTjoeyOp73dwC+1tG3YamM/2Y2w==', N'M4ZBYJEPFAK3MRN6LZRLX3TR6DT3OW2Y', N'b06aa3fe-7bc4-4541-aedb-ca0edd45a70b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[EstadoPaciente] ([Id], [Descricao]) VALUES (N'0f473c78-5044-495b-87f0-6e6395f30637', N'Estável')
INSERT [dbo].[EstadoPaciente] ([Id], [Descricao]) VALUES (N'd1cd0bd8-f54e-4b21-9773-88b438704fe9', N'Grave')
INSERT [dbo].[EstadoPaciente] ([Id], [Descricao]) VALUES (N'ffc13eec-b7e6-4986-8865-b9e3db5aa71c', N'Observação')
INSERT [dbo].[EstadoPaciente] ([Id], [Descricao]) VALUES (N'0f813199-f797-475d-a55f-e575790e0e45', N'Crítico')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'b8008202-20c0-4cac-92c3-015a4720c1b0', N'Elisa Maria', CAST(N'2019-09-04T22:57:00.0000000' AS DateTime2), CAST(N'2019-09-25T03:45:00.0000000' AS DateTime2), N'elisa.maria@casmail.com', 0, N'15856898711', 2, 1, N'015589658-9', N'DETRAN', CAST(N'2019-01-22T06:08:00.0000000' AS DateTime2), N'ffc13eec-b7e6-4986-8865-b9e3db5aa71c')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'ad3c541f-6dd8-4340-b592-0d1ef5574b38', N'Wellington da Silva', CAST(N'1990-08-17T00:00:00.0000000' AS DateTime2), CAST(N'2019-07-25T00:00:00.0000000' AS DateTime2), N'wellingtondasilva@maisqueemail.com', 1, N'75658744469', 3, 2, N'35745688-3', N'IFP', CAST(N'2008-06-25T00:00:00.0000000' AS DateTime2), N'0f473c78-5044-495b-87f0-6e6395f30637')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'938f154a-9c1c-4d4a-9021-2d137c8a5cee', N'Pablo Vianna', CAST(N'1978-05-18T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-03T00:00:00.0000000' AS DateTime2), N'pablovianna@nossoenail.com', 0, N'76687858498', 1, 2, N'25587544-6', N'IFP', CAST(N'2005-11-15T00:00:00.0000000' AS DateTime2), N'd1cd0bd8-f54e-4b21-9773-88b438704fe9')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'8c31427b-86d1-45ca-94c2-353a861edf90', N'Renato Borges', CAST(N'2019-09-17T04:04:00.0000000' AS DateTime2), CAST(N'2019-09-27T19:55:00.0000000' AS DateTime2), N'renato.borges@nossoemail.com', 1, N'15856898745', 1, 2, N'015589658-4', N'IFP', CAST(N'1989-10-26T21:58:00.0000000' AS DateTime2), N'0f473c78-5044-495b-87f0-6e6395f30637')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'7c49746f-69e5-467f-a1ab-44a3a9f4987e', N'Fabio Martins', CAST(N'1982-04-20T01:00:00.0000000' AS DateTime2), CAST(N'2019-08-11T03:25:00.0000000' AS DateTime2), N'fabiomartins@esseemail.com', 1, N'12587956844', 2, 2, N'15487599-8', N'DETRAN', CAST(N'2000-06-08T12:15:00.0000000' AS DateTime2), N'0f473c78-5044-495b-87f0-6e6395f30637')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'0b33ddfc-1746-4787-b12c-7725de47fefb', N'Anonio Nelson', CAST(N'1978-06-16T03:15:00.0000000' AS DateTime2), CAST(N'2019-03-18T00:00:00.0000000' AS DateTime2), N'antonionelson@tonimail.com', 1, N'75554868958', 3, 2, N'15545655-8', N'MA-BR', CAST(N'1998-08-13T00:00:00.0000000' AS DateTime2), N'd1cd0bd8-f54e-4b21-9773-88b438704fe9')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'bcb8cceb-b33a-4368-9bc1-a105bfdb71bf', N'Maria da Silva Santos', CAST(N'2019-10-16T01:40:00.0000000' AS DateTime2), CAST(N'2019-10-16T01:41:00.0000000' AS DateTime2), N'mariadasilva@nossoemail.com', 1, N'78558789911', 2, 1, N'18755599-0', N'DETRAN', CAST(N'2019-10-16T01:41:00.0000000' AS DateTime2), N'0f473c78-5044-495b-87f0-6e6395f30637')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'f2ebf009-f2d1-4fd8-9c85-a7bd731004ed', N'Wallace Alfredo Cabral', CAST(N'1996-08-06T00:00:00.0000000' AS DateTime2), CAST(N'2019-05-12T00:00:00.0000000' AS DateTime2), N'wallacealfredo@nossoemail.com', 1, N'76689784558', 1, 2, N'35878555-9', N'IFP', CAST(N'2002-12-05T00:00:00.0000000' AS DateTime2), N'0f813199-f797-475d-a55f-e575790e0e45')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'858ce12d-d485-4462-bba8-a8be9ac3a3cc', N'Maria da Penha', CAST(N'1980-10-25T00:00:00.0000000' AS DateTime2), CAST(N'2019-05-23T00:00:00.0000000' AS DateTime2), N'mariadapenha@gnail.com', 1, N'85565898744', 3, 1, N'15548799-0', N'IFP', CAST(N'1999-02-21T00:00:00.0000000' AS DateTime2), N'd1cd0bd8-f54e-4b21-9773-88b438704fe9')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'0d82ce06-cccd-4ef8-8d87-bd4185d7ebea', N'Fatima Guedes', CAST(N'1986-04-09T00:00:00.0000000' AS DateTime2), CAST(N'2019-06-04T00:00:00.0000000' AS DateTime2), N'fatimaguedes@seuemail.com', 1, N'58887854698', 2, 1, N'07154599-4', N'DETRAN', CAST(N'2004-03-24T00:00:00.0000000' AS DateTime2), N'0f813199-f797-475d-a55f-e575790e0e45')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'4d7743be-68a3-4757-acb8-cd07f83837ee', N'Eduardo Costa', CAST(N'1986-03-24T20:56:00.0000000' AS DateTime2), CAST(N'2019-09-28T02:01:00.0000000' AS DateTime2), N'eduardocosta@nossoemail.com', 1, N'15856898733', 1, 2, N'015589699-2', N'DETRAN', CAST(N'1994-03-25T20:52:00.0000000' AS DateTime2), N'0f473c78-5044-495b-87f0-6e6395f30637')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'ff92f293-f31b-497c-b8b5-e29ad2f63e5d', N'Lívia C Cabral', CAST(N'1994-05-04T00:00:00.0000000' AS DateTime2), CAST(N'2019-09-15T00:00:00.0000000' AS DateTime2), N'liviaccabral@hotmaismail.com', 1, N'85458965874', 2, 1, N'25845699-0', N'DETRAN', CAST(N'2001-08-21T00:00:00.0000000' AS DateTime2), N'ffc13eec-b7e6-4986-8865-b9e3db5aa71c')
INSERT [dbo].[Paciente] ([Id], [Nome], [DataNascimento], [DataInternacao], [Email], [Ativo], [Cpf], [TipoPaciente], [Sexo], [Rg], [RgOrgao], [RgDataEmissao], [EstadoPacienteId]) VALUES (N'4111f844-7877-4333-8345-eefb9a0aab5b', N'Ana Clara Santos', CAST(N'2005-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2019-02-28T00:00:00.0000000' AS DateTime2), N'anaclarasantos@itdeveloper.inf.br', 1, N'75535785987', 3, 1, N'15787566-9', N'IFP', CAST(N'2019-03-15T00:00:00.0000000' AS DateTime2), N'0f473c78-5044-495b-87f0-6e6395f30637')
ALTER TABLE [dbo].[Paciente] ADD  DEFAULT ('0f473c78-5044-495b-87f0-6e6395f30637') FOR [EstadoPacienteId]
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
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_EstadoPaciente_EstadoPacienteId] FOREIGN KEY([EstadoPacienteId])
REFERENCES [dbo].[EstadoPaciente] ([Id])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_EstadoPaciente_EstadoPacienteId]
GO
