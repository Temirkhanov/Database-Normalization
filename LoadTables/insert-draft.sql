CREATE PROCEDURE dbo.InsertDraft
AS
BEGIN
   print 'Beginning InsertDraft'
   SET NOCOUNT ON;
   INSERT INTO dbo.Draft
      (PlayerID,TeamId,LeagueID,DraftYear,DraftRound,DraftSelection,DraftOverall,DraftFrom,Notes,PickRoute,PlayedPro)
   select distinct oldP.playerID, oldD.tmID, oldD.lgID, oldD.draftYear, oldD.draftRound, oldD.draftSelection, oldD.draftOverall, oldD.draftFrom, oldD.notes, oldD.pickRoute, oldD.playedPro
   from fileupload.wom_basketball_players as oldP inner join fileupload.wom_basketball_draft as oldD on oldD.fullName = oldP.playerName
END
GO

