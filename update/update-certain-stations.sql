USE cdmx_subway;

UPDATE stations
SET `name` = CASE id
    WHEN 41 THEN "Mixiuhca" -- Mixhuca
    WHEN 9 THEN "Ecatepec" -- Tecnológico
END
WHERE id IN (41, 9);

UPDATE stations
SET line_id = CASE `name`
    WHEN "R. Flores Magón" THEN 11
    WHEN "División del Norte" THEN 3
END
WHERE `name` IN ("R. Flores Magón", "División del Norte");
