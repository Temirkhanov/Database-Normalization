
CREATE PROCEDURE dbo.InsertPlayersStats
AS
BEGIN
   print 'Beginning InsertPlayersStats'
   SET NOCOUNT ON;
   INSERT INTO dbo.PlayersStats
      (
      [PlayersKey],[PlayerID],[Year],[Stint],[TeamID],[League],[GamesPlayed],[GamesStarted],[Minutes],[Points],[OffenciveRebounds],[DefenciveRebounds],[Rebounds],[Assists],[Steals],[Blocks],
      [Turnovers],[PersonalFouls],[FieldGoalsAttempted],[FieldGoalsMade],[FreeThrowsAttempted],[FreeThrowsMade],[ThreeAttempted],[ThreeMade],[Disqualifications],[PostGamesPlayed],[PostGamesStarted],
      [PostMinutes],[PostPoints],[PostOffenciveRebounds],[PostDefenciveRebounds],[PostRebounds],[PostAssists],[PostSteals],[PostBlocks],[PostTurnovers],[PostPersonalFouls],[PostFieldGoalsAttempted],[PostFieldGoalsMade],
      [PostFreeThrowsAttempted],[PostFreeThrowsMade],[PostThreeAttempted],[PostThreeMade],[PostDisqualifications])

   Select distinct old.PlayersKey, old.playerID, old.year, old.stint, old.tmID, old.lgID, old.GP, old.GS, old.minutes, old.points, old.oRebounds, old.dRebounds, old.rebounds, old.assists, old.steals, old.blocks, old.turnovers, old.PF,
      old.fgAttempted, old.fgMade, old.ftAttempted, old.ftMade, old.threeAttempted, old.threeMade, old.dq, old.PostGP, old.PostGS, old.PostMinutes, old.PostPoints, old.PostoRebounds, old.PostdRebounds, old.PostRebounds, old.PostAssists,
      old.PostSteals, old.PostBlocks, old.PostTurnovers, old.PostPF, old.PostfgAttempted, old.PostfgMade, old.PostftAttempted, old.PostftMade, old.PostthreeMade, old.PostDQ
   from FileUpload.wom_basketball_players as old

END
GO



