<?php
    $title=$TITLES["default"];
    if ($page!='' && array_key_exists($page, $TITLES)) {
        $title = $TITLES[$page];
    }
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="./<?=PATH_CSS?>stylemain.css" rel="stylesheet">
    <script src="./<?=PATH_SCRIPTS?>script.js"></script>
    <title><?=$title?></title>
</head>

<body>
    <!--header-->    
    <header>
        <?php require_once(PATH_VIEWS.'menu.php')?>
        <div class="bienvenue">
            <h1><?=$title?></h1>
        </div>

    </header>
