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
			WHERE  name = 'web_spS_ObtenerImagenAvanceProyectoPorProyecto' AND
			TYPE = 'P')
	DROP PROCEDURE web_spS_ObtenerImagenAvanceProyectoPorProyecto
GO
-- =============================================
-- Author:		Orlando Esparza
-- Create date: Lunes 22 de Abril de 2019
-- Description:	Obtener todos los registro de Imagenes avances proyectos por su Proyecto
-- =============================================
CREATE PROCEDURE web_spS_ObtenerImagenAvanceProyectoPorProyecto
	-- Add the parameters for the stored procedure here
	@Proyecto		CHAR(8)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		ID,
		Proyecto,
		Avance,
		Nombre,
		Descripcion,
		Direccion
	FROM
		ImagenesAvancesProyectos
	WHERE
		Proyecto = @Proyecto
END
GO