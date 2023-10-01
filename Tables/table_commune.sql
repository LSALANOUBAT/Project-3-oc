CREATE TABLE commune(
    id_commune INT NOT NULL PRIMARY KEY,
    code_dpt VARCHAR(3) NOT NULL,
    nom_commune VARCHAR(50) NOT NULL,
    FOREIGN KEY (code_dpt) REFERENCES dpt(code_dpt) ON DELETE CASCADE
);