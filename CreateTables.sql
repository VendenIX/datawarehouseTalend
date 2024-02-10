-- Table Fact_Ventes
DROP TABLE IF EXISTS Fact_Ventes;
CREATE TABLE Fact_Ventes (
    vente_sk INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    num_client INT REFERENCES Dim_Client(num_client) NOT NULL,
    prestation_sk INT REFERENCES Dim_Prestation(prestation_sk) NOT NULL,
    localisation_sk INT REFERENCES Dim_Localisation(localisation_sk) NOT NULL,
    temps_debut INT REFERENCES Dim_Temps(id_temps) NOT NULL,
    temps_fin INT REFERENCES Dim_Temps(id_temps) NOT NULL,
    prix FLOAT NOT NULL,
    duration INTEGER NOT NULL,
    adresse_intervention TEXT NOT NULL,
    date_insertion TEXT NOT NULL,
    timestamp_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Table Dim_Client
DROP TABLE IF EXISTS Dim_Client;
CREATE TABLE Dim_Client (
    num_client INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    client_bk INT NOT NULL,
    client_sk INT NOT NULL,
    nom TEXT NOT NULL,
    prenom TEXT NOT NULL,
    adresse TEXT NOT NULL,
    code_postal TEXT NOT NULL,
    ville TEXT NOT NULL,
    region TEXT NOT NULL,
    debut_validite DATETIME,
    fin_validite DATETIME,
    code_departement TEXT NOT NULL,
    nom_departement TEXT NOT NULL,
    timestamp_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table Dim_Prestation
DROP TABLE IF EXISTS Dim_Prestation;
CREATE TABLE Dim_Prestation (
    prestation_sk INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    code_prestation TEXT NOT NULL,
    nom_prestation TEXT NOT NULL,
    categorie TEXT NOT NULL,
    timestamp_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table Dim_Localisation
DROP TABLE IF EXISTS Dim_Localisation;
CREATE TABLE Dim_Localisation (
    localisation_sk INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    insee TEXT NOT NULL,
    zip TEXT NOT NULL,
    nom_ville TEXT NOT NULL,
    slug TEXT NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    departments_id INT NOT NULL,
    departments_code TEXT NOT NULL,
    departments_name TEXT NOT NULL,
    departments_slug TEXT NOT NULL,
    regions_id INT NOT NULL,
    code_region TEXT NOT NULL,
    region_name TEXT NOT NULL,
    regions_slug TEXT NOT NULL,
    timestamp_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table Dim_Temps
DROP TABLE IF EXISTS Dim_Temps;
CREATE TABLE Dim_Temps (
    id_temps INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    la_date TEXT NOT NULL,
    annee INT NOT NULL,
    trimestre INT NOT NULL,
    mois INT NOT NULL,
    nom_du_mois TEXT NOT NULL,
    jour_du_mois TEXT NOT NULL,
    jour INT NOT NULL,
    heure INT NOT NULL,
    minute INT,
    timestamp_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

