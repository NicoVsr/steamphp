<?php
session_start();

include('config/config.php');
include('functions/functions.fn.php');

$confirm = userRegistration($db, $_POST['nom'], $_POST['prenom'], $_POST['naissance'], $_POST['nation'], $_POST['mail'], $_POST['pseudo'], $_POST['pass']);


if($confirm == true){
	header('Location: index.php');
}else {
	header('Location: inscriptionerror.php');
}


?>