<?php

function get_info_jeux($id_jeux){

    $bdd=new PDO("mysql:host=localhost;dbname=store",'root','root');
    $bdd->query("SET NAMES 'utf8'");
    $result=$bdd->query("SELECT * FROM Jeux WHERE id = '".$id_jeux."'");
    $magasins=$result->fetchAll();
    return $magasins;
}



?>