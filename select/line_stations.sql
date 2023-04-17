USE cdmx_subway;

SELECT stations.name
FROM `lines`
JOIN lines_stations
ON `lines`.id = lines_stations.line_id
JOIN stations
ON stations.id = lines_stations.station_id
WHERE `lines`.id = 1;