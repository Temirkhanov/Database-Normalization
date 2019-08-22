CREATE PROCEDURE dbo.InsertCoachRecord
AS
BEGIN
   print 'Beginning InsertCoachRecord'
   SET NOCOUNT ON;
   INSERT INTO dbo.CoachRecord
      (
      CoachId,Year,TeamId,LeagueId)

   Select distinct old.coachID, old.year, old.tmID, old.lgID
   from FileUpload.wom_basketball_coaches as old

END
GO

