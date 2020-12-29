USE [MedicalDatabase]
GO

/****** Object:  Table [dbo].[DroppedPatients]    Script Date: 12/27/2020 9:28:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DroppedPatients](
	[PatientKey] [nchar](15) NOT NULL,
	[DateDropped] [date] NOT NULL,
	[ReasonDropped] [varchar](200) NOT NULL,
 CONSTRAINT [PK_DroppedPatients] PRIMARY KEY CLUSTERED 
(
	[PatientKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


