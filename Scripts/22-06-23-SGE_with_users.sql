USE [SGE]
GO
/****** Object:  Table [dbo].[Activities]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[ActivityOrder] [int] NOT NULL,
	[Description] [varchar](300) NULL,
	[Enabled] [bit] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Activities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AditionalServices]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AditionalServices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[Description] [varchar](500) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[Cost] [decimal](18, 2) NULL,
	[Status] [varchar](100) NULL,
 CONSTRAINT [PK_EventServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacoras]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacoras](
	[userId] [uniqueidentifier] NULL,
	[message] [varchar](1000) NULL,
	[criticity] [varchar](100) NULL,
	[creationDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[ContactType] [varchar](50) NOT NULL,
	[RelatedId] [int] NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Mail] [varchar](500) NOT NULL,
	[Phone] [varchar](500) NOT NULL,
	[Address] [varchar](500) NOT NULL,
	[ZipCode] [varchar](10) NOT NULL,
	[TaxPayerId] [varchar](50) NULL,
 CONSTRAINT [PK_Custommers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventPolicies]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventPolicies](
	[PolicyId] [int] NOT NULL,
	[EventId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventRooms]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventRooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[Capacity] [int] NOT NULL,
	[BucketSize] [numeric](18, 2) NOT NULL,
	[Price] [numeric](18, 2) NOT NULL,
	[Active] [bit] NULL,
	[DVH] [numeric](18, 0) NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedAt] [datetime] NULL,
 CONSTRAINT [PK_EventRooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventRooms_Audit]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventRooms_Audit](
	[AudId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[Capacity] [int] NOT NULL,
	[BucketSize] [numeric](18, 2) NOT NULL,
	[Price] [numeric](18, 2) NOT NULL,
	[Active] [bit] NULL,
	[DVH] [numeric](18, 0) NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedAt] [datetime] NULL,
 CONSTRAINT [PK_EventRooms_Audit] PRIMARY KEY CLUSTERED 
(
	[AudId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Description] [varchar](1000) NULL,
	[MinBudget] [numeric](18, 2) NULL,
	[MaxBudget] [numeric](18, 2) NULL,
	[GuessQuantity] [int] NULL,
	[EventType] [varchar](50) NULL,
	[EventRoomDetails] [varchar](300) NULL,
	[EventRoomPrice] [numeric](18, 2) NULL,
	[CustomerId] [int] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[LastUpdatedAt] [datetime] NULL,
	[LastUpdatedBy] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[SpecialRequest] [varchar](1000) NULL,
	[Status] [varchar](50) NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[AssignedId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guests]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[LastName] [varchar](150) NOT NULL,
	[TaxPayerId] [varchar](50) NULL,
	[FoodType] [varchar](50) NULL,
	[Quantity] [int] NOT NULL,
	[Details] [varchar](300) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[Enabled] [bit] NULL,
 CONSTRAINT [PK_Guests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idiomas]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idiomas](
	[Id] [varchar](5) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Idiomas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTEGRIDAD_VERTICAL]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTEGRIDAD_VERTICAL](
	[table_name] [varchar](255) NOT NULL,
	[dvv] [int] NOT NULL,
	[lastCalculatedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Integrity]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Integrity](
	[table_name] [varchar](255) NOT NULL,
	[digit] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [uniqueidentifier] NULL,
	[message] [varchar](1000) NULL,
	[criticity] [varchar](50) NULL,
	[creationDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[Type] [varchar](20) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[ConciliationKey] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedAt] [datetime] NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permiso]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permiso](
	[nombre] [varchar](100) NULL,
	[id] [uniqueidentifier] NOT NULL,
	[permiso] [varchar](50) NULL,
 CONSTRAINT [PK_permiso_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permiso_permiso]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permiso_permiso](
	[id_permiso_padre] [uniqueidentifier] NULL,
	[id_permiso_hijo] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Policies]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Policies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductType] [varchar](20) NOT NULL,
	[Days] [int] NOT NULL,
	[Penalty] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Policies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[Id] [int] NOT NULL,
	[EventId] [int] NOT NULL,
	[SecuenceNumber] [int] NOT NULL,
	[Duration] [int] NULL,
	[Title] [varchar](150) NOT NULL,
	[Desciption] [varchar](500) NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Schedules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[ProviderPrice] [numeric](18, 2) NOT NULL,
	[Fee] [numeric](18, 2) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Traducciones]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Traducciones](
	[clave] [varchar](255) NOT NULL,
	[idioma] [varchar](5) NOT NULL,
	[valor] [varchar](500) NULL,
 CONSTRAINT [PK_Traducciones] PRIMARY KEY CLUSTERED 
(
	[clave] ASC,
	[idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [uniqueidentifier] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[Language] [varchar](5) NOT NULL,
	[FailCount] [int] NULL,
	[LastLogin] [datetime] NULL,
	[checkdigit] [int] NULL,
	[expired] [bit] NULL,
	[Name] [varchar](255) NULL,
	[Lastname] [varchar](255) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_permisos]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_permisos](
	[id_usuario] [uniqueidentifier] NOT NULL,
	[id_permiso] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_usuarios_permisos] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [LastName], [Mail], [Phone], [Address], [ZipCode], [TaxPayerId]) VALUES (1, N'pepito', N'pepe', N'+9SGhamXnbUnRoExJtXg0jdB4CozsGl5UVjybTwI1F4=', N'1156786543', N'8I28134Tokr6JvcLF4X/Zw==', N'5654', N'vFfwifG8c/B/TT03S9K1i14hNDdgr8t14X4JkB25pno=')
INSERT [dbo].[Customers] ([Id], [Name], [LastName], [Mail], [Phone], [Address], [ZipCode], [TaxPayerId]) VALUES (2, N'maga', N'alfa', N'Qn5WCdZEM9cV9z471xkBWS1/ueQlcRtExN9bdZq4YBA=', N'452768627', N'jHiRfqXg0JzyqnYe3P+uww==', N'653763222', N'wBkuJC4s0IVMcVBf/kcKLZVDznQ0+CgWIHYPxqMheC0=')
INSERT [dbo].[Customers] ([Id], [Name], [LastName], [Mail], [Phone], [Address], [ZipCode], [TaxPayerId]) VALUES (3, N'laura', N'alfa', N'J+mh7fnHdbPzrsqunr+4TuPQ0a863CxZsnY/GxVy+k0=', N'32435465', N'jHiRfqXg0JzyqnYe3P+uww==', N'1145675432', N'Y3XQjsT/rQDKdL5Bl7nwbEH+GTpa4Aq5zkR/5CcpEwI=')
INSERT [dbo].[Customers] ([Id], [Name], [LastName], [Mail], [Phone], [Address], [ZipCode], [TaxPayerId]) VALUES (4, N'maga', N'maga', N'xkr9NSuoLNUWtUAqg7r8Pd8QMO8mh3mqepr5MHRO6c4=', N'1156765443', N'kbHLga/PT2qDrTMqAxtJ5Q==', N'1619', N'cDddmWrxMuo9Afx8ItOX9gNST1CYoR7Uq0LcGgF084M=')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([Id], [Title], [Description], [MinBudget], [MaxBudget], [GuessQuantity], [EventType], [EventRoomDetails], [EventRoomPrice], [CustomerId], [CreatedAt], [LastUpdatedAt], [LastUpdatedBy], [CreatedBy], [SpecialRequest], [Status], [DateFrom], [DateTo], [AssignedId]) VALUES (1, N'cumple', N'cumple', CAST(100.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), 20, N'Casamiento', NULL, NULL, 1, CAST(N'2023-05-22T01:27:34.780' AS DateTime), CAST(N'2023-05-22T01:28:40.000' AS DateTime), N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'panchitos', N'INITIALIZED', CAST(N'2023-07-09T01:26:02.000' AS DateTime), CAST(N'2023-07-09T05:26:02.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
INSERT [dbo].[Idiomas] ([Id], [Descripcion]) VALUES (N'en-US', N'Ingles USA')
INSERT [dbo].[Idiomas] ([Id], [Descripcion]) VALUES (N'es-AR', N'Espa?ol Argentina')
GO
SET IDENTITY_INSERT [dbo].[Logs] ON 

INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (1, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-12T00:35:50.047' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (2, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Password expirado', N'INFO', CAST(N'2023-05-12T00:36:04.633' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (3, NULL, N'ERROR NO CONTROLADO: Object reference not set to an instance of an object.', N'ERROR', CAST(N'2023-05-12T00:37:46.640' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (4, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-05-12T00:38:25.133' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (5, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-12T00:38:25.137' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (6, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-12T00:39:16.937' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (7, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-12T00:39:16.940' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (8, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-12T00:39:16.940' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (9, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-13T01:32:00.603' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (10, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-05-13T01:32:52.970' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (11, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-13T01:32:52.977' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (12, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-13T01:32:59.740' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (13, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-13T01:32:59.740' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (14, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-13T01:32:59.740' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (15, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T17:17:07.750' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (16, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-05-14T17:17:17.543' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (17, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T17:17:17.550' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (18, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'ERROR NO CONTROLADO: Ya existe un permiso con este nombre', N'ERROR', CAST(N'2023-05-14T17:18:05.577' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (19, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se guardaron los permisos del usuario maga', N'INFO', CAST(N'2023-05-14T17:20:07.410' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (20, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T17:22:24.367' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (21, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Password expirado', N'INFO', CAST(N'2023-05-14T17:22:31.077' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (22, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Password invalida. Intento: $1', N'INFO', CAST(N'2023-05-14T17:22:48.507' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (23, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-14T17:22:54.860' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (24, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T17:22:54.867' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (25, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-14T17:22:58.193' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (26, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-14T17:22:58.197' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (27, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-14T17:22:58.200' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (28, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T17:59:15.473' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (29, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-14T17:59:21.843' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (30, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T17:59:21.853' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (31, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T18:01:35.897' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (32, NULL, N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-14T18:01:51.090' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (33, NULL, N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-14T18:01:51.093' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (34, NULL, N'Ejemplo log comun', N'INFO', CAST(N'2023-05-14T18:01:51.093' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (35, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T18:03:40.670' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (36, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-14T18:04:02.923' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (37, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T18:04:02.940' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (38, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-14T18:04:25.997' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (39, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-14T18:04:26.020' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (40, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-14T18:04:26.020' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (41, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-14T18:25:21.190' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (42, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T18:27:24.187' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (43, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-14T18:27:34.343' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (44, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-14T18:27:34.350' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (45, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-14T18:28:48.627' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (46, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-14T18:28:48.630' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (47, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-14T18:28:48.630' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (48, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-14T18:47:59.857' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (49, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-14T18:50:13.790' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (50, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-15T09:48:06.857' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (51, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Password invalida. Intento: $1', N'INFO', CAST(N'2023-05-15T22:16:10.713' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (52, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-15T22:16:16.140' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (53, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-15T23:25:06.013' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (54, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-05-15T23:25:14.450' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (55, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-15T23:25:14.457' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (56, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Cerro sesión', N'INFO', CAST(N'2023-05-15T23:27:07.580' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (57, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-15T23:27:07.583' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (58, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-15T23:27:16.270' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (59, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-15T23:27:16.280' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (60, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-15T23:27:25.427' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (61, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-15T23:27:25.430' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (62, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-15T23:27:25.430' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (63, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T00:52:10.690' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (64, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-16T00:52:17.563' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (65, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T00:52:17.567' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (66, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-16T00:52:52.260' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (67, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-16T00:52:52.260' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (68, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-16T00:52:52.260' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (69, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T00:53:20.020' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (70, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Password invalida. Intento: $1', N'INFO', CAST(N'2023-05-16T00:53:26.850' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (71, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-16T00:53:31.460' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (72, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T00:53:31.463' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (73, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-16T00:54:34.913' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (74, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-16T00:54:34.917' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (75, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-16T00:54:34.917' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (76, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T01:15:17.330' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (77, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-16T01:15:26.180' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (78, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T01:15:26.183' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (79, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-16T01:16:06.160' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (80, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-16T01:16:06.163' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (81, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-16T01:16:06.163' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (82, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T21:36:37.933' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (83, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-16T21:36:44.990' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (84, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T21:36:44.993' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (85, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T21:47:26.103' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (86, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-16T21:47:32.950' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (87, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T21:47:32.950' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (88, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-16T21:49:17.207' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (89, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-16T21:49:17.210' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (90, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-16T21:49:17.210' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (91, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T22:44:28.433' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (92, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-16T22:44:38.577' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (93, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T22:44:38.577' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (94, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Cerro sesión', N'INFO', CAST(N'2023-05-16T22:46:47.750' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (95, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T22:46:47.753' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (96, N'81671a51-be30-4ce0-a5ec-93da97aac259', N'Inicio sesión', N'INFO', CAST(N'2023-05-16T22:46:55.563' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (97, N'81671a51-be30-4ce0-a5ec-93da97aac259', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T22:46:55.563' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (98, N'81671a51-be30-4ce0-a5ec-93da97aac259', N'Cerro sesión', N'INFO', CAST(N'2023-05-16T22:47:02.780' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (99, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T22:47:02.780' AS DateTime))
GO
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (100, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-16T22:47:10.340' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (101, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T22:47:10.340' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (102, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Cerro sesión', N'INFO', CAST(N'2023-05-16T22:47:35.477' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (103, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T22:47:35.483' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (104, N'81671a51-be30-4ce0-a5ec-93da97aac259', N'Usuario bloqueado', N'INFO', CAST(N'2023-05-16T22:47:43.750' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (105, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-16T22:47:53.160' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (106, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-16T22:47:53.163' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (107, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-16T22:48:10.203' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (108, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-16T22:48:10.207' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (109, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-16T22:48:10.207' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (110, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-22T00:30:33.170' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (111, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-22T00:30:43.000' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (112, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-22T00:30:43.003' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (113, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Cliente 1 guardado con éxito', N'INFO', CAST(N'2023-05-22T00:31:40.687' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (114, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se abre evento NUEVO', N'INFO', CAST(N'2023-05-22T00:32:31.540' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (115, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se abre evento NUEVO', N'INFO', CAST(N'2023-05-22T00:48:33.350' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (116, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se abre evento NUEVO', N'INFO', CAST(N'2023-05-22T01:20:44.107' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (117, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se abre evento NUEVO', N'INFO', CAST(N'2023-05-22T01:26:02.953' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (118, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se abre el evento 1', N'INFO', CAST(N'2023-05-22T01:28:07.343' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (119, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se abre el evento 1', N'INFO', CAST(N'2023-05-22T01:28:58.670' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (120, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se abre evento NUEVO', N'INFO', CAST(N'2023-05-22T02:07:21.583' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (121, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se abre evento NUEVO', N'INFO', CAST(N'2023-05-22T03:06:34.970' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (122, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-22T15:58:59.807' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (123, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-05-22T15:59:08.400' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (124, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-05-22T15:59:08.403' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (125, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se abre evento NUEVO', N'INFO', CAST(N'2023-05-22T16:29:43.703' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (126, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-05-22T16:58:38.317' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (127, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-05-22T16:58:38.320' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (128, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-05-22T16:58:38.320' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (129, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-07T20:21:03.483' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (130, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-06-07T20:21:09.633' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (131, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-07T20:21:09.633' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (132, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'ERROR NO CONTROLADO: Ya existe un permiso con este nombre', N'ERROR', CAST(N'2023-06-07T20:22:53.307' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (133, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'ERROR NO CONTROLADO: Ya existe un permiso con este nombre', N'ERROR', CAST(N'2023-06-07T20:23:10.103' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (134, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'ERROR NO CONTROLADO: Ya existe un permiso con este nombre', N'ERROR', CAST(N'2023-06-07T20:24:04.330' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (135, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'ERROR NO CONTROLADO: Ya existe un permiso con este nombre', N'ERROR', CAST(N'2023-06-07T20:24:58.570' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (136, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se guardaron los permisos del usuario maga', N'INFO', CAST(N'2023-06-07T23:31:55.787' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (137, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se guardaron los permisos del usuario maga', N'INFO', CAST(N'2023-06-07T23:49:47.350' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (138, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se guardaron los permisos del usuario maga', N'INFO', CAST(N'2023-06-07T23:54:33.420' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (139, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se guardaron los permisos del usuario maga', N'INFO', CAST(N'2023-06-07T23:54:49.353' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (140, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se guardaron los permisos del usuario maga', N'INFO', CAST(N'2023-06-07T23:55:26.107' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (141, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-07T23:58:49.503' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (142, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-06-07T23:58:58.140' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (143, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-07T23:58:58.150' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (144, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-06-07T23:59:09.690' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (145, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo de trace', N'TRACE', CAST(N'2023-06-07T23:59:09.710' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (146, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Ejemplo log comun', N'INFO', CAST(N'2023-06-07T23:59:09.710' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (147, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-07T23:59:14.377' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (148, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-06-08T00:00:30.107' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (149, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-08T00:00:30.113' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (150, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-06-08T00:00:36.690' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (151, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de trace', N'TRACE', CAST(N'2023-06-08T00:00:36.690' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (152, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo log comun', N'INFO', CAST(N'2023-06-08T00:00:36.690' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (153, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T21:52:17.460' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (154, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Inicio sesión', N'INFO', CAST(N'2023-06-20T21:52:26.037' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (155, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T21:52:26.040' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (156, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'ERROR NO CONTROLADO: Padding is invalid and cannot be removed.', N'ERROR', CAST(N'2023-06-20T21:56:09.500' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (157, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Cliente 4 guardado con éxito', N'INFO', CAST(N'2023-06-20T21:56:58.250' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (158, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'ERROR NO CONTROLADO: Padding is invalid and cannot be removed.', N'ERROR', CAST(N'2023-06-20T21:57:28.947' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (159, N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'Cerro sesión', N'INFO', CAST(N'2023-06-20T21:59:24.860' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (160, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T21:59:24.900' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (161, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-06-20T21:59:32.720' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (162, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T21:59:32.733' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (163, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-06-20T21:59:51.390' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (164, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de trace', N'TRACE', CAST(N'2023-06-20T21:59:51.397' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (165, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo log comun', N'INFO', CAST(N'2023-06-20T21:59:51.397' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (166, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T22:01:25.230' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (167, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-06-20T22:01:35.427' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (168, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T22:01:35.447' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (169, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-06-20T22:01:45.137' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (170, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de trace', N'TRACE', CAST(N'2023-06-20T22:01:45.160' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (171, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo log comun', N'INFO', CAST(N'2023-06-20T22:01:45.163' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (172, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T22:28:47.403' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (173, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-06-20T22:29:02.800' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (174, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T22:29:02.810' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (175, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-06-20T22:33:22.750' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (176, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de trace', N'TRACE', CAST(N'2023-06-20T22:33:22.770' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (177, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo log comun', N'INFO', CAST(N'2023-06-20T22:33:22.773' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (178, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T22:33:31.397' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (179, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-06-20T22:33:37.877' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (180, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T22:33:37.880' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (181, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se guardaron los permisos del usuario admin', N'INFO', CAST(N'2023-06-20T22:35:31.020' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (182, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se guardaron los permisos del usuario admin', N'INFO', CAST(N'2023-06-20T22:37:07.987' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (183, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se guardaron los permisos del usuario admin', N'INFO', CAST(N'2023-06-20T22:37:24.227' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (184, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-06-20T22:42:44.207' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (185, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de trace', N'TRACE', CAST(N'2023-06-20T22:42:44.213' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (186, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo log comun', N'INFO', CAST(N'2023-06-20T22:42:44.220' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (187, NULL, N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T22:42:49.797' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (188, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Inicio sesión', N'INFO', CAST(N'2023-06-20T22:42:57.470' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (189, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se valido el DVV de la entidad EventRoom', N'INFO', CAST(N'2023-06-20T22:42:57.480' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (190, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Se abre evento NUEVO', N'INFO', CAST(N'2023-06-20T22:43:30.693' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (191, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de log de error', N'ERROR', CAST(N'2023-06-20T23:16:01.193' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (192, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo de trace', N'TRACE', CAST(N'2023-06-20T23:16:01.213' AS DateTime))
INSERT [dbo].[Logs] ([Id], [userId], [message], [criticity], [creationDate]) VALUES (193, N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'Ejemplo log comun', N'INFO', CAST(N'2023-06-20T23:16:01.217' AS DateTime))
SET IDENTITY_INSERT [dbo].[Logs] OFF
GO
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'Administrador', N'031165cc-98f4-460a-95db-18ea25e3bd9b', NULL)
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'GestionServicio', N'439dc8c5-4fce-4f70-b31c-48f0ba8c3673', N'GestionarServicio')
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'Organizador', N'94686786-66f5-4975-9767-7d1d9a3d1cf6', NULL)
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'Participante', N'730fae8e-aa38-48e9-a563-8436c3d8c6e8', NULL)
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'GestionLugar', N'b5cab92c-55fb-4ba9-9953-8739ce5eaeb6', N'GestionarLugar')
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'Administrador', N'dc37e126-1f43-49cc-ad7c-bade3cc0fa7e', N'AdministradorSistema')
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'Lugar', N'778dcb13-cee3-4941-95d0-bc8819227757', NULL)
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'VerReserva', N'01a8303f-5ca2-430b-8685-d043d6f84f3c', N'GestionarLugar')
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'Servicio', N'c68adcd8-c7fa-480d-93c5-d157b026df99', NULL)
INSERT [dbo].[permiso] ([nombre], [id], [permiso]) VALUES (N'', N'41731814-ce22-4fc4-93ad-ec7b5013a469', N'GestionarLugar')
GO
INSERT [dbo].[permiso_permiso] ([id_permiso_padre], [id_permiso_hijo]) VALUES (N'031165cc-98f4-460a-95db-18ea25e3bd9b', N'dc37e126-1f43-49cc-ad7c-bade3cc0fa7e')
INSERT [dbo].[permiso_permiso] ([id_permiso_padre], [id_permiso_hijo]) VALUES (N'031165cc-98f4-460a-95db-18ea25e3bd9b', N'778dcb13-cee3-4941-95d0-bc8819227757')
INSERT [dbo].[permiso_permiso] ([id_permiso_padre], [id_permiso_hijo]) VALUES (N'031165cc-98f4-460a-95db-18ea25e3bd9b', N'b5cab92c-55fb-4ba9-9953-8739ce5eaeb6')
INSERT [dbo].[permiso_permiso] ([id_permiso_padre], [id_permiso_hijo]) VALUES (N'94686786-66f5-4975-9767-7d1d9a3d1cf6', N'730fae8e-aa38-48e9-a563-8436c3d8c6e8')
INSERT [dbo].[permiso_permiso] ([id_permiso_padre], [id_permiso_hijo]) VALUES (N'c68adcd8-c7fa-480d-93c5-d157b026df99', N'439dc8c5-4fce-4f70-b31c-48f0ba8c3673')
INSERT [dbo].[permiso_permiso] ([id_permiso_padre], [id_permiso_hijo]) VALUES (N'730fae8e-aa38-48e9-a563-8436c3d8c6e8', N'01a8303f-5ca2-430b-8685-d043d6f84f3c')
INSERT [dbo].[permiso_permiso] ([id_permiso_padre], [id_permiso_hijo]) VALUES (N'778dcb13-cee3-4941-95d0-bc8819227757', N'b5cab92c-55fb-4ba9-9953-8739ce5eaeb6')
INSERT [dbo].[permiso_permiso] ([id_permiso_padre], [id_permiso_hijo]) VALUES (N'778dcb13-cee3-4941-95d0-bc8819227757', N'01a8303f-5ca2-430b-8685-d043d6f84f3c')
GO
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'address.title', N'en-US', N'Address')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'address.title', N'es-AR', N'Direcci?n')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'aditionalService.error.costexeded', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'aditionalService.error.costexeded', N'es-AR', N'Se supero el monto abonado por el cliente.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'aditionalservice.error.providerprice.minimum', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'aditionalservice.error.providerprice.minimum', N'es-AR', N'El precio sugerido excede el precio minimo permitido.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'aditionalservice.name.Title', N'en-US', N'Aditional Service')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'aditionalservice.name.Title', N'es-AR', N'Nombre')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'admin.users.title', N'en-US', N'Users admin')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'admin.users.title', N'es-AR', N'Administrar Permisos de Usuarios')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'admin.users.usersetup', N'en-US', N'Users settings')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'admin.users.usersetup', N'es-AR', N'Configurar Usuario')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'as.addedservices', N'en-US', N'Aditional service added')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'as.addedservices', N'es-AR', N'Servicios contratados')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'backup.restore.ok', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'backup.restore.ok', N'es-AR', N'Backup generado con ?xito.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'block', N'en-US', N'Bloqued')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'block', N'es-AR', N'Bloquear')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.add', N'en-US', N'Add')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.add', N'es-AR', N'Agregar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.approveevent', N'en-US', N'Event approved')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.approveevent', N'es-AR', N'Aprobar y Organizar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.cancel', N'en-US', N'Cancel')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.cancel', N'es-AR', N'Cancel')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.changepassword', N'en-US', N'Change password')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.changepassword', N'es-AR', N'Cambiar clave')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.close', N'en-US', N'Close')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.close', N'es-AR', N'Salir')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.config', N'en-US', N'Config')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.config', N'es-AR', N'Configurar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.config.save', N'en-US', N'Save')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.config.save', N'es-AR', N'Guardar configuracion')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.config.selected', N'en-US', N'Config selected')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.config.selected', N'es-AR', N'Configurar seleccionado')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.create', N'en-US', N'Create')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.create', N'es-AR', N'Crear')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.discart', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.discart', N'es-AR', N'Descartar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.dismiss', N'en-US', N'Dismiss')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.dismiss', N'es-AR', N'Descartar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.dvv', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.dvv', N'es-AR', N'DVV')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.edit', N'en-US', N'Edit')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.edit', N'es-AR', N'Editar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.exit', N'en-US', N'Exit')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.exit', N'es-AR', N'Salir')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.Find', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.Find', N'es-AR', N'Buscar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.history', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.history', N'es-AR', N'Historial')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.login', N'en-US', N'Login')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.login', N'es-AR', N'Login')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.makebudget', N'en-US', N'Budget')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.makebudget', N'es-AR', N'Presupuestar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.manage', N'en-US', N'Manage')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.manage', N'es-AR', N'Gestionar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.manageservice', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.manageservice', N'es-AR', N'Gestionar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.new', N'en-US', N'New')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.new', N'es-AR', N'Alta')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.presupuestar', N'en-US', N'Budget')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.presupuestar', N'es-AR', N'Generar Presupuesto')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.remove', N'en-US', N'Remove')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.remove', N'es-AR', N'Quitar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.reset', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.reset', N'es-AR', N'Borrar filtros')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.save', N'en-US', N'Save')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.save', N'es-AR', N'Guardar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.search', N'en-US', N'Search')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.search', N'es-AR', N'Buscar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.select', N'en-US', N'Select')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.select', N'es-AR', N'Seleccionar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.singin', N'en-US', N'Sing in')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'btn.singin', N'es-AR', N'Registrar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'button.cancel', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'button.cancel', N'es-AR', N'Cancelar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'button.save', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'button.save', N'es-AR', N'Guardar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'cancel', N'en-US', N'Cancel')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'cancel', N'es-AR', N'Cancelar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'changepassword', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'changepassword', N'es-AR', N'Cambiar clave')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'contactinfo', N'en-US', N'Contact Info')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'contactinfo', N'es-AR', N'Informaci?n de contacto')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'criticity.Title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'criticity.Title', N'es-AR', N'Criticidad')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'customer.register', N'en-US', N'Register')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'customer.register', N'es-AR', N'Cliente')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'customer.savedsuccess', N'en-US', N'Successfully saved')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'customer.savedsuccess', N'es-AR', N'Cliente guardado correctamente')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'customers', N'en-US', N'Customers')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'customers', N'es-AR', N'Clientes')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'date.between', N'en-US', N'-')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'date.between', N'es-AR', N'Fecha (Desde-Hasta)')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'description.title', N'en-US', N'Description')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'description.title', N'es-AR', N'Descripcion')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'detail.title', N'en-US', N'Details')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'detail.title', N'es-AR', N'Detalle')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.amount', N'en-US', N'Amount')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.amount', N'es-AR', N'Monto')
GO
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.conciliationKey', N'en-US', N'Conciliation Key')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.conciliationKey', N'es-AR', N'Clave de conciliaci?n')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.id', N'en-US', N'Id')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.id', N'es-AR', N'Id')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.paymentdate', N'en-US', N'Date')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.paymentdate', N'es-AR', N'Fecha')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.paymenttype', N'en-US', N'Type')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'dgvpayments.column.paymenttype', N'es-AR', N'Tipo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'direccion', N'en-US', N'Address')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'direccion', N'es-AR', N'Direccion')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'edit.family', N'en-US', N'Family')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'edit.family', N'es-AR', N'Editar familia')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'email', N'en-US', N'E-Mail')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'email', N'es-AR', N'E-Mail')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.address.required', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.address.required', N'es-AR', N'La direcci?n es requerida')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.bucketsize.required', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.bucketsize.required', N'es-AR', N'Debe ingresar un intervalo de tiempo mayor que 0.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.capacity.required', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.capacity.required', N'es-AR', N'Debe ingresar una capacidad de invitados mayor que 0.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.name.required', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.name.required', N'es-AR', N'El nombre es requerido')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.price.required', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'error.eventroom.price.required', N'es-AR', N'El precio es requerido y debe ser mayor a 0.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.address.required', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.address.required', N'es-AR', N'Ingrese el domicilio del cliente')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.errortitle', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.errortitle', N'es-AR', N'No fue posible guardar el cliente')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.mail.required', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.mail.required', N'es-AR', N'Ingrese el Mail del cliente')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.phone.required', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.phone.required', N'es-AR', N'Ingrese el Tel?fono del cliente')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.taxPayerId.exists', N'en-US', N'Tax Payer id already extists')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.taxPayerId.exists', N'es-AR', N'Ya existe un cliente registrado con ese mismo CUIT/CUILT')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.taxpayerid.required', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.customer.taxpayerid.required', N'es-AR', N'Ingrese el CUIT/CUIL del cliente')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.invaliduserorpassword', N'en-US', N'Invalid username or password')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.invaliduserorpassword', N'es-AR', N'Usuario/clave invalidos')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.missing.grantname', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'errors.missing.grantname', N'es-AR', N'Debe indicar el nombre del permiso para crearlo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event', N'en-US', N'Event')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event', N'es-AR', N'Evento')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.activities.savedok', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.activities.savedok', N'es-AR', N'Se guardo la cronolog?a para el evento 1')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.aditionalservice.delete.confirm', N'en-US', N'Are you sure to delete this aditional service?')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.aditionalservice.delete.confirm', N'es-AR', N'Desea eliminar el servicio seleccionado?')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.aditionalservice.delete.confirm.title', N'en-US', N'Delete Aditional Service')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.aditionalservice.delete.confirm.title', N'es-AR', N'Eliminar pago')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.as.manage.confirm.errortitle', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.as.manage.confirm.errortitle', N'es-AR', N'No se pudo confirmar el servicio')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.as.manage.confirm.ok', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.as.manage.confirm.ok', N'es-AR', N'Servicio confirmado')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.as.manage.provider.cancel', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.as.manage.provider.cancel', N'es-AR', N'Servicio Cancelado')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.assignme', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.assignme', N'es-AR', N'Asignar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.budget.confirmed.body', N'en-US', N'Budget confirmed.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.budget.confirmed.body', N'es-AR', N'Felicitaciones, el evento quedo confirmado y comenzaremos el proceso de reserva con los distintos proveedores para garantizar disponibilidad.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.budget.confirmed.title', N'en-US', N'Budget')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.budget.confirmed.title', N'es-AR', N'Presupuesto CONFIRMADO ')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.budget.created.body', N'en-US', N'Budget created')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.budget.created.body', N'es-AR', N'Deber? abonar la se?a minima para confirmar.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.budget.created.title', N'en-US', N'Budget')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.budget.created.title', N'es-AR', N'Presupuesto creado ')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.create', N'en-US', N'Create')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.create', N'es-AR', N'Crear evento')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.date', N'en-US', N'Date')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.date', N'es-AR', N'Fecha')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.description', N'en-US', N'Description')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.description', N'es-AR', N'Direccion')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.duration', N'en-US', N'Duration')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.duration', N'es-AR', N'Duracion')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.budget.max.requerided', N'en-US', N'Maximum budget required')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.budget.max.requerided', N'es-AR', N'Indique un presupuesto m?ximo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.datefrom.requerided', N'en-US', N'Date from requerided')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.datefrom.requerided', N'es-AR', N'Ingrese una fecha desde mayor a la fecha actual')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.dateto.exeded', N'en-US', N'Date to can''t before of Date From')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.dateto.exeded', N'es-AR', N'La fecha ''hasta'' no puede ser menor que la fecha ''desde''')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.eventroom.required', N'en-US', N'Event room selected is needed')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.eventroom.required', N'es-AR', N'Debe seleccionar un lugar de realizaci?n')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.eventtype.required', N'en-US', N'Event type requerided')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.eventtype.required', N'es-AR', N'Inidique la categor?a del evento')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.title.requerided', N'en-US', N'Event title is requerided')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.error.title.requerided', N'es-AR', N'Ingrese un titulo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.errortitle', N'en-US', N'Please, fix the following errors')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.errortitle', N'es-AR', N'Deber? corregir los siguientes puntos')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guest.error.lastname.requerided', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guest.error.lastname.requerided', N'es-AR', N'Ingrese un apellido')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guest.error.maxexceded', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guest.error.maxexceded', N'es-AR', N'Se excedio la cantidad m?xima de participantes contratados')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guest.error.name.requerided', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guest.error.name.requerided', N'es-AR', N'Ingrese un nombre')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.delete.confirm', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.delete.confirm', N'es-AR', N'Desea eliminar al invitado: ')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.delete.confirm.title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.delete.confirm.title', N'es-AR', N'Eliminar invitado')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.deletedok', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.deletedok', N'es-AR', N'Se elimino al participante.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.save.error', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.save.error', N'es-AR', N'Deber? corregir los siguientes puntos')
GO
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.savedok', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.guests.savedok', N'es-AR', N'Participante guardado ok')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.participants', N'en-US', N'Participants')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.participants', N'es-AR', N'Participantes')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payment.delete.confirm', N'en-US', N'Are you sure?')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payment.delete.confirm', N'es-AR', N'Desea eliminar el pago seleccionado?')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payment.delete.confirm.title', N'en-US', N'Delete payment')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payment.delete.confirm.title', N'es-AR', N'Eliminar pago')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payment.error.minpaidneeded', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payment.error.minpaidneeded', N'es-AR', N'Todav?a no se saldo la se?a minima para confirmar el evento. Pendientes: ')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payment.error.totalamountexceded', N'en-US', N'Total amount exceded')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payment.error.totalamountexceded', N'es-AR', N'El pago que intenta registrar excede el monto total del evento')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payments.add.errortitle', N'en-US', N'Error')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payments.add.errortitle', N'es-AR', N'No se pudo registrar el pago')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payments.add.ok.body', N'en-US', N'Payment recorded')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.payments.add.ok.body', N'es-AR', N'Pago registrado correctamente.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.place', N'en-US', N'Event room')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.place', N'es-AR', N'Lugar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.savedok', N'en-US', N'Saved ok')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.savedok', N'es-AR', N'Evento guardado con ?xito')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.servicios', N'en-US', N'Services')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.servicios', N'es-AR', N'Servicios adicionales')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.title', N'en-US', N'Title')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.title', N'es-AR', N'Titulo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.tyle.title', N'en-US', N'Tyle')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.tyle.title', N'es-AR', N'Tipo de evento')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.unassign', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'event.unassign', N'es-AR', N'Desasignar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventform.title', N'en-US', N'Event')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventform.title', N'es-AR', N'Evento')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventoroom.abmc.saved', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventoroom.abmc.saved', N'es-AR', N'Se guard? el evento #')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventroom.abmc.errortitle', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventroom.abmc.errortitle', N'es-AR', N'Deber? corregir los siguientes puntos')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventroom.details.title', N'en-US', N'Details')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventroom.details.title', N'es-AR', N'Detalle')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventroom.errors.dvv.dvhfails', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventroom.errors.dvv.dvhfails', N'es-AR', N'Integridad fallida para el lugar: ')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventroom.title', N'en-US', N'Event room')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventroom.title', N'es-AR', N'Salon')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventrooms.dvv.generatedok', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventrooms.dvv.generatedok', N'es-AR', N'DVV generado con ?xito')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventrooms.error.generatedvv.title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventrooms.error.generatedvv.title', N'es-AR', N'No se pudo regenerar el DVV')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'events.title', N'en-US', N'Events')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'events.title', N'es-AR', N'Eventos')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.BUDGET', N'en-US', N'Budget')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.BUDGET', N'es-AR', N'BUDGET')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.CONFIRMED', N'en-US', N'Confirmed')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.CONFIRMED', N'es-AR', N'CONFIRMED')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.INITIALIZED', N'en-US', N'Initialized')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.INITIALIZED', N'es-AR', N'INITIALIZED')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.PRESUPUESTED', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.PRESUPUESTED', N'es-AR', N'PRESUPUESTED')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.select', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventstatus.select', N'es-AR', N'Seleccione...')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtitle.tittle', N'en-US', N'Title')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtitle.tittle', N'es-AR', N'Titulo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtype.Casamiento', N'en-US', N'Weding')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtype.Casamiento', N'es-AR', N'Casamiento')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtype.Casual', N'en-US', N'Casual')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtype.Casual', N'es-AR', N'Casual')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtype.Corporativo', N'en-US', N'Corporative')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtype.Corporativo', N'es-AR', N'Corporativo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtype.Otros', N'en-US', N'Others')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'eventtype.Otros', N'es-AR', N'Otros')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'families', N'en-US', N'Families')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'families', N'es-AR', N'Familias')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'family', N'en-US', N'Family')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'family', N'es-AR', N'Familia')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'filter.aditionalservice.column.id', N'en-US', N'Id')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'filter.aditionalservice.column.id', N'es-AR', N'Id')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'filter.aditionalservice.column.name', N'en-US', N'Name')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'filter.aditionalservice.column.name', N'es-AR', N'Nombre')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'filter.aditionalservice.column.price', N'en-US', N'Price')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'filter.aditionalservice.column.price', N'es-AR', N'Precio')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'filters.title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'filters.title', N'es-AR', N'Filitros')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'foodType.Title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'foodType.Title', N'es-AR', N'Alimentaci?n')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'FrmCrearEditarIdioma.Error.SeleccionaIdioma', N'en-US', N'Pick a language')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'FrmCrearEditarIdioma.Error.SeleccionaIdioma', N'es-AR', N'Escriba un identificador de idioma, se recomienda el formato de la RFC3066 (es-AR)')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'frmlogin.login.title', N'en-US', N'Log In')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'frmlogin.login.title', N'es-AR', N'Iniciar sesi?n')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'grants', N'en-US', N'Grants')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'grants', N'es-AR', N'Patentes')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'grants.correctsave', N'en-US', N'Saved')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'grants.correctsave', N'es-AR', N'Los permisos se guardaron correctamente para el usuario pepe.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'guess.title', N'en-US', N'Guess')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'guess.title', N'es-AR', N'Invitados')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'guest.taxPayerId.Title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'guest.taxPayerId.Title', N'es-AR', N'CUIT/CUIL')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'guests', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'guests', N'es-AR', N'Invitados')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'guests.title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'guests.title', N'es-AR', N'Invitados')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.custommers.mail', N'en-US', N'Mail')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.custommers.mail', N'es-AR', N'Mail')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.custommers.name', N'en-US', N'Name')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.custommers.name', N'es-AR', N'Nombre')
GO
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.custommers.taxPayerId', N'en-US', N'Tax Payer id')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.custommers.taxPayerId', N'es-AR', N'CUIL/CUIT')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.error.selectcustomer', N'en-US', N'Select')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.error.selectcustomer', N'es-AR', N'Seleccione un cliente')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.events.asigned.ok', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.events.asigned.ok', N'es-AR', N'Usuario asignado con ?xtio')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.events.unnasigned.ok', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'home.events.unnasigned.ok', N'es-AR', N'Usuario desasignado con ?xtio')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.active', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.active', N'es-AR', N'Activo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.address', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.address', N'es-AR', N'Direcci?n')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.assigned', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.assigned', N'es-AR', N'Asignado')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.bucketsize', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.bucketsize', N'es-AR', N'Intervalos (hs)')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.capacity', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.capacity', N'es-AR', N'Capacidad')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.id', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.id', N'es-AR', N'Id')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.name', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.name', N'es-AR', N'Nombre')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.price', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'label.price', N'es-AR', N'Precio')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lang.manage', N'en-US', N'Manage')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lang.manage', N'es-AR', N'Gestionar idioma')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'language', N'en-US', N'Language')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'language', N'es-AR', N'Idioma')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lastname', N'en-US', N'Lastname')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lastname', N'es-AR', N'Apellido')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lastname.title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lastname.title', N'es-AR', N'Apellido')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'login.invaliddigit', N'en-US', N'Invalid digit')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'login.invaliddigit', N'es-AR', N'Registro de inicio de sesi?n corrupto, contacte al administrador')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'login.invaliduserpass', N'en-US', N'Invalid username or password')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'login.invaliduserpass', N'es-AR', N'Usuario y/o clave invalida')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'login.lockeduser', N'en-US', N'User locked')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'login.lockeduser', N'es-AR', N'Usuario bloqueado')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'login.password.expired', N'en-US', N'Password expired')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'login.password.expired', N'es-AR', N'Expiro su password, ingrese uno nuevo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lugar.buscar', N'en-US', N'Search')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lugar.buscar', N'es-AR', N'Buscar Lugar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lugares.history.export.ok', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'lugares.history.export.ok', N'es-AR', N'Exportado ok')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mail.title', N'en-US', N'Mail')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mail.title', N'es-AR', N'Mail')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'main.title', N'en-US', N'Main')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'main.title', N'es-AR', N'Se Hace!')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'minus', N'en-US', N'-')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'minus', N'es-AR', N'Presupuesto')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.admin', N'en-US', N'Admin')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.admin', N'es-AR', N'Administrador')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.admin.grants', N'en-US', N'Manage grants')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.admin.grants', N'es-AR', N'Admnistrar Permisos')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.admin.lang', N'en-US', N'Language')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.admin.lang', N'es-AR', N'Gestor idiomas')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.admin.users', N'en-US', N'Manage users')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.admin.users', N'es-AR', N'Admnistrar Usuarios')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.home', N'en-US', N'Home')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.home', N'es-AR', N'Home')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.lang', N'en-US', N'Language')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.lang', N'es-AR', N'Idioma')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.lang.change', N'en-US', N'Change languaje')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.lang.change', N'es-AR', N'Cambiar Idioma')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.login', N'en-US', N'Login')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.login', N'es-AR', N'Iniciar Sesi?n')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.logout', N'en-US', N'Logout')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.logout', N'es-AR', N'Cerrar sesi?n')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.newevent', N'en-US', N'New Event')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.newevent', N'es-AR', N'Crear evento')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.register', N'en-US', N'Register')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.register', N'es-AR', N'Registrarse')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.singin', N'en-US', N'Sign In')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.singin', N'es-AR', N'Registrar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.usuario', N'en-US', N'User')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'mnu.usuario', N'es-AR', N'Usuario')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'name', N'en-US', N'name')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'name', N'es-AR', N'Nombre')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'name.title', N'en-US', N'Name')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'name.title', N'es-AR', N'Nombre')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'newevent.Tittle', N'en-US', N'New Event')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'newevent.Tittle', N'es-AR', N'Nuevo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'nombre', N'en-US', N'Name')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'nombre', N'es-AR', N'Nombre')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'observations.Title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'observations.Title', N'es-AR', N'Observaciones')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'open.title', N'en-US', N'Open')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'open.title', N'es-AR', N'Abrir')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paid.title', N'en-US', N'Paid')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paid.title', N'es-AR', N'Abonado')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'password', N'en-US', N'Password')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'password', N'es-AR', N'Clave')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'password.change.ok', N'en-US', N'Password changed')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'password.change.ok', N'es-AR', N'Clave cambiada correctamente')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'password.newpassword', N'en-US', N'New password')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'password.newpassword', N'es-AR', N'Clave nueva')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'password.newpassword.repeat', N'en-US', N'repeat')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'password.newpassword.repeat', N'es-AR', N'Repetir clave nueva')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'payment.date', N'en-US', N'Payment Date')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'payment.date', N'es-AR', N'Fecha del Pago')
GO
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'payment.save.conciliationkey.requerided', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'payment.save.conciliationkey.requerided', N'es-AR', N'Ingrese un criterio de conciliaci?n')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'payments.registered', N'en-US', N'Payment registered')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'payments.registered', N'es-AR', N'Pagos Realizados')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'payments.title', N'en-US', N'Payments')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'payments.title', N'es-AR', N'Pagos')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.Casamiento', N'en-US', N'Weding')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.Casamiento', N'es-AR', N'Casamiento')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.CASH', N'en-US', N'Cash')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.CASH', N'es-AR', N'CASH')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.Casual', N'en-US', N'Casual')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.Casual', N'es-AR', N'Casual')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.Corporativo', N'en-US', N'Corporative')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.Corporativo', N'es-AR', N'Corporativo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.CREDIT_CARD', N'en-US', N'Credit Card')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.CREDIT_CARD', N'es-AR', N'CREDIT_CARD')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.CRYPTO', N'en-US', N'Crypto')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.CRYPTO', N'es-AR', N'CRYPTO')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.DEBIT_CARD', N'en-US', N'Debit card')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.DEBIT_CARD', N'es-AR', N'DEBIT_CARD')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.Otros', N'en-US', N'Others')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'paymentType.Otros', N'es-AR', N'Otros')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'pendingtopay.title', N'en-US', N'Pending')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'pendingtopay.title', N'es-AR', N'Pago Min.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'phone', N'en-US', N'Phone')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'phone', N'es-AR', N'Tel?fono')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.filter.title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.filter.title', N'es-AR', N'Filtrar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.label.filter.id', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.label.filter.id', N'es-AR', N'Id')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.label.filter.name', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.label.filter.name', N'es-AR', N'Nombre')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.tables.bucketSieze', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.tables.bucketSieze', N'es-AR', N'Tiempo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.tables.capacity', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.tables.capacity', N'es-AR', N'Cant.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.tables.id', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.tables.id', N'es-AR', N'Id')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.tables.name', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'places.tables.name', N'es-AR', N'Nombre')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'precio', N'en-US', N'Price')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'precio', N'es-AR', N'Precio')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'quantity.title', N'en-US', N'Quantity')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'quantity.title', N'es-AR', N'Cantidad')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'register.success', N'en-US', N'Successfully registered')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'register.success', N'es-AR', N'Usuario dado de alta correctamente.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'servicio.btn.agregar', N'en-US', N'Add')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'servicio.btn.agregar', N'es-AR', N'Quitar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'specialrequest.title', N'en-US', N'Special request')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'specialrequest.title', N'es-AR', N'Pedidos especiales')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'status.title', N'en-US', N'Status')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'status.title', N'es-AR', N'Estado')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'tab.aditionalServices', N'en-US', N'Aditional Services')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'tab.aditionalServices', N'es-AR', N'Servicios adicionales')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'tab.characteristics', N'en-US', N'Characteristics')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'tab.characteristics', N'es-AR', N'Caracteristicas')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'tab.cronology', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'tab.cronology', N'es-AR', N'Cronolog?a')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'tab.eventrooms', N'en-US', N'Eventrooms')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'tab.eventrooms', N'es-AR', N'Lugares')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'taxPayerId.title', N'en-US', N'Tax Payer Id')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'taxPayerId.title', N'es-AR', N'CUIT/CUIL')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'taxpayertype.tittle', N'en-US', N'Tax Payer Type')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'taxpayertype.tittle', N'es-AR', N'CUIT/CUIL')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.admin.grants', N'en-US', N'Manage grants')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.admin.grants', N'es-AR', N'Administrar permisos')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.doit', N'en-US', N'Do It!')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.doit', N'es-AR', N'Se hace!')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.lang.manage', N'en-US', N'Manage language')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.lang.manage', N'es-AR', N'Gestion de idiomas')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.login', N'en-US', N'Login')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.login', N'es-AR', N'Login')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.main', N'en-US', N'Do it!')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.main', N'es-AR', N'Se Hace!')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.signin', N'en-US', N'Sign in')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.signin', N'es-AR', N'Registrar')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.Title', N'en-US', N'Sign In')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'title.Title', N'es-AR', N'Titulo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'total.title', N'en-US', N'Total')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'total.title', N'es-AR', N'Total')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'type.title', N'en-US', N'Type')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'type.title', N'es-AR', N'Tipo')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'UnhandledGenericErrorMessage', N'en-US', N'Ops! An unexpected error occurs')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'UnhandledGenericErrorMessage', N'es-AR', N'Ups! Ocurrio un error.')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'user', N'en-US', N'User')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'user', N'es-AR', N'Usuario')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'username', N'en-US', N'Username')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'username', N'es-AR', N'Nombre de Usuario')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'username.title', N'en-US', N'')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'username.title', N'es-AR', N'Usuario')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'webpage', N'en-US', N'Webpage')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'webpage', N'es-AR', N'Web')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'zipcode.title', N'en-US', N'ZipCode')
INSERT [dbo].[Traducciones] ([clave], [idioma], [valor]) VALUES (N'zipcode.title', N'es-AR', N'C?digo Postal')
GO
INSERT [dbo].[Usuarios] ([Id], [username], [password], [Language], [FailCount], [LastLogin], [checkdigit], [expired], [Name], [Lastname]) VALUES (N'df601be0-ca40-4f2f-82ed-0477acd646de', N'MarianoC', N'?C:??=??Z?]? ??', N'es-AR', 0, CAST(N'2023-05-21T16:55:39.240' AS DateTime), 3524, 0, N'Mariano', N'Coppola')
INSERT [dbo].[Usuarios] ([Id], [username], [password], [Language], [FailCount], [LastLogin], [checkdigit], [expired], [Name], [Lastname]) VALUES (N'81671a51-be30-4ce0-a5ec-93da97aac259', N'MariaP', N'???[??
?bP?^?2?', N'es-AR', 0, CAST(N'2023-05-16T22:46:55.560' AS DateTime), 3482, 0, N'Maria', N'Perego')
INSERT [dbo].[Usuarios] ([Id], [username], [password], [Language], [FailCount], [LastLogin], [checkdigit], [expired], [Name], [Lastname]) VALUES (N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'admin', N'<?????oE|???20?', N'es-AR', 0, CAST(N'2023-06-20T22:42:57.333' AS DateTime), 3462, 0, N'Admin', N'Admin')
INSERT [dbo].[Usuarios] ([Id], [username], [password], [Language], [FailCount], [LastLogin], [checkdigit], [expired], [Name], [Lastname]) VALUES (N'9cc459c4-697c-4d56-b938-cd03452e7be7', N'Luisb', N'?#/P??????F?7mb?', N'es-AR', 0, NULL, 3458, 1, N'Luis', N'Borges')
INSERT [dbo].[Usuarios] ([Id], [username], [password], [Language], [FailCount], [LastLogin], [checkdigit], [expired], [Name], [Lastname]) VALUES (N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'maga', N'???A???@?W?<?t??', N'es-AR', 0, CAST(N'2023-06-20T21:52:25.963' AS DateTime), 3609, 0, N'magali', N'alfano')
GO
INSERT [dbo].[usuarios_permisos] ([id_usuario], [id_permiso]) VALUES (N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'031165cc-98f4-460a-95db-18ea25e3bd9b')
INSERT [dbo].[usuarios_permisos] ([id_usuario], [id_permiso]) VALUES (N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'439dc8c5-4fce-4f70-b31c-48f0ba8c3673')
INSERT [dbo].[usuarios_permisos] ([id_usuario], [id_permiso]) VALUES (N'41c4a58e-a9df-4e4b-b781-b6940766ac09', N'c68adcd8-c7fa-480d-93c5-d157b026df99')
INSERT [dbo].[usuarios_permisos] ([id_usuario], [id_permiso]) VALUES (N'a83d75af-9372-46b6-bfd4-d6c085e01fbf', N'031165cc-98f4-460a-95db-18ea25e3bd9b')
GO
/****** Object:  Index [event_policy]    Script Date: 22/6/2023 21:24:31 ******/
ALTER TABLE [dbo].[EventPolicies] ADD  CONSTRAINT [event_policy] UNIQUE NONCLUSTERED 
(
	[EventId] ASC,
	[PolicyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Activities] ADD  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_Events]
GO
ALTER TABLE [dbo].[AditionalServices]  WITH CHECK ADD  CONSTRAINT [FK_AditionalServices_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[AditionalServices] CHECK CONSTRAINT [FK_AditionalServices_Events]
GO
ALTER TABLE [dbo].[AditionalServices]  WITH CHECK ADD  CONSTRAINT [FK_AditionalServices_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
GO
ALTER TABLE [dbo].[AditionalServices] CHECK CONSTRAINT [FK_AditionalServices_Service]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_AditionalServices] FOREIGN KEY([RelatedId])
REFERENCES [dbo].[AditionalServices] ([Id])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_AditionalServices]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_Events]
GO
ALTER TABLE [dbo].[EventPolicies]  WITH CHECK ADD  CONSTRAINT [FK_EventPolicies_EventPolicies] FOREIGN KEY([EventId], [PolicyId])
REFERENCES [dbo].[EventPolicies] ([EventId], [PolicyId])
GO
ALTER TABLE [dbo].[EventPolicies] CHECK CONSTRAINT [FK_EventPolicies_EventPolicies]
GO
ALTER TABLE [dbo].[EventPolicies]  WITH CHECK ADD  CONSTRAINT [FK_EventPolicies_EventPolicies1] FOREIGN KEY([EventId], [PolicyId])
REFERENCES [dbo].[EventPolicies] ([EventId], [PolicyId])
GO
ALTER TABLE [dbo].[EventPolicies] CHECK CONSTRAINT [FK_EventPolicies_EventPolicies1]
GO
ALTER TABLE [dbo].[EventPolicies]  WITH CHECK ADD  CONSTRAINT [FK_EventPolicies_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[EventPolicies] CHECK CONSTRAINT [FK_EventPolicies_Events]
GO
ALTER TABLE [dbo].[EventRooms_Audit]  WITH CHECK ADD  CONSTRAINT [FK_EventRooms_Audit_EventRooms] FOREIGN KEY([Id])
REFERENCES [dbo].[EventRooms] ([Id])
GO
ALTER TABLE [dbo].[EventRooms_Audit] CHECK CONSTRAINT [FK_EventRooms_Audit_EventRooms]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Customers]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Events] FOREIGN KEY([Id])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Events]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Usuarios] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Usuarios]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Usuarios_update] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Usuarios_update]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Usuarios1] FOREIGN KEY([AssignedId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Usuarios1]
GO
ALTER TABLE [dbo].[Guests]  WITH CHECK ADD  CONSTRAINT [FK_Guests_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[Guests] CHECK CONSTRAINT [FK_Guests_Events]
GO
ALTER TABLE [dbo].[Idiomas]  WITH NOCHECK ADD  CONSTRAINT [FK_Idiomas_Idiomas] FOREIGN KEY([Id])
REFERENCES [dbo].[Idiomas] ([Id])
GO
ALTER TABLE [dbo].[Idiomas] CHECK CONSTRAINT [FK_Idiomas_Idiomas]
GO
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_Usuarios] FOREIGN KEY([userId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_Usuarios]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Events]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Usuarios] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Usuarios]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Usuarios_update] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Usuarios_update]
GO
ALTER TABLE [dbo].[permiso_permiso]  WITH CHECK ADD  CONSTRAINT [FK_permiso_permiso_permiso] FOREIGN KEY([id_permiso_padre])
REFERENCES [dbo].[permiso] ([id])
GO
ALTER TABLE [dbo].[permiso_permiso] CHECK CONSTRAINT [FK_permiso_permiso_permiso]
GO
ALTER TABLE [dbo].[permiso_permiso]  WITH CHECK ADD  CONSTRAINT [FK_permiso_permiso_permiso1] FOREIGN KEY([id_permiso_hijo])
REFERENCES [dbo].[permiso] ([id])
GO
ALTER TABLE [dbo].[permiso_permiso] CHECK CONSTRAINT [FK_permiso_permiso_permiso1]
GO
ALTER TABLE [dbo].[Policies]  WITH NOCHECK ADD  CONSTRAINT [FK_Policies_EventRooms] FOREIGN KEY([ProductId])
REFERENCES [dbo].[EventRooms] ([Id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Policies] NOCHECK CONSTRAINT [FK_Policies_EventRooms]
GO
ALTER TABLE [dbo].[Policies]  WITH NOCHECK ADD  CONSTRAINT [FK_Policies_Service] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Services] ([Id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Policies] NOCHECK CONSTRAINT [FK_Policies_Service]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_Schedules_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([Id])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_Schedules_Events]
GO
ALTER TABLE [dbo].[Traducciones]  WITH CHECK ADD  CONSTRAINT [FK_Traducciones_Idiomas] FOREIGN KEY([idioma])
REFERENCES [dbo].[Idiomas] ([Id])
GO
ALTER TABLE [dbo].[Traducciones] CHECK CONSTRAINT [FK_Traducciones_Idiomas]
GO
ALTER TABLE [dbo].[Traducciones]  WITH CHECK ADD  CONSTRAINT [FK_Traducciones_Traducciones] FOREIGN KEY([clave], [idioma])
REFERENCES [dbo].[Traducciones] ([clave], [idioma])
GO
ALTER TABLE [dbo].[Traducciones] CHECK CONSTRAINT [FK_Traducciones_Traducciones]
GO
ALTER TABLE [dbo].[Usuarios]  WITH NOCHECK ADD  CONSTRAINT [FK_Usuarios_Idiomas] FOREIGN KEY([Language])
REFERENCES [dbo].[Idiomas] ([Id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Idiomas]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Usuarios] FOREIGN KEY([Id])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Usuarios]
GO
ALTER TABLE [dbo].[usuarios_permisos]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_permisos_permiso] FOREIGN KEY([id_permiso])
REFERENCES [dbo].[permiso] ([id])
GO
ALTER TABLE [dbo].[usuarios_permisos] CHECK CONSTRAINT [FK_usuarios_permisos_permiso]
GO
ALTER TABLE [dbo].[usuarios_permisos]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_permisos_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[usuarios_permisos] CHECK CONSTRAINT [FK_usuarios_permisos_usuarios]
GO
/****** Object:  StoredProcedure [dbo].[sp_Activity_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_Activity_Upsert]
	-- Add the parameters for the stored procedure here
	@Id int OUTPUT, 
	@EventId int,
	@Description VARCHAR(300),
	@ActivityOrder int,
	@Enabled BIT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF @Id is not null 
		BEGIN
			UPDATE [dbo].[Activities]
			   SET 
				  [ActivityOrder] = @ActivityOrder
				  ,[Description] = @Description
				  ,[Enabled] = @Enabled
				  ,[UpdatedAt] = CURRENT_TIMESTAMP
			 WHERE [Id] = @Id
		END
		ELSE 
		BEGIN

			INSERT INTO [dbo].[Activities]
           (
           [EventId]
           ,[ActivityOrder]
           ,[Description]
           ,[Enabled]
           ,[CreatedAt]
           )
     VALUES
           (
           @EventId
           ,@ActivityOrder
           ,@Description
           ,@Enabled
           ,CURRENT_TIMESTAMP
           )

		    SELECT @Id = SCOPE_IDENTITY();
		END


	  COMMIT
END

GO
/****** Object:  StoredProcedure [dbo].[sp_AditionalService_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_AditionalService_Upsert]
	-- Add the parameters for the stored procedure here
	@Id int OUTPUT, 
	@ServiceId int,
	@EventId int,
	@Quantity numeric(18,2),
	@Price numeric(18,2),
	@Status varchar(100),
	@Description varchar(500)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF @Id is not null 
		BEGIN
			UPDATE [dbo].[AditionalServices]
			   SET [ServiceId] = @ServiceId
				  ,[EventId] = @EventId
				  ,[Quantity] = @Quantity
				  ,[Description] = @Description
				  ,[Price] = @Price
				  ,[Status] = @Status
				  ,[UpdatedAt] = CURRENT_TIMESTAMP
			 WHERE Id = @Id;


		END
		ELSE 
		BEGIN

			INSERT INTO [dbo].[AditionalServices]
			   ([ServiceId]
			   ,[EventId]
			   ,[Quantity]
			   ,[Description]
			   ,[Price]
			   ,[CreatedAt]
			   ,[UpdatedAt]
			   ,[Status]
			   )
			VALUES
			   (
			   @ServiceId
			   ,@EventId
			   ,@Quantity
			   ,@Description
			   ,@Price
			   ,CURRENT_TIMESTAMP
			   ,CURRENT_TIMESTAMP
			   ,@Status
			   );

		    SELECT @Id = SCOPE_IDENTITY();
		END


	  COMMIT
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Customer_Upsert]
	-- Add the parameters for the stored procedure here
	@Id int, 
	@Name varchar(100),
	@LastName varchar(100),
	@Mail varchar(500),
	@Phone varchar(500),
	@Address varchar(500),
	@ZipCode varchar(10),
	@TaxPayerId varchar(50),
	@GeneratedId int OUTPUT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF EXISTS ( SELECT * FROM dbo.[Customers] WITH (UPDLOCK) WHERE Id = @Id)
		BEGIN
			UPDATE [dbo].[Customers]
			   SET [Name] = @Name
				  ,[LastName] = @LastName
				  ,[Mail] = @Mail
				  ,[Phone] = @Phone
				  ,[Address] = @Address
				  ,[ZipCode] = @ZipCode
				  ,[TaxPayerId] = @TaxPayerId
			 WHERE Id = @Id;
			SET @GeneratedId = @Id;
		COMMIT
		END
		ELSE 
		BEGIN
		  	INSERT INTO [dbo].[Customers]
			   ([Name]
			   ,[LastName]
			   ,[Mail]
			   ,[Phone]
			   ,[Address]
			   ,[ZipCode]
			   ,[TaxPayerId])
			 VALUES
				   (@Name
				   ,@LastName
				   ,@Mail
				   ,@Phone
				   ,@Address
				   ,@ZipCode
				   ,@TaxPayerId);
			COMMIT
			SET @GeneratedId = @@IDENTITY
			END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Event_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Event_Upsert]
	-- Add the parameters for the stored procedure here
	@Id int OUTPUT, 
	@Title varchar(100),
	@Description varchar(1000),
	@MinBudget numeric(18,2),
	@MaxBudget numeric(18,2),
	@Guess int,
	@EventType varchar(50),
	@EventRoomDetails varchar(300),
	@EventRoomPrice numeric(18,2),
	@CustomerId int,
    @UserId uniqueidentifier,
    @SpecialRequest varchar(1000),
    @Status varchar(50),
    @DateFrom datetime,
    @DateTo datetime,
	@AssignedId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF @Id is not null 
		BEGIN
			UPDATE [dbo].[Events]
			   SET [Title] = @Title
				  ,[Description] = @Description
				  ,[MinBudget] = @MinBudget
				  ,[MaxBudget] = @MaxBudget
				  ,[GuessQuantity] = @Guess
				  ,[EventType] = @EventType
				  ,[EventRoomDetails] = @EventRoomDetails
				  ,[EventRoomPrice] = @EventRoomPrice
				  ,[CustomerId] = @CustomerId
				  ,[LastUpdatedAt] = CURRENT_TIMESTAMP 
				  ,[LastUpdatedBy] = @UserId
				  ,[SpecialRequest] = @SpecialRequest
				  ,[Status] = @Status
				  ,[DateFrom] = @DateFrom
				  ,[DateTo] = @DateTo
				  , [AssignedId] = @AssignedId
			 WHERE Id = @Id;

		END
		ELSE 
		BEGIN
			INSERT INTO [dbo].[Events]
				   ([Title]
				   ,[Description]
				   ,[MinBudget]
				   ,[MaxBudget]
				   ,[GuessQuantity]
				   ,[EventType]
				   ,[EventRoomDetails]
				   ,[EventRoomPrice]
				   ,[CustomerId]
				   ,[CreatedAt]
				   ,[LastUpdatedAt]
				   ,[LastUpdatedBy]
				   ,[CreatedBy]
				   ,[SpecialRequest]
				   ,[Status]
				   ,[DateFrom]
				   ,[DateTo]
				   ,[AssignedId])
			 VALUES
				   (@Title
				   ,@Description
				   ,@MinBudget
				   ,@MaxBudget
				   ,@Guess
				   ,@EventType
				   ,@EventRoomDetails
				   ,@EventRoomPrice
				   ,@CustomerId
				   ,SYSDATETIME()
				   ,NULL -- [LastUpdatedAt]
				   ,NULL -- [LastUpdatedBy]
				   ,@UserId
				   ,@SpecialRequest
				   ,@Status
				   ,@DateFrom
				   ,@DateTo
				   ,@AssignedId);

		    SELECT @Id = SCOPE_IDENTITY();
			END


	  COMMIT
END
GO
/****** Object:  StoredProcedure [dbo].[sp_EventRoom_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_EventRoom_Upsert] 
	-- Add the parameters for the stored procedure here
	@Id int OUTPUT, 
	@Name varchar(255),
	@Address varchar(255),
	@Capacity int,
	@BucketSize int,
	@Price numeric(18,2),
	@Active bit,
	@DVH int,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	BEGIN TRAN
	IF @Id is not null 
		BEGIN
		-- audit last state previously
		INSERT INTO [dbo].[EventRooms_Audit]
		SELECT * from EventRooms where Id = @Id; 

		UPDATE [dbo].[EventRooms]
		SET [Name] = @Name,
		[Address] = @Address,
		[Capacity] = @Capacity,
		[BucketSize] = @BucketSize,
		[Price] = @Price,
		[Active] = @Active,
		[DVH] = @DVH,
		[UpdatedBy] = @UserId,
		[UpdatedAt] = CURRENT_TIMESTAMP

		WHERE Id = @Id;

 END
 ELSE
 BEGIN

		INSERT INTO [dbo].[EventRooms]
			   ([Name]
			   ,[Address]
			   ,[Capacity]
			   ,[BucketSize]
			   ,[Price]
			   ,[Active]
			   ,[DVH]
			   ,[CreatedBy]
			   ,[CreatedAt])
		 VALUES
			   (@Name
			   ,@Address
			   ,@Capacity
			   ,@BucketSize
			   ,@Price
			   ,@Active
			   ,@DVH
			   ,@UserId
			   ,CURRENT_TIMESTAMP);
		SELECT @Id = SCOPE_IDENTITY();
END
COMMIT;


END
GO
/****** Object:  StoredProcedure [dbo].[sp_GenerateDVV_EventRooms]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GenerateDVV_EventRooms]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin tran
		if exists (select * from INTEGRIDAD_VERTICAL with (updlock,serializable) where table_name = 'EventRooms')
		begin
		   update INTEGRIDAD_VERTICAL
		   set dvv = (SELECT sum(dvh) % 30000 FROM EventRooms),
		   lastCalculatedDate = CURRENT_TIMESTAMP
		   where table_name = 'EventRooms';
		end
		else
		begin
		   insert into INTEGRIDAD_VERTICAL (table_name, dvv, lastCalculatedDate)
		   values ('EventRooms', (SELECT sum(dvh) % 30000 FROM EventRooms), CURRENT_TIMESTAMP);
		end
	commit tran

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarBitacora]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GuardarBitacora] 
	-- Add the parameters for the stored procedure here
	@userId uniqueidentifier, 
	@message varchar(1000),
	@criticity varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO [dbo].[Logs]
           ([userId]
           ,[message],
		   [criticity],
		   [creationDate])
     VALUES
           (@userId
           ,@message,
		   @criticity,
		   GETDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Guest_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_Guest_Upsert]
	-- Add the parameters for the stored procedure here
	@Id int OUTPUT, 
	@EventId int,
	@Name VARCHAR(150),
	@LastName VARCHAR(150),
	@TaxPayerId VARCHAR(300),
	@FoodType VARCHAR(50),
	@Quantity int,
	@Details VARCHAR(300),
	@Enabled BIT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF @Id is not null 
		BEGIN			
			UPDATE [dbo].[Guests]
			   SET 

				  [Name] = @Name
				  ,[LastName] = @LastName
				  ,[TaxPayerId] = @TaxPayerId
				  ,[FoodType] = @FoodType
				  ,[Quantity] = @Quantity
				  ,[Details] = @Details
				  ,[UpdatedAt] = CURRENT_TIMESTAMP
				  , [Enabled] = @Enabled
			 WHERE Id = @Id;

		END
		ELSE 
		BEGIN



			INSERT INTO [dbo].[Guests]
					   (
					   [EventId]
					   ,[Name]
					   ,[LastName]
					   ,[TaxPayerId]
					   ,[FoodType]
					   ,[Quantity]
					   ,[Details]
					   ,[CreatedAt]
					   , [Enabled])
				 VALUES
					   (
					   @EventId
					   ,@Name
					   ,@LastName
					   ,@TaxPayerId
					   ,@FoodType
					   ,@Quantity
					   ,@Details
					   ,CURRENT_TIMESTAMP
					   , @Enabled
					   )


		    SELECT @Id = SCOPE_IDENTITY();
		END


	  COMMIT
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Idioma_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Idioma_Upsert]
	-- Add the parameters for the stored procedure here
	@idioma varchar(5), 
	@descripcion varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF EXISTS ( SELECT * FROM dbo.Idiomas WITH (UPDLOCK) WHERE id = @idioma)

		  UPDATE dbo.Idiomas
			 SET Id = @idioma, Descripcion = @descripcion
		   WHERE id = @idioma;

		ELSE 

		  INSERT dbo.Idiomas( Id, Descripcion)
		  VALUES ( @idioma,@descripcion);

	  COMMIT
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Payment_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Payment_Upsert]
	-- Add the parameters for the stored procedure here
	@Id int OUTPUT, 
	@EventId int,
	@Type varchar(20),
	@Amount numeric(18,2),
	@PaymentDate datetime,
	@ConciliationKey varchar(50),
	@Status bit,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF @Id is not null 
		BEGIN
			UPDATE [dbo].[Payments]
			   SET [EventId] = @EventId
				  ,[Type] = @Type
				  ,[Amount] = @Amount
				  ,[PaymentDate] = @PaymentDate
				  ,[ConciliationKey] = @ConciliationKey
				  ,[Status] = @Status
				  ,[ModifiedAt] = CURRENT_TIMESTAMP
				  ,[ModifiedBy] = @UserId
			 WHERE Id = @Id
		END
		ELSE 
		BEGIN

			INSERT INTO [dbo].[Payments]
					   ([EventId]
					   ,[Type]
					   ,[Amount]
					   ,[PaymentDate]
					   ,[ConciliationKey]
					   ,[Status]
					   ,[CreatedAt]
					   ,[CreatedBy]
					   )
				 VALUES
					   (@EventId
					   ,@Type
					   ,@Amount
					   ,@PaymentDate
					   ,@ConciliationKey
					   ,@Status
					   ,CURRENT_TIMESTAMP
					   ,@UserId
					   )

		    SELECT @Id = SCOPE_IDENTITY();
		END


	  COMMIT
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Services_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sp_Services_Upsert]
	-- Add the parameters for the stored procedure here
	@Id int OUTPUT, 
	@Name VARCHAR(255),
	@ProviderPrice numeric(18,2),
	@Fee numeric(18,2),

	@Status BIT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF @Id is not null 
		BEGIN			
			UPDATE [dbo].[Services]
			   SET [Name] = @Name
				  ,[ProviderPrice] = @ProviderPrice
				  ,[Fee] = @Fee
				  ,[Status] = @Status
				  ,[UpdatedAt] = CURRENT_TIMESTAMP
			 WHERE Id = @Id;
		END
		ELSE 
		BEGIN


			INSERT INTO [dbo].[Services]
					   ([Name]
					   ,[ProviderPrice]
					   ,[Fee]
					   ,[Status]
					   ,[CreatedAt]
					   )
				 VALUES
					   (@Name
					   ,@ProviderPrice
					   ,@Fee
					   ,@Status
					   ,CURRENT_TIMESTAMP
					   )




		    SELECT @Id = SCOPE_IDENTITY();
		END


	  COMMIT
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Traducciones_Upsert]    Script Date: 22/6/2023 21:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Traducciones_Upsert]
	-- Add the parameters for the stored procedure here
	@idioma varchar(5), 
	@clave varchar(255),
	@valor varchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF EXISTS ( SELECT * FROM dbo.Traducciones WITH (UPDLOCK) WHERE idioma = @idioma AND clave = @clave)

		  UPDATE dbo.Traducciones
			 SET valor = @valor
		   WHERE idioma = @idioma AND clave = @clave;

		ELSE 

		  INSERT dbo.Traducciones ( idioma, clave, valor )
		  VALUES ( @idioma, @clave,@valor );

	  COMMIT
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Usuario_Upsert]    Script Date: 22/6/2023 21:24:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Usuario_Upsert]
	-- Add the parameters for the stored procedure here
	@Id uniqueidentifier, 
	@Username varchar(50),
	@Password varchar(250),
	@Idioma varchar(5),
	@FailCount int,
	@LastLogin datetime,
	@expired tinyint,
	@checkdigit int,
	@lastname varchar(250),
	@name varchar(250)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
	  BEGIN TRAN

		IF EXISTS ( SELECT * FROM dbo.[Usuarios] WITH (UPDLOCK) WHERE id = @Id)
		UPDATE [dbo].[Usuarios]
		   SET
			  [username] = @username
			  ,[password] = @password
			  ,[Language] = @idioma
			  ,[FailCount] = @failcount
			  ,[LastLogin] = @lastlogin
			  ,[expired] = @expired
			  ,[checkdigit] = @checkdigit
			  ,[Lastname] = @lastname
			  ,[Name] = @name
		 WHERE Id = @Id;

		ELSE 

		  	INSERT INTO [dbo].[Usuarios]
				   ([Id]
				   ,[username]
				   ,[password]
				   ,[Language]
				   ,[FailCount]
				   ,[LastLogin]
				   ,[expired]
				   ,[checkdigit]
				   ,[Lastname]
				   ,[Name])
			 VALUES
				   (@id
				   ,@username
				   ,@password
				   ,@idioma
				   ,@FailCount
				   ,@LastLogin
				   ,@expired
				   ,@checkdigit
				   ,@lastname
				   ,@name)


	  COMMIT
END
GO
USE [master]
GO
ALTER DATABASE [SGE] SET  READ_WRITE 
GO
