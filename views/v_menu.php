<nav>
    <?php
        $connexion="Connexion";
        if ($page!='connexion' && empty($_SESSION['logged'])){
            $connexion = "Connexion";
        }
        elseif ($_SESSION['logged']===USER_LOGIN){
            $connexion = "Déconnexion";
        }
        elseif($page==='connexion' && empty($_SESSION['logged'])){
            $connexion = "Retour";
        }
            
        
    ?>
    <div class="connection">

    <?php
        if ($connexion==='Retour'){
            ?>
            <a href="index.php?page=accueil"><?=$connexion?></a>
            </div>  
            <div class="menu">
                <ul>
                    <li>Accueil</li>
                    <li><a href="<?=PATH_VIEWS?>achat.php">Billetterie</a></li>
                    <li>Tournois</li>
                </ul>
            </div>
            <?php
        }
        elseif ($connexion==='Déconnexion'){
            $_SESSION['logged']=array();
            ?>
            <a href="index.php?page=accueil"><?=$connexion?></a>
            </div>
            <div class="menu">
                <ul>
                    <li>Accueil</li>
                    <li>Billets</li>
                    <li>Bénéficiaires</li>
                    <li>Plannings</li>
                </ul>
            </div>
            <?php
        }
        elseif($connexion==='Connexion'){
            ?>
            <a href="index.php?page=connexion"><?=$connexion?></a>
            </div>
            <div class="menu">
                <ul>
                    <li>Accueil</li>
                    <li><a href="index.php?page=generation">Génération Planification</li>
                    <li><a href="index.php?page=achat">Billetterie</a></li>
                    <li>Tournois</li>
                </ul>
            </div>
            <?php
        }
    ?>
</nav>

