GO
USE FantasyTavern;
GO
CREATE VIEW TavernBrawl AS 
SELECT	FantasyTaverns.Name Name,
		FantasyTaverns.Floors Floors,
		Users.Name Owner,
		Locations.Name Location
FROM FantasyTaverns
INNER JOIN Users on FantasyTaverns.OwnerID = Users.ID
INNER JOIN Roles on Users.RoleID = Roles.ID
INNER JOIN Locations on FantasyTaverns.LocationID = Locations.ID
WHERE Roles.Name LIKE 'Owner';
GO
SELECT * FROM TavernBrawl;
GO

Drop View TavernBrawl;