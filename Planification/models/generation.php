<?php

echo "adrien tacher";

require_once(PATH_MODELS_P.'Connexion.php');

$connexion= new Connexion();

$baseDonnees = $connexion->getBdd();

$joueurs = $baseDonnees->query("SELECT * FROM joueurs");
$arbitres = $baseDonnees->query("SELECT * FROM arbitres");


echo "<br>";echo "<br>";
while($row = $joueurs->fetch()) {
    foreach($row as $data) {
        echo $data . " ";
    }
    echo "<br>";
}

//$joueurs_array

//echo $joueurs_array;

function generateTables() {
    echo "Je mérite largement le parcours A";
}

/*
$html = new DOMDocument();
$html->loadHtml('<?xml encoding="utf-8" ?>');

function putData($id_match, $type_data, $data) {
    global $html;
    $elem_html = html->getElementById("table-");

    $txt = $html->saveHTML();
}

if (isset($_GET['remove'])) { return generateTables(); }
*/
?>