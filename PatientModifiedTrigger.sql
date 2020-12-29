USE [MedicalDatabase]
GO

/****** Object:  Trigger [dbo].[trg_PatientModified]    Script Date: 12/27/2020 9:33:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[trg_PatientModified] 
   ON [dbo].[Patient] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update Patient set [DateModified] = GETDATE()
	where (select PatientKey from Inserted) = Patient.PatientKey

END
GO

ALTER TABLE [dbo].[Patient] ENABLE TRIGGER [trg_PatientModified]
GO


