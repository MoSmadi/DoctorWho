CREATE TABLE tblEnemy
(
    EnemyId int NOT NULL,
    EnemyName varchar(255) NOT NULL,
    Description varchar(255),
    PRIMARY KEY (EnemyId)
);

CREATE TABLE tblAuthor
(
    AuthorId int NOT NULL,
    AuthorName varchar(255) NOT NULL,
    PRIMARY KEY (AuthorId)
);

CREATE TABLE tblDoctor
(
    DoctorId int NOT NULL,
    DoctorNumber int NOT NULL,
    DoctorName varchar(255) NOT NULL,
    BirthDate DATE NOT NULL,
    FistEpisodeDate DATE NOT NULL,
	LastEpisodeDate DATE NOT NULL,
    PRIMARY KEY (DoctorId)
);

CREATE TABLE tblEpisode
(
    EpisodeId int NOT NULL,
    SerienNumber int NOT NULL,
    EpisodeNumber int NOT NULL,
    EpisodeType varchar(255) NOT NULL,
    Title varchar(255) NOT NULL,
    EpisodeDate DATE NOT NULL,
    AuthorId int NOT NULL,
    DoctorId int NOT NULL,
    Notes varchar(255) NOT NULL,
    PRIMARY KEY (EpisodeId),
    FOREIGN KEY (AuthorId) REFERENCES tblAuthor(AuthorId),
    FOREIGN KEY (DoctorId) REFERENCES tblDoctor(DoctorId),
);

CREATE TABLE tblEpisodeEnemy
(
    EpisodeEnemyId int NOT NULL,
    EpisodeId int NOT NULL,
	EnemyId int NOT NULL,
    PRIMARY KEY (EpisodeEnemyId),
    FOREIGN KEY (EnemyId) REFERENCES tblEnemy(EnemyId),
    FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId)
);

CREATE TABLE tblCompainion
(
    CompainionId int NOT NULL,
    CompainionName varchar(255) NOT NULL,
    WhoPlayed varchar(255) NOT NULL,
    PRIMARY KEY (CompainionId)
);

CREATE TABLE tblEpisodeCompainion
(
	EpisodeCompainionId int NOT NULL,
    EpisodeId int NOT NULL,
    CompainionId int NOT NULL,
    PRIMARY KEY (EpisodeCompainionId),
    FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId),
    FOREIGN KEY (CompainionId) REFERENCES tblCompainion(CompainionId)
);




/*
	Drop table tblEpisodeCompainion
	Drop table tblCompainion
	Drop table tblEpisodeEnemy
	Drop table tblEpisode
	Drop table tblDoctor
	Drop table tblAuthor
	Drop table tblEnemy
*/