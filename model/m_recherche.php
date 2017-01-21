<?php
function recherche_tous_jeux(){
    $bdd=new PDO("mysql:host=localhost;dbname=store",'root','root');

    $bdd->query("SET NAMES 'utf8'");
    $result = $bdd->query("SELECT `id`,`name`,`cover_url` 
							FROM Jeux 
							ORDER BY `name` ASC");
    $recherche_jeux = $result->fetchAll();
    return $recherche_jeux;



}

?>
