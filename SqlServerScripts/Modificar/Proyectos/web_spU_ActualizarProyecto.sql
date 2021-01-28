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
			WHERE  name = 'web_spU_ActualizarProyecto' AND
			TYPE = 'P')
	DROP PROCEDURE web_spU_ActualizarProyecto
GO
-- =============================================
-- Author:		Orlando Esparza
-- Create date: Lunes 25 de Marzo de 2019
-- Description:	Actualizar un registro de Proyecto por su ID
-- =============================================
CREATE PROCEDURE web_spU_ActualizarProyecto
	-- Add the parameters for the stored procedure here
	@ID						CHAR(8),
	@Nombre					VARCHAR(200),
	@Direccion				VARCHAR(500),
	@Monto					MONEY,
	@Observaciones			VARCHAR(MAX),
	@Avances				VARCHAR(50),
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
		Proyectos
	SET
		Nombre = @Nombre,
		Direccion = @Direccion,
		Monto = @Monto,
		Observaciones = @Observaciones,
		Avances = @Avances,
		Estatus = @Estatus,
		UsuarioModificacion = @UsuarioModificacion,
		FechaModificacion = @FechaModificacion
	WHERE
		ID = @ID
END
GO