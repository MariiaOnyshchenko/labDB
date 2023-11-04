import sqlite3

print(sqlite3.sqlite_version)

conn = sqlite3.connect('labdb.db', timeout=10)

c = conn.cursor()

# ___________________filling BD up___________________

# c.execute('''CREATE TABLE "players" (
# 	"playerID"	INTEGER NOT NULL,
# 	"username"	VARCHAR(50),
# 	"firstname"	VARCHAR(50),
# 	"lastname"	VARCHAR(50),
# 	PRIMARY KEY("playerID" AUTOINCREMENT)
# )''')
# for row in c.execute:
#     print(row)

# c.execute('''INSERT INTO players VALUES

# (1, 'volgyn', 'Kartoplyn', 'Anton'),
# (2, 'sylvana', 'Havornyan', 'Hanna'),
# (3, 'trall', 'Nevyadomskiyy', 'Mykyta'),
# (4, 'garrosh', 'Varenyk', 'Max')
# ''')
# for row in c.execute:
#     print(row)

# c.execute('''CREATE TABLE "purchases" (
# 	"purchaseID"	INTEGER NOT NULL,
# 	"gameID"	VARCHAR(50),
# 	"playerID"	VARCHAR(50),
# 	"dateandtime"	datetime,
# 	"cost"	decimal,
# 	PRIMARY KEY("purchaseID" AUTOINCREMENT)
# )''')
# for row in c.execute:
#     print(row)

# c.execute('''INSERT INTO purchases VALUES

# (100, 10, 1, '1998-01-01 00:00:00', 100.2),
# (101, 11, 2, '1999-01-01 12:03:04', 1000.6),
# (102, 12, 3, '1999-06-01 03:00:06', 12.4),
# (103, 13, 1, '1995-03-04 14:14:14', 2222.3)
# ''')
# for row in c.execute:
#     print(row)

# c.execute('''CREATE TABLE "games" (
# 	"gameID"	INTEGER NOT NULL,
# 	"gametitle"	VARCHAR(50),
# 	"genre"	VARCHAR(50),
# 	"releaseyear"	YEAR,
# 	"platform"	VARCHAR(50),
#     "price" DECIMAL,
# 	PRIMARY KEY("gameID" AUTOINCREMENT)
# )''')
# for row in c.execute:
#     print(row)

# c.execute('''INSERT INTO games VALUES

# (10, 'Dragon Age', 'RPG', '2009', 'Microsoft Windows', 178.9),
# (11, 'Skyrim', 'RPG', '2011', 'Xbox 360', 250.7),
# (12, 'Baldurs Gate 2', 'RPG', '2000', 'Microsoft Windows', 100.1),
# (13, 'World of Warcraft: Classic', 'MMORPG', '2019', 'Microsoft Windows', 1000.1)
# ''')
# for row in c.execute:
#     print(row)

# c.execute('''CREATE TABLE "gamegenres" (
# 	"genreID"	INTEGER NOT NULL,
# 	"genre"	VARCHAR(50),
# 	PRIMARY KEY("genreID" AUTOINCREMENT)
# )''')
# for row in c.execute:
#     print(row)

# c.execute('''INSERT INTO gamegenres VALUES

# (1000,  'RPG'),
# (1001, 'MMORPG')
# ''')
# for row in c.execute:
#     print(row)

# c.execute('''CREATE TABLE "platforms" (
# 	"platformID"	INTEGER NOT NULL,
# 	"platformname"	VARCHAR(50),
# 	PRIMARY KEY("platformID" AUTOINCREMENT)
# )''')
# for row in c.execute:
#     print(row)

# c.execute('''INSERT INTO platforms VALUES

# (10000,  'Microsoft Windows'),
# (10001, 'Xbox 360')
# ''')
# for row in c.execute:
#     print(row)

# ___________________testing SELECT1___________________

# c.execute('''select *
# from players pl
# inner join purchases pur
# on pl.playerID = pur.playerID
# where pl.playerID
# in (1, 2)''')

# conn.commit()
# result = c.fetchall()
# print(result)

# ___________________output  of select1___________________ 
# 3.35.4
# [(1, 'volgyn', 'Kartoplyn', 'Anton', 100, '10', '1', '1998-01-01 00:00:00', 100.2), 
#  (1, 'volgyn', 'Kartoplyn', 'Anton', 103, '13', '1', '1995-03-04 14:14:14', 2222.3), 
#  (2, 'sylvana', 'Havornyan', 'Hanna', 101, '11', '2', '1999-01-01 12:03:04', 1000.6)]

# ___________________testing SELECT2___________________

# c.execute('''select *
# from players pl
# left join purchases pur
# on pl.playerID = pur.playerID
# and pl.playerID
# in (1, 2)''')

# conn.commit()
# result = c.fetchall()
# print(result)

# ___________________output  of select2___________________ 
# 3.35.4
# [(1, 'volgyn', 'Kartoplyn', 'Anton', 100, '10', '1', '1998-01-01 00:00:00', 100.2), 
#  (1, 'volgyn', 'Kartoplyn', 'Anton', 103, '13', '1', '1995-03-04 14:14:14', 2222.3), 
#  (2, 'sylvana', 'Havornyan', 'Hanna', 101, '11', '2', '1999-01-01 12:03:04', 1000.6), 
#  (3, 'trall', 'Nevyadomskiyy', 'Mykyta', None, None, None, None, None), 
#  (4, 'garrosh', 'Varenyk', 'Max', None, None, None, None, None)]

# ____________________update___________________ 
# c.execute('''UPDATE players
# SET username = 'kartopelka'
# WHERE playerID = 1''')

# ____________________testing update with select1___________________ 
# c.execute('''select *
# from players pl
# inner join purchases pur
# on pl.playerID = pur.playerID
# where pl.playerID
# in (1, 2)''')

# conn.commit()
# result = c.fetchall()
# print(result)

# ___________________output  of testing update with select1___________________ 
# 3.35.4
# [(1, 'kartopelka', 'Kartoplyn', 'Anton', 100, '10', '1', '1998-01-01 00:00:00', 100.2), 
#  (1, 'kartopelka', 'Kartoplyn', 'Anton', 103, '13', '1', '1995-03-04 14:14:14', 2222.3), 
#  (2, 'sylvana', 'Havornyan', 'Hanna', 101, '11', '2', '1999-01-01 12:03:04', 1000.6)]


conn.close()
