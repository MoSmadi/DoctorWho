USE [DoctorWho]


GO
	CREATE FUNCTION fnCompanions (@EpisodeId int)
	RETURNS TABLE AS
	RETURN
		SELECT CompainionName 
		FROM (tblEpisodeCompainion as EpisodeCompainion
		INNER JOIN tblCompainion as Compainion ON EpisodeCompainion.CompainionId = Compainion.CompainionId)
		WHERE EpisodeCompainion.EpisodeId =  @EpisodeId;
GO

select * from dbo.fnCompanions(4)


/*
	DROP FUNCTION dbo.fnCompanions;
*/