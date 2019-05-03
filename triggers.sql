CREATE TRIGGER trigger_name
    trigger_time trigger_event ON table_name FOR EACH ROW
    BEGIN
    ---
    END;
    
CREATE DATABASE trigger_demo;
USE trigger_demo;

CREATE TABLE users (
    username VARCHAR(100),
    age INT
);
