<?php

require 'script_index.php';

function addCategory(){

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $code = $_POST['code'];
    $nom = $_POST['nom'];
    $description = $_POST['description'];
        
     // Protection contre les injections SQL
    $description = mysqli_real_escape_string(getConnection(), $description);

    if(isset($code)  && isset($nom) && isset($description))
    {
    
        $requet = "INSERT INTO categorie (codeCategorie, nomCategorie,description) values ('$code','$nom','$description');";
        $resultat = mysqli_query(getConnection(),$requet);
    }

    header('Location: categories.php');

}
}

addCategory();

?>