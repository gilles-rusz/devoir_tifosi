-- Création de la base de données tifosi
CREATE DATABASE tifosi;

-- Sélection de la base de données
USE tifosi;

-- Table 'marque'
CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

-- Table 'ingredient'
CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);

-- Table 'boisson'
CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

-- Table 'focaccia'
CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prix DECIMAL(10,2) NOT NULL
);

-- Table 'contient' (représente les ingrédients dans les focaccias)
CREATE TABLE contient (
    id_focaccia INT,
    id_menu INT,
    quantite INT,
    PRIMARY KEY (id_focaccia, id_menu),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_menu) REFERENCES ingredient(id_ingredient)
);

-- Table 'appartient' (relation entre boisson et marque)
CREATE TABLE appartient (
    id_boisson INT,
    id_marque INT,
    PRIMARY KEY (id_boisson, id_marque),
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson),
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);
