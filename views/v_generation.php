<?php
require_once(PATH_CONTROLLERS_P.'header.php');
?>


<section class="generation-containers" id="generation-container-information">
    <h2 id="generation-information">Génération aléatoire de la plannification des matchs</h2>
    <div id="generation-description">   Voici la génération aléatoire, si vous souhaitez en avoir une toute nouvelle et tout regénérer, il vous suffit de rafraîchir la page. Sinon, si vous souhaitez seulement modifier un ou plusieurs joueurs ou courts, vous pouvez utiliser les boutons prévus à cet effet en bas de la page.</div>
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
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,0,"Joueur1"). " vs " .showData($matchs_seiziemes_array,0,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,1,"Joueur1"). " vs " .showData($matchs_seiziemes_array,1,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,2,"Joueur1"). " vs " .showData($matchs_seiziemes_array,2,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,3,"Joueur1"). " vs " .showData($matchs_seiziemes_array,3,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,4,"Joueur1"). " vs " .showData($matchs_seiziemes_array,4,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,5,"Joueur1"). " vs " .showData($matchs_seiziemes_array,5,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,6,"Joueur1"). " vs " .showData($matchs_seiziemes_array,6,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,7,"Joueur1"). " vs " .showData($matchs_seiziemes_array,7,"Joueur2"); ?></div>
            </div>
            <div class="table-row" id="table-referee-names1">
                <div class="table-data">Arbitres</div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,0,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,1,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,2,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,3,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,4,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,5,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,6,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,7,"ArbitrePrincipal")?></div>
            </div>
            <div class="table-row" id="table-referees-secondary-names1">
                <div class="table-data">Arbitres secondaires</div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,0,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,0,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,1,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,1,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,2,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,2,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,3,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,3,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,4,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,4,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,5,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,5,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,6,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,6,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,7,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,7,"ArbitreSecondaire2"); ?></div>
            </div>
            <div class="table-row" id="table-grabers-names1">
                <div class="table-data">Ramasseurs</div>
                <div class="table-data"><?=$matchs_seiziemes_array[0]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[0]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_seiziemes_array[1]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[1]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_seiziemes_array[2]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[2]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_seiziemes_array[3]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[3]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_seiziemes_array[4]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[4]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_seiziemes_array[5]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[5]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_seiziemes_array[6]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[6]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_seiziemes_array[7]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[7]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
            </div>
            <div class="table-row" id="table-courts-names1">
                <div class="table-data">Courts</div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[0]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[1]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[2]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[3]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[4]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[5]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[6]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[7]["Court"]["IDCOURT"]?></div>
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
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,8,"Joueur1"). " vs " .showData($matchs_seiziemes_array,8,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,9,"Joueur1"). " vs " .showData($matchs_seiziemes_array,9,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,10,"Joueur1"). " vs " .showData($matchs_seiziemes_array,10,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,11,"Joueur1"). " vs " .showData($matchs_seiziemes_array,11,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,12,"Joueur1"). " vs " .showData($matchs_seiziemes_array,12,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,13,"Joueur1"). " vs " .showData($matchs_seiziemes_array,13,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,14,"Joueur1"). " vs " .showData($matchs_seiziemes_array,14,"Joueur2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,15,"Joueur1"). " vs " .showData($matchs_seiziemes_array,15,"Joueur2"); ?></div>
            </div>
            <div class="table-row" id="table-referee-names2">
                <div class="table-data">Arbitres</div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,8,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,9,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,10,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,11,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,12,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,13,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,14,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,15,"ArbitrePrincipal")?></div>
            </div>
            <div class="table-row" id="table-referees-secondary-names2">
                <div class="table-data">Arbitres secondaires</div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,8,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,8,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,9,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,9,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,10,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,10,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,11,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,11,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,12,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,12,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,13,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,13,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,14,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,14,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_seiziemes_array,15,"ArbitreSecondaire1"). " et " .showData($matchs_seiziemes_array,15,"ArbitreSecondaire2"); ?></div>
            </div>
            <div class="table-row" id="table-grabbers-names2">
                <div class="table-data">Ramasseurs</div>
                <div class="table-data"><?=$matchs_seiziemes_array[8]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[8]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></span></div>
                <div class="table-data"><?=$matchs_seiziemes_array[9]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[9]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></span></div>
                <div class="table-data"><?=$matchs_seiziemes_array[10]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[10]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></span></div>
                <div class="table-data"><?=$matchs_seiziemes_array[11]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[11]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></span></div>
                <div class="table-data"><?=$matchs_seiziemes_array[12]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[12]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></span></div>
                <div class="table-data"><?=$matchs_seiziemes_array[13]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[13]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></span></div>
                <div class="table-data"><?=$matchs_seiziemes_array[14]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[14]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></span></div>
                <div class="table-data"><?=$matchs_seiziemes_array[15]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_seiziemes_array[15]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></span></div>
            </div>
            <div class="table-row" id="table-courts-names2">
                <div class="table-data">Courts</div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[8]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[9]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[10]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[11]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[12]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[13]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[14]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_seiziemes_array[15]["Court"]["IDCOURT"]?></div>
            </div>
        </div>
    </div>


    <div class="table">
        <div class="table-header">
            <div class="header__item"></div>
            <div class="header__item">8e De Finale 1</div>
            <div class="header__item">8e De Finale 2</div>
            <div class="header__item">8e De Finale 3</div>
            <div class="header__item">8e De Finale 4</div>
            <div class="header__item">8e De Finale 5</div>
            <div class="header__item">8e De Finale 6</div>
            <div class="header__item">8e De Finale 7</div>
            <div class="header__item">8e De Finale 8</div>
        </div>
        <div class="table-content">
            <div class="table-row" id="table-player-names3">
                <div class="table-data">Joueurs</div>
                <div class="table-data">Gagnants 16e de finales 1 et 2</div>
                <div class="table-data">Gagnants 16e de finales 3 et 4</div>
                <div class="table-data">Gagnants 16e de finales 5 et 6</div>
                <div class="table-data">Gagnants 16e de finales 7 et 8</div>
                <div class="table-data">Gagnants 16e de finales 9 et 10</div>
                <div class="table-data">Gagnants 16e de finales 11 et 12</div>
                <div class="table-data">Gagnants 16e de finales 13 et 14</div>
                <div class="table-data">Gagnants 16e de finales 15 et 16</div>
            </div>
            <div class="table-row" id="table-referee-names3">
                <div class="table-data">Arbitres</div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,0,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,1,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,2,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,3,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,4,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,5,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,6,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,7,"ArbitrePrincipal")?></div>
            </div>
            <div class="table-row" id="table-referees-secondary-names3">
                <div class="table-data">Arbitres secondaires</div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,0,"ArbitreSecondaire1"). " et " .showData($matchs_huitiemes_array,0,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,1,"ArbitreSecondaire1"). " et " .showData($matchs_huitiemes_array,1,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,2,"ArbitreSecondaire1"). " et " .showData($matchs_huitiemes_array,2,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,3,"ArbitreSecondaire1"). " et " .showData($matchs_huitiemes_array,3,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,4,"ArbitreSecondaire1"). " et " .showData($matchs_huitiemes_array,4,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,5,"ArbitreSecondaire1"). " et " .showData($matchs_huitiemes_array,5,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,6,"ArbitreSecondaire1"). " et " .showData($matchs_huitiemes_array,6,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_huitiemes_array,7,"ArbitreSecondaire1"). " et " .showData($matchs_huitiemes_array,7,"ArbitreSecondaire2"); ?></div>
            </div>
            <div class="table-row" id="table-grabers-names3">
                <div class="table-data">Ramasseurs</div>
                <div class="table-data"><?=$matchs_huitiemes_array[0]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_huitiemes_array[0]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_huitiemes_array[1]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_huitiemes_array[1]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_huitiemes_array[2]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_huitiemes_array[2]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_huitiemes_array[3]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_huitiemes_array[3]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_huitiemes_array[4]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_huitiemes_array[4]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_huitiemes_array[5]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_huitiemes_array[5]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_huitiemes_array[6]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_huitiemes_array[6]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_huitiemes_array[7]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_huitiemes_array[7]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
            </div>
            <div class="table-row" id="table-courts-names3">
                <div class="table-data">Courts</div>
                <div class="table-data">Court <?=$matchs_huitiemes_array[0]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_huitiemes_array[1]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_huitiemes_array[2]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_huitiemes_array[3]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_huitiemes_array[4]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_huitiemes_array[5]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_huitiemes_array[6]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_huitiemes_array[7]["Court"]["IDCOURT"]?></div>
            </div>
        </div>
    </div>


    <div class="table">
        <div class="table-header">
            <div class="header__item"></div>
            <div class="header__item">4rt De Finale 1</div>
            <div class="header__item">4rt De Finale 2</div>
            <div class="header__item">4rt De Finale 3</div>
            <div class="header__item">4rt De Finale 4</div>
        </div>
        <div class="table-content">
            <div class="table-row" id="table-player-names4">
                <div class="table-data">Joueurs</div>
                <div class="table-data">Gagnants 8e de finales 1 et 2</div>
                <div class="table-data">Gagnants 8e de finales 3 et 4</div>
                <div class="table-data">Gagnants 8e de finales 5 et 6</div>
                <div class="table-data">Gagnants 8e de finales 7 et 8</div>
            </div>
            <div class="table-row" id="table-referee-names4">
                <div class="table-data">Arbitres</div>
                <div class="table-data"><?php echo showData($matchs_quarts_array,0,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_quarts_array,0,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_quarts_array,0,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_quarts_array,0,"ArbitrePrincipal")?></div>
            </div>
            <div class="table-row" id="table-referees-secondary-names4">
                <div class="table-data">Arbitres secondaires</div>
                <div class="table-data"><?php echo showData($matchs_quarts_array,0,"ArbitreSecondaire1"). " et " .showData($matchs_quarts_array,0,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_quarts_array,1,"ArbitreSecondaire1"). " et " .showData($matchs_quarts_array,1,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_quarts_array,2,"ArbitreSecondaire1"). " et " .showData($matchs_quarts_array,2,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_quarts_array,3,"ArbitreSecondaire1"). " et " .showData($matchs_quarts_array,3,"ArbitreSecondaire2"); ?></div>
            </div>
            <div class="table-row" id="table-grabers-names4">
                <div class="table-data">Ramasseurs</div>
                <div class="table-data"><?=$matchs_quarts_array[0]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_quarts_array[0]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_quarts_array[1]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_quarts_array[1]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_quarts_array[2]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_quarts_array[2]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_quarts_array[3]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_quarts_array[3]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
            </div>
            <div class="table-row" id="table-courts-names4">
                <div class="table-data">Courts</div>
                <div class="table-data">Court <?=$matchs_quarts_array[0]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_quarts_array[1]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_quarts_array[2]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_quarts_array[3]["Court"]["IDCOURT"]?></div>
            </div>
        </div>
    </div>


    <div class="table" id="table-demis">
        <div class="table-header">
            <div class="header__item"></div>
            <div class="header__item">Demi-finale 1</div>
            <div class="header__item">Demi-finale 2</div>
        </div>
        <div class="table-content">
            <div class="table-row" id="table-player-names5">
                <div class="table-data">Joueurs</div>
                <div class="table-data">Gagnants 4rt de finales 1 et 2</div>
                <div class="table-data">Gagnants 4rt de finales 3 et 4</div>
            </div>
            <div class="table-row" id="table-referee-names5">
                <div class="table-data">Arbitres</div>
                <div class="table-data"><?php echo showData($matchs_demis_array,0,"ArbitrePrincipal")?></div>
                <div class="table-data"><?php echo showData($matchs_demis_array,1,"ArbitrePrincipal")?></div>
            </div>
            <div class="table-row" id="table-referees-secondary-names5">
                <div class="table-data">Arbitres secondaires</div>
                <div class="table-data"><?php echo showData($matchs_demis_array,0,"ArbitreSecondaire1"). " et " .showData($matchs_demis_array,0,"ArbitreSecondaire2"); ?></div>
                <div class="table-data"><?php echo showData($matchs_demis_array,1,"ArbitreSecondaire1"). " et " .showData($matchs_demis_array,1,"ArbitreSecondaire2"); ?></div>
            </div>
            <div class="table-row" id="table-grabers-names5">
                <div class="table-data">Ramasseurs</div>
                <div class="table-data"><?=$matchs_demis_array[0]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_demis_array[0]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
                <div class="table-data"><?=$matchs_demis_array[1]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_demis_array[1]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
            </div>
            <div class="table-row" id="table-courts-names5">
                <div class="table-data">Courts</div>
                <div class="table-data">Court <?=$matchs_demis_array[0]["Court"]["IDCOURT"]?></div>
                <div class="table-data">Court <?=$matchs_demis_array[1]["Court"]["IDCOURT"]?></div>
            </div>
        </div>
    </div>


    <div class="table" id="table-finale">
        <div class="table-header">
            <div class="header__item"></div>
            <div class="header__item">Finale</div>
        </div>
        <div class="table-content">
            <div class="table-row" id="table-player-names6">
                <div class="table-data">Joueurs</div>
                <div class="table-data">Gagnants Demi-finales</div>
            </div>
            <div class="table-row" id="table-referee-names6">
                <div class="table-data">Arbitres</div>
                <div class="table-data"><?php echo showData($matchs_finale_array,0,"ArbitrePrincipal")?></div>
            </div>
            <div class="table-row" id="table-referees-secondary-names6">
                <div class="table-data">Arbitres secondaires</div>
                <div class="table-data"><?php echo showData($matchs_finale_array,0,"ArbitreSecondaire1"). " et " .showData($matchs_finale_array,0,"ArbitreSecondaire2"); ?></div>
            </div>
            <div class="table-row" id="table-grabers-names6">
                <div class="table-data">Ramasseurs</div>
                <div class="table-data"><?=$matchs_finale_array[0]["EquipeRamasseurs1"]["NOMEQUIPERAMASSEURS"]?> et <?=$matchs_finale_array[0]["EquipeRamasseurs2"]["NOMEQUIPERAMASSEURS"]?></div>
            </div>
            <div class="table-row" id="table-courts-names6">
                <div class="table-data">Courts</div>
                <div class="table-data">Court <?=$matchs_finale_array[0]["Court"]["IDCOURT"]?></div>
            </div>
        </div>
    </div>

    <section id="modify-container">
        <button id="modify-player">MODIFIER JOUEUR</button>
        <button id="modify-court">MODIFIER COURT</button>
        <select id="old-player-select">
            <option>--JOUEUR A CHANGER--</option>
            <option value=[1,1]><?=$matchs_seiziemes_array[0]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[0]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[1,2]><?=$matchs_seiziemes_array[0]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[0]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[2,1]><?=$matchs_seiziemes_array[1]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[1]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[2,2]><?=$matchs_seiziemes_array[1]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[1]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[3,1]><?=$matchs_seiziemes_array[2]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[2]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[3,2]><?=$matchs_seiziemes_array[2]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[2]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[4,1]><?=$matchs_seiziemes_array[3]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[3]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[4,2]><?=$matchs_seiziemes_array[3]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[3]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[5,1]><?=$matchs_seiziemes_array[4]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[4]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[5,2]><?=$matchs_seiziemes_array[4]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[4]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[6,1]><?=$matchs_seiziemes_array[5]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[5]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[6,2]><?=$matchs_seiziemes_array[5]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[5]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[7,1]><?=$matchs_seiziemes_array[6]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[6]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[7,2]><?=$matchs_seiziemes_array[6]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[6]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[8,1]><?=$matchs_seiziemes_array[7]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[7]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[8,2]><?=$matchs_seiziemes_array[7]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[7]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[9,1]><?=$matchs_seiziemes_array[8]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[8]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[9,2]><?=$matchs_seiziemes_array[8]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[8]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[10,1]><?=$matchs_seiziemes_array[9]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[9]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[10,2]><?=$matchs_seiziemes_array[9]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[9]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[11,1]><?=$matchs_seiziemes_array[10]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[10]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[11,2]><?=$matchs_seiziemes_array[10]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[10]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[12,1]><?=$matchs_seiziemes_array[11]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[11]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[12,2]><?=$matchs_seiziemes_array[11]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[11]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[13,1]><?=$matchs_seiziemes_array[12]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[12]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[13,2]><?=$matchs_seiziemes_array[12]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[12]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[14,1]><?=$matchs_seiziemes_array[13]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[13]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[14,2]><?=$matchs_seiziemes_array[13]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[13]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[15,1]><?=$matchs_seiziemes_array[14]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[14]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[15,2]><?=$matchs_seiziemes_array[14]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[14]["Joueur2"]["NOMJOUEUR"]?></option>
            <option value=[16,1]><?=$matchs_seiziemes_array[15]["Joueur1"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[15]["Joueur1"]["NOMJOUEUR"]?></option>
            <option value=[16,2]><?=$matchs_seiziemes_array[15]["Joueur2"]["PRENOMJOUEUR"]?> <?=$matchs_seiziemes_array[15]["Joueur2"]["NOMJOUEUR"]?></option>
        </select>
        <select id="old-court-select">
            <option>--COURT A CHANGER--</option>
            <?php foreach ($courts_selectionnes as $court){?>
                <option value="<?=$court["IDCOURT"]?>">Court <?=$court["IDCOURT"]?></option>
            <?php }?>
        </select>
        <select id="new-player-select">
            <option value=<?=$matchs_seiziemes_array?>>--NOUVEAU JOUEUR--</option>
            <?php $indice=0; foreach ($joueurs_array as $joueur){?>
                <option value="<?=$indice?>"><?=$joueur["PRENOMJOUEUR"]?> <?=$joueur["NOMJOUEUR"]?></option>
            <?php $indice++; }?>
        </select>
        <select id="new-court-select">
            <option>--NOUVEAU COURT--</option>
            <?php foreach ($courts_array as $court){
                if (!in_array($court,$courts_selectionnes)) {  ?>
                    <option value="<?=$court["IDCOURT"]?>">Court <?=$court["IDCOURT"]?></option>
            <?php }   } ?>
        </select>
    </section>
    <div id="modify-confirm">MODIFICATION ENREGISTREE</div>


</section>


<?php
require_once(PATH_VIEWS.'footer.php');
?>