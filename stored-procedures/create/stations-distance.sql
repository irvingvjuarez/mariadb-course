USE cdmx_subway;

DELIMITER //

CREATE PROCEDURE stations_distance(
    IN station_a VARCHAR(50),
    IN station_b VARCHAR(50),
    IN kms BOOLEAN
)
BEGIN
    SELECT ST_Distance_Sphere(
        (
            SELECT `location`
            FROM locations
            WHERE station_id = (
                SELECT id
                FROM stations
                WHERE `name` = station_a
            )
        ),
        (
            SELECT `location`
            FROM locations
            WHERE station_id = (
                SELECT id
                FROM stations
                WHERE `name` = station_b
            )
        )
    ) / IF (kms, 1000, 1) AS stations_distance;
END //

DELIMITER ;