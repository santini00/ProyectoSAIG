
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/11/2022 14:49:24
-- Generated from EDMX file: E:\Servicio Social\ProyectoSAIG\AppNotificaciones\appNotificaciones.Datos\Modelo\Notificaciones.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Notificaciones];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_notificaciones_sistemas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[notificaciones] DROP CONSTRAINT [FK_notificaciones_sistemas];
GO
IF OBJECT_ID(N'[dbo].[FK_notificaciones_usuarios_notificaciones]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[notificaciones_usuarios] DROP CONSTRAINT [FK_notificaciones_usuarios_notificaciones];
GO
IF OBJECT_ID(N'[dbo].[FK_notificaciones_usuarios_usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[notificaciones_usuarios] DROP CONSTRAINT [FK_notificaciones_usuarios_usuario];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[notificaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[notificaciones];
GO
IF OBJECT_ID(N'[dbo].[notificaciones_usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[notificaciones_usuarios];
GO
IF OBJECT_ID(N'[dbo].[sistemas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sistemas];
GO
IF OBJECT_ID(N'[dbo].[usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[usuario];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'notificaciones'
CREATE TABLE [dbo].[notificaciones] (
    [id] int IDENTITY(1,1) NOT NULL,
    [titulo] varchar(50)  NULL,
    [fecha] datetime  NULL,
    [mensaje] varchar(max)  NULL,
    [eliminado] bit  NULL,
    [leido] bit  NULL,
    [id_sistemas] int  NULL
);
GO

-- Creating table 'notificaciones_usuarios'
CREATE TABLE [dbo].[notificaciones_usuarios] (
    [id] int IDENTITY(1,1) NOT NULL,
    [id_usuarios] int  NULL,
    [id_notificaciones] int  NULL
);
GO

-- Creating table 'sistemas'
CREATE TABLE [dbo].[sistemas] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] varchar(50)  NULL
);
GO

-- Creating table 'usuario'
CREATE TABLE [dbo].[usuario] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] varchar(200)  NOT NULL,
    [nombre_usuario] varchar(8)  NOT NULL,
    [contrasenia] varchar(8)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'notificaciones'
ALTER TABLE [dbo].[notificaciones]
ADD CONSTRAINT [PK_notificaciones]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'notificaciones_usuarios'
ALTER TABLE [dbo].[notificaciones_usuarios]
ADD CONSTRAINT [PK_notificaciones_usuarios]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'sistemas'
ALTER TABLE [dbo].[sistemas]
ADD CONSTRAINT [PK_sistemas]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'usuario'
ALTER TABLE [dbo].[usuario]
ADD CONSTRAINT [PK_usuario]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [id_sistemas] in table 'notificaciones'
ALTER TABLE [dbo].[notificaciones]
ADD CONSTRAINT [FK_notificaciones_sistemas]
    FOREIGN KEY ([id_sistemas])
    REFERENCES [dbo].[sistemas]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_notificaciones_sistemas'
CREATE INDEX [IX_FK_notificaciones_sistemas]
ON [dbo].[notificaciones]
    ([id_sistemas]);
GO

-- Creating foreign key on [id_notificaciones] in table 'notificaciones_usuarios'
ALTER TABLE [dbo].[notificaciones_usuarios]
ADD CONSTRAINT [FK_notificaciones_usuarios_notificaciones]
    FOREIGN KEY ([id_notificaciones])
    REFERENCES [dbo].[notificaciones]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_notificaciones_usuarios_notificaciones'
CREATE INDEX [IX_FK_notificaciones_usuarios_notificaciones]
ON [dbo].[notificaciones_usuarios]
    ([id_notificaciones]);
GO

-- Creating foreign key on [id_usuarios] in table 'notificaciones_usuarios'
ALTER TABLE [dbo].[notificaciones_usuarios]
ADD CONSTRAINT [FK_notificaciones_usuarios_usuario]
    FOREIGN KEY ([id_usuarios])
    REFERENCES [dbo].[usuario]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_notificaciones_usuarios_usuario'
CREATE INDEX [IX_FK_notificaciones_usuarios_usuario]
ON [dbo].[notificaciones_usuarios]
    ([id_usuarios]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------