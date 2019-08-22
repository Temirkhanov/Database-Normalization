--Fill in the rest of the procedure formula to make this work
-- Create all of the primary-foreign key relationships
CREATE PROCEDURE dbo.CreateRelationships

AS
BEGIN
   -- SET NOCOUNT ON added to prevent extra result sets from
   -- interfering with SELECT statements.
   SET NOCOUNT ON;
   Print 'Beginning CreateRelationships'
   Alter Table Awards.IndividualAwards WITH CHECK
	ADD CONSTRAINT FK_IndividualAwards_TeamAwards
		Foreign Key(playerID)
		References Awards.TeamAwards (playerID)

   Alter table Coaches.CoachRecord WITH CHECK
	ADD CONSTRAINT FK_CoachRecord_CoachInfo
		Foreign Key(CoachID)
		References Coaches.CoachInfo (CoachID)

   Alter table Coaches.CoachStats WITH CHECK
	ADD CONSTRAINT FK_CoachStats_CoachRecord
		Foreign Key(RecordID)
		References Coaches.CoachRecord (RecordID)

   Alter table [Statistics].TeamStats WITH CHECK
	ADD CONSTRAINT FK_TeamStats_TeamInfo
		Foreign Key(TeamID)
		References Information.TeamInfo (TeamID)

   Alter table [Statistics].Draft WITH CHECK
	ADD CONSTRAINT FK_Draft_PlayersInfo
		Foreign Key(PlayerID)
		References Information.PlayersInfo (PlayerID)
   Alter table [Statistics].Draft WITH CHECK
	ADD CONSTRAINT FK_Draft_TeamInfo
		Foreign Key(TeamID)
		References Information.TeamInfo (TeamID)
   Alter table [Statistics].Draft WITH CHECK
	ADD CONSTRAINT FK_Draft_IndividualAwards
		Foreign Key(LeagueID)
		References Awards.IndividualAwards (LeagueID)


   Alter table [Statistics].PlayersStats WITH CHECK
	ADD CONSTRAINT FK_PlayerStats_PlayersInfo
		Foreign Key(PlayerID)
		References Information.PlayersInfo (PlayerID)


   Alter table [Statistics].TeamsPost WITH CHECK
	ADD CONSTRAINT FK_TeamsPost_TeamInfo
		Foreign Key(TeamID)
		References Information.TeamInfo (TeamID)
   Alter table [Statistics].TeamsPost WITH CHECK
	ADD CONSTRAINT FK_TeamsPost_IndividualAwards
		Foreign Key(LeagueID)
		References Awards.IndividualAwards (LeagueID)

End
GO





