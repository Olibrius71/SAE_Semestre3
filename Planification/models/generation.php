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
shuffle($joueurs_selectionnes);

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


$courts_array = $baseDonnees->query("SELECT * FROM courts;")->fetchAll();
$courts_selectionnes = array();

$indices_courts_selectionnes = array_rand($courts_array,16);
foreach ($indices_courts_selectionnes as $indice) {
    $courts_selectionnes[] = $courts_array[$indice];
}
shuffle($courts_selectionnes);

shuffle($arbitres_array);
$id_arbitres_selectionnes = array();

function fillMatchArray($nb_matchs,$need_to_fill_joueurs)
{
    $matchs_array = array();
    global $joueurs_selectionnes;
    global $arbitres_array;
    global $id_arbitres_selectionnes;
    global $ramasseurs_selectionnes;
    global $courts_selectionnes;
    shuffle($courts_selectionnes);

    for ($match = 0; $match < $nb_matchs; $match++) {
        if ($need_to_fill_joueurs) {
            $joueur1 = $joueurs_selectionnes[2 * $match];
            $joueur2 = $joueurs_selectionnes[2 * $match + 1];
        }
        $ramasseur1 = $ramasseurs_selectionnes[2 * $match];
        $ramasseur2 = $ramasseurs_selectionnes[2 * $match + 1];
        $court = $courts_selectionnes[$match];
        $arbitre_principal = null;
        $arbitre_secondaire1 = null;
        $arbitre_secondaire2 = null;
        while ($arbitre_principal == null) {
            $essai_arbitre = $arbitres_array[array_rand($arbitres_array)];
            if (!in_array($essai_arbitre["ARBITREID"], $id_arbitres_selectionnes)) {
                if (!$need_to_fill_joueurs) {
                    $arbitre_principal = $essai_arbitre;
                    $id_arbitres_selectionnes[] = $arbitre_principal["ARBITREID"];
                }
                else if ($essai_arbitre["NATIONALITEARBITRE"] !== $joueur1["NATIONALITEJOUEUR"] && $essai_arbitre["NATIONALITEARBITRE"] !== $joueur2["NATIONALITEJOUEUR"]) {
                    $arbitre_principal = $essai_arbitre;
                    $id_arbitres_selectionnes[] = $arbitre_principal["ARBITREID"];
                }
            }
            else {
                if (!in_array($essai_arbitre["ARBITREID"], $id_arbitres_selectionnes)) {
                    $arbitre_principal = $essai_arbitre;
                    $id_arbitres_selectionnes[] = $arbitre_principal["ARBITREID"];
                }
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
        if ($need_to_fill_joueurs) {
            $matchs_array[] = ["Joueur1" => $joueur1, "Joueur2" => $joueur2, "ArbitrePrincipal" => $arbitre_principal, "ArbitreSecondaire1" => $arbitre_secondaire1, "ArbitreSecondaire2" => $arbitre_secondaire2, "Ramasseur1" => $ramasseur1, "Ramasseur2" => $ramasseur2, "Court" => $court];
        }
        else {
            $matchs_array[] = ["ArbitrePrincipal" => $arbitre_principal, "ArbitreSecondaire1" => $arbitre_secondaire1, "ArbitreSecondaire2" => $arbitre_secondaire2, "Ramasseur1" => $ramasseur1, "Ramasseur2" => $ramasseur2, "Court" => $court];
        }
    }
    return $matchs_array;
}

$matchs_seiziemes_array = fillMatchArray(16,true);
$matchs_huitiemes_array = fillMatchArray(8,false);
$matchs_quarts_array = fillMatchArray(4,false);
$matchs_demis_array = fillMatchArray(2,false);
$matchs_finale_array = fillMatchArray(1,false);

/*
function fillFutureMatchesArray($nb_matchs) {
    $match_array = array();
    global $arbitres_array;
    global $id_arbitres_selectionnes;
    global $ramasseurs_selectionnes;
    global $courts_selectionnes;

    for ($match = 0; $match < $nb_matchs; $match++) {
        $ramasseur1 = $ramasseurs_selectionnes[2 * $match];
        $ramasseur2 = $ramasseurs_selectionnes[2 * $match + 1];
        $court = $courts_selectionnes[$match];
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
        $match_array[] = ["ArbitrePrincipal" => $arbitre_principal, "ArbitreSecondaire1" => $arbitre_secondaire1, "ArbitreSecondaire2" => $arbitre_secondaire2, "Ramasseur1" => $ramasseur1, "Ramasseur2" => $ramasseur2, "Court" => $court];
    }
    return $match_array;
}
*/





function generateTables() {
    global $matchs_array;
}


?>