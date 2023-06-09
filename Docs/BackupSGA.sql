USE [master]
GO
/****** Object:  Database [SGADB]    Script Date: 22/5/2023 17:36:38 ******/
CREATE DATABASE [SGADB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SGADB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SGADB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SGADB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SGADB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SGADB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SGADB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SGADB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SGADB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SGADB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SGADB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SGADB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SGADB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SGADB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SGADB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SGADB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SGADB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SGADB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SGADB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SGADB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SGADB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SGADB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SGADB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SGADB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SGADB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SGADB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SGADB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SGADB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SGADB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SGADB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SGADB] SET  MULTI_USER 
GO
ALTER DATABASE [SGADB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SGADB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SGADB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SGADB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SGADB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SGADB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SGADB] SET QUERY_STORE = OFF
GO
USE [SGADB]
GO
/****** Object:  Table [dbo].[AditionalServices]    Script Date: 22/5/2023 17:36:38 ******/
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
 CONSTRAINT [PK_EventServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 22/5/2023 17:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[userId] [uniqueidentifier] NULL,
	[message] [varchar](1000) NULL,
	[creationDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bitacoras]    Script Date: 22/5/2023 17:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bitacoras](
	[userId] [uniqueidentifier] NULL,
	[message] [varchar](1000) NULL,
	[creationDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Custommers]    Script Date: 22/5/2023 17:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Custommers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Mail] [varchar](500) NOT NULL,
	[Phone] [varchar](500) NOT NULL,
	[Address] [varchar](500) NOT NULL,
	[ZipCode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Custommers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idiomas]    Script Date: 22/5/2023 17:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idiomas](
	[Id] [varchar](5) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Idiomas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permiso]    Script Date: 22/5/2023 17:36:38 ******/
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
/****** Object:  Table [dbo].[permiso_permiso]    Script Date: 22/5/2023 17:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permiso_permiso](
	[id_permiso_padre] [uniqueidentifier] NULL,
	[id_permiso_hijo] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Policies]    Script Date: 22/5/2023 17:36:38 ******/
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
/****** Object:  Table [dbo].[traducciones]    Script Date: 22/5/2023 17:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[traducciones](
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
/****** Object:  Table [dbo].[usuarios]    Script Date: 22/5/2023 17:36:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[Id] [uniqueidentifier] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[idioma] [varchar](5) NOT NULL,
	[FailCount] [int] NULL,
	[LastLogin] [datetime] NULL,
	[expired] [tinyint] NULL,
	[DVH] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_permisos]    Script Date: 22/5/2023 17:36:38 ******/
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_product]    Script Date: 22/5/2023 17:36:39 ******/
ALTER TABLE [dbo].[Policies] ADD  CONSTRAINT [unique_product] UNIQUE NONCLUSTERED 
(
	[ProductId] ASC,
	[ProductType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[usuarios_permisos]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_permisos_permiso] FOREIGN KEY([id_permiso])
REFERENCES [dbo].[permiso] ([id])
GO
ALTER TABLE [dbo].[usuarios_permisos] CHECK CONSTRAINT [FK_usuarios_permisos_permiso]
GO
ALTER TABLE [dbo].[usuarios_permisos]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_permisos_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([Id])
GO
ALTER TABLE [dbo].[usuarios_permisos] CHECK CONSTRAINT [FK_usuarios_permisos_usuarios]
GO
/****** Object:  StoredProcedure [dbo].[sp_AditionalService_Upsert]    Script Date: 22/5/2023 17:36:39 ******/
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
			   )
			VALUES
			   (
			   @ServiceId
			   ,@EventId
			   ,@Quantity
			   ,@Description
			   ,@Price
			   ,CURRENT_TIMESTAMP
			   );

		    SELECT @Id = SCOPE_IDENTITY();
		END
 
			
	  COMMIT
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Upsert]    Script Date: 22/5/2023 17:36:39 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Event_Upsert]    Script Date: 22/5/2023 17:36:39 ******/
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
    @DateTo datetime
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
				  ,[Guess] = @Guess
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
			 WHERE Id = @Id;
			 
		END
		ELSE 
		BEGIN
			INSERT INTO [dbo].[Events]
				   ([Title]
				   ,[Description]
				   ,[MinBudget]
				   ,[MaxBudget]
				   ,[Guess]
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
				   ,[DateTo])
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
				   ,@DateTo);

		    SELECT @Id = SCOPE_IDENTITY();
			END
 
 
	  COMMIT
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarBitacora]    Script Date: 22/5/2023 17:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GuardarBitacora] 
	-- Add the parameters for the stored procedure here
	@userId uniqueidentifier, 
	@message varchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO [dbo].[Bitacoras]
           ([userId]
           ,[message],
		   [creationDate])
     VALUES
           (@userId
           ,@message,
		   GETDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Idioma_Upsert]    Script Date: 22/5/2023 17:36:39 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Traducciones_Upsert]    Script Date: 22/5/2023 17:36:39 ******/
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
USE [master]
GO
ALTER DATABASE [SGADB] SET  READ_WRITE 
GO
