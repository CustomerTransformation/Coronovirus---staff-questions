USE [FStepCommunity_prod]
GO

/****** Object:  Table [dbo].[coronavirusQueries]    Script Date: 13/03/2020 15:37:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[coronavirusQueries](
	[ID_query] [int] IDENTITY(1,1) NOT NULL,
	[reference] [varchar](50) NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[directorate] [varchar](100) NULL,
	[team] [varchar](50) NULL,
	[phoneNumber] [varchar](50) NULL,
	[email] [varchar](255) NULL,
	[about] [varchar](20) NULL,
	[Question] [varchar](max) NULL,
	[dealtComments] [varchar](max) NULL,
	[status] [varchar](50) NULL,
	[createdDate] [datetime] NOT NULL,
	[modifiedBy] [varchar](50) NULL,
	[modifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[coronavirusQueries] ADD  CONSTRAINT [DF_coronavirusQueries_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO


