USE [MedicalDatabase]
GO

/****** Object:  View [dbo].[HighDepressionVisits]    Script Date: 12/27/2020 9:34:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[HighDepressionVisits] as
SELECT [PatientKey]
      ,[VisitDate]
  FROM [dbo].[PatientVisits]
  where [DepressionLevel] > 5

GO


