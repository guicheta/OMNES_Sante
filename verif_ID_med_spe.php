<?php
session_start();
if(isset($_POST['id']))
{
    // connexion à la base de données
    $mysqli= new mysqli("localhost","root","","omnes_sante");
    
    // on applique les deux fonctions mysqli_real_escape_string et htmlspecialchars
    // pour éliminer toute attaque de type injection SQL et XSS
    $idmed = mysqli_real_escape_string($mysqli,htmlspecialchars($_POST['id'])); 
    
    
    if($idmed !== "")
    {
        $requete = "SELECT count(*) FROM medecin WHERE
              ID_medecin = '".$idmed."' and specialite != 'Generaliste'";
        $exec_requete = mysqli_query($mysqli,$requete);
        $reponse      = mysqli_fetch_array($exec_requete);
        $count = $reponse['count(*)'];
        if($count!=0) // nom d'utilisateur et mot de passe correctes
        {
           $_SESSION['id'] = $idmed;
           header('Location: fiche_med.php');
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