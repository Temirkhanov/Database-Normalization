CREATE PROCEDURE dbo.InsertTeamStats
AS
BEGIN
   print 'Beginning InsertTeamStats'
   SET NOCOUNT ON;
   INSERT INTO dbo.TeamStats
      (TeamId,Year,Rank,Playoff,Seeded,FirstRound,Semis,Finals,OverallFieldGoalsMade,OverallFieldGoalsAttained,OverallFreeThrowsMade
      ,OverallFreeThrowsAttempted,OverallThreePointerShotsMade,OverallThreePointerShotsAttempted,OverallOffensiveRebounds,OverallDefensiveRebound,OverallRebounds,OverallAssists,OverallPersonalFouls,OverallSteals
      ,OverallTurnovers,OverallBlocks,OverallPointsScored,DivisionFieldGoalsMade,DivisionFieldGoalsAttained
      ,DivisionFreeThrowsMade,DivisionFreeThrowsAttempted,DivisionThreePointerShotsMade,DivisionThreePointerShotsAttempted,DivisionOffensiveRebounds,DivisionDefensiveRebound,DivisionRebounds,DivisionAssists,DivisionPersonalFouls,DivisionSteals
      ,DivisionTurnovers,DivisionBlocks,DivisionPointsScored,TeamOffensiveRebounds,TeamDefensiveRebounds,TeamTotalRebounds,OpposingTeamOffensiveRebounds,OpposingTeamDefensiveRebounds
      ,OpposingTeamTotalRebounds,Won,Lost,GamesPlayed,HomeWins,HomeLosses,AwayWins,AwayLosses,ConferenceWins
      ,ConferenceLosses,MinutesPlayed,Attend,Arena)

   Select TI.TeamId, old.year, old.rank, old.playoff, old.seeded, old.firstRound, old.semis, old.finals, old.o_fgm, old.o_fga,
      old.o_ftm, old.o_fta, old.o_3pm, old.o_3pa, old.o_oreb, old.o_dreb, old.o_reb,
      old.o_asts, old.o_pf, old.o_stl, old.o_to, old.o_blk, old.o_pts, old.d_fgm, old.d_fga, old.d_ftm, old.d_fta,
      old.d_3pm, old.d_3pa, old.d_oreb, old.d_dreb, old.d_reb, old.d_asts, old.d_pf, old.d_stl, old.d_to, old.d_blk, old.d_pts, old.tmORB, old.tmDRB,
      old.tmTRB, old.opptmORB, old.opptmDRB, old.opptmTRB, old.won, old.lost, old.GP, old.homeW, old.homeL, old.awayW, old.awayL, old.confW, old.confL, old.min, old.attend, old.arena
   from FileUpload.wom_basketball_teams as old inner join dbo.TeamInfo as TI on old.tmID = TI.TeamId

END
GO

