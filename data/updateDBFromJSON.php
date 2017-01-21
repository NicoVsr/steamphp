<?php
    // Connectez vous à la BDD ici
    $dsn = 'mysql:dbname=store;host=localhost';
    $user = 'root';
    $password = 'root';
    $dbh = null;

    try {
        // Création d’une nouvelle connexion MySQL via PDO
        $dbh = new PDO($dsn, $user, $password);
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo 'Echec lors de la connexion : ' . $e->getMessage();
    }

    // Récupérerz les fichiers JSON
    $jsongames = file_get_contents('games.json');
    $jsongenres = file_get_contents('genres.json');
    
    // Convertissez les fichiers JSON en Tableau PHP
    $games = json_decode($jsongames, true);
    $genres = json_decode($jsongenres, true);

    // Permet de convertir l'id du genre en son nom
    function getGenreById($id, $genres) {
      foreach($genres as $genre) {
        if($genre['id'] == $id) {
          return $genre['name'];
        }
      }
    }

    try {

      foreach($genres as $genre) {
        $stmt = $dbh->prepare('INSERT INTO Categories(name) VALUES(:name)');

        $stmt->bindParam(':name', $genre['name']);

        $stmt->execute();
      }

      foreach($games as $game) {
        // Préparez votre commande SQL
        $stmt = $dbh->prepare('INSERT INTO Jeux(name, summary, cover_url) VALUES(:name, :summary, :cover_url)');

        // Insérez vos paramètres du jeu ici. Exemple :
        $stmt->bindParam(':name', $game['name']);
        $stmt->bindParam(':summary', $game['summary']);
        $stmt->bindParam(':cover_url', $game['cover']['url']);

        // Exécutez
        $stmt->execute();
        
        // récupérez l'id de votre jeu pour les autres éléments à insérer 
        $gameid = $dbh->lastInsertId();
        
        if(array_key_exists('screenshots',$game)) {
          foreach($game['screenshots'] as $screenshot) {
            //Même méthode : préparez votre commande SQL, insérez vos paramètres, exécutez
            $stmt = $dbh->prepare('INSERT INTO Screen(url, jeux_id) VALUES(:url, :jeux_id)');

            // Insérez vos paramètres du jeu ici. Exemple :
            $stmt->bindParam(':url', $screenshot['url']);
            $stmt->bindParam(':jeux_id', $gameid);

            // Exécutez
            $stmt->execute();
          }
        }
        
        if(array_key_exists('videos',$game)) {
          foreach($game['videos'] as $video) {
            $stmt = $dbh->prepare('INSERT INTO video(name, jeux_id) VALUES(:name, :jeux_id)');

            // Insérez vos paramètres du jeu ici. Exemple :
            $stmt->bindParam(':name', $video['name']);
            $stmt->bindParam(':jeux_id', $gameid);

            // Exécutez
            $stmt->execute();
          }
        }

        if(array_key_exists('genres',$game)) {
          foreach($game['genres'] as $genre_id) {
            $genre_name = getGenreById($genre_id, $genres);
            echo 'genre name : '.$genre_name.'<br/>';
            $stmt = $dbh->prepare('SELECT id FROM Categories WHERE name = :category');
            $stmt->bindParam(':category', $genre_name);
            $stmt->execute();
            $res = $stmt->fetchAll();

            $new_genre_id = $res[0]['id'];
            echo 'new genre id : '.$new_genre_id.'<br/>';
            $stmt2 = $dbh->prepare('INSERT INTO Categories_jeux(jeux_id, categories_id) VALUES (:jeux_id, :catego_id)');
            $stmt2->bindParam(':jeux_id', $gameid);
            $stmt2->bindParam(':catego_id', $new_genre_id);
            $stmt2->execute();
          }
        }
      }

    $dbh = null; // Destruction de la connexion MySQL
    } catch (PDOException $e) {
        echo 'Echec lors de la connexion : ' . $e->getMessage();
    }
?>