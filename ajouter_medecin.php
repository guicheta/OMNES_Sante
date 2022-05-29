<!doctype html>
<html lang="en">
<head>
    <title>OMNES Santé</title>
    <meta charset="UTF-8">
    <link href="inscription.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <?php
// Informations d'identification
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'omnes_sante');
 
// Connexion à la base de données MySQL 
$conn = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
// Vérifier la connexion
if($conn === false){
    die("ERREUR : Impossible de se connecter. " . mysqli_connect_error());
}

if (isset($_REQUEST['ID_medecin'], $_REQUEST['nom'], $_REQUEST['prenom'], $_REQUEST['email'], $_REQUEST['mdp'], $_REQUEST['telephone'])){

// récupérer le nom d'utilisateur et supprimer les antislashes ajoutés par le formulaire
$ID_client = stripslashes($_REQUEST['ID_medecin']);
$ID_client = mysqli_real_escape_string($conn, $ID_client); 

$nom = stripslashes($_REQUEST['nom']);
$nom = mysqli_real_escape_string($conn, $nom);

$prenom = stripslashes($_REQUEST['prenom']);
$prenom = mysqli_real_escape_string($conn, $prenom);

$email = stripslashes($_REQUEST['email']);
$email = mysqli_real_escape_string($conn, $email);

$mdp = stripslashes($_REQUEST['mdp']);
$mdp = mysqli_real_escape_string($conn, $mdp);

$telephone = stripslashes($_REQUEST['telephone']);
$telephone = mysqli_real_escape_string($conn, $telephone);

//requéte SQL + mot de passe crypté
  $query = "INSERT into `medecin` (`ID_medecin`, `nom`, `prenom`, `mail`, `mdp`, `telephone`)
            VALUES ('$ID_client', '$nom', '$prenom', '$email', '$mdp', '$telephone')";
// Exécuter la requête sur la base de données
  $res = mysqli_query($conn, $query);
  if($res){
     echo "<div class='sucess'>
           <h3>Vous êtes inscrit avec succès.</h3>
           <p>Cliquez ici pour vous <a href='login.php'>connecter</a></p>
     </div>";
  }
}
?>
<div class="inscription">

    <h1>Ajouter un médecin</h1>

    <p>Merci de rentrer les informations personelles</p>

    <form action="index_admin.php" method="post">

        <div>
            <label for="id">Votre ID</label>
            <input type="text" name="id" placeholder="1111" required>
        </div>
        <div>
            <label for="nom">Votre nom</label>
            <input type="text" name="nom" placeholder="Dupond" required>
        </div>
        <div>
            <label for="prenom">Votre prénom</label>
            <input type="text" name="prenom" placeholder="Martin" required>
        </div>
        <div>
            <label for="spe">Votre spécialité</label>
            <input type="text" name="spe" placeholder="ORL" required>
        </div>
        <div>
            <label for="bur">Votre bureau</label>
            <input type="text" name="bur" placeholder="EM-111" required>
        </div>
        <div>
            <label for="email">Votre e-mail</label>
            <input type="email" name="email" placeholder="martin.dupond@mail.com" required>
        </div>
        <div>
            <label for="motdepasse">Votre mot de passe</label>
            <input type="password" name="motdepasse" placeholder="Chouchou82" required>
        </div>
        <div>
            <label for="tel">Votre numéro de téléphone</label>
            <input type="text" name="tel" placeholder="06 45 65 67 21" required>
        </div>

        <div>
            <button type="submit" id="sub">Ajouter</button>  
        </div>

    </form>

</div>
</body>
</html>