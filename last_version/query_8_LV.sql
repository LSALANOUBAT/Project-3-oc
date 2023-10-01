SELECT (
        SELECT AVG(vente.valeur / bien.surface_carrez)
        FROM vente
            INNER JOIN bien ON vente.id_vente = bien.id_vente
        WHERE bien.nb_piece = 2
            AND bien.type_local = "Appartement"
    ) AS prix_moyen_2_pieces,
    (
        SELECT AVG(vente.valeur / bien.surface_carrez)
        FROM vente
            INNER JOIN bien ON vente.id_vente = bien.id_vente
        WHERE bien.nb_piece = 3
            AND bien.type_local = "Appartement"
    ) AS prix_moyen_3_pieces,
    (
        SELECT (
                (prix_moyen_3_pieces - prix_moyen_2_pieces) / prix_moyen_2_pieces
            ) * 100
    ) AS "Différence en %";