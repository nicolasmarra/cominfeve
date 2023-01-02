<?php

    require "script_index.php";

    function showCategories()
    {
        $requet="SELECT * from categorie;";

            
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            return $resultat;
    }

    function showProviders()
    {
        $requet="SELECT * from fournisseur;";

            
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            return $resultat;
    }

    function showEmployes()
    {
        $requet="SELECT * from employe;";

            
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            return $resultat;
    }

    function showItems()
    {
        $requet="SELECT * from produit;";

            
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            return $resultat;
    }

    function showClients()
    {
        $requet="SELECT * from client;";

            
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            return $resultat;
    }

    function showOrders()
    {
        $requet="SELECT DCC.numCommandeClient,C.nomClient, E.nomEmploye, E.prenomEmploye, CC.dateRetrait, CC.datePaiement, CC.modeDePaiement, SUM(DCC.quantite), SUM(DCC.quantite * P.prixUnitaire)  FROM detailler_commande_client DCC 
        INNER JOIN commande_client CC on  CC.numCommandeCliant = DCC.numCommandeClient
        INNER JOIN client C on C.codeClient = CC.codeClient 
        INNER JOIN produit P on P.refProduit = DCC.refProduit
        INNER JOIN employe E on E.matricule = CC.matriculeEmploye
        GROUP BY DCC.numCommandeClient;";

            
			/* Exécution de la requête */
			if( !$resultat = mysqli_query (getConnection(), $requet))
			{     
                echo "<p class=\"erreur\">Erreur de requête sur la base de données \"".$db."\".</p>";
			}   
				
            return $resultat;
    }

?>