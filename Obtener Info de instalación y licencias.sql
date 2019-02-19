/*
http://dblearner.com (2017)

NOTAS:
La información de licenciamiento no es almacenada en SQL Server
Mas Información en: https://docs.microsoft.com/en-us/sql/t-sql/functions/serverproperty-transact-sql

También se puede ver información de la instalación en el Registry, en la ruta:
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL11.SQL110\Setup
*/
SELECT 
SERVERPROPERTY('LicenseType') AS TipoLicencia, --Siempre retorna DISABLED a partir de SQL2005
SERVERPROPERTY('NumLicenses') AS NumeroLicencias, --Siempre retorna NULL a partir de SQL2005
CAST(SERVERPROPERTY('ProductVersion') AS varchar(20)) AS NumVersión, 
SERVERPROPERTY ('ProductLevel') AS ServicePack, 
SERVERPROPERTY ('Edition') AS Edicion,
@@VERSION AS Versión