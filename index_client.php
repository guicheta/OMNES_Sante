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
        *,
      *::after,
      *::before {
        margin: 0;
        padding: 0;
        box-sizing: inherit;
      }
        .container {
        box-sizing: border-box;
        width: 25rem;
        height: 100%;
        margin: 0 1rem;
        position: relative;
      }
      .searchbar {
        font-size: 2.4rem;
        width: 25rem;
        height: 5rem;
        border: none;
        outline: none;
        border-radius: 10rem;
        padding: 2rem;
        transition: all 0.1s;
        transition-delay: 0.1s;
      }
      .searchbar:hover {
        width: 27rem;
        height: 6rem;
      }
      .button {
        height: 2rem;
        position: absolute;
        top: 1.5rem;
        right: 1rem;
        transition: all 0.1s;
        transition-delay: 0.1s;
      }
      .button:hover {
        cursor: pointer;
      }
      .searchbar:hover + .button {
        height: 2.5rem;
        top: 1.8rem;
        right: 0;
      }
      .searchbar::placeholder {
        opacity: 0.3;
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
                        <a href="inscription.php"
                            target="_self" class="cpt">Client</a>
                    </li>
                    <li>
                        <a href="index_client.php"
                            target="_self">Accueil</a>
                    </li>
                    <li>
                        <a href="tout_parcourir.php"
                            target="_self">Tout parcourir</a>
                    </li>
                    <li>
                        <a href="RDV.html"
                            target="_self">Rendez-vous</a>
                    </li> 
                </ul>
            <div class="container">
            <input type="text" maxlength="12" placeholder="Rechercher" class="searchbar" />
            <img src="https://images-na.ssl-images-amazon.com/images/I/41gYkruZM2L.png" alt="search icon" class="button" />
          </div>
        </div>

        <div id="section">
            <article>
                <header>Bienvenue sur OMNES Santé</header>
                <p style="color: red;">
                   Omnes Santé bla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla blabla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla
                   Omnes Santé bla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla blabla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla
                   Omnes Santé bla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla blabla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla
                   Omnes Santé bla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla blabla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla
                   Omnes Santé bla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla blabla bla bla bla bla bla bla bla bla bla bla bla
                   bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla
                </p>
                <footer style="padding-bottom: 5px;">
                    <a href="https://www.gouvernement.fr/info-coronavirus/carte-et-donnees" 
                    style="color: black;background-color:#0ecf3e;text-decoration: none;
                    padding: 0.5em 0.5em; margin-bottom:auto; ">Bulletin santé de la semaine</a>
                </footer>
            </article>
        </div>

        <div id="footer">
            <ul style="display: flex;align-items: center;justify-content: space-around;
            list-style-type: none;">
                <li>
                    <a href="https://www.google.com/maps/place/ECE+Paris+Lyon/@48.8517668,2.2842932,17z/data=!3m1!4b1!4m5!3m4!1s0x47e6701b4f58251b:0x167f5a60fb94aa76!8m2!3d48.8517668!4d2.2864819"
                    class="maps">
                         <img src="img/ggmaps.jpg" alt="Google Maps" width="100" height="78">
                    </a>
                </li>
                <li>37, Quai de Grenelle, 75015, Paris</li>
                <li>Nous contacter par téléphone au
                    <a href="06 52 04 87 37">
                        06 52 04 87 37
                    </a>
                </li>
                <li>Par email au 
                    <a href="mailto:romainlance@edu.ece.fr">
                        romain.lance@edu.ece.fr
                    </a>
                </li>
            </ul>
        </div>
</div>
</body>
</html>
