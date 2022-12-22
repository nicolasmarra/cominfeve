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
        <?php require "homepage.php" ?>
    </head>
    <body>

    <header>

        <h1>ComInfEve</h1>

        <div>
            <img src="./assets/user-circle-solid-48.png" alt="">
            <h3>Helena</h3>
        </div>
    </header>

    <div id="wrapper">
    <nav>

    <ul>
        <li><a href="#"><img src="./assets/home-regular-24.png" alt="home logo">  Homepage</a></li>
        <li><a href="#"><img src="./assets/truck-solid-24.png" alt="fournisseur logo"> Fournisseur</a></li>
        <li><a href="#"><img src="./assets/briefcase-alt-regular-24.png" alt="employés logo">Employés</a></li>
        <li><a href="#"><img src="./assets/cart-regular-24.png" alt="produits logo">Produits</a></li>
        <li><a href="#"><img src="./assets/user-regular-24.png" alt="clients logo">Clients</a></li>
        <li><a href="#"><img src="./assets/package-regular-24.png" alt="">Commandes</a></li>
        <li><a href="#"><img src="./assets/category-regular-24.png" alt="catégorie logo">Catégorie</a></li>
    </ul>
    </nav>

    <main >
        <div class="box">
            <div class="box-info">
                <div>
                    <img src="./assets/online-order-icon.png" alt="icone commandes">
                </div>

                <div >
                    <h3>Commandes</h3>
                    <h2><?php echo getNumberOrder()?></h2>
                </div>  
            </div>

            <div class="box-info">
                <div>
                    <img src="./assets/sales_icon.png" alt="">
                </div>

                <div>
                    <h3>Ventes</h3>
                    <h2>100€</h2>
                </div>  
            </div>

            <div class="box-info">
                <div>
                    <img src="./assets/box-icon-6.jpg" alt="">
                </div>

                <div>
                    <h3>Articles vendus</h3>
                    <h2>1</h2>  
                </div>
            </div>

            <div class="box-info">
                <div>
                    <img src="./assets/icon-for-applications-22.png" alt="">
                </div>

                <div>                
                    <h3>Catégories d'articles vendus</h3>
                    <h2>1</h2>
                </div>  
            </div>
        </div>

        <div class="box">
            <div class="box-info">
                <div>
                    <img src="./assets/21-214875_key-achievements-icons-blue-community-transparent-background-customer.png" alt="">
                </div>

                <div>
                    <h3>Clients</h3>
                    <h2><?php echo getNumberClient()?></h2>
                </div>  
            </div>

            <div class="box-info">
                <div>
                    <img src="./assets/wd-applet-supplier-management.png" alt="">
                </div>

                <div>
                    <h3>Fournisseur</h3>
                    <h2><?php echo getNumberProvider()?></h2>  
                </div>
            </div>

            <div class="box-info">
                <div>
                    <img src="./assets/png-clipart-computer-icons-symbol-product-lifecycle-product-miscellaneous-blue-removebg-preview.png" alt="">
                </div>

                <div>
                    <h3>Articles disponibles</h3>
                    <h2><?php echo getNumberItemsAvailable()?></h2>
                </div>  
            </div>

            <div class="box-info">
                <div>
                    <img src="./assets/3843537.png" alt="">
                </div>

                <div>
                    <h3>Catégories d'articles disponibles</h3>
                    <h2><?php echo getNumberCategoriesAvailable()?></h2>
                </div>  
            </div>
        </div>

        <div class="box" >
            <div class="box-info" id="box-info1">
                <div>
                    <img src="./assets/1884184.png" alt="">
                </div>

                <div>
                    <h3>Le meilleur client</h3>
                    <h2>Helena</h2>
                </div>  
            </div>

            <div class="box-info" id="box-info2">
                <div>
                    <img src="./assets/228-2281476_customer-experience-customer-computer-icons-blue-customer-experience.png" alt="">
                </div>

                <div>
                    <h3>Le meilleur fournisseur</h3>
                    <h2><?php echo getNameBestSellingProvider()?></h2>
                </div>  
            </div>

            <div class="box-info" id="box-info3">
                <div>
                    <img src="./assets/3082805.png" alt="">
                </div>

                <div>
                    <h3>L'article le plus vendu</h3>
                    <h2><?php echo getNameBestSellingItem()?></h2>
                </div>  
            </div>

            <div class="box-info" id="box-info4">
                <div>
                    <img src="./assets/3502688.png" alt="">
                </div>

                <div>
                    <h3>La catégorie la plus vendue</h3>
                    <h2><?php echo getNameBestSellingCategory()?></h2>
                </div>  
            </div>
        </div>

    </main>

    </div>

    <footer>

    </footer>

</body>
</html>