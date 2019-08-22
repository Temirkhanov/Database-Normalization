--RUN THIS BEFORE RUNNING PROCEDURE

--UPDATE FileUpload.wom_basketball_awards_players
--SET YEAR = 2005
--WHERE playerId = 'palmewe01w'

--UPDATE FileUpload.wom_basketball_awards_players
--SET award = 'Kim Perrot Sportsmanship2'
--WHERE playerId = 'rileyru01w' and award = 'Kim Perrot Sportsmanship' and YEAR = 2011 --AND lgID = 'WNBA'

-------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE dbo.InsertIndividualAwards
AS
BEGIN
   print 'Beginning InsertIndividualAwards'
   SET NOCOUNT ON;
   INSERT INTO dbo.IndividualAwards
      (Year,Award,PlayerID,LeagueId,Note,Position)
   select old.year, old.award, old.playerID, old.lgID, note, old.pos
   from FileUpload.wom_basketball_awards_players as old
   WHERE old.award NOT LIKE 'WNBA All-Decade Team' and old.award NOT LIKE 'WNBA All Decade Team Honorable Mention'


END
GO

