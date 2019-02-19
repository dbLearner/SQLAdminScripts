--Activar opciones avanzadas
sp_configure 'show advanced options', 1
GO
RECONFIGURE
GO
sp_configure 
GO

--Configurar la memoria
EXEC sys.sp_configure 'max server memory (MB)', '1024'
GO
RECONFIGURE WITH OVERRIDE
GO

--Cambiar fill factor por defecto
EXEC sys.sp_configure 'fill factor (%)', '80'
GO
RECONFIGURE
GO

--Configurar número de conexiones maximas permitidas
EXEC sys.sp_configure 'user connections', '10'
GO
RECONFIGURE WITH OVERRIDE
GO