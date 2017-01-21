<?php
include_once ('../model/m_magasin_all.php');

$categorie= get_categorie();
$magasins = array();
if(isset($_GET['categorie']))
{

    $categorie_jeux = htmlspecialchars($_GET['categorie']);
    $magasins= get_magasin_categorie($categorie_jeux);
}else{
    $magasins= get_magasin_all();
}


include_once('../view/v_magasin_all.php');
?>