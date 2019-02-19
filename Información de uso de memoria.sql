SELECT 
        [type] AS Tipo_Dist ,
        SUM(single_pages_kb)/1024.00 AS MbMemoria
FROM    sys.dm_os_memory_clerks
GROUP BY [type]
ORDER BY SUM(single_pages_kb) DESC


SELECT  DB_NAME(database_id) AS BaseDatos,
        COUNT(*) * 8 / 1024.0 AS CacheMB
FROM    sys.dm_os_buffer_descriptors
WHERE   database_id > 4 -- filtra bases de datos del sistema
        AND database_id <> 32767 -- Filtra la ResourceDB
GROUP BY DB_NAME(database_id)
ORDER BY CacheMB DESC


DBCC MEMORYSTATUS;