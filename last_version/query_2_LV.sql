SELECT nb_piece,
    COUNT(*) * 100 / SUM(COUNT(*)) OVER() AS pourcentage_appart
FROM bien
WHERE type_local = 'Appartement'
GROUP BY nb_piece
ORDER BY pourcentage_appart DESC;