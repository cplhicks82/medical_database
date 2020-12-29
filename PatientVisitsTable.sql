USE [MedicalDatabase]
GO

/****** Object:  Table [dbo].[PatientVisits]    Script Date: 12/27/2020 9:30:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PatientVisits](
	[PatientKey] [nchar](15) NOT NULL,
	[VisitDate] [date] NOT NULL,
	[BloodPressure] [nchar](8) NOT NULL,
	[Weight] [decimal](18, 0) NOT NULL,
	[Pulse] [int] NOT NULL,
	[DepressionLevel] [int] NOT NULL,
	[DoctorNotes] [varchar](max) NULL,
 CONSTRAINT [PK_PatientVisits] PRIMARY KEY CLUSTERED 
(
	[PatientKey] ASC,
	[VisitDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[PatientVisits]  WITH CHECK ADD  CONSTRAINT [FK_PatientVisits_Patient] FOREIGN KEY([PatientKey])
REFERENCES [dbo].[Patient] ([PatientKey])
GO

ALTER TABLE [dbo].[PatientVisits] CHECK CONSTRAINT [FK_PatientVisits_Patient]
GO

ALTER TABLE [dbo].[PatientVisits]  WITH NOCHECK ADD  CONSTRAINT [FK_PatientVisits_PatientVisitSymptoms] FOREIGN KEY([PatientKey], [VisitDate])
REFERENCES [dbo].[PatientVisitSymptoms] ([PatientKey], [VisitDate])
GO

ALTER TABLE [dbo].[PatientVisits] NOCHECK CONSTRAINT [FK_PatientVisits_PatientVisitSymptoms]
GO


