CREATE TABLE dpt(
    code_dpt VARCHAR(3) NOT NULL PRIMARY KEY,
    id_reg INT NOT NULL,
    nom_dpt VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_reg) REFERENCES reg(id_reg) ON DELETE CASCADE
);