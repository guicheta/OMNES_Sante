<?php

$mysqli = new mysqli("localhost", "root", "", "omnes_sante");
    if ($mysqli -> connect_errno) {
        echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
        exit();
    }
     $sql = "SELECT * FROM medecin ";
     if($result = $mysqli->query($sql)){
         if($result->num_rows > 0 ){
            echo "<table border=\"1\">";
            echo "<tr>";
            echo "<th>" . "ID" . "</th>";
            echo "<th>" . "Nom" . "</th>";
            echo "<th>" . "Prénom" . "</th>";
            echo "<th>" . "Mail" . "</th>";
            echo "<th>" . "Téléphone" . "</th>";
            echo "<th>" . "Photo" . "</th>";
            echo "</tr>";
            
            while ($data = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $data['ID_medecin'] . "</td>";
                echo "<td>" . $data['nom'] . "</td>";
                echo "<td>" . $data['prenom'] . "</td>";
                echo "<td>" . $data['mail'] . "</td>";
                echo "<td>" . $data['telephone'] . "</td>";
                echo "<td>" . $data['photo'] . "</td>";
                echo "</tr>";
       }//end while
       echo "</table>";
         }
        
     }
     
//si le BDD n'existe pas

//fermer la connection
$mysqli->close();

?>