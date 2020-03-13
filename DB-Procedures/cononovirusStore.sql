USE [FStepCommunity_prod]
GO

/****** Object:  StoredProcedure [dbo].[cononovirusStore]    Script Date: 13/03/2020 15:39:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Daniel Gregory
-- Create date: 12/03/2020
-- Description:	Store submitted information in the database table
-- =============================================
CREATE PROCEDURE [dbo].[cononovirusStore] 
				@reference as varchar(50)
				,@firstName as varchar(50)
				,@lastName as varchar(50)
				,@directorate as varchar(100)
				,@team as varchar(50)
				,@phoneNumber as varchar(50)
				,@email as varchar(255)
				,@about as varchar(20)
				,@Question as varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO [dbo].[coronavirusQueries]
           ([reference]
           ,[firstName]
           ,[lastName]
           ,[directorate]
           ,[team]
           ,[phoneNumber]
           ,[email]
           ,[about]
           ,[Question]
           ,[status]
           ,[createdDate])
     VALUES
           (@reference
           ,@firstName
           ,@lastName
           ,@directorate
           ,@team
           ,@phoneNumber
           ,@email
           ,@about
           ,@Question
           ,'submitted'
           ,GETDATE())

END
GO


