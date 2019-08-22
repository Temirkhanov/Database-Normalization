CREATE PROCEDURE dbo.InsertAbbreviation
AS
BEGIN
   print 'Beginning InsertAbbreviation'
   SET NOCOUNT ON;
   INSERT INTO dbo.Abbreviation
      (
      FullName,Code,AbbreviationType)

   Select old.full_name, old.code, old.abbrev_type
   from FileUpload.wom_basketball_abbrev as old

END
GO

