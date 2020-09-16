DROP TABLE IF EXISTS
Account,
Corner, Fight,
Title_Change,
Event,
TUF_Contestant, TUF,
Fighter,
Weight_Class,
Ethnicity,
Gym, Venue,
Location, Area, Territory, Country, Subregion, Region;

CREATE TABLE Account(
ID INT NOT NULL AUTO_INCREMENT,
Username VARCHAR(70),
Password VARCHAR(70),
PRIMARY KEY (ID)
);
ALTER TABLE Account ADD UNIQUE INDEX (Username);
INSERT INTO Account(Username, Password) VALUES
('nick', 'cool');

CREATE TABLE Region(
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(35),
PRIMARY KEY (ID)
);
INSERT INTO Region(Name) VALUES
('USA & Canada'),
('Latin America & Caribbean'),
('EMEA'),
('East Asia & Oceania');

CREATE TABLE Subregion(
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(35),
Region INT,
PRIMARY KEY (ID),
FOREIGN KEY (Region) REFERENCES Region(ID)
);
INSERT INTO Subregion(Name, Region) VALUES
('USA', 1),
('Canada', 1),
('Brazil', 2),
('Latin America & Caribbean', 2),
('UK & Ireland', 3),
('Scandinavia', 3),
('Western Europe', 3),
('Eastern Europe', 3),
('Middle East', 3),
('Africa', 3),
('East Asia', 4),
('Oceania', 4);

CREATE TABLE Country(
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(35),
Subregion INT,
PRIMARY KEY (ID),
FOREIGN KEY (Subregion) REFERENCES Subregion(ID)
);
INSERT INTO Country(Name, Subregion) VALUES
('USA', 1),
('Canada', 2),
('Saint-Pierre and Miquelon', 2),
('Brazil', 3),
('Mexico', 4),
('Belize', 4),
('Guatemala', 4),
('El Salvador', 4),
('Honduras', 4),
('Nicaragua', 4),
('Costa Rica', 4),
('Panama', 4),
('Venezuela', 4),
('Colombia', 4),
('Ecuador', 4),
('Peru', 4),
('Bolivia', 4),
('Chile', 4),
('Paraguay', 4),
('Uruguay', 4),
('Argentina', 4),
('Falkland Islands', 4),
('French Guiana', 4),
('Suriname', 4),
('Guyana', 4),
('Aruba', 4),
('Curacao', 4),
('Bonaire', 4),
('Trinidad and Tobago', 4),
('Grenada', 4),
('Saint Vincent and the Grenadines', 4),
('Barbados', 4),
('Saint Lucia', 4),
('Martinique', 4),
('Dominica', 4),
('Guadeloupe', 4),
('Montserrat', 4),
('Antigua and Barbuda', 4),
('Saint Kitts and Nevis', 4),
('Sint Eustatius and Saba', 4),
('Sint Maarten', 4),
('Saint-Martin', 4),
('Saint-Barth', 4),
('Anguilla', 4),
('Virgin Islands (UK)', 4),
('Virgin Islands (USA)', 4),
('Puerto Rico', 4),
('Dominican Republic', 4),
('Haiti', 4),
('Jamaica', 4),
('Cayman Islands', 4),
('Cuba', 4),
('The Bahamas', 4),
('Turks and Caicos Islands', 4),
('Bermuda', 4),
('England', 5),
('Wales', 5),
('Scotland', 5),
('Northern Ireland', 5),
('Ireland', 5),
('Greenland', 6),
('Iceland', 6),
('Faroe Islands', 6),
('Svalbard', 6),
('Norway', 6),
('Denmark', 6),
('Sweden', 6),
('Åland', 6),
('Finland', 6),
('Portugal', 7),
('Gibraltar', 7),
('Spain', 7),
('Andorra', 7),
('Monaco', 7),
('France', 7),
('Belgium', 7),
('Netherlands', 7),
('Luxembourg', 7),
('Germany', 7),
('Austria', 7),
('Liechtenstein', 7),
('Switzerland', 7),
('Italy', 7),
('San Marino', 7),
('Malta', 7),
('Poland', 8),
('Czech Republic', 8),
('Slovakia', 8),
('Hungary', 8),
('Slovenia', 8),
('Croatia', 8),
('Bosnia and Herzegovina', 8),
('Montenegro', 8),
('Serbia', 8),
('Kosovo', 8),
('Macedonia', 8),
('Albania', 8),
('Greece', 8),
('Bulgaria', 8),
('Romania', 8),
('Moldova', 8),
('Ukraine', 8),
('Lithuania', 8),
('Latvia', 8),
('Estonia', 8),
('Russia', 8),
('Georgia', 8),
('Armenia', 8),
('Azerbaijan', 8),
('Turkey', 8),
('Cyprus', 8),
('Kazakhstan', 9),
('Kyrgyzstan', 9),
('Uzbekistan', 9),
('Turkmenistan', 9),
('Tajikistan', 9),
('Pakistan', 9),
('Afghanistan', 9),
('Iran', 9),
('Iraq', 9),
('Syria', 9),
('Lebanon', 9),
('Jordan', 9),
('Palestine', 9),
('Israel', 9),
('Saudi Arabia', 9),
('Kuwait', 9),
('Bahrain', 9),
('Qatar', 9),
('UAE', 9),
('Oman', 9),
('Yemen', 9),
('Somalia', 10),
('Djibouti', 10),
('Ethiopia', 10),
('Eritrea', 10),
('Sudan', 10),
('Egypt', 10),
('Libya', 10),
('Tunisia', 10),
('Algeria', 10),
('Morocco', 10),
('Western Sahara', 10),
('Mauritania', 10),
('Senegal', 10),
('Gambia', 10),
('Cape Verde', 10),
('Guinea-Bissau', 10),
('Guinea', 10),
('Sierra Leone', 10),
('Liberia', 10),
('Ivory Coast', 10),
('Mali', 10),
('Burkina Faso', 10),
('Ghana', 10),
('Togo', 10),
('Benin', 10),
('Nigeria', 10),
('Niger', 10),
('Chad', 10),
('Central African Republic', 10),
('Cameroon', 10),
('São Tomé and Príncipe', 10),
('Equatorial Guinea', 10),
('Gabon', 10),
('Congo', 10),
('Congo DR', 10),
('South Sudan', 10),
('Kenya', 10),
('Uganda', 10),
('Rwanda', 10),
('Burundi', 10),
('Tanzania', 10),
('Mozambique', 10),
('Malawi', 10),
('Zambia', 10),
('Zimbabwe', 10),
('Angola', 10),
('Namibia', 10),
('Botswana', 10),
('South Africa', 10),
('Swaziland', 10),
('Lesotho', 10),
('Saint Helena', 10),
('Comoros', 10),
('Mayotte', 10),
('Madagascar', 10),
('Réunion', 10),
('Mauritius', 10),
('Seychelles', 10),
('Maldives', 11),
('Sri Lanka', 11),
('India', 11),
('Bangladesh', 11),
('Nepal', 11),
('Bhutan', 11),
('China', 11),
('Mongolia', 11),
('North Korea', 11),
('South Korea', 11),
('Japan', 11),
('Taiwan', 11),
('Philippines', 11),
('Vietnam', 11),
('Cambodia', 11),
('Laos', 11),
('Myanmar', 11),
('Thailand', 11),
('Malaysia', 11),
('Singapore', 11),
('Brunei', 11),
('Christmas Island', 11),
('Cocos Islands', 11),
('East Timor', 11),
('Indonesia', 11),
('Northern Mariana Islands', 12),
('Guam', 12),
('Palau', 12),
('Micronesia', 12),
('Marshall Islands', 12),
('Nauru', 12),
('Kiribati', 12),
('Papua New Guinea', 12),
('Solomon Islands', 12),
('Vanuatu', 12),
('New Caledonia', 12),
('Fiji', 12),
('Wallis and Futuna', 12),
('Tuvalu', 12),
('Tokelau', 12),
('Samoa', 12),
('American Samoa', 12),
('Tonga', 12),
('Niue', 12),
('Cook Islands', 12),
('French Polynesia', 12),
('Pitcairn Islands', 12),
('Easter Island', 12),
('New Zealand', 12),
('Australia', 12);

CREATE TABLE Territory(
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(35),
PRIMARY KEY (ID)
);
INSERT INTO Territory(Name) VALUES
('Maine'),
('New Hampshire'),
('Vermont'),
('Massachusetts'),
('Rhode Island'),
('Connecticut'),
('New York'),
('New Jersey'),
('Delaware'),
('Pennsylvania'),
('Ohio'),
('Michigan'),
('Indiana'),
('Kentucky'),
('West Virginia'),
('Maryland'),
('District of Columbia'),
('Virginia'),
('North Carolina'),
('South Carolina'),
('Georgia'),
('Florida'),
('Alabama'),
('Tennessee'),
('Mississippi'),
('Louisiana'),
('Texas'),
('Oklahoma'),
('Arkansas'),
('Missouri'),
('Kansas'),
('Nebraska'),
('Iowa'),
('Illinois'),
('Wisconsin'),
('Minnesota'),
('South Dakota'),
('North Dakota'),
('Montana'),
('Idaho'),
('Wyoming'),
('Utah'),
('Colorado'),
('New Mexico'),
('Arizona'),
('Nevada'),
('California'),
('Oregon'),
('Washington'),
('British Columbia'),
('Alberta'),
('Saskatchewan'),
('Manitoba'),
('Ontario'),
('Quebec'),
('New Brunswick'),
('Prince Edward Island'),
('Nova Scotia'),
('Newfoundland and Labrador'),
('Nunavut'),
('Northwest Territories'),
('Yukon'),
('Alaska'),
('Hawaii'),
('North Caucasus Region');

CREATE TABLE Area(
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(35),
Country INT,
Elevation INT,
PRIMARY KEY (ID),
FOREIGN KEY (Country) REFERENCES Country(ID)
);
INSERT INTO Area(Name, Country, Elevation) VALUES
('Denver', 1, 5278),
('Charlotte', 1, 751),
('Tulsa', 1, 722),
('Casper', 1, 5150),
('Buffalo', 1, 600),
('Puerto Rico', 47, 26),
('Detroit', 1, 600),
('Birmingham (AL)', 1, 644),
('Augusta', 1, 136),
('Dothan', 1, 322),
('Mississippi Gulf Coast', 1, 20),
('Tokyo', 201, 131),
('New Orleans', 1, 6),
('Mobile', 1, 10),
('Sao Paulo', 4, 2493),
('Cedar Rapids', 1, 810),
('Lake Charles', 1, 13),
('Atlantic City', 1, 7),
('New York', 1, 8),
('Las Vegas', 1, 2001),
('Southeast Connecticut', 1, 277),
('Shreveport', 1, 144),
('London', 56, 115),
('Miami', 1, 6),
('Greater Los Angeles', 1, 233),
('Sacramento', 1, 30),
('U.S. Army', 1, 13),
('Columbus', 1, 902),
('Houston', 1, 43),
('Manchester', 56, 125),
('Belfast', 59, 43),
('Cincinnati', 1, 482),
('Newcastle', 56, 266),
('Montreal', 2, 90),
('Minneapolis', 1, 830),
('Atlanta', 1, 856),
('Omaha', 1, 1090),
('Birmingham (UK)', 56, 460),
('Chicago', 1, 594),
('Dublin', 60, 279),
('Tampa', 1, 48),
('Nashville', 1, 597),
('Ruhr', 79, 299),
('Philadelphia', 1, 39),
('Portland', 1, 157),
('Oklahoma City', 1, 1201),
('Dallas', 1, 430),
('Memphis', 1, 337),
('Washington', 1, 25),
('Sydney', 240, 190),
('Abu Dhabi', 130, 23),
('Vancouver', 2, 230),
('San Diego', 1, 13),
('San Francisco Bay Area', 1, 63),
('Boston', 1, 141),
('Austin', 1, 489),
('Indianapolis', 1, 715),
('Louisville', 1, 466),
('Seattle', 1, 187),
('Toronto', 2, 249),
('Pittsburgh', 1, 764),
('Milwaukee', 1, 617),
('Rio de Janeiro', 4, 16),
('Stockholm', 67, 0),
('Belo Horizonte', 4, 2490),
('Calgary', 2, 3428),
('Los Angeles', 1, 233),
('Nottingham', 56, 200),
('Macau', 197, 85),
('Brisbane', 240, 92),
('Santa Catarina', 4, 100),
('Fortaleza', 4, 69),
('Winnipeg', 2, 750),
('Goiania', 4, 2457),
('Manila', 210, 49),
('Natal', 4, 100),
('Quebec City', 2, 322),
('Orlando', 1, 82),
('Baltimore', 1, 33),
('Berlin', 79, 112),
('Albuquerque', 1, 5312),
('Auckland', 239, 85),
('San Antonio', 1, 650),
('Bangor', 1, 118),
('Brasilia', 4, 3845),
('Halifax', 2, 82),
('Uberlandia', 4, 2831),
('Mexico City', 5, 7380),
('Phoenix', 1, 1086),
('Barueri', 4, 2493),
('Porto Alegre', 4, 30),
('Krakow', 86, 719),
('Adelaide', 240, 160),
('Glasgow', 58, 129),
('Saskatoon', 2, 1580),
('Melbourne', 240, 102),
('Monterrey', 5, 1770),
('Seoul', 200, 286),
('Zagreb', 91, 518),
('Rotterdam', 77, 0),
('Curitiba', 4, 3066),
('Ottawa', 2, 230),
('Sioux Falls', 1, 1470),
('Salt Lake City', 1, 4226),
('Hamburg', 79, 72),
('Cleveland', 1, 653),
('Rio Grande Valley', 1, 102),
('Albany', 1, 312),
('Kansas City', 1, 910),
('Singapore', 210, 49),
('Edmonton', 2, 2116),
('Gdansk', 86, 26),
('Hampton Roads', 1, 7),
('Shanghai', 197, 13),
('Fresno', 1, 308),
('St. Louis', 1, 466),
('Belem', 4, 30),
('Perth', 240, 103),
('Santiago', 18, 1870),
('Liverpool', 56, 230),
('Utica', 1, 456),
('Boise', 1, 2730),
('Lincoln (NE)', 1, 1176);

CREATE TABLE Location(
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(35),
Area INT,
Territory INT,
PRIMARY KEY (ID),
FOREIGN KEY (Area) REFERENCES Area(ID),
FOREIGN KEY (Territory) REFERENCES Territory(ID)
);
INSERT INTO Location(Name, Area, Territory) VALUES
('Dublin', NULL, NULL),
('Orange County', NULL, NULL),
('Salvador', NULL, NULL);

CREATE TABLE Venue(
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(70),
Outdoor BOOLEAN,
Capacity INT,
Location INT,
PRIMARY KEY (ID),
FOREIGN KEY (Location) REFERENCES Location(ID)
);

CREATE TABLE Gym(
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(70),
Location INT,
PRIMARY KEY (ID),
FOREIGN KEY (Location) REFERENCES Location(ID)
);
INSERT INTO Gym(Name, Location) VALUES
('SBG Ireland', NULL),
('Parillo Boxing', NULL),
('Champion Team', NULL);

CREATE TABLE Ethnicity(
ID INT NOT NULL AUTO_INCREMENT,
Demonym VARCHAR(35),
PRIMARY KEY (ID)
);
INSERT INTO Ethnicity(Demonym) VALUES
('Brazilian'),
('English'),
('Irish');

CREATE TABLE Weight_Class(
ID INT NOT NULL AUTO_INCREMENT,
Weight_Limit INT,
Name VARCHAR(35),
PRIMARY KEY (ID)
);
INSERT INTO Weight_Class(Weight_Limit, Name) VALUES
(265, 'Heavyweight'),
(205, 'Light Heavyweight'),
(185, 'Middleweight'),
(170, 'Welterweight'),
(155, 'Lightweight'),
(145, 'Featherweight'),
(135, 'Bantamweight'),
(125, 'Flyweight'),
(115, 'Strawweight');

CREATE TABLE Fighter(
ID INT NOT NULL AUTO_INCREMENT,
Common_Name VARCHAR(35),
Surname VARCHAR(35),
Forename VARCHAR(35),
Nick_Prefix BOOLEAN,
Nickname VARCHAR(70),
Sex BOOLEAN,
DOB DATE,
Birthplace_Known BOOLEAN,
Birthplace INT,
Representing INT,
Ethnicity INT,
Home_Gym INT,
Away_Gym INT,
Height DECIMAL(3,1),
Reach DECIMAL(3,1),
Weight_Class INT,
Contracted BOOLEAN,
Hiatus BOOLEAN,
Retired BOOLEAN,
PRIMARY KEY (ID),
FOREIGN KEY (Birthplace) REFERENCES Location(ID),
FOREIGN KEY (Representing) REFERENCES Country(ID),
FOREIGN KEY (Ethnicity) REFERENCES Ethnicity(ID),
FOREIGN KEY (Home_Gym) REFERENCES Gym(ID),
FOREIGN KEY (Away_Gym) REFERENCES Gym(ID),
FOREIGN KEY (Weight_Class) REFERENCES Weight_Class(ID)
);
INSERT INTO Fighter(
Common_Name, Surname, Forename, Nick_Prefix, Nickname, Sex, DOB,
Birthplace_Known, Birthplace, Representing, Ethnicity, Home_Gym, Away_Gym,
Height, Reach, Weight_Class, Contracted, Retired, Hiatus
) VALUES
(NULL, 'McGregor', 'Conor', 1, 'The Notorious', 0, '1988-07-14', 1, NULL, NULL, NULL, 1, 1, 69, 74, 5, 1, 0, 1),
(NULL, 'Bisping', 'Michael', 0, 'The Count', 0, '1979-02-28', 1, NULL, NULL, NULL, 2, 2, 73, 75.5, 3, 1, 1, 0),
('Borrachinha', 'Costa', 'Paulo', 0, NULL, 0, '1991-04-21', 1, NULL, NULL, NULL, 3, 3, 72, 72, 3, 1, 0, 0);

CREATE TABLE TUF(
ID INT NOT NULL AUTO_INCREMENT,
Coach_1 INT,
Coach_2 INT,
Location VARCHAR(70),
Subtitle VARCHAR(70),
PRIMARY KEY (ID),
FOREIGN KEY (Coach_1) REFERENCES Fighter(ID),
FOREIGN KEY (Coach_2) REFERENCES Fighter(ID)
);

CREATE TABLE TUF_Contestant(
ID INT NOT NULL AUTO_INCREMENT,
TUF INT,
Fighter INT,
Weight_Class INT,
Team_1 BOOLEAN,
PRIMARY KEY (ID),
FOREIGN KEY (TUF) REFERENCES TUF(ID),
FOREIGN KEY (Fighter) REFERENCES Fighter(ID),
FOREIGN KEY (Weight_Class) REFERENCES Weight_Class(ID)
);

CREATE TABLE Event(
ID INT NOT NULL AUTO_INCREMENT,
Air_Date DATE,
Numbered BOOLEAN,
Event_Number DECIMAL(3,1),
Subtitle VARCHAR(70),
Venue INT,
Attendance INT,
Gate DECIMAL(11,2),
TV_Rating DECIMAL(3,2),
TV_Viewers INTEGER,
PPV_Buys INT,
Fan_Expo BOOLEAN,
TUF INT,
PRIMARY KEY (ID),
FOREIGN KEY (Venue) REFERENCES Venue(ID),
FOREIGN KEY (TUF) REFERENCES TUF(ID)
);
INSERT INTO Event(Air_Date, Numbered, Event_Number, Subtitle, Venue, Attendance, Gate, TV_Rating, TV_Viewers, PPV_Buys, Fan_Expo, TUF) VALUES
('1993-11-12', 1, 1, 'The Beginning', NULL, 7800, NULL, NULL, NULL, 86000, 0, NULL),
('1994-03-11', 1, 2, 'No Way Out', NULL, 2000, NULL, NULL, NULL, 300000, 0, NULL),
('1994-09-09', 1, 3, 'The American Dream', NULL, 3000, NULL, NULL, NULL, 90000, 0, NULL),
('1994-12-16', 1, 4, 'Revenge of the Warriors', NULL, 5857, NULL, NULL, NULL, 120000, 0, NULL),
('1995-04-07', 1, 5, 'The Return of the Beast', NULL, 6000, NULL, NULL, NULL, 260000, 0, NULL),
('1995-07-14', 1, 6, 'Clash of the Titans', NULL, 6000, NULL, NULL, NULL, 240000, 0, NULL),
('1995-09-08', 1, 7, 'The Brawl in Buffalo', NULL, 9000, NULL, NULL, NULL, 190000, 0, NULL),
('1995-12-16', 1, 7.5, 'The Ultimate Ultimate 1995', NULL, 2800, NULL, NULL, NULL, 251000, 0, NULL);

CREATE TABLE Title_Change(
ID INT NOT NULL AUTO_INCREMENT,
Weight_Class INT,
Change_Date DATE,
Reward BOOLEAN,
Fighter INT,
PRIMARY KEY (ID),
FOREIGN KEY (Weight_Class) REFERENCES Weight_Class(ID),
FOREIGN KEY (Fighter) REFERENCES Fighter(ID)
);
INSERT INTO Title_Change(Weight_Class, Change_Date, Reward, Fighter) VALUES
(1, '1998-01-31', 0, NULL), -- Randy Couture; Rutten wins vacant
(1, '1999-06-30', 0, NULL), -- Bas Rutten; Randleman wins vacant
(1, '2002-07-26', 0, NULL), -- Josh Barnett; Rodriguez wins vacant
(1, '2003-10-15', 0, NULL), -- Tim Sylvia; Mir wins vacant
(1, '2005-08-12', 0, NULL), -- Frank Mir
(1, '2005-08-12', 0, NULL), -- PROMOTION -- Andrei Arlovski
(1, '2005-08-12', 1, NULL), -- PROMOTION -- Andrei Arlovski
(2, '1999-11-24', 0, NULL), -- Frank Shamrock; Tito wins vacant
(2, '2015-04-28', 0, NULL), -- Jon Jones; DC wins vacant
(2, '2016-11-09', 0, NULL), -- Jon Jones; interim title removed
(2, '2017-09-13', 0, NULL), -- Jon Jones
(2, '2017-09-13', 1, NULL), -- Daniel Cormier
(3, '2002-10-05', 0, NULL), -- Murilo Bustamante; Tanner wins vacant
(3, '2017-12-07', 0, NULL), -- Georges St-Pierre
(3, '2017-12-07', 0, NULL), -- PROMOTION -- Robert Whittaker
(3, '2017-12-07', 1, NULL), -- PROMOTION -- Robert Whittaker
(4, '2004-05-17', 0, NULL), -- BJ Penn; Hughes wins vacant
(4, '2013-12-13', 0, NULL), -- Georges St-Pierre; Hendricks wins vacant
(5, '2002-03-23', 0, NULL), -- Jens Pulver; Sherk wins vacant
(5, '2007-12-08', 0, NULL), -- Sean Sherk; Penn wins vacant
(6, '2010-11-20', 1, NULL), -- Jose Aldo
(6, '2016-11-26', 0, 1),
(6, '2016-11-26', 0, NULL), -- PROMOTION -- Jose Aldo
(6, '2016-11-26', 1, NULL), -- PROMOTION -- Jose Aldo
(7, '2010-12-16', 1, NULL), -- Dominick Cruz
(7, '2014-01-06', 0, NULL), -- Dominick Cruz
(7, '2014-01-06', 0, NULL), -- PROMOTION -- Renan Barao
(7, '2014-01-06', 1, NULL), -- PROMOTION -- Renan Barao
(6, '2017-06-19', 0, NULL), -- Germaine de Randamie; Cyborg wins vacant
(7, '2012-12-06', 1, NULL); -- Ronda Rousey

CREATE TABLE Fight(
ID INT NOT NULL AUTO_INCREMENT,
Event INT,
Bout_Order INT,
Broadcast VARCHAR(70),
Weight_Class INT,
Rounds INT,
Title BOOLEAN,
Method VARCHAR(70),
TUF INT,
PRIMARY KEY (ID)
);

CREATE TABLE Corner(
ID INT NOT NULL AUTO_INCREMENT,
Fight INT,
Red_Corner BOOLEAN,
Fighter INT,
Weight DECIMAL(4,1),
Winner BOOLEAN,
PRIMARY KEY (ID)
);