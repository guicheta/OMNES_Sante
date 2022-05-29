<!doctype html>
<html lang="en">
<head>
    <title>OMNES Santé</title>
    <meta charset="UTF-8">
    <style type="text/css">

    #navigation {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100px;
    }
    a.cpt{
        border-radius: 12px;
        text-decoration: none;
        font-weight: bold;
        padding: 1em 1.2em;
        color: black;
        border: 3px solid black;
        background-color: #1c9ec9;
    }
    a.cpt:hover{
        background-color: #053bd1;
        color: white;
            transition: 1s;
    }
    ul {
        display: flex;
        list-style-type: none;
        align-items: center;
        justify-content: center;
        padding-right: 1em;
      }
  
      li {
        padding-left: 1em;
         }

      a {
        border-radius: 12px;
        text-decoration: none;
        font-weight: bold;
        padding: 1em 1.2em;
        color: black;
        border: 3px solid black;
        background-color: lightblue;
        }
        a:hover{
            background-color: lightgreen;
            transition: 1s;
        }
        a.search{
            border-radius: 12px;
        text-decoration: none;
        font-weight: bold;
        padding: 1em 1.2em;
        color: lightslategray;
        background-color: white;
        border: 1px solid lightslategray;
        }
        a.search:hover{
            background-color: darkslategray;
            transition: 1s;
        }
    #section {
        background-color: lightblue;
        border: 2px solid black;
        padding: 15px;
        margin: 2px;
        height: 400px;
        }
    header {
        font-size: 1.2em;
        font-weight: bold;
            }
    p {
      padding-left: 3px;
      }
    footer{
        display: flex;
    align-items: center;
    justify-content: space-around;
    list-style-type: none;
    }
    #footer{
        border-style: solid;
        margin-top: 10px; 
    }
    a.maps{
        text-decoration: none;
        background-color: white;
        border: 1px solid white;
    }
    #image{
        height: 20vh;
        margin: 2px;
        text-align:center;
    }
    </style>
</head>
<body>
<div id="wrapper">
        <div id="image">
            <img src="img/logo_omnes.png"
                 alt="Logo Omnes Santé"
                 class="logo" width="280" height="120">
        </div>
        <div id="navigation">
                <ul>
                    <li>
                        <a 
                            target="_self" class="cpt">Médecins généralistes</a>
                    </li>
                    
                </ul>
        </div>

        <div id="section">
            <?php

$mysqli = new mysqli("localhost", "root", "", "omnes_sante");
    if ($mysqli -> connect_errno) {
        echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
        exit();
    }
     $sql = "SELECT * FROM medecin WHERE specialite!='Generaliste'";
     if($result = $mysqli->query($sql)){
         if($result->num_rows > 0 ){
            echo "<table border=\"1\">";
            echo "<tr>";
            echo "<th>" . "ID" . "</th>";
            echo "<th>" . "Nom" . "</th>";
            echo "<th>" . "Prénom" . "</th>";
            echo "<th>" . "Spécialité" . "</th>";
            echo "<th>" . "Mail" . "</th>";
            echo "<th>" . "Téléphone" . "</th>";
            echo "<th>" . "Photo" . "</th>";
            echo "</tr>";
            
            while ($data = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $data['ID_medecin'] . "</td>";
                echo "<td>" . $data['nom'] . "</td>";
                echo "<td>" . $data['prenom'] . "</td>";
                echo "<td>" . $data['specialite'] . "</td>";
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
        </div>

        <div id="footer">
            <ul style="display: flex;align-items: center;
            list-style-type: none;">
            ID du médecin : 
            <li>
                <input type="float" name="ID"value="">
            </li>
          
            <li>
                <input type="button" name="valider"value="valider">
            </li>
                
        </ul>
        </div>
</body>
</html>