--Fill in the rest of the procedure formula to make this work
-- Create all of the tables here with all of the columns
-- rows are NOT filled here. :) they come later.
Use WNBAbase

CREATE PROCEDURE  dbo.CreateTables
AS
BEGIN
   print 'Beginning CreateTables'
   SET NOCOUNT ON;

   create table dbo.PlayersInfo
   (
      [PlayerID][varchar](10) NOT NULL,
      [PlayerName][varchar](29) NOT NULL,
      PRIMARY KEY (playerId)
   )


   CREATE TABLE dbo.PlayersStats
   (
      [PlayersKey][varchar](4) NOT NULL,
      [PlayerID][varchar](10) NOT NULL,
      [Year][smallint] NOT NULL,
      [Stint][tinyint] NOT NULL,
      [TeamID][varchar](3) NOT NULL,
      [League][varchar](4) NOT NULL,
      [GamesPlayed][tinyint] NOT NULL,
      [GamesStarted][tinyint] NOT NULL,
      [Minutes][tinyint] NOT NULL,
      [Points][tinyint] NOT NULL,
      [OffenciveRebounds][tinyint] NOT NULL,
      [DefenciveRebounds][tinyint] NOT NULL,
      [Rebounds][tinyint] NOT NULL,
      [Assists][tinyint] NOT NULL,
      [Steals][tinyint] NOT NULL,
      [Blocks][tinyint] NOT NULL,
      [Turnovers][tinyint] NOT NULL,
      [PersonalFouls][tinyint] NOT NULL,
      [FieldGoalsAttempted][tinyint] NOT NULL,
      [FieldGoalsMade][tinyint] NOT NULL,
      [FreeThrowsAttempted][tinyint] NOT NULL,
      [FreeThrowsMade][tinyint] NOT NULL,
      [ThreeAttempted][tinyint] NOT NULL,
      [ThreeMade][tinyint] NOT NULL,
      [Disqualifications][tinyint] NOT NULL,
      [PostGamesPlayed][tinyint] NOT NULL,
      [PostGamesStarted][tinyint] NOT NULL,
      [PostMinutes][tinyint] NOT NULL,
      [PostPoints][tinyint] NOT NULL,
      [PostOffenciveRebounds][tinyint] NOT NULL,
      [PostDefenciveRebounds][tinyint] NOT NULL,
      [PostRebounds][tinyint] NOT NULL,
      [PostAssists][tinyint] NOT NULL,
      [PostSteals][tinyint] NOT NULL,
      [PostBlocks][tinyint] NOT NULL,
      [PostTurnovers][tinyint] NOT NULL,
      [PostPersonalFouls][tinyint] NOT NULL,
      [PostFieldGoalsAttempted][tinyint] NOT NULL,
      [PostFieldGoalsMade][tinyint] NOT NULL,
      [PostFreeThrowsAttempted][tinyint] NOT NULL,
      [PostFreeThrowsMade][tinyint] NOT NULL,
      [PostThreeAttempted][tinyint] NOT NULL,
      [PostThreeMade][tinyint] NOT NULL,
      [PostDisqualifications][tinyint] NOT NULL,
      PRIMARY KEY (playersKey)
   );

   create table dbo.SeriesPost
   (
      [Year][smallint] NOT NULL,
      [Round][varchar](2) NOT NULL,
      [Series][varchar](1) NOT NULL,
      [TeamIDWinner][varchar](3) NOT NULL,
      [LeagueIDWinner][varchar](4) NOT NULL,
      [TeamIDLoser][varchar](3) NOT NULL,
      [LeagueIDLoser][varchar](4) NOT NULL,
      [Wins][tinyint] NOT NULL,
      [Losses][tinyint] NOT NULL,

      PRIMARY KEY (year, round, series)
   )




   drop table if exists dbo.TeamsPost
   CREATE TABLE dbo.TeamsPost
   (
      [PostID]int primary key NOT NULL identity(1,1),
      [Year][smallint] NOT NULL,
      [TeamID][varchar](3) NOT NULL,
      [LeagueID][varchar](4) NOT NULL,
      [Wins][varchar](1) NOT NULL,
      [Losses][varchar](1) NOT NULL,
   )

   create table dbo.CoachInfo
   (
      CoachId varchar(10) primary key not null,
      FullName varchar(21) not null
   )

   create table dbo.CoachRecord
   (
      RecordId int primary key not null identity(1,1),
      CoachId varchar(10) not null,
      [Year] smallint not null,
      TeamId varchar(3) not null,
      LeagueId varchar(4) not null,
   )

   create table dbo.CoachStats
   (
      StatsId int primary key not null identity(1,1),
      RecordId int not null,
      Won tinyint not null,
      Lost tinyint not null,
      PostWins tinyint not null,
      PostLosses tinyint not null
   )


   CREATE TABLE dbo.Abbreviation
   (
      FullName varchar(21) not null primary key,
      Code varchar(2) not null,
      AbbreviationType varchar(10) not null
   )




   CREATE TABLE dbo.TeamInfo
   (
      TeamId varchar(3) not null primary key,
      Name varchar(24) not null,
      LeagueId varchar(4) not null,
      ConferenceId varchar(2) not null,
      FranchiseId varchar(3) not null
   )

   CREATE TABLE dbo.TeamStats
   (
      TeamInfoKey int primary key not null identity(1,1),
      TeamId varchar(3) not null,
      Year smallint not null,
      [Rank][tinyint] NOT NULL,
      [Playoff][varchar](1) NOT NULL,
      [Seeded][tinyint] NOT NULL,
      [FirstRound][varchar](1) NOT NULL,
      [Semis][varchar](1) NOT NULL,
      [Finals][varchar](1) NOT NULL,
      [OverallFieldGoalsMade][smallint] NOT NULL,
      [OverallFieldGoalsAttained][smallint] NOT NULL,
      [OverallFreeThrowsMade][smallint] NOT NULL,
      [OverallFreeThrowsAttempted][smallint] NOT NULL,
      [OverallThreePointerShotsMade][smallint] NOT NULL,
      [OverallThreePointerShotsAttempted][smallint] NOT NULL,
      [OverallOffensiveRebounds][smallint] NOT NULL,
      [OverallDefensiveRebound][smallint] NOT NULL,
      [OverallRebounds][smallint] NOT NULL,
      [OverallAssists][smallint] NOT NULL,
      [OverallPersonalFouls][smallint] NOT NULL,
      [OverallSteals][smallint] NOT NULL,
      [OverallTurnovers][smallint] NOT NULL,
      [OverallBlocks][smallint] NOT NULL,
      [OverallPointsScored][smallint] NOT NULL,
      [DivisionFieldGoalsMade][smallint] NOT NULL,
      [DivisionFieldGoalsAttained][smallint] NOT NULL,
      [DivisionFreeThrowsMade][smallint] NOT NULL,
      [DivisionFreeThrowsAttempted][smallint] NOT NULL,
      [DivisionThreePointerShotsMade][smallint] NOT NULL,
      [DivisionThreePointerShotsAttempted][smallint] NOT NULL,
      [DivisionOffensiveRebounds][smallint] NOT NULL,
      [DivisionDefensiveRebound][smallint] NOT NULL,
      [DivisionRebounds][smallint] NOT NULL,
      [DivisionAssists][smallint] NOT NULL,
      [DivisionPersonalFouls][smallint] NOT NULL,
      [DivisionSteals][smallint] NOT NULL,
      [DivisionTurnovers][smallint] NOT NULL,
      [DivisionBlocks][smallint] NOT NULL,
      [DivisionPointsScored][smallint] NOT NULL,
      [TeamOffensiveRebounds][smallint] NOT NULL,
      [TeamDefensiveRebounds][smallint] NOT NULL,
      [TeamTotalRebounds][smallint] NOT NULL,
      [OpposingTeamOffensiveRebounds][smallint] NOT NULL,
      [OpposingTeamDefensiveRebounds][smallint] NOT NULL,
      [OpposingTeamTotalRebounds][smallint] NOT NULL,
      [Won][tinyint] NOT NULL,
      [Lost][tinyint] NOT NULL,
      [GamesPlayed][tinyint] NOT NULL,
      [HomeWins][tinyint] NOT NULL,
      [HomeLosses][tinyint] NOT NULL,
      [AwayWins][tinyint] NOT NULL,
      [AwayLosses][tinyint] NOT NULL,
      [ConferenceWins][tinyint] NOT NULL,
      [ConferenceLosses][tinyint] NOT NULL,
      [MinutesPlayed][smallint] NOT NULL,
      [Attend][bigint] NOT NULL,
      [Arena][varchar](46) NOT NULL,

   )
   CREATE TABLE dbo.IndividualAwards
   (
      [Year][smallint] NOT NULL,
      [Award][varchar](38) NOT NULL,
      [LeagueId][varchar](4) NOT NULL,
      [PlayerId][varchar](10) NULL,
      [Note][varchar](3) NULL,
      [Position][varchar](5) NULL,
      Primary key (Year,Award,LeagueId)
   )



   CREATE TABLE dbo.TeamAwards
   (
      [PlayerId][varchar](10) NOT NULL primary key,
      [Year][smallint] NOT NULL,
      [Award][varchar](38) NOT NULL,
      [Position][varchar](5) NOT NULL,
      [LeagueId][varchar](4) NOT NULL

   )



   CREATE TABLE dbo.Draft
   (
      DraftId int primary key not null identity(1,1),
      [PlayerID][varchar](10) NOT NULL,
      [TeamID][varchar](3) NOT NULL,
      [LeagueID][varchar](4) NOT NULL,
      [DraftYear][smallint] NOT NULL,
      [DraftRound][tinyint] NOT NULL,
      [DraftSelection][tinyint] NOT NULL,
      [DraftOverall][tinyint] NOT NULL,
      [DraftFrom][varchar](42) NOT NULL,
      [Notes][varchar](9) NULL,
      [PickRoute][varchar](17) NOT NULL,
      [PlayedPro][varchar](1) NOT NULL,
   )


END



