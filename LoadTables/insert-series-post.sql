CREATE PROCEDURE [dbo].[InsertSeriesPost]
AS
BEGIN
	print 'Beginning InsertSeriesPost'
	SET NOCOUNT ON;
	INSERT INTO dbo.SeriesPost
		(Year,Round,Series,TeamIDWinner,LeagueIdWinner,TeamIdLoser,LeagueIdLoser,Wins,Losses)

	select old.year, old.round, old.series, old.tmIdWinner, old.lgIdWinner, old.tmIdLoser, old.lgidLoser, old.W, old.L
	from FileUpload.wom_basketball_series_post as old

END 

