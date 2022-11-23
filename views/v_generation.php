<?php
require_once(PATH_CONTROLLERS_P.'header.php');
?>

<?php
global $matchs_array;
?>

<section class="generation-containers" id="generation-container-button">
    <button id="button-generate">GÉNÉRER</button>
</section>

<section class="generation-containers" id="generation-container-results">

    <div class="table">
        <div class="table-header">
            <div class="header__item"></div>
            <div class="header__item">16e De Finale 1</div>
            <div class="header__item">16e De Finale 2</div>
            <div class="header__item">16e De Finale 3</div>
            <div class="header__item">16e De Finale 4</div>
            <div class="header__item">16e De Finale 5</div>
            <div class="header__item">16e De Finale 6</div>
            <div class="header__item">16e De Finale 7</div>
            <div class="header__item">16e De Finale 8</div>
        </div>
        <div class="table-content">
            <div class="table-row" id="table-player-names1">
                <div class="table-data">Joueurs</div>
                <div class="table-data"><?=$matchs_array[0]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[0]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[0]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[0]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[1]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[1]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[1]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[1]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[2]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[2]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[2]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[2]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[3]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[3]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[3]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[3]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[4]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[4]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[4]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[4]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[5]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[5]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[5]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[5]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[6]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[6]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[6]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[6]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[7]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[7]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[7]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[7]["Joueur2"]["NOMJOUEUR"]?></span></div>
            </div>
            <div class="table-row" id="table-referee-names1">
                <div class="table-data">Arbitres</div>
                <div class="table-data"><?=$matchs_array[0]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[0]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[1]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[1]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[2]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[2]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[3]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[3]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[4]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[4]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[5]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[5]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[6]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[6]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[7]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[7]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
            </div>
            <div class="table-row" id="table-referees-secondary-names1">
                <div class="table-data">Arbitres secondaires</div>
                <div class="table-data"><?=$matchs_array[0]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[0]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[0]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[0]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[1]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[1]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[1]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[1]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[2]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[2]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[2]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[2]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[3]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[3]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[3]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[3]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[4]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[4]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[4]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[4]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[5]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[5]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[5]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[5]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[6]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[6]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[6]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[6]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[7]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[7]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[7]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[7]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
            </div>
            <div class="table-row" id="table-grabers-names1">
                <div class="table-data">Ramasseurs</div>
                <div class="table-data"><?=$matchs_array[0]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[0]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[0]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[0]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[1]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[1]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[1]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[1]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[2]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[2]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[2]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[2]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[3]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[3]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[3]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[3]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[4]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[4]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[4]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[4]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[5]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[5]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[5]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[5]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[6]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[6]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[6]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[6]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[7]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[7]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[7]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[7]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
            </div>
        </div>
    </div>

    <div class="table">
        <div class="table-header">
            <div class="header__item"></div>
            <div class="header__item">16e De Finale 9</div>
            <div class="header__item">16e De Finale 10</div>
            <div class="header__item">16e De Finale 11</div>
            <div class="header__item">16e De Finale 12</div>
            <div class="header__item">16e De Finale 13</div>
            <div class="header__item">16e De Finale 14</div>
            <div class="header__item">16e De Finale 15</div>
            <div class="header__item">16e De Finale 16</div>
        </div>
        <div class="table-content">
            <div class="table-row" id="table-player-names2">
                <div class="table-data">Joueurs</div>
                <div class="table-data"><?=$matchs_array[8]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[8]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[8]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[8]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[9]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[9]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[9]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[9]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[10]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[10]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[10]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[10]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[11]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[11]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[11]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[11]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[12]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[12]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[12]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[12]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[13]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[13]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[13]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[13]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[14]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[14]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[14]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[14]["Joueur2"]["NOMJOUEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[15]["Joueur1"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[15]["Joueur1"]["NOMJOUEUR"]?></span> vs <?=$matchs_array[15]["Joueur2"]["PRENOMJOUEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[15]["Joueur2"]["NOMJOUEUR"]?></span></div>
            </div>
            <div class="table-row" id="table-referee-names2">
                <div class="table-data">Arbitres</div>
                <div class="table-data"><?=$matchs_array[8]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[8]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[9]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[9]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[10]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[10]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[11]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[11]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[12]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[12]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[13]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[13]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[14]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[14]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[15]["ArbitrePrincipal"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[15]["ArbitrePrincipal"]["NOMARBITRE"]?></span></div>
            </div>
            <div class="table-row" id="table-referees-secondary-names2">
                <div class="table-data">Arbitres secondaires</div>
                <div class="table-data"><?=$matchs_array[0]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[0]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[8]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[8]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[1]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[1]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[9]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[9]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[2]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[2]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[10]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[10]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[3]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[3]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[11]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[11]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[4]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[4]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[12]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[12]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[5]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[5]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[13]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[13]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[6]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[6]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[14]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[14]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
                <div class="table-data"><?=$matchs_array[7]["ArbitreSecondaire1"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[7]["ArbitreSecondaire1"]["NOMARBITRE"]?></span> et <?=$matchs_array[15]["ArbitreSecondaire2"]["PRENOMARBITRE"]?> <span style="text-transform:uppercase"><?=$matchs_array[15]["ArbitreSecondaire2"]["NOMARBITRE"]?></span></div>
            </div>
            <div class="table-row" id="table-grabbers-names2">
                <div class="table-data">Ramasseurs</div>
                <div class="table-data"><?=$matchs_array[8]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[8]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[8]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[8]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[9]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[9]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[9]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[9]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[10]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[10]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[10]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[10]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[11]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[11]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[11]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[11]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[12]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[12]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[12]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[12]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[13]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[13]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[13]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[13]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[14]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[14]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[14]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[14]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
                <div class="table-data"><?=$matchs_array[15]["Ramasseur1"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[15]["Ramasseur1"]["NOMRAMASSEUR"]?></span> et <?=$matchs_array[15]["Ramasseur2"]["PRENOMRAMASSEUR"]?> <span style="text-transform:uppercase"><?=$matchs_array[15]["Ramasseur2"]["NOMRAMASSEUR"]?></span></div>
            </div>
        </div>
    </div>

</section>


<?php
require_once(PATH_VIEWS.'footer.php');
?>