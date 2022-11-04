<?php require_once(PATH_CONTROLLERS_P.'header.php');?>

    <form class="connect" action="" method="post">
        <div class="login">
            <label for="login"> Identifiant : </label>
            <input type="text" name="login" id="login"><br>
        </div>
        <div class="mdp">
            <label for="password"> Mot de passe : </label>
            <input type="password" name="password"><br>
        </div>
        <input type="submit" value="Se connecter" class="button" id="submit">
        <input type="hidden" name="page" value="connexion" >    
    </form>

<?php require_once(PATH_VIEWS.'footer.php');?>