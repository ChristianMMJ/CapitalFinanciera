--SELECT * FROM Articulos WHERE TipoMovimiento IN ('CAPITAL', 'AHORRO') ORDER BY TipoMovimiento

DECLARE @Cliente	CHAR(8)

-- Declaración del cursor
DECLARE cClientes CURSOR 
FOR SELECT ID FROM Clientes
 
-- apertura del cursor
OPEN cClientes
 
-- Lectura de la primera fila del cursor
FETCH cClientes INTO @Cliente
 
WHILE (@@FETCH_STATUS = 0)
BEGIN
INSERT INTO Saldos (Articulo, Cliente, Importe) VALUES ('01', @Cliente, 0)
INSERT INTO Saldos (Articulo, Cliente, Importe) VALUES ('02', @Cliente, 0)
INSERT INTO Saldos (Articulo, Cliente, Importe) VALUES ('03', @Cliente, 0)
INSERT INTO Saldos (Articulo, Cliente, Importe) VALUES ('06', @Cliente, 0)
INSERT INTO Saldos (Articulo, Cliente, Importe) VALUES ('07', @Cliente, 0)
INSERT INTO Saldos (Articulo, Cliente, Importe) VALUES ('09', @Cliente, 0)
INSERT INTO Saldos (Articulo, Cliente, Importe) VALUES ('10', @Cliente, 0)
INSERT INTO Saldos (Articulo, Cliente, Importe) VALUES ('11', @Cliente, 0)
INSERT INTO Saldos (Articulo, Cliente, Importe) VALUES ('12', @Cliente, 0)
-- Lectura de la siguiente fila de un cursor
FETCH cClientes INTO @Cliente
END -- Fin del bucle WHILE 
-- Cierra el cursor
CLOSE cClientes
-- Libera los recursos del cursor
DEALLOCATE cClientes

--select * from saldos
--select * from Clientes