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
			WHERE  name = 'web_spI_InsertarImagenAvanceProyecto' AND
			TYPE = 'P')
	DROP PROCEDURE web_spI_InsertarImagenAvanceProyecto
GO
-- =============================================
-- Author:		Orlando Esparza
-- Create date: Lunes 22 de Abril de 2019
-- Description:	Insertar un nuevo registro de Imagenes Avances Proyectos
-- =============================================
CREATE PROCEDURE web_spI_InsertarImagenAvanceProyecto
	-- Add the parameters for the stored procedure here
	@ID				INT OUTPUT,
	@Proyecto		CHAR(8),
	@Avance			VARCHAR(50),
	@Nombre			VARCHAR(100),
	@Descripcion	VARCHAR(MAX),
	@Direccion		VARCHAR(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here

	INSERT INTO
		ImagenesAvancesProyectos
		(
			Proyecto,
			Avance,
			Nombre,
			Descripcion,
			Direccion
		)
	VALUES 
		(
			@Proyecto,
			@Avance,
			@Nombre,
			@Descripcion,
			@Direccion
		)

	SELECT @ID = SCOPE_IDENTITY()
END
GO