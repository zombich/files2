CREATE TABLE Category
(
	CategoryId int NOT NULL PRIMARY KEY  IDENTITY,
	Name NVARCHAR(100) NOT NULL
)

CREATE TABLE Game
(
Id int NOT NULL IDENTITY,
Name nvarchar(100) NOT NULL,
CategoryId int NOT NULL,
Description nvarchar(500) NULL,
Price decimal(10,2) DEFAULT 500 NOT NULL,
Category varchar(30) CONSTRAINT DF_GAME_category DEFAULT 'Unknown' NOT NULL,




CONSTRAINT PK_Game
PRIMARY KEY (Id),

CONSTRAINT CK_Game_Price
CHECK (price >= 0 AND price < 5000.99),

CONSTRAINT UQ_Game_Name
UNIQUE(Name),
  

  CONSTRAINT FK_Game_Category
  FOREIGN KEY (CategoryId)
  REFERENCES Category
  ON DELETE NO ACTION
  ON UPDATE CASCADE
);