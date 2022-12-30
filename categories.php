<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&family=Poppins:wght@500;700&display=swap" rel="stylesheet">
        <style>
        <?php include "style.css" ?>
        </style>
    </head>
    <body>

    <header>

        <div id="logo-date">
        <h1>ComInfEve</h1>

        <h3><?php date_default_timezone_set('Europe/Paris');  echo date("M j, Y, g:i a");?></h3>
        </div>

        <div id="user">
            <img src="./assets/user-circle-solid-36.png" alt="">
            <h3>Helena</h3>
        </div>
    </header>

    <div id="wrapper">
    <nav>

    <ul>
        <li><a href="./index.php"><img src="./assets/home-regular-24.png" alt="home logo">  Homepage</a></li>
        <li><a href="#"><img src="./assets/truck-solid-24.png" alt="fournisseur logo"> Fournisseur</a></li>
        <li><a href="#"><img src="./assets/briefcase-alt-regular-24.png" alt="employés logo">Employés</a></li>
        <li><a href="#"><img src="./assets/cart-regular-24.png" alt="produits logo">Produits</a></li>
        <li><a href="#"><img src="./assets/user-regular-24.png" alt="clients logo">Clients</a></li>
        <li><a href="#"><img src="./assets/package-regular-24.png" alt="">Commandes</a></li>
        <li><a href="#"><img src="./assets/category-regular-24.png" alt="catégorie logo">Catégorie</a></li>
    </ul>
    </nav>

    <main >

    <div class="add">

    <div>        
        
        <img src="" alt="">
        <h3>Ajouter une nouvelle catégorie</h3>

    </div>

    <div>
        
        <form action="">
        <input type="text" placeholder = "Nom de la catégorie">
        <input type="submit" value="Ajouter">
        </form>

    </div>

    </div>


    </main>

    </div>

    <footer>

    </footer>

</body>
</html>