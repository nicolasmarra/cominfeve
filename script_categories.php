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

?>