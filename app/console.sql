SELECT 1;

CREATE TABLE persons (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(64),
    `last_name` VARCHAR(64),
    `sex` ENUM('male','female'),
    `birthdate` DATE,
    `address` VARCHAR(128),
    `email` VARCHAR(256),
    `sha1_password` VARCHAR(40),
    `phone_number` VARCHAR(32),
    `parent_id` INT,
    UNIQUE (`first_name`,`last_name`),
    UNIQUE(`email`),
    FOREIGN KEY (parent_id)
        REFERENCES persons(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
    );

DROP TABLE persons;

ALTER TABLE person
    ADD COLUMN `blood_type`
    ENUM('A+','A-','B+','B-','O+','O-','AB');

INSERT INTO persons(`birthdate`,`first_name`,`last_name`,`sex`)
    VALUES('1990-03-05','Pedro','Testerson','Male');


INSERT INTO persons(`birthdate`,`first_name`,`last_name`,`sex`)
VALUES('1990-03-05','Jojo','Testerson','Male');

INSERT INTO persons(`birthdate`,`first_name`,`last_name`,`sex`)
VALUES('1990-03-05','Juan','Testerson','Male');


INSERT INTO person(`birthdate`,`first_name`,`last_name`,`sex`)
VALUES('1990-03-05','Pedro','Tester','Male');

DELETE FROM persons WHERE first_name = 'Pedro' LIMIT 1;

SELECT * FROM persons;
SELECT
       first_name, last_name,sex, birthdate, email
FROM persons;

SELECT COUNT(0)
FROM persons
WHERE first_name = 'Pedro';

SELECT * FROM persons;

UPDATE `persons`
SET email = 'something'
WHERE first_name = 'Pedro' AND `last_name` = 'Testerson';

UPDATE `persons`
SET email = 'pedro.testerson@gmail.com'
WHERE  first_name = 'Pedro' AND `last_name` = 'Testerson'
LIMIT 1;

UPDATE `persons`
SET sha1_password = SHA1('BirthdayCake')
WHERE  first_name = 'Pedro' AND `last_name` = 'Testerson'
LIMIT 1;


CREATE TABLE `cats` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(128) NOT NULL,
    `color` ENUM('orange','green','black','white','yellow'),
    `owner_id` INT,
    FOREIGN KEY (owner_id)
        REFERENCES persons(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE

);

DROP TABLE cats;

INSERT INTO cats (`name`,`color`,`owner_id`)
VALUES ('Miming','green','1');

INSERT INTO cats (`name`,`color`,`owner_id`)
VALUES ('doggy','orange','1');

INSERT INTO cats (`name`,`color`,`owner_id`)
VALUES ('Brandon','black','2'); -- 2 = Jojo


INSERT INTO cats (`name`,`color`,`owner_id`)
VALUES ('Siopao','white','2'); -- 2 = Jojo

INSERT INTO cats (`name`,`color`,`owner_id`)
VALUES ('Koko','black','3'); -- 3 = Pedro

SELECT cats.*
FROM persons
    INNER JOIN cats ON persons.id = cats.owner_id
WHERE first_name = 'Jojo' AND last_name = 'Testerson';

SELECT CONCAT(`first_name`,' ',`last_name`) as name
FROM persons
UNION
SELECT name FROM cats;

SELECT *
FROM cats WHERE
owner_id IN ( SELECT id FROM persons WHERE first_name ='Jojo' AND last_name ='Testerson')
