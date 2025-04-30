-- Insertion des marques
INSERT INTO marque (nom) VALUES ('Coca-cola'), ('Monster'), ('Cristalline'), ('Pepsico');

-- Insertion des ingrédients
INSERT INTO ingredient (nom) VALUES 
('Ail'), ('Ananas'), ('Artichaut'), ('Bacon'), ('Base Tomate'), ('Base Crème'), 
('Champignon'), ('Chèvre'), ('Cresson'), ('Emmental'), ('Gorgonzola'), ('Jambon cuit'), 
('Jambon fumé'), ('Œuf'), ('Oignon'), ('Olive noire'), ('Olive verte'), ('Parmesan'), 
('Piment'), ('Poivre'), ('Pomme de terre'), ('Raclette'), ('Salami'), ('Tomate cerise'), 
('Mozarella');

-- Insertion des focaccias
INSERT INTO focaccia (nom, prix) VALUES 
('Raclaccia', 8.90), ('Mozaccia', 9.50), ('Gorgonzollaccia', 9.00), 
('Emmentalaccia', 8.70), ('Tradizione', 10.00), ('Hawaienne', 9.20), ('Américaine', 9.30), 
('Paysanne', 9.80);

-- Insertion des ingrédients pour chaque focaccia dans la table 'contient'
INSERT INTO contient (id_focaccia, id_menu, quantite) VALUES
(1, 5, 1), (1, 24, 2), (1, 10, 1), (1, 21, 1), (1, 7, 2), (1, 18, 1), (1, 20, 1),
(2, 5, 1), (2, 23, 1), (2, 10, 1), (2, 7, 1), (2, 18, 1), (2, 20, 1), (2, 16, 1),
(3, 5, 1), (3, 11, 1), (3, 10, 1), (3, 18, 1), (3, 16, 1), (3, 20, 1),
(4, 6, 1), (4, 10, 1), (4, 18, 1), (4, 20, 1), (4, 15, 1),
(5, 5, 1), (5, 24, 1), (5, 6, 1), (5, 23, 1), (5, 13, 1), (5, 10, 1), (5, 16, 1),
(6, 5, 1), (6, 23, 1), (6, 21, 1), (6, 10, 1), (6, 20, 1),
(7, 5, 1), (7, 23, 1), (7, 21, 1), (7, 22, 1), (7, 20, 1), (7, 16, 1);

-- Insertion des boissons
INSERT INTO boisson (nom) VALUES 
('Coca-cola zero'), ('Coca-cola original'), ('Fanta citron'), ('Fanta orange'), 
('Caprisun'), ('Pepsi'), ('Pepsi Max zéro'), ('Lipton zéro citron'), 
('Lipton peach'), ('Monster energy ultra gold'), ('Monster energy ultra blue'), 
('Eau de source');
