--Fill in the rest of the procedure formula to make this work
Use WNBAbase

CREATE SCHEMA FileUpload
--------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE dbo.AlterFileUpload

AS
BEGIN
   -- SET NOCOUNT ON added to prevent extra result sets from
   -- interfering with SELECT statements.
   SET NOCOUNT ON;
   Print 'Beginning AlterFileUpload'


   alter schema FileUpload transfer dbo.wom_basketball_abbrev
   alter schema FileUpload transfer dbo.wom_basketball_awards_players
   alter schema FileUpload transfer dbo.wom_basketball_coaches
   alter schema FileUpload transfer dbo.wom_basketball_master
   alter schema FileUpload transfer dbo.wom_basketball_players
   alter schema FileUpload transfer dbo.wom_basketball_draft
   alter schema FileUpload transfer dbo.wom_basketball_series_post
   alter schema FileUpload transfer dbo.wom_basketball_teams
   alter schema FileUpload transfer dbo.wom_basketball_teams_post
End
GO




