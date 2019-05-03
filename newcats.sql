CREATE TABLE cats
(
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

/*** CREATE ***/
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
/*** READ ***/
SELECT * FROM cats;
SELECT name, age FROM cats;
/* where */
SELECT * FROM cats WHERE age=4;
SELECT * FROM cats WHERE name='Egg';
SELECT cat_id, age FROM cats WHERE age=cat_id;
/* aliases */
SELECT cat_id AS id, name FROM cats;

/*** UPDATE ***/
/* rule of thumb 1. check with WHERE wheter you targeting correct data
2. if yes - update
*/
UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
UPDATE cats SET age=12 WHERE breed='Maine Coon';

/*** DELETE ***/
DELETE FROM cats WHERE name="Egg";
DELETE FROM cats;
