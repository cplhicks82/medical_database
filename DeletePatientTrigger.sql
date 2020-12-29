USE [MedicalDatabase]
GO

/****** Object:  Trigger [dbo].[trg_DeletePatient]    Script Date: 12/27/2020 9:31:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_DeletePatient] 
   ON [dbo].[Patient]
   AFTER DELETE
AS 
BEGIN
	SET NOCOUNT ON;
	declare @PatientKey nchar(15) = (select PatientKey from Deleted)
	declare @DateDropped date = GETDATE()
	insert into DroppedPatients (PatientKey, DateDropped, ReasonDropped)
	values (@PatientKey, @DateDropped, 'Please Update')
	Delete from PatientGroupAssignment where PatientKey = @PatientKey;
	Delete from PatientVisits where PatientKey = @PatientKey;
	Delete from PatientVisitSymptoms where PatientKey = @PatientKey
END
GO

ALTER TABLE [dbo].[Patient] ENABLE TRIGGER [trg_DeletePatient]
GO


