--
SELECT l.name, l.denylogin, l.isntname, l.isntgroup, l.isntuser
  FROM master.dbo.syslogins l
WHERE l.sysadmin = 1 OR l.securityadmin = 1

--
DBCC TRACESTATUS(-1)
go
DBCC TRACESTATUS

--2005/2008
SELECT name,compatibility_level,recovery_model_desc,state_desc FROM sys.databases

--2000
USE master
GO
SELECT name,cmptlevel,DATABASEPROPERTYEX(name,'Recovery')AS RecoveryModel, 
DATABASEPROPERTYEX(name,'Status') as Status FROM sysdatabases

--2005/2008
SELECT db_name(database_id) as DatabaseName,name,type_desc,physical_name FROM sys.master_files

--2000
SELECT db_name(dbid) as DatabaseName,name,filename FROM master.dbo.sysaltfiles

--
EXEC master.dbo.sp_MSforeachdb @command1 = 'USE [?] SELECT * FROM sys.filegroups'

--
SELECT db.name, 
case when MAX(b.backup_finish_date) is NULL then 'No Backup' else convert(varchar(100), 
	MAX(b.backup_finish_date)) end AS last_backup_finish_date
FROM sys.databases db
LEFT OUTER JOIN msdb.dbo.backupset b ON db.name = b.database_name AND b.type = 'D'
	WHERE db.database_id NOT IN (2) 
GROUP BY db.name
ORDER BY 2 DESC

--
SELECT Distinct physical_device_name FROM msdb.dbo.backupmediafamily

--
sp_who
sp_who2
