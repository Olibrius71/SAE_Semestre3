<?php

require_once(PATH_MODELS_B.'AcheteurDAO.php');
require_once(PATH_ENTITY_B.'Acheteur.php');
require_once(PATH_MODELS_P.'Connexion.php');


$acheteurDAO = new AcheteurDAO(false); 

if(!empty($_POST['choixdate']) && !empty($_POST['choixqte']) && !empty($_POST['nom']) && !empty($_POST['prenom']) && !empty($_POST['email'])){
    
    $match = $_POST['choixmatch'];
    $qte = $_POST['choixqte'];
    $place = $_POST['choixplace'];
      
    $email = htmlspecialchars($_POST['email']);
    $nom = htmlspecialchars($_POST['nom']);
    $prenom = htmlspecialchars($_POST['prenom']);

    
    if ($qte <= 3){
        
        $acheteur = $acheteurDAO -> acheteurFromEmail($email);
        echo($acheteur);
        if ($acheteur != null) {
            echo("hey");
            $nbBillets = $acheteur->getNbAchetes();
            if ($nbBillets<3 && ($nbBillets + $qte)<=3) {
                //okay
                $nbBillets= $nbBillets + $qte;
                $acheteurDAO -> updateAcheteur($nbBillets, $acheteur->getId());
                echo($acheteur->getNbAchetes());
                echo($acheteur->getId());
            }
            else{
                //erreur
                echo("nope vous pouvez pas acheter +de 3");
            }
        }
        else{
           
                $acheteurDAO -> insertAcheteur($nom, $prenom, $email, $qte);
                //echo("tout s'est bien passé !!!");
                
            
        }
        
    }
    else {
        //erreur
        echo("nope vous pouvez pas acheter +de 3");
    }

}else {
    //
}

require_once(PATH_VIEWS.'achat.php');

?>