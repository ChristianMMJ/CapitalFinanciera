-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Create procedure basic template
-- =============================================
IF EXISTS (	SELECT name 
			FROM sysobjects
			WHERE  name = 'web_spI_InsertarInversion' AND
			TYPE = 'P')
	DROP PROCEDURE web_spI_InsertarInversion
GO
-- =============================================
-- Author:		Orlando Esparza
-- Create date: Domingo 31 de Marzo de 2019
-- Description:	Insertar un nuevo registro de Inversion
-- =============================================
CREATE PROCEDURE web_spI_InsertarInversion
	-- Add the parameters for the stored procedure here
	@ID						CHAR(10) OUTPUT,
	@Usuario				VARCHAR(50),
	@Proyecto				CHAR(8),
	@Fecha					SMALLDATETIME,
	@Monto					MONEY,
	@Porcentaje				FLOAT,
	@Tipo					CHAR(1),
	@Estatus				VARCHAR(50),
	@UsuarioAlta			VARCHAR(50),
	@FechaAlta				SMALLDATETIME,
	@UsuarioModificacion	VARCHAR(50),
	@FechaModificacion		SMALLDATETIME
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here

	--Formar el ID
	DECLARE
		@ID_TEMP INT,
		@VALOR CHAR(10)
		
		SELECT @ID_TEMP = MAX(CAST(SUBSTRING(ID, 4, LEN(ID)) AS INT)) FROM Inversiones WHERE ID LIKE 'INV%'
		IF (@ID_TEMP IS NOT NULL)
		BEGIN
			SET @ID_TEMP = @ID_TEMP + 1
		END
		ELSE
		BEGIN
			SET @ID_TEMP = 1
		END

		--DECIMAL
		IF ((@ID_TEMP / 10) < 1)
		BEGIN
			SET @VALOR = 'INV000000' + CAST(@ID_TEMP AS CHAR(1))
		END
		ELSE IF ((@ID_TEMP / 100) < 1)
		BEGIN
			SET @VALOR = 'INV00000' + CAST(@ID_TEMP AS CHAR(2))
		END
		ELSE IF ((@ID_TEMP / 1000) < 1)
		BEGIN
			SET @VALOR = 'INV0000' + CAST(@ID_TEMP AS CHAR(3))
		END
		ELSE IF ((@ID_TEMP / 10000) < 1)
		BEGIN
			SET @VALOR = 'INV000' + CAST(@ID_TEMP AS CHAR(4))
		END
		ELSE IF ((@ID_TEMP / 100000) < 1)
		BEGIN
			SET @VALOR = 'INV00' + CAST(@ID_TEMP AS CHAR(5))
		END
		ELSE IF ((@ID_TEMP / 1000000) < 1)
		BEGIN
			SET @VALOR = 'INV0' + CAST(@ID_TEMP AS CHAR(5))
		END
		ELSE
		BEGIN
			SET @VALOR = 'INV' + CAST(@ID_TEMP AS CHAR(5))
		END
		
		SELECT @ID = @VALOR

	INSERT INTO
		Inversiones
		(
			ID,
			Usuario,
			Proyecto,
			Fecha,
			Monto,
			Porcentaje,
			Tipo,
			Estatus,
			UsuarioAlta,
			FechaAlta,
			UsuarioModificacion,
			FechaModificacion
		)
	VALUES 
		(
			@ID,
			@Usuario,
			@Proyecto,
			@Fecha,
			@Monto,
			@Porcentaje,
			@Tipo,
			@Estatus,
			@UsuarioAlta,
			@FechaAlta,
			@UsuarioModificacion,
			@FechaModificacion
		)
END
GO