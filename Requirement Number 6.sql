USE [DoctorWho]


Go
	DROP FUNCTION IF EXISTS fnCompanions;
GO

	CREATE FUNCTION fnCompanions (@EpisodeId int)
	RETURNS varchar(100) AS
		BEGIN
			declare @CompainionNameList varchar(100) = ''

			SELECT @CompainionNameList = @CompainionNameList + 
															case 
																when len(@CompainionNameList) > 0 
																THEN ', ' 
																ELSE '' 
															END + CompainionName 
			FROM (tblEpisodeCompainion as EpisodeCompainion
			INNER JOIN tblCompainion as Compainion ON EpisodeCompainion.CompainionId = Compainion.CompainionId)
			WHERE EpisodeCompainion.EpisodeId =  @EpisodeId;

			RETURN @CompainionNameList
		END

Go