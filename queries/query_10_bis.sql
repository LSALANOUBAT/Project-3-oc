WITH 2_pieces AS (
    SELECT ROUND(AVG(vente.valeur / bien.surface_carrez), 2) AS prix_au_m_moyen_2_pieces
    FROM vente
        INNER JOIN bien ON vente.id_bien = bien.id_bien
    WHERE bien.nb_piece = 2
        AND bien.code_type_local = 2
),
3_pieces AS (
    SELECT ROUND(AVG(vente.valeur / bien.surface_carrez), 2) AS prix_au_m_moyen_3_pieces
    FROM vente
        INNER JOIN bien ON vente.id_bien = bien.id_bien
    WHERE bien.nb_piece = 3
        AND bien.code_type_local = 2
)
SELECT prix_au_m_moyen_2_pieces,
    prix_au_m_moyen_3_pieces,
    ROUND(
        (
            (
                prix_au_m_moyen_2_pieces - prix_au_m_moyen_3_pieces
            ) / prix_au_m_moyen_2_pieces
        ) * 100,
        2
    ) AS "Différence en %"
FROM 2_pieces
    JOIN 3_pieces;