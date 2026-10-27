/*
====================
Create Database and Schemas
====================
Script Purpose:
   This script creates a new database named 'DataWarehouse' after checking if it already exists.
   If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver' and 'gold'.

Warning:
    Running this script will drop the entire 'DataWarehouse' database if it exists. All the data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running the script.
*/

use master;
GO
--Drop and recreate database 'DataWarehouse'
if exists (select 1 from sys.database where name = 'DataWarehouse')
Begin
    alter database DataWarehouse set single_user with rollback immediate;
    drop database DataWarehouse;
end;
GO

create database DataWarehouse; 
GO

use DataWarehouse; 

--create schemas

create schema bronze;
GO

create schema silver;
GO

create schema gold;
GO
