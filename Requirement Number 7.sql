USE [DoctorWho]


GO
	CREATE FUNCTION fnEnemies  (@EpisodeId int)
	RETURNS TABLE AS
	RETURN
		SELECT EnemyName 
		FROM (tblEpisodeEnemy as EpisodeEnemy
		INNER JOIN tblEnemy as Enemy ON EpisodeEnemy.EnemyId = Enemy.EnemyId)
		WHERE Enemy.EnemyId =  @EpisodeId;
GO

select * from dbo.fnEnemies(1)
select * from dbo.fnEnemies(2)
select * from dbo.fnEnemies(3)
select * from dbo.fnEnemies(4)
select * from dbo.fnEnemies(5)


/*
	DROP FUNCTION dbo.fnEnemies;
*/