/*----------------------------
   create Database and schemas
-------------------------------
script purpose: This script create a new database names'Datawarehouse' after checking if database
exists then drop it and create a query, additionally, schemas are created with the database :'bronze','Silver' and 
'gold'.
Warning:
   Running this script will drop the entire 'Datawarehouse' datbase if exists
   All data will be permantely deleted. proceed with caution and ensure you have proper backups before
   running the script.
*/
--drop and recvreate the 'DataWarehouse
--database

use master;
if Exists (select 1 from sys.databases where name='Datawarehouse')
Begin
   Alter Database DataWarehouse set single_user with 
   rollback immediate;
   Drop Database DataWarehouse;
   End;
   Go


--create Database

create database DataWarehouse;
Go

use DataWarehouse;
Go

--create Schemas
create schema bronze;
Go
create schema silver;
Go
create schema Gold;
Go





