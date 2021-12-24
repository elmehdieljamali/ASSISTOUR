DROP DATABASE IF EXISTS assistour ;
CREATE DATABASE assistour ;

use assistour ;
        
CREATE TABLE Adherent
(
  numAdherent        INT     NOT NULL,
  nomAdherent        VARCHAR(100) NULL    ,
  prenomAdherent     VARCHAR(100) NULL    ,
  adresseAdherent    VARCHAR(100) NULL    ,
  codePostalAdherent INT     NULL    ,
  villeAdherent      VARCHAR(100) NULL    ,
  telephoneAdherent  INT     NULL    ,
  idTypeContrat      INT     NOT NULL,
  PRIMARY KEY (numAdherent)
);

CREATE TABLE Contacter
(
  idTA      INT NOT NULL,
  numGarage INT NOT NULL,
  PRIMARY KEY (idTA, numGarage)
);

CREATE TABLE Couleur
(
  codeCouleur    INT     NOT NULL,
  libelleCouleur VARCHAR(100) NULL    ,
  PRIMARY KEY (codeCouleur)
);

CREATE TABLE Evaluer
(
  numHotel    INT NOT NULL,
  codeCouleur INT NOT NULL,
  PRIMARY KEY (numHotel, codeCouleur)
);

CREATE TABLE Garage
(
  numGarage       INT     NOT NULL,
  nomGarage       VARCHAR(100) NULL    ,
  adresseGarage   VARCHAR(100) NULL    ,
  telephoneGarage INT     NULL    ,
  marque          VARCHAR(100) NULL    ,
  prixDepanage    INT     NULL    ,
  avanceFrais     BOOLEAN NULL    ,
  PRIMARY KEY (numGarage)
);

CREATE TABLE Hotel
(
  numHotel  INT     NOT NULL,
  nom       VARCHAR(100) NULL    ,
  adresse   VARCHAR(100) NULL    ,
  telephone INT     NULL    ,
  PRIMARY KEY (numHotel)
);

CREATE TABLE Obtenir
(
  numHotel    INT NOT NULL,
  numAdherent INT NOT NULL,
  nuit        INT NULL    ,
  PRIMARY KEY (numHotel, numAdherent)
);

CREATE TABLE Rapatrier
(
  numOrdre           INT     NOT NULL,
  compagnieTransport VARCHAR(100) NULL    ,
  cout               FLOAT   NULL    ,
  villeDepart        VARCHAR(100) NULL    ,
  villeArrivee       VARCHAR(100) NULL    ,
  numSinistre        INT     NOT NULL,
  PRIMARY KEY (numOrdre)
);

CREATE TABLE Sinistre
(
  numSinistre INT     NOT NULL,
  date        DATE    NULL    ,
  cause       VARCHAR(100) NULL    ,
  diagnostic  VARCHAR(100) NULL    ,
  lieu        VARCHAR(100) NULL    ,
  nbPersonnes INT     NULL    ,
  idTA        INT     NOT NULL,
  PRIMARY KEY (numSinistre)
);

CREATE TABLE TechnicienAssistance
(
  idTA     INT     NOT NULL,
  nomTA    VARCHAR(100) NULL    ,
  prenomTA VARCHAR(100) NULL    ,
  PRIMARY KEY (idTA)
);

CREATE TABLE TypeContrat
(
  idTypeContrat  INT     NOT NULL,
  nomTypeContrat VARCHAR(100) NULL    ,
  PRIMARY KEY (idTypeContrat)
);

CREATE TABLE TypeOperation
(
  codeTO      VARCHAR(100) NOT NULL,
  libelleTO   VARCHAR(100) NULL    ,
  numSinistre INT     NOT NULL,
  PRIMARY KEY (codeTO)
);

CREATE TABLE Vehicule
(
  immatriculation       VARCHAR(100) NOT NULL,
  marque                VARCHAR(100) NULL    ,
  type                  VARCHAR(100) NULL    ,
  modele                VARCHAR(100) NULL    ,
  dateMiseEnCirculation DATE    NULL    ,
  numContrat            INT     NOT NULL,
  dateSouscription      DATE    NULL    ,
  numAdherent           INT     NOT NULL,
  numSinistre           INT     NOT NULL,
  numGarage             INT     NOT NULL,
  PRIMARY KEY (immatriculation)
);

ALTER TABLE Adherent
  ADD CONSTRAINT FK_TypeContrat_TO_Adherent
    FOREIGN KEY (idTypeContrat)
    REFERENCES TypeContrat (idTypeContrat);

ALTER TABLE Vehicule
  ADD CONSTRAINT FK_Adherent_TO_Vehicule
    FOREIGN KEY (numAdherent)
    REFERENCES Adherent (numAdherent);

ALTER TABLE Sinistre
  ADD CONSTRAINT FK_TechnicienAssistance_TO_Sinistre
    FOREIGN KEY (idTA)
    REFERENCES TechnicienAssistance (idTA);

ALTER TABLE Vehicule
  ADD CONSTRAINT FK_Sinistre_TO_Vehicule
    FOREIGN KEY (numSinistre)
    REFERENCES Sinistre (numSinistre);

ALTER TABLE Vehicule
  ADD CONSTRAINT FK_Garage_TO_Vehicule
    FOREIGN KEY (numGarage)
    REFERENCES Garage (numGarage);

ALTER TABLE Rapatrier
  ADD CONSTRAINT FK_Sinistre_TO_Rapatrier
    FOREIGN KEY (numSinistre)
    REFERENCES Sinistre (numSinistre);

ALTER TABLE Contacter
  ADD CONSTRAINT FK_TechnicienAssistance_TO_Contacter
    FOREIGN KEY (idTA)
    REFERENCES TechnicienAssistance (idTA);

ALTER TABLE Contacter
  ADD CONSTRAINT FK_Garage_TO_Contacter
    FOREIGN KEY (numGarage)
    REFERENCES Garage (numGarage);

ALTER TABLE Obtenir
  ADD CONSTRAINT FK_Hotel_TO_Obtenir
    FOREIGN KEY (numHotel)
    REFERENCES Hotel (numHotel);

ALTER TABLE Obtenir
  ADD CONSTRAINT FK_Adherent_TO_Obtenir
    FOREIGN KEY (numAdherent)
    REFERENCES Adherent (numAdherent);

ALTER TABLE TypeOperation
  ADD CONSTRAINT FK_Sinistre_TO_TypeOperation
    FOREIGN KEY (numSinistre)
    REFERENCES Sinistre (numSinistre);

ALTER TABLE Evaluer
  ADD CONSTRAINT FK_Hotel_TO_Evaluer
    FOREIGN KEY (numHotel)
    REFERENCES Hotel (numHotel);

ALTER TABLE Evaluer
  ADD CONSTRAINT FK_Couleur_TO_Evaluer
    FOREIGN KEY (codeCouleur)
    REFERENCES Couleur (codeCouleur);

        
      
