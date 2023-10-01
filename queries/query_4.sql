SELECT dpt.code_dpt,
    dpt.nom_dpt,
    ROUND(AVG(vente.valeur / bien.surface_carrez), 2) AS Prix_au_m_en_euros
FROM vente
    INNER JOIN bien ON bien.id_bien = vente.id_bien
    INNER JOIN commune ON bien.id_commune = commune.id_commune
    INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
GROUP BY dpt.code_dpt
ORDER BY Prix_au_m_en_euros DESC
LIMIT 10;