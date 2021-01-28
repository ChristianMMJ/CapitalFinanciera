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
			WHERE  name = 'web_spI_InsertarProyecto' AND
			TYPE = 'P')
	DROP PROCEDURE web_spI_InsertarProyecto
GO
-- =============================================
-- Author:		Orlando Esparza
-- Create date: Lunes 25 de Marzo de 2019
-- Description:	Insertar un nuevo registro de Proyecto
-- =============================================
CREATE PROCEDURE web_spI_InsertarProyecto
	-- Add the parameters for the stored procedure here
	@ID						CHAR(8) OUTPUT,
	@Nombre					VARCHAR(200),
	@Direccion				VARCHAR(500),
	@Monto					MONEY,
	@Observaciones			VARCHAR(MAX),
	@Avances				VARCHAR(50),
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
		@VALOR CHAR(8)
		
		SELECT @ID_TEMP = MAX(CAST(SUBSTRING(ID, 4, LEN(ID)) AS INT)) FROM Proyectos WHERE ID LIKE 'PRY%'
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
			SET @VALOR = 'PRY0000' + CAST(@ID_TEMP AS CHAR(1))
		END
		ELSE IF ((@ID_TEMP / 100) < 1)
		BEGIN
			SET @VALOR = 'PRY000' + CAST(@ID_TEMP AS CHAR(2))
		END
		ELSE IF ((@ID_TEMP / 1000) < 1)
		BEGIN
			SET @VALOR = 'PRY00' + CAST(@ID_TEMP AS CHAR(3))
		END
		ELSE IF ((@ID_TEMP / 10000) < 1)
		BEGIN
			SET @VALOR = 'PRY0' + CAST(@ID_TEMP AS CHAR(4))
		END
		ELSE
		BEGIN
			SET @VALOR = 'PRY' + CAST(@ID_TEMP AS CHAR(5))
		END
		
		SELECT @ID = @VALOR

	INSERT INTO
		Proyectos
		(
			ID,
			Nombre,
			Direccion,
			Monto,
			Observaciones,
			Avances,
			Estatus,
			UsuarioAlta,
			FechaAlta,
			UsuarioModificacion,
			FechaModificacion
		)
	VALUES 
		(
			@ID,
			@Nombre,
			@Direccion,
			@Monto,
			@Observaciones,
			@Avances,
			@Estatus,
			@UsuarioAlta,
			@FechaAlta,
			@UsuarioModificacion,
			@FechaModificacion
		)
END
GO