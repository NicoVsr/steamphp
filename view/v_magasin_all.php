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
                        <form class="navbar-form navbar inline-form">
                            <div class="form-group">
                                <input type="search" class="input-sm form-control" placeholder="Recherche">
                                <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-eye-open"></span> Chercher</button>
                            </div>
                        </form>
                    </li>
                    <li>
                        <a href="dashboard.php">Profil</a>
                    </li>
                    <li>
                        <a href="controler/c_magasin.php?debut=0">Store</a>
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
</header>
<section class="wrapper style1">
    <div class="container">
        <div id="content">

            <!-- Content -->
            <div class="categorie" style="float:left; width: 30%;">
                <article>
                    <header>
                        <h2>Catégories</h2>

                        <?php
                        foreach ($categorie as $key => $une):?>


                            <div class="manif">
                                <ul>
                                    <li><?php echo "<a href=\"../controler/c_magasin_all.php?categorie=".$une['id']."\">".$une['name']."</a>"?></li>
                                </ul>
                            </div>


                        <?php endforeach ?>
                    </header>





                </article>
            </div>
            <div class="jeux" style="float:right; width: 70%;">
                <article>
                    <header>
                        <h2>Nos jeux</h2>
                        <p>Vous retrouverez ici l'ensemble des jeux que nous vous proposons.</p>
                    </header>




                    <?php
                    foreach ($magasins as $key => $une):?>


                    <div class="manif">
                        <h4>. <?php echo "<a href=\"../controler/c_jeux.php?id=".$une['id']."\">".$une['name']."</a>"  ?></h4>
                        <img src="http:<?php echo $une['cover_url']?>">
                        <br>GRATUIT
                    </div>


                    <?php endforeach ?>

                    <ul>
                        <a href="../controler/c_magasin.php?debut=<?php echo 0 ?>">Retour aux pages</a>

                    </ul>


                </article>
            </div>

        </div>
    </div>
</section>