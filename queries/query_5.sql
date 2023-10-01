SELECT reg.nom_reg,
    ROUND(AVG(vente.valeur / bien.surface_carrez), 2) AS Prix_maison_au_m_en_euros
FROM vente
    INNER JOIN bien ON bien.id_bien = vente.id_bien
    INNER JOIN commune ON bien.id_commune = commune.id_commune
    INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    INNER JOIN reg ON reg.id_reg = dpt.id_reg
WHERE bien.code_type_local = 1
    AND reg.id_reg = 4
GROUP BY reg.nom_reg;