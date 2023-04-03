USE cdmx_subway;

INSERT INTO lines_stations (station_id, line_id)
SELECT id, line_id FROM stations;