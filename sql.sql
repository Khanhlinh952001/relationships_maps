-- Create People table
CREATE TABLE people (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    latitude DECIMAL(10, 6) NOT NULL,
    longitude DECIMAL(10, 6) NOT NULL,
    avatar_url VARCHAR(255) NOT NULL
);

-- Create Relationships table
CREATE TABLE relationships (
    person_id INT,
    connected_person_id INT,
    PRIMARY KEY (person_id, connected_person_id),
    FOREIGN KEY (person_id) REFERENCES people(id),
    FOREIGN KEY (connected_person_id) REFERENCES people(id)
);
