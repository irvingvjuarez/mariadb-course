USE cdmx_subway;

ALTER TABLE stations
MODIFY location_id INT,
MODIFY line_id INT(2) UNSIGNED;