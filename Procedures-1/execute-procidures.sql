--Fill in the rest of the procedure formula to make this work
--put in the rest of the procedures, this should execute the all of the procedures in order

Use WNBAbase
Go
Create procedure dbo.ExecuteAll

As
Begin
   Print ‘ BeginningLoadSchemaData’
   Set nocount on;

   Exec createTables
   Exec createschema
   Exec alterfileupload


   -- Add load tables below
   Exec dbo.InsertPlayersStats
   Exec dbo.InsertDraft
   Exec dbo.InsertPlayersInfo
   Exec dbo.InsertTeamsPost
   Exec dbo.InsertCoachRecord
   Exec [dbo].[InsertCoachStats]
   Exec dbo.InsertAbbreviation
   Exec dbo.InsertTeamStats
   Exec dbo.InsertTeamAwards
   Exec [dbo].[InsertSeriesPost]

   -- Add relationships
   -- Following load procedures have update/delete statements in original tables

   -- RUN THIS BEFORE RUNNING PROCEDURE

   UPDATE FileUpload.wom_basketball_awards_players
SET YEAR = 2005
WHERE playerId = 'palmewe01w'

   UPDATE FileUpload.wom_basketball_awards_players
SET award = 'Kim Perrot Sportsmanship2'
WHERE playerId = 'rileyru01w' and award = 'Kim Perrot Sportsmanship' and YEAR = 2011 AND lgID = 'WNBA'

   Exec dbo.InsertIndividualAwards


   -- RUN THIS BEFORE PROCEDURE
   DELETE FROM  FileUpload.wom_basketball_teams
WHERE Name = 'Houston Comets' AND confID = 'EA'

   Exec dbo.InsertTeamInfo

   -- RUN THIS BEFORE PROCEDURE
   UPDATE Fileupload.wom_basketball_coaches
SET FullName = 'Suzie McConnell Serio'
where fullname = 'Suzie McConnell-Serio'

   Exec dbo.InsertCoachInfo

   --add load tables above

   Exec createRelationships


