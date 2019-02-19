/*
http://dblearner.com (2017)

NOTAS:
La informaci�n de licenciamiento no es almacenada en SQL Server
Mas Informaci�n en: https://docs.microsoft.com/en-us/sql/t-sql/functions/serverproperty-transact-sql

Tambi�n se puede ver informaci�n de la instalaci�n en el Registry, en la ruta:
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL11.SQL110\Setup
*/
SELECT 
SERVERPROPERTY('LicenseType') AS TipoLicencia, --Siempre retorna DISABLED a partir de SQL2005
SERVERPROPERTY('NumLicenses') AS NumeroLicencias, --Siempre retorna NULL a partir de SQL2005
CAST(SERVERPROPERTY('ProductVersion') AS varchar(20)) AS NumVersi�n, 
SERVERPROPERTY ('ProductLevel') AS ServicePack, 
SERVERPROPERTY ('Edition') AS Edicion,
@@VERSION AS Versi�n