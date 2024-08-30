
--CONSULTA PARA OBTENER LOS PRODUCTOS CON STOCK

SELECT 
	[ProductoNombre],
    [Stock]
 FROM [prueba].[dbo].[Productos]

 --CONSULTA PARA OBTENER LOS NUMEROS DE FACTURAS CON AL MENOS DOS PRODUCTOS

 SELECT FH.FacturaNo, COUNT(FD.ProductoNo) AS 'CANTIDAD DE PRODUCTOS', FH.Estatus 
 FROM [dbo].[FacturaH] FH
 INNER JOIN [dbo].[FacturaD] FD ON FH.FacturaNo = FD.FacturaNo
 WHERE FH.Estatus = 'Pagada'
 GROUP BY FH.FacturaNo,FH.Estatus
 HAVING COUNT(FD.ProductoNo) >= 2

 --CONSULTA PARA OBTENER LA CANTIDAD DE PRODUCTOS DEPENDIENDO DEL ESTADO DE LA FACTURA

SELECT P.ProductoNo, P.ProductoNombre, SUM(FD.Cantidad) AS CANTIDAD, FH.Estatus 
FROM [dbo].[Productos] P
INNER JOIN [dbo].[FacturaD] FD ON FD.ProductoNo = P.ProductoNo
INNER JOIN [dbo].[FacturaH] FH ON FD.FacturaNo = FH.FacturaNo
GROUP BY P.ProductoNo,P.ProductoNombre, FH.Estatus