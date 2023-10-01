SELECT vente.valeur,
    dpt.code_dpt,
    bien.surface_carrez
FROM bien
    INNER JOIN vente ON bien.id_vente = vente.id_vente
    INNER JOIN commune ON bien.id_commune = commune.id_commune
    INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
WHERE bien.type_local = "Appartement"
ORDER BY vente.valeur DESC
LIMIT 10;