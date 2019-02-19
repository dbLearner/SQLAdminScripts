use master
create database DemoCollate1
collate modern_spanish_ci_ai
go

create database DemoCollate2
collate latin1_general_ci_ai
go

--
use DemoCollate1
go
create table dbo.DemoCollate1 (id char(2), des varchar(50))
go
Insert into dbo.DemoCollate1 values ('01', 'Prueba Collate 1')
go
sp_help DemoCollate1 

--
use DemoCollate2
go
create table dbo.DemoCollate2 (id char(2), des varchar(50))
go
Insert into dbo.DemoCollate2 values ('01', 'Prueba Collate 2')
go
sp_help DemoCollate2

--
use DemoCollate1
go
select a.des, b.des
from dbo.DemoCollate1 a
  Inner Join DemoCollate2.dbo.DemoCollate2 b On
    a.id = b.id

select a.des, b.des
from dbo.DemoCollate1 a
  Inner Join DemoCollate2.dbo.DemoCollate2 b On
    a.id = b.id collate modern_spanish_ci_ai

--
Use master
ALTER DATABASE DemoCollate2 COLLATE modern_spanish_ci_ai

use DemoCollate2 
ALTER TABLE DemoCollate2 ALTER COLUMN id
            varchar(50) COLLATE modern_spanish_ci_ai NOT NULL

ALTER TABLE DemoCollate2 ALTER COLUMN des
            varchar(50) COLLATE modern_spanish_ci_ai NOT NULL
--

use master 
drop database DemoCollate1
go
drop database DemoCollate2
go