<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Steam V2 </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/java.js"></script>
</head>
<body style="background-color: #363636">
<header style=" margin-top: 0; height: 150px; background-color: #1d1d1d">

    <h1 style="color: white; padding-top: 50px; text-align: center;"> Bienvenue sur Steamy ! </h1>

</header>


<section id="connexion">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <form id="login-form" action="inscription_confirm.php" method="post">
                    <div class="modal-body">
                        <div id="div-login-msg">
                            <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"
                                 style="margin-bottom: 15px;"></div>
                            <span style="color: white">S'inscrire sur Steamy.</span>
                        </div>
                        <input style="margin-bottom: 15px;" id="login_username" class="form-control" type="text"
                               placeholder="Entrez votre nom." required name="nom">
                        <input style="margin-bottom: 15px;" id="login_password" class="form-control" type="text"
                               placeholder="Entrez votre prénom." required name="prenom">
                        <input style="margin-bottom: 15px;" id="login_password" class="form-control" type="date"
                               placeholder="Entrez votre date de naissance." required name="naissance">
                        <input style="margin-bottom: 15px;" id="login_password" class="form-control" type="email"
                               placeholder="Entrez votre adresse email." required name="mail">
                        <input style="margin-bottom: 15px;" id="login_password" class="form-control" type="text"
                               placeholder="Choisissez un pseudo." required name="pseudo">
                        <input style="margin-bottom: 15px;" id="login_password" class="form-control" type="password"
                               placeholder="Choisissez un mot de passe." required name="pass">
                        <input style="margin-bottom: 15px;" id="login_password" class="form-control" type="text"
                               placeholder="Entrez votre langue" required name="nation">
                    </div>
                    <div class="modal-footer">
                        <div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">S'inscrire</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-md-6">
                <form id="login-form" action="connexion.php" method="post">
                    <div class="modal-body">
                        <div id="div-login-msg">
                            <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"
                                 style="margin-bottom: 15px;"></div>
                            <span id="text-login-msg" style="color: white">Se connecter à Steamy.</span>
                        </div>
                        <input style="margin-bottom: 15px;" id="login_username" class="form-control" type="text"
                               placeholder="Entrez votre identifiant." required name="pseudo">
                        <input id="login_password" class="form-control" type="password"
                               placeholder="Entrez votre mot de passe." required name="pass">

                    </div>
                    <div class="modal-footer">
                        <div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Connexion</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

