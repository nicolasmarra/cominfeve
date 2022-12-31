
	<?php
        
        function getConnection(){

             /* Paramètres de connexion à la base de données (A MODIFIER) */
            $server="127.0.0.1"; /*: localhost */
            $login="marra"; /* : root */
            $password="nicolas"; /*: root */
            $db="cominfeve"; /*: cominfeve */
            
            /* Création de l'identifiant de connexion */
            if( !$id_connection = mysqli_connect($server, $login, $password, $db) ) 
            {
                die("<p class=\"erreur\">Echec de connexion au serveur de base de données \"".$server."\".</p>");
            }

            if( !$id_db = mysqli_select_db($id_connection, $db) ) 
            {	
                die("<p class=\"erreur\">Echec de connexion à la base de données \"".$db."\".</p>");
            }
            
            return $id_connection;
        }

        function getNumberOrder()
        {
            
            $requet="SELECT count(DISTINCT numCommandeClient) FROM detailler_commande_client;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            
            return $colonne[0];

        }

        function getNumberClient(){
            $requet="SELECT COUNT(*) FROM client;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[0];
            
        }

        function getNumberProvider(){
            $requet="SELECT COUNT(*) FROM fournisseur;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[0];
            
        }

        function getNumberItemsAvailable(){
            $requet="SELECT COUNT(*) FROM produit WHERE stockAlerte > 0;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[0];
            
        }

        function getNumberCategoriesAvailable(){
            $requet="SELECT COUNT(DISTINCT C.codeCategorie) FROM categorie C INNER JOIN produit P ON C.codeCategorie = P.categorie WHERE P.stockAlerte > 0;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[0];
            
        }

        function getNameBestSellingItem(){
            $requet="SELECT P.refProduit, P.designation, SUM(Dcl.quantite) as Total FROM commande_client C INNER JOIN detailler_commande_client Dcl ON Dcl.numCommandeClient = C.numCommandeCliant INNER JOIN produit P on Dcl.refProduit = P.refProduit Group BY P.refProduit, P.designation order by total DESC limit 1;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[1];
            
        }

        function getNameBestSellingCategory(){
            $requet="SELECT P.categorie, P.refProduit, P.designation, SUM(Dcl.quantite) as Total FROM commande_client C INNER JOIN detailler_commande_client Dcl ON Dcl.numCommandeClient = C.numCommandeCliant INNER JOIN produit P on Dcl.refProduit = P.refProduit INNER JOIN categorie Ca on Ca.codeCategorie = P.categorie Group BY P.refProduit, P.designation order by total DESC limit 1;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[0];
            
        }

        function getNameBestSellingProvider(){
            $requet="SELECT DCF.numCommandeFournisseur, F.nomFournisseur , SUM(DCF.quantite * P.prixUnitaire) as Total FROM fournisseur F INNER JOIN detailler_commande_fournisseur DCF on DCF.numCommandeFournisseur = F.codeFournisseur
            INNER JOIN produit P on P.refProduit = DCF.refProduit 
            GROUP BY DCF.numCommandeFournisseur, F.nomFournisseur
            ORDER BY TOTAL DESC 
            LIMIT 1;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[1];
            
        }

        
        function getTotalSells(){
            $requet="SELECT SUM(DCC.quantite * P.prixUnitaire) as TOTAL FROM detailler_commande_client DCC INNER JOIN produit P on P.refProduit = DCC.refProduit;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[0];
            
        }

        function getNumberItemsSold(){
            $requet="SELECT COUNT(DISTINCT P.refProduit) FROM detailler_commande_client DCC INNER JOIN produit P on P.refProduit = DCC.refProduit;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[0];
            
        }
        
        function getNumberCategoriesSold(){
            $requet="SELECT COUNT(DISTINCT P.categorie) FROM detailler_commande_client DCC INNER JOIN produit P on P.refProduit = DCC.refProduit;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[0];
            
        }

        function getNameBestSellingClient(){
            $requet="SELECT C.nomClient, SUM(P.prixUnitaire * DCC.quantite) AS TOTAL FROM detailler_commande_client DCC INNER JOIN produit P on P.refProduit = DCC.refProduit INNER JOIN commande_client CC on CC.numCommandeCliant = DCC.numCommandeClient INNER JOIN client C on C.codeClient = CC.codeClient GROUP BY CC.codeClient ORDER BY TOTAL DESC LIMIT 1;";

            $colonne = 0;
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            $colonne = mysqli_fetch_row($resultat);         

            return $colonne[0];
            
        }

    ?>

    



