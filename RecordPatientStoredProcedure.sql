USE [MedicalDatabase]
GO

/****** Object:  StoredProcedure [dbo].[usp_RecordPatient]    Script Date: 12/27/2020 9:35:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[usp_RecordPatient]
	@PatientKey nchar(15),
	@DoctorKey nchar(15),
	@FirstName varchar(25),
	@MiddleName varchar(25),
	@LastName varchar(25),
	@PhoneNumber nchar(20)
AS

INSERT INTO [dbo].[Patient]
           ([PatientKey]
           ,[DoctorKey]
           ,[FirstName]
           ,[MiddleName]
           ,[LastName]
           ,[PhoneNumber])
     VALUES
           (@PatientKey
           ,@DoctorKey
           ,@FirstName
           ,@MiddleName
           ,@LastName
           ,@PhoneNumber)
GO


