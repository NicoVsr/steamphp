<?php
if(empty($_GET['search'])){

}else{
    function recherche_tous_jeux(){
        $bdd=new PDO("mysql:host=localhost;dbname=store",'root','root');
        $bdd->query("SET NAMES 'utf8'");
        $result = $bdd->query("SELECT `id`,`name`,`cover_url` 
                            FROM Jeux  WHERE `name`
 LIKE '%".$_GET['search']."%'");
        $recherche_jeux = $result->fetchAll();
        return $recherche_jeux;
    }

}
?>


<?php foreach ($recherche_jeux as $key => $une):

$id = $une['id'];

?>

<div class="manif">
    <h4>. <?php echo "<a href=\"../controler/c_magasin.php?id=".$une['id']."\">".$une['name']."</a>"  ?></h4>




    <br>
    <div id="photo_search">

        <img src="http:<?php echo $une['cover_url']?>">
    </div>

    <?php endforeach ?>

    <hr>