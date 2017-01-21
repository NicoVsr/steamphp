<?php
function userConnect(PDO $db, $pseudo, $pass){
	
		$sql ="SELECT *
		FROM utilisateurs
		WHERE pseudo = :pseudo 
		AND pass = :pass";

	$req = $db->prepare($sql);
	$req->execute(array(
	'pseudo' => $pseudo,
	'pass' => $pass
	));

	$result = $req->fetch(PDO::FETCH_ASSOC);

	if($result == true){
		$_SESSION['id'] = $result['id'];
		$_SESSION['nom'] = $result['nom'];
		$_SESSION['pseudo'] = $result['pseudo'];
		$_SESSION['prenom'] = $result['prenom'];
        $_SESSION['mail'] = $result['mail'];
        $_SESSION['naissance'] = $result['naissance'];
		return true;
	}else {
		return false;
	}
}


function userRegistration(PDO $db, $nom, $prenom, $naissance, $nation, $mail, $pseudo, $pass ) {
		
		
		if ( !empty($nom) AND !empty($prenom) AND !empty($naissance) AND !empty($nation)  AND !empty($mail) AND !empty($pseudo) AND !empty($pass) ) {
			$sql= " INSERT INTO utilisateurs (nom, prenom, naissance, nation, mail, pseudo, pass) 
				 VALUES (:nom, :prenom, :naissance, :nation, :mail, :pseudo, :pass)";
 
			$req = $db->prepare($sql);
			$req->execute( array(
				'nom' => $nom,
				'prenom' => $prenom,
				'naissance' => $naissance,
				'nation' => $nation,
				'mail' => $mail,
				'pseudo' => $pseudo,
				'pass' => $pass

				));

			return true;

		} else {
			return false;
		}


	}

function tweetAdd(PDO $db, $contents ) {

		if ( !empty($contents) ) {

			$sql= " INSERT INTO tweet (contents) 
					 VALUES (:contents)";

			$req = $db->prepare($sql);
			$req->execute( array(
				'contents' => $contents
 
				));

			return true;

		} else {

			return false;
		}

}

function tweetRead(PDO $db) {

		$sql = " SELECT * FROM tweet";

			$req = $db->prepare($sql);
			$req->execute();

		$result = $req->fetchAll(PDO::FETCH_ASSOC);

		return $result;
	}

function singleTweet(PDO $db, $id){
	$sql = 'SELECT * FROM tweet WHERE id = :id';
	$req = $db->prepare($sql);
	$req->execute(array("id" => $id));
	$result = $req->fetch(PDO::FETCH_ASSOC);

	return $result;
}

function tweetEdit(PDO $db, $contents, $id) {

				if ( !empty($contents) ) {

					$sql = " UPDATE tweet
							 SET contents = :contents 
							 WHERE id= :id";

					$req = $db->prepare($sql);
					$req->execute( array(
						'contents' => $contents,
						'id' => $id

						));

					return true;

				} else {

					return false;

			} 
		}

function tweetDelete(PDO $db, $id){

		$sql = "DELETE FROM tweet WHERE id = :id";

			$req = $db->prepare($sql);
			$req->execute(array('id' => $id));
			
		$result = $req->fetch(PDO::FETCH_ASSOC);

	return $result;
}


?>