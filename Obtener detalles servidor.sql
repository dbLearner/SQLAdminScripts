--Obtener detalle de las características del servidor
SELECT 
          SERVERPROPERTY('MachineName') as Host,
          ISNULL(SERVERPROPERTY('InstanceName'), 'Default') as Instance,
          SERVERPROPERTY('Edition') as Edition, /*shows 32 bit or 64 bit*/
          SERVERPROPERTY('ProductLevel') as ProductLevel, /* RTM or SP1 etc*/
          Case SERVERPROPERTY('IsClustered') when 1 then 'CLUSTERED' else 'STANDALONE' end as ServerType,
          @@VERSION as VersionNumber