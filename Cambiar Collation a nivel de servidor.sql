--SQL 2000, 
-- Ejecutar rebuildm.exe en el directorio Binn, indicar el collation en el diálogo

--SQL 2005

setup.exe /qb INSTANCENAME=[instance] REINSTALL=SQL_Engine REBUILDDATABASE=1 SAPWD=[password] SQLCOLLATION=[new collation]


--SQL 2008
setup.exe /QUIET /ACTION=REBUILDDATABASE /INSTANCENAME=[instance] /SQLSYSADMINACCOUNTS=[admin account] /SAPWD=[password] /SQLCOLLATION=[new collation]