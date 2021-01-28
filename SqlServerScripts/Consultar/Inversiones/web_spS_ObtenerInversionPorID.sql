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
			WHERE  name = 'web_spS_ObtenerInversionPorID' AND
			TYPE = 'P')
	DROP PROCEDURE web_spS_ObtenerInversionPorID
GO
-- =============================================
-- Author:		Orlando Esparza
-- Create date: Domingo 31 de Marzo de 2019
-- Description:	Obtener un registro de Inversion por su ID
-- =============================================
CREATE PROCEDURE web_spS_ObtenerInversionPorID
	-- Add the parameters for the stored procedure here
	@ID		CHAR(10)
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
		ID = @ID
END
GO