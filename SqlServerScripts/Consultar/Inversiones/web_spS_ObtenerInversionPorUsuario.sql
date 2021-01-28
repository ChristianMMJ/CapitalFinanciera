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
			WHERE  name = 'web_spS_ObtenerInversionPorUsuario' AND
			TYPE = 'P')
	DROP PROCEDURE web_spS_ObtenerInversionPorUsuario
GO
-- =============================================
-- Author:		Orlando Esparza
-- Create date: Lunea 1 de Julio de 2019
-- Description:	Obtener todos los registros de Inversion por su Usuario
-- =============================================
CREATE PROCEDURE web_spS_ObtenerInversionPorUsuario
	-- Add the parameters for the stored procedure here
	@Usuario	VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
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
	FROM
		Inversiones
	WHERE
		Usuario = @Usuario
END
GO