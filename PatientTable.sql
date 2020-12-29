USE [MedicalDatabase]
GO

/****** Object:  Table [dbo].[Patient]    Script Date: 12/27/2020 9:29:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Patient](
	[PatientKey] [nchar](15) NOT NULL,
	[DoctorKey] [nchar](15) NOT NULL,
	[FirstName] [varchar](25) NOT NULL,
	[MiddleName] [varchar](25) NULL,
	[LastName] [varchar](25) NOT NULL,
	[PhoneNumber] [nchar](20) NULL,
	[DateModified] [date] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Doctor] FOREIGN KEY([DoctorKey])
REFERENCES [dbo].[Doctor] ([DoctorKey])
GO

ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Doctor]
GO

ALTER TABLE [dbo].[Patient]  WITH NOCHECK ADD  CONSTRAINT [FK_Patient_DroppedPatients] FOREIGN KEY([PatientKey])
REFERENCES [dbo].[DroppedPatients] ([PatientKey])
GO

ALTER TABLE [dbo].[Patient] NOCHECK CONSTRAINT [FK_Patient_DroppedPatients]
GO

ALTER TABLE [dbo].[Patient]  WITH NOCHECK ADD  CONSTRAINT [FK_Patient_PatientGroupAssignment] FOREIGN KEY([PatientKey])
REFERENCES [dbo].[PatientGroupAssignment] ([PatientKey])
GO

ALTER TABLE [dbo].[Patient] NOCHECK CONSTRAINT [FK_Patient_PatientGroupAssignment]
GO


