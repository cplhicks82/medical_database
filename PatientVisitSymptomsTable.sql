USE [MedicalDatabase]
GO

/****** Object:  Table [dbo].[PatientVisitSymptoms]    Script Date: 12/27/2020 9:31:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PatientVisitSymptoms](
	[PatientKey] [nchar](15) NOT NULL,
	[VisitDate] [date] NOT NULL,
	[Symptom] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PatientVisitSymptoms] PRIMARY KEY CLUSTERED 
(
	[PatientKey] ASC,
	[VisitDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


