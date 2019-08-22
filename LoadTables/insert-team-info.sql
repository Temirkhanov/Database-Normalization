CREATE PROCEDURE dbo.InsertTeamAwards
AS
BEGIN
   print 'Beginning InsertTeamAwards'
   SET NOCOUNT ON;
   INSERT INTO dbo.TeamAwards
      (PlayerID,Year,Award,Position,LeagueId)
   select old.playerID, old.year, old.award, old.pos, old.lgID
   from FileUpload.wom_basketball_awards_players as old
   WHERE old.award LIKE 'WNBA All-Decade Team' or old.award LIKE 'WNBA All Decade Team Honorable Mention'

END
GO

