USE [MedicalDatabase]
GO

/****** Object:  View [dbo].[DoctorGroupAssignment]    Script Date: 12/27/2020 9:33:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[DoctorGroupAssignment] as
select P.DoctorKey, PGA.GroupKey
from Patient as P
join PatientGroupAssignment as PGA
on P.PatientKey = PGA.PatientKey
GO


