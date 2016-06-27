
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/27/2016 10:30:53
-- Generated from EDMX file: C:\Users\Sebastiaan\Documents\GitHub\WebApplication6\WebApplication6\BU\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [pit4DB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_FilmBeoordeling]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BeoordelingSet] DROP CONSTRAINT [FK_FilmBeoordeling];
GO
IF OBJECT_ID(N'[dbo].[FK_FilmFilmpersoneel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FilmpersoneelSet] DROP CONSTRAINT [FK_FilmFilmpersoneel];
GO
IF OBJECT_ID(N'[dbo].[FK_FilmPersoonlijkeLijst]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersoonlijkeLijstSet] DROP CONSTRAINT [FK_FilmPersoonlijkeLijst];
GO
IF OBJECT_ID(N'[dbo].[FK_GebruikerBeoordeling]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BeoordelingSet] DROP CONSTRAINT [FK_GebruikerBeoordeling];
GO
IF OBJECT_ID(N'[dbo].[FK_GebruikerPersoonlijkeLijst]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersoonlijkeLijstSet] DROP CONSTRAINT [FK_GebruikerPersoonlijkeLijst];
GO
IF OBJECT_ID(N'[dbo].[FK_PersoneelFilmpersoneel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FilmpersoneelSet] DROP CONSTRAINT [FK_PersoneelFilmpersoneel];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[BeoordelingSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BeoordelingSet];
GO
IF OBJECT_ID(N'[dbo].[FilmpersoneelSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FilmpersoneelSet];
GO
IF OBJECT_ID(N'[dbo].[FilmSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FilmSet];
GO
IF OBJECT_ID(N'[dbo].[GebruikerSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GebruikerSet];
GO
IF OBJECT_ID(N'[dbo].[PersoneelSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersoneelSet];
GO
IF OBJECT_ID(N'[dbo].[PersoonlijkeLijstSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersoonlijkeLijstSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'BeoordelingSet'
CREATE TABLE [dbo].[BeoordelingSet] (
    [BeoordelingID] int IDENTITY(1,1) NOT NULL,
    [FilmFilmID] int  NOT NULL,
    [GebruikerGebruikerID] int  NOT NULL,
    [Review] nvarchar(max)  NULL,
    [Rating] int  NULL
);
GO

-- Creating table 'FilmpersoneelSet'
CREATE TABLE [dbo].[FilmpersoneelSet] (
    [FilmpersoneelID] int IDENTITY(1,1) NOT NULL,
    [FilmFilmID] int  NOT NULL,
    [PersoneelPersoneelID] int  NOT NULL,
    [KarakterNaam] nvarchar(max)  NULL,
    [FunctieNaam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FilmSet'
CREATE TABLE [dbo].[FilmSet] (
    [FilmID] int IDENTITY(1,1) NOT NULL,
    [FilmInspiratieID] int  NULL,
    [FilmRemake] nvarchar(max)  NULL,
    [FilmKleur] bit  NOT NULL,
    [FilmJaar] int  NOT NULL,
    [FilmTaal] nvarchar(max)  NOT NULL,
    [FilmDuur] int  NOT NULL,
    [FilmNaam] nvarchar(max)  NOT NULL,
    [FilmGenre] int  NOT NULL
);
GO

-- Creating table 'GebruikerSet'
CREATE TABLE [dbo].[GebruikerSet] (
    [GebruikerID] int IDENTITY(1,1) NOT NULL,
    [GebruikerNaam] nvarchar(max)  NOT NULL,
    [GebruikerWachtwoord] nvarchar(max)  NOT NULL,
    [GebruikerFunctie] bit  NOT NULL
);
GO

-- Creating table 'PersoneelSet'
CREATE TABLE [dbo].[PersoneelSet] (
    [PersoneelID] int IDENTITY(1,1) NOT NULL,
    [PersoneelNaam] nvarchar(max)  NOT NULL,
    [PersoneelGebDatum] datetime  NOT NULL,
    [PersoneelGeslacht] bit  NOT NULL
);
GO

-- Creating table 'PersoonlijkeLijstSet'
CREATE TABLE [dbo].[PersoonlijkeLijstSet] (
    [PersoonlijkeLijstID] int IDENTITY(1,1) NOT NULL,
    [FilmFilmID] int  NOT NULL,
    [GebruikerGebruikerID] int  NOT NULL,
    [Gezien] bit  NOT NULL,
    [Wenslijst] bit  NOT NULL,
    [InBezit] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BeoordelingID] in table 'BeoordelingSet'
ALTER TABLE [dbo].[BeoordelingSet]
ADD CONSTRAINT [PK_BeoordelingSet]
    PRIMARY KEY CLUSTERED ([BeoordelingID] ASC);
GO

-- Creating primary key on [FilmpersoneelID] in table 'FilmpersoneelSet'
ALTER TABLE [dbo].[FilmpersoneelSet]
ADD CONSTRAINT [PK_FilmpersoneelSet]
    PRIMARY KEY CLUSTERED ([FilmpersoneelID] ASC);
GO

-- Creating primary key on [FilmID] in table 'FilmSet'
ALTER TABLE [dbo].[FilmSet]
ADD CONSTRAINT [PK_FilmSet]
    PRIMARY KEY CLUSTERED ([FilmID] ASC);
GO

-- Creating primary key on [GebruikerID] in table 'GebruikerSet'
ALTER TABLE [dbo].[GebruikerSet]
ADD CONSTRAINT [PK_GebruikerSet]
    PRIMARY KEY CLUSTERED ([GebruikerID] ASC);
GO

-- Creating primary key on [PersoneelID] in table 'PersoneelSet'
ALTER TABLE [dbo].[PersoneelSet]
ADD CONSTRAINT [PK_PersoneelSet]
    PRIMARY KEY CLUSTERED ([PersoneelID] ASC);
GO

-- Creating primary key on [PersoonlijkeLijstID] in table 'PersoonlijkeLijstSet'
ALTER TABLE [dbo].[PersoonlijkeLijstSet]
ADD CONSTRAINT [PK_PersoonlijkeLijstSet]
    PRIMARY KEY CLUSTERED ([PersoonlijkeLijstID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [FilmFilmID] in table 'BeoordelingSet'
ALTER TABLE [dbo].[BeoordelingSet]
ADD CONSTRAINT [FK_FilmBeoordeling]
    FOREIGN KEY ([FilmFilmID])
    REFERENCES [dbo].[FilmSet]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FilmBeoordeling'
CREATE INDEX [IX_FK_FilmBeoordeling]
ON [dbo].[BeoordelingSet]
    ([FilmFilmID]);
GO

-- Creating foreign key on [GebruikerGebruikerID] in table 'BeoordelingSet'
ALTER TABLE [dbo].[BeoordelingSet]
ADD CONSTRAINT [FK_GebruikerBeoordeling]
    FOREIGN KEY ([GebruikerGebruikerID])
    REFERENCES [dbo].[GebruikerSet]
        ([GebruikerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GebruikerBeoordeling'
CREATE INDEX [IX_FK_GebruikerBeoordeling]
ON [dbo].[BeoordelingSet]
    ([GebruikerGebruikerID]);
GO

-- Creating foreign key on [FilmFilmID] in table 'FilmpersoneelSet'
ALTER TABLE [dbo].[FilmpersoneelSet]
ADD CONSTRAINT [FK_FilmFilmpersoneel]
    FOREIGN KEY ([FilmFilmID])
    REFERENCES [dbo].[FilmSet]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FilmFilmpersoneel'
CREATE INDEX [IX_FK_FilmFilmpersoneel]
ON [dbo].[FilmpersoneelSet]
    ([FilmFilmID]);
GO

-- Creating foreign key on [PersoneelPersoneelID] in table 'FilmpersoneelSet'
ALTER TABLE [dbo].[FilmpersoneelSet]
ADD CONSTRAINT [FK_PersoneelFilmpersoneel]
    FOREIGN KEY ([PersoneelPersoneelID])
    REFERENCES [dbo].[PersoneelSet]
        ([PersoneelID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersoneelFilmpersoneel'
CREATE INDEX [IX_FK_PersoneelFilmpersoneel]
ON [dbo].[FilmpersoneelSet]
    ([PersoneelPersoneelID]);
GO

-- Creating foreign key on [FilmFilmID] in table 'PersoonlijkeLijstSet'
ALTER TABLE [dbo].[PersoonlijkeLijstSet]
ADD CONSTRAINT [FK_FilmPersoonlijkeLijst]
    FOREIGN KEY ([FilmFilmID])
    REFERENCES [dbo].[FilmSet]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FilmPersoonlijkeLijst'
CREATE INDEX [IX_FK_FilmPersoonlijkeLijst]
ON [dbo].[PersoonlijkeLijstSet]
    ([FilmFilmID]);
GO

-- Creating foreign key on [GebruikerGebruikerID] in table 'PersoonlijkeLijstSet'
ALTER TABLE [dbo].[PersoonlijkeLijstSet]
ADD CONSTRAINT [FK_GebruikerPersoonlijkeLijst]
    FOREIGN KEY ([GebruikerGebruikerID])
    REFERENCES [dbo].[GebruikerSet]
        ([GebruikerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GebruikerPersoonlijkeLijst'
CREATE INDEX [IX_FK_GebruikerPersoonlijkeLijst]
ON [dbo].[PersoonlijkeLijstSet]
    ([GebruikerGebruikerID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------