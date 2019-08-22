CREATE PROCEDURE dbo.InsertTeamsPost
-- Add the parameters for the stored procedure here
AS
BEGIN
   print 'Beginning InsertTeamsPost'
   SET NOCOUNT ON;
   INSERT INTO dbo.TeamsPost
      (
      old.tmId, old.lgId, old.year, old.W, old.L
      )

   Select distinct
   From FileUpload.wom_basketball_teams_post as old
END
GO



