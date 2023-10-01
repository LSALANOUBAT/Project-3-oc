SELECT (
        SELECT ROUND(AVG(vente.valeur / bien.surface_carrez), 2)
        FROM vente
            INNER JOIN bien ON vente.id_bien = bien.id_bien
        WHERE bien.nb_piece = 2
            AND bien.type_local = "Appartement"
    ) AS prix_moyen_2_pieces,
    (
        SELECT ROUND(AVG(vente.valeur / bien.surface_carrez), 2)
        FROM vente
            INNER JOIN bien ON vente.id_bien = bien.id_bien
        WHERE bien.nb_piece = 3
            AND bien.type_local = "Appartement"
    ) AS prix_moyen_3_pieces,
    (
        SELECT (
                ROUND(
                    (prix_moyen_3_pieces - prix_moyen_2_pieces) / prix_moyen_2_pieces * 100,
                    2
                )
            )
    ) AS "Différence en %";