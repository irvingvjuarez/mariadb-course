USE cdmx_subway;

-- Calculate distance in meters
SELECT ST_Distance_Sphere(
    (
        SELECT `location`
        FROM locations 
        WHERE station_id = (
            SELECT id
            FROM stations
            WHERE `name` = "Balderas"
        )
    ),
    (
        SELECT `location`
        FROM locations
        WHERE station_id = (
            SELECT id
            FROM stations
            WHERE `name` = "Pino Suárez"
        )
    )
) AS distance;


-- Calculate distance in km
SELECT ST_Distance_Sphere(
    (
        SELECT `location`
        FROM locations 
        WHERE station_id = (
            SELECT id
            FROM stations
            WHERE `name` = "Balderas"
        )
    ),
    (
        SELECT `location`
        FROM locations
        WHERE station_id = (
            SELECT id
            FROM stations
            WHERE `name` = "Pino Suárez"
        )
    )
) / 1000 AS distance;