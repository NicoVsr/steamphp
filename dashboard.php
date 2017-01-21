<?php

include '_header.php';
?>



<!-- Page Content -->
<div class="container">

	<!-- Portfolio Item Heading -->
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Profil
				<small>(<?php echo $_SESSION['pseudo'];?>)</small>
			</h1>
		</div>
	</div>
	<!-- /.row -->

	<!-- Portfolio Item Row -->
	<div class="row">

		<div class="col-md-4">
			<img class="img-responsive" src="http://placehold.it/200x200" alt="">
		</div>

		<div class="col-md-8">
			<h3>Description</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>
			<h3>Infos</h3>
			<ul style="list-style: none;display: inline;">
				<li><b>Nom :</b> <?php echo $_SESSION['nom'];?></li>
				<li><b>Prénom :</b>  <?php echo $_SESSION['prenom'];?></li>
				<li><b>E-mail :</b> <?php echo $_SESSION['mail'];?></li>
				<li><b>Date de Naissance :</b> <?php echo $_SESSION['naissance'];?></li>
			</ul>
		</div>

	</div>
	<!-- /.row -->

	<!-- Related Projects Row -->
	<div class="row">

		<div class="col-lg-12">
			<h3 class="page-header">Jeux Possédés</h3>
		</div>

		<div class="col-sm-2 col-xs-6 infosjeu">
			<a href="#">
				<img class="img-responsive portfolio-item" src="img/assassin_creed.jpg" alt="">
				<div class="nomdujeu">
					<h4>Assassin Creed</h4>
			</a>
			<a href="">
				Aventure
			</a>
		</div>
		</div>

		<div class="col-sm-2 col-xs-6 infosjeu">
			<a href="#">
				<img class="img-responsive portfolio-item" src="img/battlefield.jpg" alt="">
				<div class="nomdujeu">
					<h4>
						Battlefield
					</h4>
			</a>
			<a href="">
				Multijoueur
			</a>
				</div>

		</div>

		<div class="col-sm-2 col-xs-6 infosjeu">
			<a href="#">
				<img class="img-responsive portfolio-item" src="img/LOL.jpg" alt="">
				<div class="nomdujeu">
					<h4>
						Ligue of Legends
			</a>
					</h4>
			<a href="">MOBA
			</a>
				</div>
		</div>

		<div class="col-sm-2 col-xs-6 infosjeu">
			<a href="#">
				<img class="img-responsive portfolio-item" src="img/callof.jpg" alt="">
				<div class="nomdujeu">
					<h4>
						Call of Duty
					</h4>
			</a>
			<a href="">
				Action
			</a>
				</div>
		</div>

		<div class="col-sm-2 col-xs-6 infosjeu">
			<a href="#">
				<img class="img-responsive portfolio-item" src="img/fifa.jpg" alt="">
				<div class="nomdujeu">
					<h4>
						FIFA 17
					</h4>
			</a>
			<a href="">
				Multijoueur
			</a>
				</div>
		</div>

	</div>
	<!-- /.row -->

	<hr>

	<!-- Footer -->
	<footer>
	</footer>

</div>
<!-- /.container -->
<?php
include 'footer.php';
?>
