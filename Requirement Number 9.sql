USE [DoctorWho]

GO
DROP PROCEDURE IF EXISTS spSummariseEpisodes ;
GO

CREATE PROCEDURE spSummariseEpisodes 
AS BEGIN

	SELECT TOP(3) C.CompainionName AS [Three Most Frequently-Appearing Companions]
	FROM dbo.tblEpisodeCompainion AS EC
	JOIN dbo.tblCompainion AS C ON EC.CompainionId = C.CompainionId
	GROUP BY EC.CompainionId, C.CompainionName
	ORDER BY COUNT(EC.CompainionId) DESC

	SELECT TOP (3)E.EnemyName AS [Three Most Frequently-Appearing Enemies]
	FROM tblEpisodeEnemy EE
	JOIN tblEnemy E ON EE.EnemyId = E.EnemyId
	GROUP BY EE.EnemyId, E.EnemyName
	ORDER BY COUNT(EE.EnemyId) DESC

END;

GO
EXEC spSummariseEpisodes;
