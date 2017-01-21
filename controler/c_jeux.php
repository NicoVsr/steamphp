<?php
include_once ('../model/m_jeux.php');
$magasins = array();
if(isset($_GET['id']))
{

    $id_jeux = htmlspecialchars($_GET['id']);
    $magasins= get_info_jeux($id_jeux);
}
include_once('../view/v_jeux.php');
?>