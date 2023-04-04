USE cdmx_subway;

DELIMITER //

CREATE PROCEDURE get_station_location(
    IN station_name VARCHAR(50)
)
BEGIN

    SELECT `location`
    FROM locations
    WHERE station_id = (
        SELECT id
        FROM stations
        WHERE `name` = station_name
    );

END //

DELIMITER ;