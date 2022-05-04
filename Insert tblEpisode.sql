USE [DoctorWho]
GO

INSERT INTO dbo.tblEpisode (EpisodeId ,SerienNumber ,EpisodeNumber ,EpisodeType ,Title ,EpisodeDate ,AuthorId ,DoctorId ,Notes)
     VALUES (1 ,1 ,1 ,'Action' ,'Episode one' ,'2010-04-11' ,1 ,1 ,'this is episode')


INSERT INTO dbo.tblEpisode 
             (EpisodeId ,SerienNumber ,EpisodeNumber ,EpisodeType ,Title ,EpisodeDate ,AuthorId ,DoctorId ,Notes)
     VALUES (2 ,2 ,1 ,'Drama' ,'Episode one' ,'2011-05-12' ,2 ,2 ,'this is episode')



INSERT INTO dbo.tblEpisode (EpisodeId ,SerienNumber ,EpisodeNumber ,EpisodeType ,Title ,EpisodeDate ,AuthorId ,DoctorId ,Notes)
     VALUES (3 ,3 ,1 ,'Comedy' ,'Episode one' ,'2012-06-13' ,3 ,3 ,'this is episode')



INSERT INTO dbo.tblEpisode (EpisodeId ,SerienNumber ,EpisodeNumber ,EpisodeType ,Title ,EpisodeDate ,AuthorId ,DoctorId ,Notes)
     VALUES (4 ,4 ,1 ,'Romantic' ,'Episode one' ,'2013-07-14' ,4 ,4 ,'this is episode')



INSERT INTO dbo.tblEpisode (EpisodeId ,SerienNumber ,EpisodeNumber ,EpisodeType ,Title ,EpisodeDate ,AuthorId ,DoctorId ,Notes)
     VALUES (5 ,5 ,1 ,'Horror' ,'Episode one' ,'2014-08-15' ,5 ,5 ,'this is episode')



ALTER TABLE dbo.tblEpisode
ALTER COLUMN DoctorId int NULL;



UPDATE dbo.tblEpisode
SET DoctorId = null
WHERE EpisodeId = 5 or EpisodeId = 4;


GO


