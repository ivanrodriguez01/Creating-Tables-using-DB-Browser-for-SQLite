CREATE TABLE Team (
  TeamID   INTEGER   PRIMARY KEY,
  TeamName CHAR (35) NOT NULL,
  FeesDue  DECIMAL (8,2),
  SignUp   DATE      NOT NULL
);

CREATE TABLE Player (
  PlayerID INTEGER   PRIMARY KEY,
  FirstNamee  CHAR (35) NOT NULL,
  LastNamee   CHAR (35) NOT NULL,
  Phone       CHAR (11),
  Status      CHAR (3)
    CHECK ( Status IN ('cap', 'mem', 'sub')),
  TeamID INTEGER REFERENCES Team (TeamID)
);

CREATE TABLE Court (
  CourtID    CHAR (5)   PRIMARY KEY,
  CourtNamee CHAR (40)  NOT NULL
);

CREATE TABLE Schedule (
  GameNum   INTEGER   PRIMARY KEY,
  CourtID   CHAR (5)  REFERENCES Court(CourtID),
  Team1     INTEGER REFERENCES Team(TeamID),
  Team2     INTEGER REFERENCES Team(TeamID),
  GameDate  DATE,
  GameTime  INTEGER
);
  
