USE cdmx_subway;

SELECT t.serial_number, d.name, d.active
FROM trains AS t
JOIN drivers AS d
ON t.driver_id = d.DNI;