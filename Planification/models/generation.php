<?php

echo "adrien tacher";

require_once(PATH_MODELS_P.'Connexion.php');

$connexion= new Connexion();

$baseDonnees = $connexion->getBdd();




$joueurs_atp = $baseDonnees->query("SELECT atp FROM joueurs ORDER BY atp ASC;")->fetchAll();



function Quartile($Array, $Quartile) {
    $pos = (count($Array) + 1) * $Quartile;
    if ( fmod($pos, 1) == 0)
    {
        return $Array[$pos];
    }
    else
    {
        $fraction = $pos - floor($pos);
        $lower_num = $Array[floor($pos)-1];
        $upper_num = $Array[ceil($pos)-1];
        $lower_num = $lower_num[0];
        $upper_num = $upper_num[0];
        $difference = $upper_num - $lower_num;
        return $lower_num + ($difference * $fraction);
    }
}

$quartil3 = Quartile($joueurs_atp,0.75);

echo $quartil3;


$joueurs_req = $baseDonnees->prepare("SELECT * FROM joueurs WHERE atp >= ?;");
$joueurs_req->execute([$quartil3]);

$joueurs_array = $joueurs_req->fetchAll();


$indices_joueurs_selectionnes = array_rand($joueurs_array,32);

$joueurs_selectionnes = array();

foreach ($indices_joueurs_selectionnes as $indice) {
    $joueurs_selectionnes[] = $joueurs_array[$indice];
}

/*
foreach ($joueurs_selectionnes as $joueur_selectionne) {
    echo $joueur_selectionne["NOMJOUEUR"]. "  ".$joueur_selectionne["IDJOUEUR"]."  ".$joueur_selectionne["ATP"]."<br>";
}
*/


$arbitres_array = $baseDonnees->query("SELECT * FROM arbitres;")->fetchAll();
$ramasseurs_array = $baseDonnees->query("SELECT * FROM ramasseurs")->fetchAll();

$ramasseurs_selectionnes = array();

$indices_ramasseurs_selectionnes = array_rand($ramasseurs_array,32);
foreach ($indices_ramasseurs_selectionnes as $indice) {
    $ramasseurs_selectionnes[] = $ramasseurs_array[$indice];
}


$id_arbitres_selectionnes = array();

function fillMatchArray()
{
    $matchs_array = array();
    global $joueurs_selectionnes;
    global $arbitres_array;
    global $id_arbitres_selectionnes;
    global $ramasseurs_selectionnes;

    for ($match = 0; $match < 16; $match++) {
        $joueur1 = $joueurs_selectionnes[2 * $match];
        $joueur2 = $joueurs_selectionnes[2 * $match + 1];
        $ramasseur1 = $ramasseurs_selectionnes[2 * $match];
        $ramasseur2 = $ramasseurs_selectionnes[2 * $match + 1];
        $arbitre_principal = null;
        $arbitre_secondaire1 = null;
        $arbitre_secondaire2 = null;
        while ($arbitre_principal == null) {
            $essai_arbitre = $arbitres_array[array_rand($arbitres_array)];
            if ($essai_arbitre["NATIONALITEARBITRE"] !== $joueur1["NATIONALITEJOUEUR"] && $essai_arbitre["NATIONALITEARBITRE"] !== $joueur2["NATIONALITEJOUEUR"] && !in_array($essai_arbitre["ARBITREID"],$id_arbitres_selectionnes)) {
                $arbitre_principal = $essai_arbitre;
                $id_arbitres_selectionnes[] = $arbitre_principal["ARBITREID"];
            }
        }
        while ($arbitre_secondaire1 == null) {
            $essai_arbitre = $arbitres_array[array_rand($arbitres_array)];
            if (!in_array($essai_arbitre["ARBITREID"],$id_arbitres_selectionnes)) {
                $arbitre_secondaire1 = $essai_arbitre;
                $id_arbitres_selectionnes[] = $arbitre_secondaire1["ARBITREID"];
            }
        }
        while ($arbitre_secondaire2 == null) {
            $essai_arbitre = $arbitres_array[array_rand($arbitres_array)];
            if (!in_array($essai_arbitre["ARBITREID"],$id_arbitres_selectionnes)) {
                $arbitre_secondaire2 = $essai_arbitre;
                $id_arbitres_selectionnes[] = $arbitre_secondaire2["ARBITREID"];
            }
        }
        $matchs_array[] = ["Joueur1" => $joueur1, "Joueur2" => $joueur2, "ArbitrePrincipal" => $arbitre_principal, "ArbitreSecondaire1" => $arbitre_secondaire1, "ArbitreSecondaire2" => $arbitre_secondaire2, "Ramasseur1" => $ramasseur1, "Ramasseur2" => $ramasseur2];
    }
    return $matchs_array;
}

$matchs_array = fillMatchArray();


function generateTables() {
    global $matchs_array;


}


?>