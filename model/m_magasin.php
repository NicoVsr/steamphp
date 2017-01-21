<?php

function get_magasin($debut){
    $bdd=new PDO("mysql:host=localhost;dbname=store",'root','root');
    $bdd->query("SET NAMES 'utf8'");
    $result=$bdd->query("SELECT `id`,`name`,`cover_url` 
								FROM Jeux
								LIMIT ".$debut.", 6");
    $magasin=$result->fetchAll();
    return $magasin;
}



?>