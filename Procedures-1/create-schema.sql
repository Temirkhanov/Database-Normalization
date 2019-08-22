CREATE SCHEMA Awards
CREATE SCHEMA Coaches
CREATE SCHEMA Information
CREATE SCHEMA [Statistics]

--------------------------------------------------------------------------------------------



CREATE PROCEDURE dbo.CreateSchema

AS
BEGIN
   SET NOCOUNT ON;
   Print 'Beginning CreateSchema'

   alter schema Awards transfer dbo.IndividualAwards
   alter schema Awards transfer dbo.TeamAwards
   alter schema Coaches transfer dbo.CoachInfo
   alter schema Coaches transfer dbo.CoachRecord
   alter schema Coaches transfer dbo.CoachStats
   alter schema Information transfer dbo.TeamInfo
   alter schema Information transfer dbo.Abbreviation
   alter schema Information transfer dbo.PlayersInfo
   alter schema [Statistics] transfer dbo.TeamStats
   alter schema [Statistics] transfer dbo.Draft
   alter schema [Statistics] transfer dbo.PlayersStats
   alter schema [Statistics] transfer dbo.SeriesPost
   alter schema [Statistics] transfer dbo.TeamsPost

End
GO

