USE cdmx_subway;

DELIMITER //

CREATE PROCEDURE stations_distance(
    IN station_a POINT,
    IN station_b POINT
)
BEGIN
    SELECT ST_Distance_Sphere(
        get_station_location(station_a),
        get_station_location(station_b)
    ) AS stations_distance;
END //

DELIMITER ;