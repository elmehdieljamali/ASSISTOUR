USE assistour ;

INSERT INTO TypeContrat VALUES(1, "Plénitude") ;
INSERT INTO TypeContrat VALUES(2, "Tous Risques ECO") ;

INSERT INTO TechnicienAssistance VALUES(1, "BENTOU", "Olivia") ;

INSERT INTO Garage VALUES(1, "Garage De La Sansonnais", "rue du Général De Gaulle", 0296854098, null, 210, FALSE) ;
INSERT INTO Garage VALUES(2, "Garage Citroen de Guéret", "22 rue du Marechal Leclerc", 0555524052, null, 190, FALSE) ;

INSERT INTO Hotel VALUES(1, "Hôtel du théatre", "2 rue Sainte Claire", 0296390691) ;
INSERT INTO Hotel VALUES(2, "Hôtel Océan", "9 place du 11 novembre 1918", 0296854361) ;

INSERT INTO Couleur VALUES(1, "Rouge") ;
INSERT INTO Couleur VALUES(2, "Jaune") ;
INSERT INTO Couleur VALUES(3, "Bleu") ;
INSERT INTO Couleur VALUES(4, "Vert") ;

INSERT INTO Adherent VALUES(1, "IVANOVITCH", "Sacha", "14 boulevard du Temple", 75003, "Paris", 0692882953, 1) ;
INSERT INTO Adherent VALUES(2, "BELKACEM", "Marwan", "2 rue Maspero", 75016, "Paris", 0673939905, 1) ;

INSERT INTO Contacter VALUES(1, 1) ;
INSERT INTO Contacter VALUES(1, 2) ;

INSERT INTO Obtenir VALUES(1, 1, 4) ;
INSERT INTO Obtenir VALUES(2, 1, 1) ;

INSERT INTO Sinistre VALUES(1, "2020-05-20", "somnolence", "déformation modérée des éléments de direction", "route départementale D2", 1, 1) ;
INSERT INTO Sinistre VALUES(2, "2020-06-03", "percuté par un poids lourd", "véhicule totalement irrécupérable", "route nationale N145", 2, 1) ;

INSERT INTO TypeOperation VALUES("D020", "Réparation crémaillière de direction", 1) ;
INSERT INTO TypeOperation VALUES("D022", "Remplacement colonne de direction", 1) ;

INSERT INTO Evaluer VALUES(1, 3) ;
INSERT INTO Evaluer VALUES(2, 4) ;

INSERT INTO Rapatrier VALUES(1, "BATY TAXI", 22, "Saint-Vaury", "Guéret", 2) ;
INSERT INTO Rapatrier VALUES(2, "Train TER", 23.8, "Guéret", "Limoges", 2) ;
INSERT INTO Rapatrier VALUES(3, "Intercités", 68, "Limoges", "Paris-Austerlitz", 2) ;

INSERT INTO Vehicule VALUES("3412 CV 75", "Citroen", "citadine", "C3", "2003-04-15", 1, null, 1, 1, 1) ;
INSERT INTO Vehicule VALUES("GN-92-DE", "Renault", "SUV", "Koleos", "2020-01-03", 2, null, 2, 2, 2) ;

