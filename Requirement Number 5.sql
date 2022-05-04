USE [DoctorWho]
GO

	DELETE FROM tblCompainion 
	WHERE CompainionId NOT IN	
	(
		SELECT Compainion.CompainionId
		FROM tblCompainion as Compainion

		INTERSECT

		SELECT EpisodeCompainion.CompainionId
		FROM tblEpisodeCompainion as EpisodeCompainion
	)