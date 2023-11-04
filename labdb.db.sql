BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "players" (
	"playerID"	INTEGER NOT NULL,
	"username"	VARCHAR(50),
	"firstname"	VARCHAR(50),
	"lastname"	VARCHAR(50),
	PRIMARY KEY("playerID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "purchases" (
	"purchaseID"	INTEGER NOT NULL,
	"gameID"	VARCHAR(50),
	"playerID"	VARCHAR(50),
	"dateandtime"	datetime,
	"cost"	decimal,
	PRIMARY KEY("purchaseID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "games" (
	"gameID"	INTEGER NOT NULL,
	"gametitle"	VARCHAR(50),
	"genre"	VARCHAR(50),
	"releaseyear"	YEAR,
	"platform"	VARCHAR(50),
	"price"	DECIMAL,
	PRIMARY KEY("gameID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "gamegenres" (
	"genreID"	INTEGER NOT NULL,
	"genre"	VARCHAR(50),
	PRIMARY KEY("genreID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "platforms" (
	"platformID"	INTEGER NOT NULL,
	"platformname"	VARCHAR(50),
	PRIMARY KEY("platformID" AUTOINCREMENT)
);
INSERT INTO "players" ("playerID","username","firstname","lastname") VALUES (1,'kartopelka','Kartoplyn','Anton'),
 (2,'sylvana','Havornyan','Hanna'),
 (3,'trall','Nevyadomskiyy','Mykyta'),
 (4,'garrosh','Varenyk','Max');
INSERT INTO "purchases" ("purchaseID","gameID","playerID","dateandtime","cost") VALUES (100,'10','1','1998-01-01 00:00:00',100.2),
 (101,'11','2','1999-01-01 12:03:04',1000.6),
 (102,'12','3','1999-06-01 03:00:06',12.4),
 (103,'13','1','1995-03-04 14:14:14',2222.3);
INSERT INTO "games" ("gameID","gametitle","genre","releaseyear","platform","price") VALUES (10,'Dragon Age','RPG',2009,'Microsoft Windows',178.9),
 (11,'Skyrim','RPG',2011,'Xbox 360',250.7),
 (12,'Baldurs Gate 2','RPG',2000,'Microsoft Windows',100.1),
 (13,'World of Warcraft: Classic','MMORPG',2019,'Microsoft Windows',1000.1);
INSERT INTO "gamegenres" ("genreID","genre") VALUES (1000,'RPG'),
 (1001,'MMORPG');
INSERT INTO "platforms" ("platformID","platformname") VALUES (10000,'Microsoft Windows'),
 (10001,'Xbox 360');
COMMIT;
