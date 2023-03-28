USE cdmx_subway;

CREATE TABLE IF NOT EXISTS `drivers`(
    DNI VARCHAR(25) NOT NULL,
    `name` VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    birthday DATETIME NOT NULL,
    active BOOLEAN NOT NULL DEFAULT false,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(DNI)
);

CREATE TABLE IF NOT EXISTS trains(
    serial_number CHAR(10) NOT NULL,
    driver_id VARCHAR(25) NOT NULL,
    `year` INT(4) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(serial_number),
    FOREIGN KEY(driver_id) REFERENCES drivers(DNI)
);

CREATE TABLE IF NOT EXISTS `lines`(
    id INT(2) UNSIGNED NOT NULL AUTO_INCREMENT,
    `number` INT(2) UNSIGNED NOT NULL,
    color VARCHAR(20) NOT NULL,
    `name` VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);

