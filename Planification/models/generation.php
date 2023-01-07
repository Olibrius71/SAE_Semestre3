<?php


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



$joueurs_req = $baseDonnees->prepare("SELECT * FROM joueurs WHERE atp >= ?;");
$joueurs_req->execute([$quartil3]);

$joueurs_array = $joueurs_req->fetchAll();


$indices_joueurs_selectionnes = array_rand($joueurs_array,32);

$joueurs_selectionnes = array();

foreach ($indices_joueurs_selectionnes as $indice) {
    $joueurs_selectionnes[] = $joueurs_array[$indice];
}
shuffle($joueurs_selectionnes);




$arbitres_array = $baseDonnees->query("SELECT * FROM arbitres;")->fetchAll();
$ramasseurs_array = $baseDonnees->query("SELECT * FROM equiperamasseurs")->fetchAll();




$courts_array = $baseDonnees->query("SELECT * FROM courts;")->fetchAll();
$courts_selectionnes = array();

$indices_courts_selectionnes = array_rand($courts_array,16);
foreach ($indices_courts_selectionnes as $indice) {
    $courts_selectionnes[] = $courts_array[$indice];
}


shuffle($arbitres_array);
$id_arbitres_selectionnes = array();

function fillMatchArray($nb_matchs,$need_to_fill_joueurs): array
{
    $matchs_array = array();
    global $joueurs_selectionnes;
    global $arbitres_array;
    global $id_arbitres_selectionnes;
    global $ramasseurs_array;
    shuffle($ramasseurs_array);
    global $courts_selectionnes;
    shuffle($courts_selectionnes);

    for ($match = 0; $match < $nb_matchs; $match++) {
        if ($need_to_fill_joueurs) {
            $joueur1 = $joueurs_selectionnes[2 * $match];
            $joueur2 = $joueurs_selectionnes[2 * $match + 1];
        }
        $team_ramasseur1 = $ramasseurs_array[2 * $match];
        $team_ramasseur2 = $ramasseurs_array[2 * $match + 1];
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
            $matchs_array[] = ["Joueur1" => $joueur1, "Joueur2" => $joueur2, "ArbitrePrincipal" => $arbitre_principal, "ArbitreSecondaire1" => $arbitre_secondaire1, "ArbitreSecondaire2" => $arbitre_secondaire2, "EquipeRamasseurs1" => $team_ramasseur1, "EquipeRamasseurs2" => $team_ramasseur2, "Court" => $court];
        }
        else {
            $matchs_array[] = ["ArbitrePrincipal" => $arbitre_principal, "ArbitreSecondaire1" => $arbitre_secondaire1, "ArbitreSecondaire2" => $arbitre_secondaire2, "EquipeRamasseurs1" => $team_ramasseur1, "EquipeRamasseurs2" => $team_ramasseur2, "Court" => $court];
        }
    }
    return $matchs_array;
}

if (!isset($_GET["modify"])) {
    $matchs_seiziemes_array = fillMatchArray(16, true);
    $matchs_huitiemes_array = fillMatchArray(8, false);
    $matchs_quarts_array = fillMatchArray(4, false);
    $matchs_demis_array = fillMatchArray(2, false);
    $matchs_finale_array = fillMatchArray(1, false);
    $_SESSION["sauvegardeSeiziemes"] = $matchs_seiziemes_array;
    $_SESSION["sauvegardeHuitiemes"] = $matchs_huitiemes_array;
    $_SESSION["sauvegardeQuarts"] = $matchs_quarts_array;
    $_SESSION["sauvegardeDemis"] = $matchs_demis_array;
    $_SESSION["sauvegardeFinale"] = $matchs_finale_array;
}
else {
    $matchs_seiziemes_array = $_SESSION["sauvegardeSeiziemes"];
    $matchs_huitiemes_array = $_SESSION["sauvegardeHuitiemes"];
    $matchs_quarts_array = $_SESSION["sauvegardeQuarts"];
    $matchs_demis_array = $_SESSION["sauvegardeDemis"];
    $matchs_finale_array = $_SESSION["sauvegardeFinale"];
    if (isset($_GET["oldPlayer"]) ) {
        modifyPlayer($_GET["oldPlayer"],$_GET["newPlayer"]);
    }
    else {
        modifyCourt($_GET["oldCourt"],$_GET["newCourt"]);
    }
    echo '<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script><script type="text/JavaScript">$(document).ready(function () {scroll(0,2800);$("#modify-confirm").css("visibility","visible").fadeOut(10).fadeIn(600).fadeOut(2800)}); </script>';
}

function modifyPlayer($oldPlayerString,$newPlayer) {
    global $matchs_seiziemes_array;
    global $joueurs_array;
    $oldPlayer = explode(",",substr($oldPlayerString,1,strlen($oldPlayerString)-2));
    if ($oldPlayer[1]==1) {
        $matchs_seiziemes_array[$oldPlayer[0]-1]["Joueur1"] = $joueurs_array[intval($newPlayer)];
    }
    if ($oldPlayer[1]==2) {
        $matchs_seiziemes_array[$oldPlayer[0]-1]["Joueur2"] = $joueurs_array[intval($newPlayer)];
    }
}

function modifyCourt($oldCourt,$newCourt) {
    global $matchs_seiziemes_array;
    global $matchs_huitiemes_array;
    global $matchs_quarts_array;
    global $matchs_demis_array;
    global $matchs_finale_array;
    global $courts_array;

    foreach ($matchs_seiziemes_array as $nbMatch => $match) {
        if ($match["Court"]["IDCOURT"]==$oldCourt) $matchs_seiziemes_array[$nbMatch]["Court"] = $courts_array[$newCourt-1];
    }
    foreach ($matchs_huitiemes_array as $nbMatch => $match) {
        if ($match["Court"]["IDCOURT"]==$oldCourt) $matchs_huitiemes_array[$nbMatch]["Court"] = $courts_array[$newCourt-1];
    }
    foreach ($matchs_quarts_array as $nbMatch => $match) {
        if ($match["Court"]["IDCOURT"]==$oldCourt) $matchs_quarts_array[$nbMatch]["Court"] = $courts_array[$newCourt-1];
    }
    foreach ($matchs_demis_array as $nbMatch => $match) {
        if ($match["Court"]["IDCOURT"]==$oldCourt) $matchs_demis_array[$nbMatch]["Court"] = $courts_array[$newCourt-1];
    }
    if ($matchs_finale_array[0]["Court"]["IDCOURT"]==$oldCourt) $matchs_finale_array[0]["Court"] = $courts_array[$newCourt-1];
}


?>
