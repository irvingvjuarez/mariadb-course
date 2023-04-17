USE cdmx_subway;

DELIMITER //

CREATE PROCEDURE get_line_stations(
    IN line_name VARCHAR(15)
)

BEGIN

    DECLARE line_id BIGINT;

    SELECT id
    INTO line_id
    FROM `lines`
    WHERE `name` = line_name;

    SET @sql = CONCAT("
        SELECT stations.name
        FROM `lines`
        JOIN lines_stations
        ON `lines`.id = lines_stations.line_id
        JOIN stations
        ON stations.id = lines_stations.station_id
        WHERE `lines`.id = ", line_id
    );

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

END //

DELIMITER ;