USE [sgadb]
GO
/****** Object:  Table [dbo].[Activities]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[AditionalServices]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Bitacoras]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Contacts]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[EventPolicies]    Script Date: 12/5/2023 23:42:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventPolicies](
	[PolicyId] [int] NOT NULL,
	[EventId] [int] NOT NULL,
 CONSTRAINT [event_policy] UNIQUE NONCLUSTERED 
(
	[EventId] ASC,
	[PolicyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventRooms]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[EventRooms_Audit]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Events]    Script Date: 12/5/2023 23:42:14 ******/
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
	[EventRoomId] [int] NULL,
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
/****** Object:  Table [dbo].[Guests]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Idiomas]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[INTEGRIDAD_VERTICAL]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Integrity]    Script Date: 12/5/2023 23:42:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Integrity](
	[table_name] [varchar](255) NOT NULL,
	[digit] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Payments]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[permiso]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[permiso_permiso]    Script Date: 12/5/2023 23:42:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permiso_permiso](
	[id_permiso_padre] [uniqueidentifier] NULL,
	[id_permiso_hijo] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Policies]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Schedules]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Services]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Traducciones]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  Table [dbo].[usuarios_permisos]    Script Date: 12/5/2023 23:42:14 ******/
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
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_EventRooms] FOREIGN KEY([EventRoomId])
REFERENCES [dbo].[EventRooms] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_EventRooms]
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
/****** Object:  StoredProcedure [dbo].[sp_Activity_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AditionalService_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Customer_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Event_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
	@EventRoomId int,
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
				  ,[EventRoomId] = @EventRoomId
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
				   ,[EventRoomId]
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
				   ,@EventRoomId
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
/****** Object:  StoredProcedure [dbo].[sp_EventRoom_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GenerateDVV_EventRooms]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GuardarBitacora]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Guest_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Idioma_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Payment_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Services_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Traducciones_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Usuario_Upsert]    Script Date: 12/5/2023 23:42:14 ******/
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
