USE [DoctorWho]
GO

	INSERT INTO dbo.tblEpisodeCompainion (EpisodeCompainionId ,EpisodeId ,CompainionId)
    VALUES (1 ,1 ,1)


	INSERT INTO dbo.tblEpisodeCompainion (EpisodeCompainionId ,EpisodeId ,CompainionId)
    VALUES (2 ,2 ,2)


	INSERT INTO dbo.tblEpisodeCompainion (EpisodeCompainionId ,EpisodeId ,CompainionId)
    VALUES (3 ,3 ,3)


	INSERT INTO dbo.tblEpisodeCompainion (EpisodeCompainionId ,EpisodeId ,CompainionId)
    VALUES (4 ,4 ,4)


	INSERT INTO dbo.tblEpisodeCompainion (EpisodeCompainionId ,EpisodeId ,CompainionId)
    VALUES (5 ,5 ,5)


	UPDATE dbo.tblEpisodeCompainion
	SET CompainionId = 4
	WHERE EpisodeCompainionId = 5 and EpisodeId = 5;
	 
	UPDATE dbo.tblEpisodeCompainion
	SET EpisodeId = 4
	WHERE CompainionId = 3;
GO


