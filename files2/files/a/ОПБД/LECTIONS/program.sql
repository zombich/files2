-- �������� ������� Game
CREATE TABLE Game (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(500) NULL,
    PublicationYear SMALLINT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

-- �������� ������� Review
CREATE TABLE Review (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    GameId INT NOT NULL,
    [User] NVARCHAR(50) NOT NULL,
    Comment NVARCHAR(500) NOT NULL,
    PublicationDate DATE NOT NULL,
    FOREIGN KEY (GameId) REFERENCES Game(Id)
);