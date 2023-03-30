-- SYNTAX

-- DELETE FROM table_name
-- WHERE column_condition = "value_contidion";


-- Deleting wrong or duplicated records
USE cdmx_subway;

DELETE FROM stations
WHERE `name` = "Merced" -- id: 163
LIMIT 1;

DELETE FROM stations
WHERE `name` = "Lázaro de Guerrero" -- id: 165
LIMIT 1;

DELETE FROM stations
WHERE `name` = "Benito Cárdenas" -- 166
LIMIT 1;