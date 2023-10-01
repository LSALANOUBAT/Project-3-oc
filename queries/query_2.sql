SELECT reg.nom_reg AS "Région",
    COUNT(vente.id_vente) AS Nombre_appartement_vendu
FROM vente
    INNER JOIN bien ON bien.id_bien = vente.id_bien
    INNER JOIN commune ON bien.id_commune = commune.id_commune
    INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    INNER JOIN reg ON reg.id_reg = dpt.id_reg
WHERE bien.code_type_local = 2
GROUP BY reg.nom_reg
ORDER BY Nombre_appartement_vendu DESC;