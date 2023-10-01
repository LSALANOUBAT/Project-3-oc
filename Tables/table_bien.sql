CREATE TABLE bien(
    id_bien INT NOT NULL PRIMARY KEY,
    id_commune INT NOT NULL,
    adresse_bien VARCHAR(255) NOT NULL,
    surface_carrez FLOAT NOT NULL,
    code_type_local INT NOT NULL,
    type_local VARCHAR(50) NULL,
    surface_reelle INT NOT NULL,
    nb_piece INT NOT NULL,
    nature_culture VARCHAR(5),
    surface_terrain INT,
    FOREIGN KEY (id_commune) REFERENCES commune(id_commune) ON DELETE CASCADE
);