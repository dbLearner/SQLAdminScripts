declare @servercollation sysname 
select @servercollation = convert(sysname, serverproperty('collation')) 

if @servercollation is not NULL 
  BEGIN 
    select 
      @servercollation As Collation,
      'Descripcion Collation del servidor' = description 
    from ::fn_helpcollations() C 
    where @servercollation = C.name 
  END 

Use Base_de_datos --Reemplazar con el nombre del a BD

declare @dbcollation sysname 
declare @bd varchar(50)
select @bd = db_name()

SELECT @dbcollation = collation_name 
FROM sys.databases 
WHERE database_id = DB_ID(@bd)

if @dbcollation is not NULL 
  BEGIN 
    select 
      @dbcollation As Collation,
      'Descripcion Collation de la base de datos' = description 
    from ::fn_helpcollations() C 
    where @dbcollation = C.name 
  END 
