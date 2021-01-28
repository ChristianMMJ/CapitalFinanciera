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
			WHERE  name = 'web_spU_ActualizarInversion' AND
			TYPE = 'P')
	DROP PROCEDURE web_spU_ActualizarInversion
GO
-- =============================================
-- Author:		Orlando Esparza
-- Create date: Domingo 31 de Marzo de 2019
-- Description:	Actualizar un registro de Inversion por su ID
-- =============================================
CREATE PROCEDURE web_spU_ActualizarInversion
	-- Add the parameters for the stored procedure here
	@ID						CHAR(10),
	@Usuario				VARCHAR(50),
	@Proyecto				CHAR(8),
	@Fecha					SMALLDATETIME,
	@Monto					MONEY,
	@Porcentaje				FLOAT,
	@Tipo					CHAR(1),
	@Estatus				VARCHAR(50),
	@UsuarioModificacion	VARCHAR(50),
	@FechaModificacion		SMALLDATETIME
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    UPDATE
		Inversiones
	SET
		Usuario = @Usuario,
		Proyecto = @Proyecto,
		Fecha = @Fecha,
		Monto = @Monto,
		Porcentaje = @Porcentaje,
		Tipo = @Tipo,
		Estatus = @Estatus,
		UsuarioModificacion = @UsuarioModificacion,
		FechaModificacion = @FechaModificacion
	WHERE
		ID = @ID
END
GO