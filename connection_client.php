<!doctype html>
<html lang="en">
    <head>
       <meta charset="utf-8">
        <!-- importer le fichier de style -->
        <link rel="stylesheet" href="connection.css" media="screen" type="text/css" />
    </head>
    <body>
        <div class="inscription">
            <h1>Connectez-vous</h1>
            <p>Merci de rentrer vos identifiants</p>
            <form action="verification_client.php" method="POST">
                <div>
                    <label for="id">Utilisateur (email)</label>
                    <input type="text" name="email" placeholder="utilisateur@gmail.com" required>
                </div>
            <div>
                <label for="nom">Mot de passe</label>
                <input type="password" name="motdepasse" placeholder="Motdepasse75" required>
            </div>
            <div>
                <button type="submit" id="sub">Se connecter</button>
            </div>
            <?php
                if(isset($_GET['erreur'])){
                    $err = $_GET['erreur'];
                    if($err==1 || $err==2)
                        echo "<p style='color:red'>Utilisateur ou mot de passe incorrect</p>";
                }
            ?>
            </form>
    </body>
</html>