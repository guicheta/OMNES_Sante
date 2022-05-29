<!doctype html>
<html lang="en">
<head>
    <title>OMNES Santé</title>
    <meta charset="UTF-8">
    <link href="inscription.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<?php
$servername = "localhost";
$database = "omnes_sante";
$username = "root";
$password = "";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
      die("Échec de la connexion : " . mysqli_connect_error());
}
 
echo "BDD ok";

$IDclient = isset($_POST["id"])? $_POST["id"] : "";

$noom = isset($_POST["name"])? $_POST["name"] : "";

$preenom = isset($_POST["surname"])? $_POST["surname"] : "";

$eemail = isset($_POST["email"])? $_POST["email"] : "";

$motdp = isset($_POST["motdepasse"])? $_POST["motdepasse"] : "";

$bigo = isset($_POST["tel"])? $_POST["tel"] : "";
 
$sql = "INSERT INTO `client` (ID_client, nom, prenom, mail, mdp, telephone) VALUES ('$IDclient', '$noom', '$preenom', '$eemail', '$motdp', '$bigo')";
$res=mysqli_query($conn, $sql);
if ($res) {
      echo "Nouveau enregistrement créé avec succès";
} else {
      echo "Erreur : " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>




<div class="inscription">

    <h1>Inscrivez-vous</h1>

    <p>Merci de rentrer vos informations personelles</p>

    <form action="connection_client.php" method="post">

        <div>
            <label for="id">Votre ID</label>
            <input type="text" name="id" placeholder="1111" required>
        </div>
        <div>
            <label for="nom">Votre nom</label>
            <input type="text" name="name" placeholder="Dupond" required>
        </div>
        <div>
            <label for="prenom">Votre prénom</label>
            <input type="text" name="surname" placeholder="Martin" required>
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
            <button type="submit" id="sub">S'inscrire</button>  
        </div>

        
            <ul style="display: flex;
                list-style-type: none;
                align-items: center;
                justify-content: center;
                text-decoration: none;">
                <li style="padding-left: 0.5em;">
                    <a href="connection_client.php" target="_self" style="border-radius: 12px;
        text-decoration: none;
        padding: 1em 1.2em;
        color: black;
        border: 2px solid black;
        background-color: lightblue;">
                    Client
                    </a>
                </li>
                <li style="padding-left: 0.5em;">        
                    <a href="connection_admin.php" target="_self"style="border-radius: 12px;
        text-decoration: none;
        padding: 1em 1.2em;
        color: black;
        border: 2px solid black;
        background-color: lightblue; ">
                    Medecin
                    </a>
                </li>
                <li style="padding-left: 0.5em;">
                    <a href="connection_admin.php" target="_self"style="border-radius: 12px;
        text-decoration: none;
        padding: 1em 1.2em;
        color: black;
        border: 2px solid black;
        background-color: lightblue;" >
                    Admin
                    </a>       
                </li>
            </ul>
        

    </form>

</div>
</body>
</html>