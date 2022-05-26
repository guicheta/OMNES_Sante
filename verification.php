<?php
session_start();
if(isset($_POST['email']) && isset($_POST['motdepasse']))
{
    // connexion à la base de données
    $mysqli= new mysqli("localhost","root","","omnes_sante");
    
    // on applique les deux fonctions mysqli_real_escape_string et htmlspecialchars
    // pour éliminer toute attaque de type injection SQL et XSS
    $email = mysqli_real_escape_string($mysqli,htmlspecialchars($_POST['email'])); 
    $motdepasse = mysqli_real_escape_string($mysqli,htmlspecialchars($_POST['motdepasse']));
    
    if($email !== "" && $motdepasse !== "")
    {
        $requete = "SELECT count(*) FROM adminis WHERE
              Mail = '".$email."' and mdp = '".$motdepasse."' ";
        $exec_requete = mysqli_query($mysqli,$requete);
        $reponse      = mysqli_fetch_array($exec_requete);
        $count = $reponse['count(*)'];
        if($count!=0) // nom d'utilisateur et mot de passe correctes
        {
           $_SESSION['email'] = $email;
           header('Location: principale.php');
        }
        else
        {
           header('Location: connection.php?erreur=1'); // utilisateur ou mot de passe incorrect
        }
    }
    else
    {
       header('Location: connection.php?erreur=2'); // utilisateur ou mot de passe vide
    }
}
else
{
   header('Location: connection.php');
}
mysqli_close($mysqli); // fermer la connexion
?>