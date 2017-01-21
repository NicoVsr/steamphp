<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Steam V2 </title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/java.js"></script>
</head>
<body>
<header>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Steamy</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" style="float: right;">
                    <li>
                        <a href="../dashboard.php">Profil</a>
                    </li>
                    <li>
                        <a href="../controler/c_magasin.php?debut=0">Store</a>
                    </li>
                    <li>
                        <a href="panier.php">Panier</a>
                    </li>
                    <li>
                        <form action="deconnexion.php">
                            <input id="dec" type="submit" value="Déconnexion" class="btn btn-danger"
                                   style=" width: 126px; height: 50px; margin-left: 10px; margin-right: 10px; background-color: #444444; border: #444444">
                        </form>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
</header><section id="banner">
    <header>
        <h2>Ne jouez pas seul : <em>vos amis et futurs rencontres sont sur Steam.</em></h2>
        <a href="c_comm.php?debut=0" class="button">Retrouvez les</a>
    </header>
</section>

<!-- CONTENU -->

<section class="wrapper style1">
    <div class="container">
        <div id="content">

            <!-- Content -->

            <div class="jeux" style="float:right; width: 70%;">

                <?php
                foreach ($magasins as $key => $une):?>

                <article>
                    <header>
                        <h2><?php echo $une['name']?></h2>
                        <p>Vous retrouverez ici l'ensemble des infos pour ce jeu.</p>
                    </header>

                    <div class="manif">
                        <img src="http:<?php echo $une['cover_url']?>">
                        <br>
                        <p><?php echo $une['summary']?></p>
                        GRATUIT
                        <button>acheter</button>
                    </div>


                    <?php endforeach ?>
                    <div>
                        <ul>
                            <a href="../controler/c_magasin.php?debut=<?php echo 0 ?>">Retour aux pages</a>

                        </ul>
                    </div>
                </article>
            </div>

        </div>
    </div>
</section>