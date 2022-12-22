
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
        
    ?>

    



