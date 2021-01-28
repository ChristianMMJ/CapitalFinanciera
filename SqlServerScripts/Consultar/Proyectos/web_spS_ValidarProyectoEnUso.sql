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
			WHERE  name = 'web_spS_ValidarProyectoEnUso' AND
			TYPE = 'P')
	DROP PROCEDURE web_spS_ValidarProyectoEnUso
GO
-- =============================================
-- Author:		Orlando Esparza
-- Create date: Lunes 25 de Marzo de 2019
-- Description:	Validar si es posible eliminar un registro de Proyecto por su ID
-- =============================================
CREATE PROCEDURE web_spS_ValidarProyectoEnUso
	-- Add the parameters for the stored procedure here
	@ID		CHAR(8)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;  
    -- Insert statements for procedure here
	--IF EXISTS(SELECT u.ID FROM Usuarios u WHERE u.ID = @ID AND u.Estatus = 'ALTA') 
	--OR EXISTS(SELECT u.ID FROM Usuarios u WHERE u.ID IN(SELECT oe.Usuario FROM OrdenesEstimaciones oe WHERE oe.Usuario = @ID)) 
	--OR EXISTS(SELECT u.ID FROM Usuarios u WHERE u.ID IN(SELECT pg.Usuario FROM PreciariosGenerales pg WHERE pg.Usuario = @ID)) 
	--OR EXISTS(SELECT u.ID FROM Usuarios u WHERE u.ID IN(SELECT pg.Usuario FROM Preciarios pg WHERE pg.Usuario = @ID))
	--OR EXISTS(SELECT u.ID FROM Usuarios u WHERE u.ID IN(SELECT c.Usuario FROM Clientes c WHERE c.Usuario = @ID)) 
	--OR EXISTS(SELECT u.ID FROM Usuarios u WHERE u.ID IN(SELECT v.Usuario FROM Volumetrias v WHERE v.Usuario = @ID)) 
	--OR EXISTS(SELECT u.ID FROM Usuarios u WHERE u.ID IN(SELECT v.Usuario FROM PreciarioSubCategorias v WHERE v.Usuario = @ID))
	--BEGIN 
		--SELECT CAST(0 AS BIT)  
	--END
	--ELSE
	--BEGIN
		SELECT CAST(1 AS BIT) 
	--END  
END
GO