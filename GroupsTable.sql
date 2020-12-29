USE [MedicalDatabase]
GO

/****** Object:  Table [dbo].[Groups]    Script Date: 12/27/2020 9:28:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Groups](
	[GroupKey] [nchar](15) NOT NULL,
	[GroupDescription] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


