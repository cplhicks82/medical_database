USE [MedicalDatabase]
GO

/****** Object:  Table [dbo].[PatientGroupAssignment]    Script Date: 12/27/2020 9:30:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PatientGroupAssignment](
	[PatientKey] [nchar](15) NOT NULL,
	[GroupKey] [nchar](15) NOT NULL,
 CONSTRAINT [PK_PatientGroupAssignment] PRIMARY KEY CLUSTERED 
(
	[PatientKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PatientGroupAssignment]  WITH CHECK ADD  CONSTRAINT [FK_PatientGroupAssignment_Groups] FOREIGN KEY([GroupKey])
REFERENCES [dbo].[Groups] ([GroupKey])
GO

ALTER TABLE [dbo].[PatientGroupAssignment] CHECK CONSTRAINT [FK_PatientGroupAssignment_Groups]
GO


