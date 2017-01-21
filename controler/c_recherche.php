<?php
include_once('../model/m_recherche.php');
$recherche_jeux = recherche_tous_jeux();
include_once('../view/v_recherche.php');
?>