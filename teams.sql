drop database teams;
CREATE DATABASE teams;
CREATE USER 'teams'@'localhost' IDENTIFIED WITH mysql_native_password BY 'team$';

GRANT ALL ON teams.* TO 'teams'@'localhost';

USE teams;

CREATE TABLE teams (
    id INT auto_increment,
    location VARCHAR(255),
    mascot VARCHAR(255),
    abbreviation VARCHAR(255), 
    conference VARCHAR(255),
    division VARCHAR(255),
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    deletedAt DATETIME,
    PRIMARY KEY(id)
);
INSERT INTO teams (id, location, mascot, abbreviation, conference, division) VALUES 
  ("1",  "Buffalo",  "Bills",  "BUF",  "AFC",  "East"),
  ("2", "Miami", "Dolphins", "MIA", "AFC", "East"),
  ("3", "New England", "Patriots", "NE", "AFC", "East"),
  ("4", "New York", "Jets", "NYJ", "AFC", "East"),
  ("5", "Baltimore", "Ravens", "BAL", "AFC", "North"),
  ("6", "Cincinnati", "Bengals", "CIN", "AFC", "North"),
  ("7", "Cleveland", "Browns", "CLE", "AFC", "North"),
  ("8", "Pittsburgh", "Steelers", "PIT", "AFC", "North"),
  ("9", "Houston", "Texans", "HOU", "AFC", "South"),
  ("10", "Indianapolis", "Colts", "IND", "AFC", "North"),
  ("11", "Jacksonville", "Jaguars", "JAX", "AFC", "North"),
  ("12", "Tennessee", "Titans", "TEN", "AFC", "North"),
  ("13", "Denver", "Broncos", "DEN", "AFC", "West"),
  ("14", "Kansas City", "Chiefs", "KC", "AFC", "West"),
  ("15", "Los Angeles", "Chargers", "LAC", "AFC", "West"),
  ("16", "Oakland", "Raiders", "OAK", "AFC", "West"),
  ("17", "Dallas", "Cowboys", "DAL", "NFC", "East"),
  ("18", "New York", "Giants", "NYG", "NFC", "East"),
  ("19", "Philadelphia", "Eagles", "PHI", "NFC", "East"),
  ("20", "Washington", "Redskins", "WSH", "NFC", "East"),
  ("21", "Chicago", "Bears", "CHI", "NFC", "North"),
  ("22", "Detriot", "Lions", "DET", "NFC", "North"),
  ("23", "Green Bay", "Packers", "GB", "NFC", "North"),
  ("24", "Minnesota", "Vikings", "MIN", "NFC", "North"),
  ("25", "Atlanta", "Falcons", "ATL", "NFC", "South"),
  ("26", "Carolina", "Panthers", "CAR", "NFC", "South"),
  ("27", "New Orleans", "Saints", "NO", "NFC", "South"),
  ("28", "Tampa Bay", "Buccaneers", "TB", "NFC", "South"),
  ("29", "Arizona", "Cardinals", "ARI", "NFC", "West"),
  ("30", "Los Angeles", "Rams", "LAR", "NFC", "West"),
  ("31", "San Francisco", "49ers", "SF", "NFC", "West"),
  ("32", "Seattle", "Seahawks", "SEA", "NFC", "West");

SHOW TABLES;

select * from  teams;


