<?php

$mysqli = new mysqli("localhost", "root", "", "omnes_sante");
    if ($mysqli -> connect_errno) {
        echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
        exit();
    }
     $sql = "SELECT * FROM medecin ";
     if($result = $mysqli->query($sql)){
         if($result->num_rows > 0 ){
            while ($data = mysqli_fetch_assoc($result)) {
                echo "Nom: " . $data['nom'] . '<br>';
                echo "Prénom: " . $data['prenom'] . '<br>';
                echo "Mail: " . $data['mail'] . '<br>';
       }//end while
       echo "</table>";
         }
        
     }
     
//si le BDD n'existe pas

//fermer la connection
$mysqli->close();

?>