USE [DoctorWho]

GO
	DROP FUNCTION IF EXISTS fnEnemies;
GO

	CREATE FUNCTION fnEnemies (@EpisodeId int)
	RETURNS  varchar(100) AS
		BEGIN
			declare @EnemyNameList varchar(100) = ''

			SELECT  @EnemyNameList = @EnemyNameList + case 
														  when len(@EnemyNameList) > 0 
														  THEN ', ' 
														  ELSE '' 
													  END + EnemyName 
			FROM (tblEpisodeEnemy as EpisodeEnemy
			INNER JOIN tblEnemy as Enemy ON EpisodeEnemy.EnemyId = Enemy.EnemyId)
			WHERE Enemy.EnemyId =  @EpisodeId;

			RETURN @EnemyNameList
		END

Go

select dbo.fnEnemies(1)
select dbo.fnEnemies(2)
select dbo.fnEnemies(3)
select dbo.fnEnemies(4)
select dbo.fnEnemies(5)


/*
	DROP FUNCTION dbo.fnEnemies;
*/