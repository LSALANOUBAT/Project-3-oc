CREATE TABLE vente(
    id_vente INT NOT NULL PRIMARY KEY,
    id_bien INT NOT NULL,
    date_mu DATE,
    valeur INT,
    FOREIGN KEY (id_bien) REFERENCES bien(id_bien) ON DELETE CASCADE
)