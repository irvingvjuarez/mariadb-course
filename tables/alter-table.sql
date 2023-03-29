-- SYNTAX

-- USE db_name;

-- ALTER TABLE table_name
-- MODIFY column_name MODIFICATIONS,
-- ADD PRIMARY KEY(column_name); -- You may add a PK in case you forgot it



-- ACTUAL CODE

USE cdmx_subway;

ALTER TABLE locations
CHANGE COLUMN
stations_id 
station_id 
INT NOT NULL;

ALTER TABLE locations
ADD CONSTRAINT FOREIGN KEY(station_id) REFERENCES stations(id);