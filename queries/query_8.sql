SELECT RANK() OVER (
        ORDER BY AVG(vente.valeur / bien.surface_carrez) DESC
    ) AS rang,
    reg.nom_reg,
    ROUND(AVG(vente.valeur / bien.surface_carrez), 2) AS prix_au_m_appartement_plus_4_pieces
FROM vente
    INNER JOIN bien ON bien.id_bien = vente.id_bien
    INNER JOIN commune ON bien.id_commune = commune.id_commune
    INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    INNER JOIN reg ON reg.id_reg = dpt.id_reg
WHERE bien.nb_piece > 4
    AND bien.code_type_local = 2
GROUP BY reg.nom_reg;