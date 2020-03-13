USE [FStepCommunity_prod]
GO

/****** Object:  StoredProcedure [dbo].[coronovirusUpdate]    Script Date: 13/03/2020 15:40:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniel Gregory
-- Create date: 13/03/2020
-- Description:	update response
-- =============================================
CREATE PROCEDURE [dbo].[coronovirusUpdate] 
				@ID as int
				,@response as varchar(max)
				,@status as varchar(50)
				,@name as varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[coronavirusQueries]
	   SET [dealtComments] = @response
		  ,[status] = @status
		  ,[modifiedBy] = @name
		  ,[modifiedDate] = GETDATE()
	 WHERE ID_query = @ID

END
GO


