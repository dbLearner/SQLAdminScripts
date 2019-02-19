EXEC sp_addlinkedserver 
@server = ExcelLink,
@srvproduct = 'Excel',
@provider = 'Microsoft.Jet.OLEDB.4.0',
@datasrc = 'E:\infoFIW\EstructuraDetVtas.xls',
@provstr = 'Excel 8.0'
Go

EXEC sp_addlinkedsrvlogin
@rmtsrvname = ExcelLink,
@useself = false,
@locallogin = Null,
@rmtuser = Admin,
@rmtpassword = Null
Go 

select * from openquery(ExcelLink, 'Select * from [Hoja1$]')
select * from Excellink...Hoja1$

EXECUTE SP_TABLES_EX Excellink
EXECUTE SP_COLUMNS_EX Excellink

Exec sp_droplinkedsrvlogin Excellink, null
Exec sp_dropserver Excellink