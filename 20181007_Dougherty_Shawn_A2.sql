
INSERT INTO FantasyTaverns 
(Name) 
values
('Blast Off'),
('Sin City'),
('Doppleganger'),
('Harper''s Haven'),
('El Boro');

INSERT INTO Services
(Name) 
values
('Remove Poison'),
('Launder Gold'),
('Enchantment'),
('Hire Mercenary');

INSERT INTO User
(Name, RoleID)
values
('Oscar ''The Grouch'' De La Hoya', 1),
('Minsc', 1);



UPDATE Services
SET Name = 'Kidnap Princess'
WHERE ID = 1;


DELETE FROM FantasyTaverns
WHERE ID = 5;


INSERT INTO Receiving
(TavernID, SupplyID, Quantity, Cost)
values
(4, 1, 16, $2.34),
(4, 2, 1, $1.38),
(3, 4, 112, $22.94),
(3, 3, 32, $66.99),
(2, 5, 63, $13.57),
(1, 2, 128, $22.76),
(6, 4, 256, $76.44),
(7, 1, 512, $65.12);



UPDATE Inventory
SET COUNT = CASE WHEN TavernID = 4 AND SupplyID = 1 THEN COUNT + 16
				 WHEN TavernID = 4 AND SupplyID = 2 THEN COUNT + 1
				 WHEN TavernID = 3 AND SupplyID = 4 THEN COUNT + 112
				 WHEN TavernID = 3 AND SupplyID = 3 THEN COUNT + 32
				 WHEN TavernID = 2 AND SupplyID = 5 THEN COUNT + 63
				 WHEN TavernID = 1 AND SupplyID = 2 THEN COUNT + 128
				 WHEN TavernID = 6 AND SupplyID = 4 THEN COUNT + 256
				 WHEN TavernID = 7 AND SupplyID = 1 THEN COUNT + 512
			END
WHERE TavernID IN (1,2,3,4,6,7) AND SupplyID IN (1,2,3,4,5);


INSERT INTO Sales 
(TavernID, ServiceID, GuestName, Price, QuantityPurchased, DatePurchased) 
values
(3,6, 'Crystal Vu', $34.45, 1, GETDATE()),
(4,8, 'Bob Bo Abobo', $12, 7, GETDATE());


SELECT * FROM Sales WHERE
DatePurchased BETWEEN '2018-10-01' AND '2018-10-31';