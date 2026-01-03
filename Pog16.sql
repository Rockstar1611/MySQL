DROP TABLE IF EXISTS animals;
CREATE TABLE animals (
    grp ENUM('fish','mammal','bird') NOT NULL,
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    PRIMARY KEY (grp, id)
) ENGINE = MYISAM;

INSERT INTO animals(grp, name) VALUES
    ('mammal','dog'), ('mammal','cat'), ('bird','penguin'),
    ('fish','lax'), ('mammal','whale'), ('bird','ostrich');

SELECT * FROM animals;