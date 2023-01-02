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
        <?php require "script_view.php" ?>

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
        <li><a href="./fournisseur.php"><img src="./assets/truck-solid-24.png" alt="fournisseur logo"> Fournisseur</a></li>
        <li><a href="./employe.php"><img src="./assets/briefcase-alt-regular-24.png" alt="employés logo">Employés</a></li>
        <li><a href="#"><img src="./assets/cart-regular-24.png" alt="produits logo">Produits</a></li>
        <li><a href="./clients.php"><img src="./assets/user-regular-24.png" alt="clients logo">Clients</a></li>
        <li><a href="./commandes.php"><img src="./assets/package-regular-24.png" alt="">Commandes</a></li>
        <li><a href="./categories.php"><img src="./assets/category-regular-24.png" alt="catégorie logo">Catégorie</a></li>
    </ul>
    </nav>

    <main >

    <div class="add-view">
    
    <div class="view">

        <div class="top">        
        
        <img src="./assets/bxs-user.svg" alt="icône catégorie">
        <h3>Tous les produits</h3>

        </div>

        <div class="ligne">
        </div>

        <div>
        
        <table>
            <tr>
                <th>Référence</th>
                <th>Catégorie</th>
                <th>Famille</th>
                <th>Désignation</th>
                <th>Export</th>
                <th>Prix unitaire</th>
                <th>TVA</th>
                <th>Stock</th>
            </tr>


            <?php
            $resultat = showItems();
            while ($colonne = mysqli_fetch_row($resultat))
            {
                 echo "<tr> <td>$colonne[0]</td> <td>$colonne[1]</td> <td>$colonne[2]</td> <td>$colonne[3]</td> <td>$colonne[4]</td> <td>$colonne[5]</td> <td>$colonne[6]</td> <td>$colonne[7]</td></tr>";
            }
            ?>
            
        </table>

        </div>

    </div>

    </div>
    </main>

    </div>

    <footer>

    </footer>

</body>
</html>