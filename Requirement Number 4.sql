USE [DoctorWho]
GO


UPDATE tblEpisode
SET Title = Title+'_CANCELLED'
WHERE DoctorId IS NULL;