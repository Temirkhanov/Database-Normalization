
CREATE PROCEDURE dbo.InsertPlayersInfo
AS
BEGIN
   print 'Beginning InsertPlayersInfo'
   SET NOCOUNT ON;
   INSERT INTO dbo.PlayersInfo
      (
      PlayerId,PlayerName)

   Select distinct old.playerID, old.playerName
   from FileUpload.wom_basketball_players as old

END
GO


