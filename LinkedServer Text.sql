select * from openrowset (
'Microsoft.Jet.OLEDB.4.0', 
'C:\FIWLog\FIWLog.txt','Select * from FIWLog.txt')
Select 'Prueba Log' As mensaje

SELECT  * FROM OPENROWSET(BULK N'C:\FIWLog\FIWLog.txt', SINGLE_BLOB) AS Document
GO

--Read Text using OpenRowSet
select * from OpenRowset('MSDASQL', 'Driver={Microsoft Text Driver (*.txt; *.csv)};
  DefaultDir=C:\FIWlog;','Insert FIWLog.txt values (Prueba)')
go
insert OPENROWSET('Microsoft.Jet.OLEDB.4.0', 
'Text;Database=C:\FIWLog', 
--'select * from FIWLog.txt') 
'select Prueba')
go

EXEC sp_addlinkedserver 
TEXT_LOG,            /** Local Server Name **/
'Jet 4.0',          /** server product **/
'Microsoft.Jet.OLEDB.4.0',    /** Provider **/
'C:\FIWLog',      /** data source only path name **/
NULL,       /** location **/
'Text'       /** provider string **/
GO

EXEC sp_addlinkedsrvlogin
TEXT_LOG, /** remote server name **/
false,   /** True or False **/
NULL,    /** local login Name **/
Admin,    /** Remote userName **/
NULL /** Remote password **/
GO

EXEC sp_dropserver TEXT_LOG
EXEC sp_droplinkedsrvlogin TEXT_LOG, null

EXEC sp_tables_ex TEXT_LOG
EXEC sp_columns_ex TEXT_LOG

INSERT TEXT_LOG...FIWLog#txt values ('Prueba')

select * from TEXT_LOG...logPurge#txt 

INSERT OPENQUERY(TEXT_LOG,'SELECT ''prueba''')
SELECT 'Prueba' as mensaje

sp_configure