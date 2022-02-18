CREATE TABLE animal(
    animal_id SERIAL PRIMARY KEY,
    animal_name VARCHAR(40),
    animal_species VARCHAR(50),
    animal_size FLOAT,
    animal_vaccinated BOOL,
    animal_prospects VARCHAR(50)
);

CREATE TABLE species(
    species_id SERIAL PRIMARY KEY, 
    animal_name INT NOT NULL REFERENCES animal(animal_name),
    species_type VARCHAR(50)
);

CREATE TABLE size(
    size_id SERIAL PRIMARY KEY,
    species_id INT NOT NULL REFERENCES species(species_id),
    animal_id INT NOT NULL REFERENCES animal(animal_id),
    animal_prospects INT NOT NULL REFERENCES animal(animal_prospects),
    size_small FLOAT,
    size_medium FLOAT,
    size_large FLOAT
);

CREATE TABLE vaccinated(
    vaccinated SERIAL PRIMARY KEY,
    is_vaccinated BOOLEAN,
    animal_name INT NOT NULL REFERENCES animal(animal_name),
    animal_prospects INT NOT NULL REFERENCES animal(animal_prospects)
);

CREATE TABLE prospects(
    prospects_id SERIAL PRIMARY KEY,
    animal_id INT NOT NULL REFERENCES animal(animal_id),
    size_id INT NOT NULL REFERENCES size(size_id)
);