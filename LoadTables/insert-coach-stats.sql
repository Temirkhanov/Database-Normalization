CREATE PROCEDURE [dbo].[InsertCoachStats]
AS
BEGIN
   print 'Beginning InsertCoachStats'
   SET NOCOUNT ON;

   INSERT INTO dbo.CoachStats
      (
      RecordId,Won,Lost,PostWins,PostLosses)

   Select distinct CR.RecordId, old.won, old.lost, old.post_wins, old.post_losses
   from FileUpload.wom_basketball_coaches as old inner join dbo.CoachRecord as CR on old.coachID = cr.CoachId

END

