************************************CREATE TABLES************************************
DROP TABLE IF EXISTS [FantasyTaverns];

IF OBJECT_ID('dbo.[FantasyTaverns]','U') IS NULL DROP TABLE 
dbo.[FantasyTaverns];


CREATE TABLE FantasyTaverns (
	ID int Identity,
	TavernName varchar(100),
	LocationID int,
	Floors int,
	OwnerId int,
);


DROP TABLE IF EXISTS [Locations];

IF OBJECT_ID('dbo.[Locations]','U') IS NULL DROP TABLE 
dbo.[Locations];

CREATE TABLE Locations (
	ID int Identity,
	LocationName varchar(100),
);


DROP TABLE IF EXISTS [BasementRats];

IF OBJECT_ID('dbo.[BasementRats]','U') IS NULL DROP TABLE 
dbo.[BasementRats];

CREATE TABLE BasementRats (
	ID int Identity,
	RatName varchar(100),
	TavernId int,
);


DROP TABLE IF EXISTS [Users];

IF OBJECT_ID('dbo.[Users]','U') IS NULL DROP TABLE 
dbo.[Users];

CREATE TABLE Users (
	ID int Identity,
	UserName varchar(50),
	RoleId int,
);


DROP TABLE IF EXISTS [Roles];

IF OBJECT_ID('dbo.[Roles]','U') IS NULL DROP TABLE 
dbo.[Roles];

CREATE TABLE Roles (
	ID int Identity,
	RoleName varchar(50),
	Description varchar(100),
);

*************************************************************************************

ALTER TABLE [FantasyTaverns] (ADD/DROP COLUMN/ALTER COLUMN)
[Column Name] (Column Data Type;);