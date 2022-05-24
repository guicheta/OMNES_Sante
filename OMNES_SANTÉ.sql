-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 24 mai 2022 à 13:42
-- Version du serveur : 5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `OMNES_SANTÉ`
--

-- --------------------------------------------------------

--
-- Structure de la table `Admin`
--

CREATE TABLE `Admin` (
  `ID_admin` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Mail` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Admin`
--

INSERT INTO `Admin` (`ID_admin`, `Nom`, `Prenom`, `Mail`, `mdp`) VALUES
(1, 'Lance', 'Romain', 'romain.lance@edu.ece.fr', 'romainlance'),
(2, 'Kapp', 'Thomas', 'thomas.kapp@edu.ece.fr', 'thomaskapp'),
(3, 'Guichet', 'Augustin', 'augustin.guichet@edu.ece.fr', 'augustinguichet');

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `ID_client` int(10) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Mail` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `telephone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`ID_client`, `Nom`, `Prenom`, `Mail`, `mdp`, `telephone`) VALUES
(1, 'Mathieu', 'Julien', 'julien.mathieu@edu.ece.fr', 'julienmathieu', 634774412),
(2, 'Thiolon', 'Charles', 'charles.thiolon@edu.ece.fr', 'charlesthiolon', 767931223),
(3, 'Guerin', 'Matthis', 'matthis.guerin@edu.ece.fr', 'matthisguerin', 719283746),
(4, 'Milliot', 'Antoine', 'antoine.milliot@edu.ece.fr', 'antoinemilliot', 756642291),
(5, 'Revert', 'Alix', 'alix.revert@edu.ece.fr', 'alixrevert', 666346512),
(6, 'Lacoste', 'Albane', 'albane.lacoste@edu.ece.fr', 'albanelacoste', 777534596);

-- --------------------------------------------------------

--
-- Structure de la table `Labo`
--

CREATE TABLE `Labo` (
  `ID_labo` int(11) NOT NULL,
  `Service` varchar(30) NOT NULL,
  `Regles` varchar(5000) NOT NULL,
  `Salle` varchar(30) NOT NULL,
  `Mail` varchar(30) NOT NULL,
  `Telephone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Labo`
--

INSERT INTO `Labo` (`ID_labo`, `Service`, `Regles`, `Salle`, `Mail`, `Telephone`) VALUES
(1, 'Depistage_covid', 'Il existe deux méthodes actuellement en France.\r\nDans le premier cas, le test de référence RT-PCR, se fait sous la forme d’un prélèvement naso-pharyngé dans la majorité des cas. Il ne dure que quelques secondes et peut occasionner une légère gêne dans le nez. Le principe : un échantillon de mucus est prélevé dans le nez grâce à un long coton-tige, appelé écouvillon. Une fois récupéré, l\'échantillon est scellé puis analysé par le laboratoire de biologie médicale.\r\nCe prélèvement n\'est pas adapté à toutes les situations, particulièrement lorsque le test doit être répété. C’est pourquoi il est possible de réaliser un test RT-PCR à partir d’un prélèvement salivaire dans deux situations :\r\n• dans le cadre de dépistages ciblés à grande échelle, en particulier s\'ils sont répétés régulièrement : dans les écoles, universités, pour le personnel des établissements de santé, dans les Ehpad...\r\n• chez les personnes contact pour qui un prélèvement nasopharyngé n\'est pas envisageable.', 'B12', 'depistage.covid@omnes.sante.fr', 166549890),
(2, 'Analyse_cancer', 'Le dispositif d\'annonce est construit autour de cinq temps successifs, réalisés par des personnels médicaux ou soignants. Ces différents temps d’annonce se doivent d’être guidés par l’empathie et l’humanité.\r\nL’objectif de chacun de ces moments est d’instaurer une relation professionnel- patient favorisant l’implication future du patient dans ses soins.\r\nLe lieu et le moment de l’annonce ainsi que le savoir-être durant ce temps constituent des enjeux importants, décrits dans ce nouveau référentiel.\r\nTEMPS D’ANNONCE DE LA SUSPICION DE CANCER\r\nLe temps d’annonce de la suspicion d’un cancer est le moment au cours duquel le potentiel diagnostic de cancer est évoqué pour la première fois au patient, par exemple à l’occasion d’un examen clinique, ou devant une image suspecte ou un résultat biologique anormal. Cette annonce a généralement lieu dans un cabinet de ville.\r\nTEMPS D’ANNONCE DE LA CONFIRMATION DU DIAGNOSTIC\r\nCette étape fait suite aux examens complémentaires ayant permis l’obtention d’un diagnostic de certitude. Au cours de cette consultation, le médecin confirme le diagnostic de cancer et aborde, lorsque cela est pertinent ou possible, les types de traitement et options thérapeutiques pouvant être envisagés à ce stade et les éléments du pronostic. Cette étape est essentielle.\r\nTEMPS DÉDIÉ À LA PROPOSITION THÉRAPEUTIQUE\r\nCette consultation présente la proposition de la stratégie thérapeutique définie lors de la réunion de concertation pluridisciplinaire (RCP). Le projet thérapeutique est\r\nprésenté et expliqué au patient. La décision thérapeutique, comprise et acceptée par le patient, lui sera ensuite remise sous forme d\'un programme personnalisé de soins (PPS) lors de cette consultation. Le PPS contient également la liste des contacts utiles pour le patient. Par ailleurs, le médecin peut lors de cette consultation identifier certains besoins en soins de support du patient.\r\nSelon les demandes des patients et la complexité de la pathologie, les temps d’annonce de la confirmation du diagnostic et de proposition thérapeutique peuvent être dissociés ou confondus.\r\nTEMPS D\'ACCOMPAGNEMENT SOIGNANT PARAMÉDICAL\r\nIl offre au patient ou à ses proches la possibilité d\'accéder, selon leurs choix, à des soignants (en général un infirmier mais il peut s\'agir aussi d\'un manipulateur d\'électroradiologie médicale).Le soignant écoute le patient afin d’appréhender son niveau d’information, ses préoccupations. Il reformule ce qui a été dit pendant la consultation médicale, informe sur le déroulement des soins, et surtout évalue les besoins du patient en soins de support. Il peut ainsi orienter le patient vers des structures et professionnels compétents, au sein de l’établissement de santé ou en ville (assistant social, psychologue...).\r\nCONSULTATION DE SYNTHÈSE\r\nAfin de garantir la continuité et la qualité des soins, il est indispensable que le médecin traitant dispose d’un accès à l’ensemble des informations relatives au diagnostic et à la proposition thérapeutique du patient . Il reste un interlocuteur privilégié du patient et doit être associé au parcours de soins. Le dispositif d\'annonce s\'appuie ainsi sur un travail de liaison et de coordination entre les différents professionnels concernés.\r\nLors de cette consultation, le médecin traitant reformule, commente, complète et répond aux interrogations éventuelles du patient et/ou de ses proches, dans la continuité de ce qui a été dit dans l’établissement où le patient est traité.', 'A17', 'analyse.cancer@omnes.sante.fr', 156677123),
(3, 'Gyneco', 'Que faut-il prévoir pour un premier rendez-vous chez un gynécologue ?\r\nLors d’un rendez-vous avec un gynécologue, un certain nombre d’informations seront utiles au spécialiste. Apportez les dernières mammographies que vous avez effectuées, éventuellement votre dernier bilan sanguin et votre dernier frottis.\r\nLe spécialiste vous interrogera sur vos antécédents personnels (date des premières/dernières règles, problèmes de santé particuliers...) et familiaux (cancers ou maladies cardiovasculaires dans la famille notamment).\r\nComment se déroule la consultation ?\r\nLa consultation débute généralement par le contrôle du poids et de la tension. Ensuite, le gynécologue pratique un examen gynécologique. Il introduit un spéculum dans le vagin de manière à pouvoir contrôler le col de l’utérus. Un toucher vaginal permet ensuite de vérifier les organes génitaux internes. Un frottis peut compléter l’examen : il est réalisé une fois par an. Le gynécologue procède également à une palpation des seins, dans un but de dépistage du cancer du sein. Si nécessaire, il peut prescrire des examens complémentaires : bilan sanguin ou mammographie.', 'B31', 'gyneco@omnes.sante.fr', 156991145),
(4, 'Biologie_routine', 'Le déroulement d’une analyse de biologie médicale\r\nL’internaute peut suivre le trajet d’un échantillon de sang et d’un prélèvement de gorge au laboratoire, du début de l’analyse jusqu’aux résultats.\r\nComment se préparer à un examen biologique ?\r\nPour se préparer à un examen biologique, Lab Tests online propose des conseils adaptés à la situation d’un adulte, d’un enfant et d’une personne âgée.\r\nLes différents examens biologiques\r\nLab Tests online propose un annuaire des examens biologiques. Pour chaque examen sont expliqués la nature de l’analyse pratiquée, le déroulement du prélèvement, son but, ses indications les plus fréquentes, ainsi que les éventuelles précautions à prendre avant l’examen (par exemple être à jeun).', 'C39', 'biologie.rout@omnes.sante.fr', 161119243),
(5, 'Biologie_prevention', 'Le déroulement d’une analyse de biologie médicale\r\nL’internaute peut suivre le trajet d’un échantillon de sang et d’un prélèvement de gorge au laboratoire, du début de l’analyse jusqu’aux résultats.\r\nComment se préparer à un examen biologique ?\r\nPour se préparer à un examen biologique, Lab Tests online propose des conseils adaptés à la situation d’un adulte, d’un enfant et d’une personne âgée.\r\nLes différents examens biologiques\r\nLab Tests online propose un annuaire des examens biologiques. Pour chaque examen sont expliqués la nature de l’analyse pratiquée, le déroulement du prélèvement, son but, ses indications les plus fréquentes, ainsi que les éventuelles précautions à prendre avant l’examen (par exemple être à jeun).', 'A09', 'biologie.prev@omnes.sante.fr', 121516677),
(6, 'Depistage', 'Sur Lab Tests online, un moteur de recherche permet de savoir quels dépistages sont effectués pour différentes populations spécifiques : enfants, femmes enceintes, seniors, etc.\r\nLab Tests online est une initiative de l’American Association for Clinical Chemistry (AACC), et le projet a d’abord été lancé aux États-Unis. Ce site internet existe à présent dans de nombreuses langues : allemand, espagnol, français, hongrois, grec, italien, polonais.\r\nLa version française de Lab Tests online a fait l’objet d’un accord entre l’AACC, l’EDMA (association européenne des industriels de l’examen biologique) et la Société française de biologie clinique (SFBC)', 'C67', 'depistage@omnes.sante.fr', 198896677),
(7, 'Biologie_femme_enceinte', 'Dépistage de la trisomie 21\r\nLe dosage des marqueurs sériques permet de déterminer si vous êtes plus à risque de porter un enfant avec une trisomie 21.\r\nSi vous êtes à risque, un dépistage pré-natal pourra déterminer avec une grande fiabilité si le fœtus est porteur d\'une trisomie 13, 18 ou 21.\r\nGlycémie et dépistage du diabète gestationnel\r\nCe dépistage vous sera proposé si vous êtes à risque de développer un diabète de grossesse.\r\nAu 1er trimestre, le dépistage est effectué par une prise de sang à jeun avec le dosage de la glycémie.\r\nAu 2e trimestre, il s\'agit du test d\'hyperglycémie provoquée par voie orale.\r\nDépistage des IST\r\nHIV, Syphilis et hépatite B sont systématiquement dépistées.\r\nEn cas de résultat positif, une prise en charge adaptée permet de limiter voire de supprimer le risque de transmission à l\'enfant.\r\nDépistage du streptocoque B\r\nCe dépistage est effectué sur un prélèvement vaginal entre 35 et 38 semaines d\'aménorrhées.\r\nSi la recherche est positive, un traitement antibiotique vous sera administré pendant l’accouchement.\r\nTest de grossesse\r\nIl s\'agit du dosage de la beta-HCG, effectué à partir d\'une prise de sang. Il n\'est pas nécessaire d\'être à jeun pour faire l\'examen.\r\nSérologie Toxoplasmose\r\nPermet de savoir si vous êtes déjà immunisée contre le parasite à l\'origine de cette maladie.\r\nSi ce n\'est pas le cas, une surveillance mensuelle et des conseils de prévention vous seront proposés.\r\nSérologie Rubéole\r\nPermet de savoir si vous êtes immunisée (vaccinée).\r\nSi ce n\'est pas le cas, la sérologie sera contrôlée à 18 semaines d\'aménorrhées.\r\nAlbuminurie ou Protéinurie\r\nCe dosage, effectué tous les mois sur un échantillon d\'urine, contribue au dépistage de la pré-éclampsie.\r\nRAI (recherche des anticorps irréguliers)\r\nRecherche d\'anticorps fabriqués par la maman contre les globules rouges de son bébé.\r\nCette situation survient le plus souvent lorsque la maman est rhésus D négatif alors que son bébé est rhésus D positif.\r\nElle peut être anticipée grâce au Génotypage du rhésus D foetal qui peut être proposé à toutes les femmes rhésus D négatif.', 'D10', 'biologie.fem@omnes.sante.fr', 151916055);

-- --------------------------------------------------------

--
-- Structure de la table `Medecin_generaliste`
--

CREATE TABLE `Medecin_generaliste` (
  `ID_medecin_g` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Bureau` varchar(30) NOT NULL,
  `Mail` varchar(30) NOT NULL,
  `Mdp` varchar(30) NOT NULL,
  `telephone` int(20) NOT NULL,
  `Photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Medecin_generaliste`
--

INSERT INTO `Medecin_generaliste` (`ID_medecin_g`, `Nom`, `Prenom`, `Bureau`, `Mail`, `Mdp`, `telephone`, `Photo`) VALUES
(1, 'Bouree', 'Pascal', 'EM-330', 'pascal.bouree@omnes.sante.fr', 'pacsalbouree', 611223344, 'photo_medecin/photopascal.jpeg'),
(2, 'Valin', 'Giles', 'EM-122', 'giles.valin@omnes.sante.fr', 'gilesvalin', 699887766, 'photo_medecin/gilesvalin.jpeg'),
(4, 'Guyot', 'Anne', 'EM-201', 'anne.guyot@omnes.sante.fr', 'anneguyot', 698765432, 'photo_medecin/anneguyot.jpeg'),
(5, 'Marger', 'Olivier', 'EM-003', 'olivier.marger@omnes.sante.fr', 'oliviermarger', 612983476, 'photo_medecin/oliviermarger.jpeg'),
(6, 'Breuil', 'Florence ', 'EM-109', 'florence.breuil@omnes.sante.fr', 'florencebreuil', 612345678, 'photo_medecin/florencebreuil.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `Medecin_specialises`
--

CREATE TABLE `Medecin_specialises` (
  `ID_medecin_spe` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Specialite` varchar(30) NOT NULL,
  `bureau` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `Photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Medecin_specialises`
--

INSERT INTO `Medecin_specialises` (`ID_medecin_spe`, `Nom`, `Prenom`, `Specialite`, `bureau`, `mail`, `mdp`, `telephone`, `Photo`) VALUES
(1, 'Malavoy ', 'Sophia', 'Addictologie', 'sc-102', 'sophia.malavoy@omnes.sante.fr', 'sophiamalavoy', '0626818766', 'photo_medecin/sophiamalavoy.webp'),
(2, 'Desvaux', 'Pierre', 'Andrologie', 'sc-112', 'pierre.desvaux@omnes.sante.fr', 'pierredesvaux', '0734981234', 'photo_medecin/pierredesvaux.webp'),
(3, 'Sebag', 'Frederic', 'Cardiologie', 'SC-222', 'frederic.sebag@omnes.sante.fr', 'fredericsebag', '0678885422', 'photo_medecin/fredericsebag.webp'),
(4, 'Brachat', 'Olivier', 'Dermatologie', 'SC-136', 'olivier.brachat@omnes.sante.fr', 'olivierbrachat', '0787991365', 'photo_medecin/olivierbrachat.webp'),
(5, 'Cohen', 'Laura', 'Gastro-Hépato-Entérologie', 'SC-341', 'laura.cohen@omnes.sante.fr', 'lauracohen', '0626818766', 'photo_medecin/lauracohen.webp'),
(6, 'Sarfati', 'Pauline', 'Gynécologie', 'SC-165', 'Pauline.sarfati@omnes.sante.fr', 'paulinesarfati', '0755118977', 'photo_medecin/laurasarfati.webp'),
(7, 'Opron', 'Philippe', 'I.S.T.', 'SC-311', 'philippe.opron@omnes.sante.fr', 'philippeopron', '0612983476', 'photo_medecin/philippeopron.webp'),
(8, 'Chatel', 'Romane', 'Ostéopathie', 'SC-488', 'romane.chatel@omnes.sante.fr', 'romanechatel', '0755118977', 'photo_medecin/romanechatel.webp');

-- --------------------------------------------------------

--
-- Structure de la table `Payement`
--

CREATE TABLE `Payement` (
  `Type` varchar(20) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Numero_carte` int(20) NOT NULL,
  `Date_expiration` date NOT NULL,
  `CCV` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RDV_generalise`
--

CREATE TABLE `RDV_generalise` (
  `ID_rdv_gen` int(11) NOT NULL,
  `ID_medecin_g` int(11) NOT NULL,
  `Date/horaires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `RDV_generalise`
--

INSERT INTO `RDV_generalise` (`ID_rdv_gen`, `ID_medecin_g`, `Date/horaires`) VALUES
(1, 1, '2022-02-02 12:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `RDV_labo`
--

CREATE TABLE `RDV_labo` (
  `ID_rdv_labo` int(11) NOT NULL,
  `ID_labo` int(11) NOT NULL,
  `Date/horaires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `RDV_labo`
--

INSERT INTO `RDV_labo` (`ID_rdv_labo`, `ID_labo`, `Date/horaires`) VALUES
(1, 1, '2022-04-13 16:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `RDV_specialises`
--

CREATE TABLE `RDV_specialises` (
  `ID_rdv_spe` int(11) NOT NULL,
  `ID_medecin_spe` int(11) NOT NULL,
  `Date/horaires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `RDV_specialises`
--

INSERT INTO `RDV_specialises` (`ID_rdv_spe`, `ID_medecin_spe`, `Date/horaires`) VALUES
(1, 4, '2022-07-14 11:59:59');

-- --------------------------------------------------------

--
-- Structure de la table `Temps Libre`
--

CREATE TABLE `Temps Libre` (
  `ID_tempslibre` int(11) NOT NULL,
  `ID_medecin_g` int(11) DEFAULT NULL,
  `ID_medecin_spe` int(11) DEFAULT NULL,
  `ID_labo` int(11) DEFAULT NULL,
  `date/horaire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Temps Libre`
--

INSERT INTO `Temps Libre` (`ID_tempslibre`, `ID_medecin_g`, `ID_medecin_spe`, `ID_labo`, `date/horaire`) VALUES
(1, 1, 0, 0, '2022-05-23 11:48:17');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`ID_admin`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`ID_client`);

--
-- Index pour la table `Labo`
--
ALTER TABLE `Labo`
  ADD PRIMARY KEY (`ID_labo`);

--
-- Index pour la table `Medecin_generaliste`
--
ALTER TABLE `Medecin_generaliste`
  ADD PRIMARY KEY (`ID_medecin_g`);

--
-- Index pour la table `Medecin_specialises`
--
ALTER TABLE `Medecin_specialises`
  ADD PRIMARY KEY (`ID_medecin_spe`);

--
-- Index pour la table `RDV_generalise`
--
ALTER TABLE `RDV_generalise`
  ADD PRIMARY KEY (`ID_rdv_gen`),
  ADD KEY `ID_medecin_g` (`ID_medecin_g`);

--
-- Index pour la table `RDV_labo`
--
ALTER TABLE `RDV_labo`
  ADD PRIMARY KEY (`ID_rdv_labo`),
  ADD KEY `ID_labo` (`ID_labo`);

--
-- Index pour la table `RDV_specialises`
--
ALTER TABLE `RDV_specialises`
  ADD PRIMARY KEY (`ID_rdv_spe`),
  ADD KEY `ID_medecin_spe` (`ID_medecin_spe`);

--
-- Index pour la table `Temps Libre`
--
ALTER TABLE `Temps Libre`
  ADD PRIMARY KEY (`ID_tempslibre`),
  ADD KEY `ID_medecin_g` (`ID_medecin_g`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `ID_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `ID_client` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Labo`
--
ALTER TABLE `Labo`
  MODIFY `ID_labo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `Medecin_generaliste`
--
ALTER TABLE `Medecin_generaliste`
  MODIFY `ID_medecin_g` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Medecin_specialises`
--
ALTER TABLE `Medecin_specialises`
  MODIFY `ID_medecin_spe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `RDV_generalise`
--
ALTER TABLE `RDV_generalise`
  MODIFY `ID_rdv_gen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `RDV_labo`
--
ALTER TABLE `RDV_labo`
  MODIFY `ID_rdv_labo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `RDV_specialises`
--
ALTER TABLE `RDV_specialises`
  MODIFY `ID_rdv_spe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Temps Libre`
--
ALTER TABLE `Temps Libre`
  MODIFY `ID_tempslibre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `RDV_generalise`
--
ALTER TABLE `RDV_generalise`
  ADD CONSTRAINT `rdv_generalise_ibfk_1` FOREIGN KEY (`ID_medecin_g`) REFERENCES `Medecin_generaliste` (`ID_medecin_g`);

--
-- Contraintes pour la table `RDV_labo`
--
ALTER TABLE `RDV_labo`
  ADD CONSTRAINT `rdv_labo_ibfk_1` FOREIGN KEY (`ID_labo`) REFERENCES `Labo` (`ID_labo`);

--
-- Contraintes pour la table `RDV_specialises`
--
ALTER TABLE `RDV_specialises`
  ADD CONSTRAINT `rdv_specialises_ibfk_1` FOREIGN KEY (`ID_medecin_spe`) REFERENCES `Medecin_specialises` (`ID_medecin_spe`);

--
-- Contraintes pour la table `Temps Libre`
--
ALTER TABLE `Temps Libre`
  ADD CONSTRAINT `temps libre_ibfk_1` FOREIGN KEY (`ID_medecin_g`) REFERENCES `Medecin_generaliste` (`ID_medecin_g`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
