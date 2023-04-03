USE cdmx_subway;

UPDATE stations
SET line_id = CASE id
    WHEN 9 THEN 11 -- Ecatepec
    WHEN 41 THEN 9 -- Mixiuhca
END
WHERE id IN (9, 41);