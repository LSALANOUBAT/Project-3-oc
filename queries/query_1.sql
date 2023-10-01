SELECT COUNT(vente.id_vente) AS "Nombre appartement vendu 1er semestre"
FROM vente
    INNER JOIN bien ON bien.id_bien = vente.id_bien
WHERE bien.code_type_local = 2;