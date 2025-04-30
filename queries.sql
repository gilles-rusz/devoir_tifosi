-- Requête 1 : Afficher la liste des noms des focaccias par ordre alphabétique croissant
SELECT nom FROM focaccia ORDER BY nom;

-- Requête 2 : Afficher le nombre total d'ingrédients
SELECT COUNT(*) FROM ingredient;

-- Requête 3 : Afficher le prix moyen des focaccias
SELECT AVG(prix) FROM focaccia;

-- Requête 4 : Afficher la liste des boissons avec leur marque, triée par nom de boisson
SELECT b.nom AS boisson, m.nom AS marque
FROM boisson b
JOIN appartient a ON b.id_boisson = a.id_boisson
JOIN marque m ON a.id_marque = m.id_marque
ORDER BY boisson;

-- Requête 5 : Afficher la liste des ingrédients pour une Raclaccia
SELECT i.nom AS ingredient 
FROM focaccia f
JOIN contient c ON f.id_focaccia = c.id_focaccia
JOIN ingredient i ON c.id_menu = i.id_ingredient
WHERE f.nom = 'Raclaccia';

-- Requête 6 : Afficher le nom et le nombre d'ingrédients pour chaque focaccia
SELECT f.nom, COUNT(c.id_menu) AS nombre_ingredients
FROM focaccia f
JOIN contient c ON f.id_focaccia = c.id_focaccia
GROUP BY f.id_focaccia;

-- Requête 7 : Afficher le nom de la focaccia qui a le plus d'ingrédients
SELECT f.nom
FROM focaccia f
JOIN contient c ON f.id_focaccia = c.id_focaccia
GROUP BY f.id_focaccia
ORDER BY COUNT(c.id_menu) DESC
LIMIT 1;

-- Requête 8 : Afficher la liste des focaccias qui contiennent de l'ail
SELECT f.nom
FROM focaccia f
JOIN contient c ON f.id_focaccia = c.id_focaccia
JOIN ingredient i ON c.id_menu = i.id_ingredient
WHERE i.nom = 'Ail';

-- Requête 9 : Afficher la liste des ingrédients inutilisés
SELECT i.nom
FROM ingredient i
LEFT JOIN contient c ON i.id_ingredient = c.id_menu
WHERE c.id_menu IS NULL;

-- Requête 10 : Afficher la liste des focaccias qui n'ont pas de champignons
SELECT f.nom
FROM focaccia f
WHERE NOT EXISTS (
    SELECT 1
    FROM contient c
    JOIN ingredient i ON c.id_menu = i.id_ingredient
    WHERE f.id_focaccia = c.id_focaccia
    AND i.nom = 'Champignon'
);
