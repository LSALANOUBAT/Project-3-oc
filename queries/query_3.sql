SELECT bien.nb_piece,
    ROUND(
        COUNT(vente.id_vente) * 100 / SUM(COUNT(vente.id_vente)) OVER(),
        2
    ) AS pourcentage_appartement
FROM vente
    INNER JOIN bien ON bien.id_bien = vente.id_bien
WHERE bien.code_type_local = 2
GROUP BY bien.nb_piece
ORDER BY bien.nb_piece ASC;