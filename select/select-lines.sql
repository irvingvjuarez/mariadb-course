USE cdmx_subway;

-- Select is a print statement
SELECT (2 + 2);
SELECT (2 + 2) AS result; -- naming the column

-- Built-in functions in Select
SELECT `year` FROM trains; -- Getting all years in a table
SELECT AVG(`year`) FROM trains; -- Getting the avg
SELECT ROUND(AVG(`year`)) FROM trains; -- Rounding the avg