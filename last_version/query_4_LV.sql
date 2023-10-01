SELECT AVG(vente.valeur / bien.surface_carrez) AS Prix_au_m,
    dpt.code_dpt
FROM bien
    INNER JOIN vente ON bien.id_vente = vente.id_vente
    INNER JOIN commune ON bien.id_commune = commune.id_commune
    INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    INNER JOIN reg ON reg.id_reg = dpt.id_reg
WHERE bien.type_local = "Maison"
    AND reg.id_reg = 4
GROUP BY dpt.code_dpt
ORDER BY Prix_au_m DESC;