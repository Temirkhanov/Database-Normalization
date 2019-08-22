-- RUN THIS BEFORE PROCEDURE 
-- UPDATE Fileupload.wom_basketball_coaches
-- SET FullName = 'Suzie McConnell Serio'
-- where fullname = 'Suzie McConnell-Serio'

-----------------------------------------------------------------------------------------------------
CREATE PROCEDURE dbo.InsertCoachInfo
AS
BEGIN
   print 'Beginning InsertCoachInfo'
   SET NOCOUNT ON;
   INSERT INTO dbo.CoachInfo
      (
      CoachId,FullName)

   Select distinct old.coachID, old.fullname
   from FileUpload.wom_basketball_coaches as old

END
GO

