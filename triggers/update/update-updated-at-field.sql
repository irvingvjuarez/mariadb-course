USE cdmx_subway;

CREATE TRIGGER update_updated_at_field
BEFORE UPDATE
ON trains
FOR EACH ROW
SET NEW.updated_at = CURRENT_TIMESTAMP();