<?php 


if(isset($_POST['login']) && isset($_POST['password']) ){
    if($_POST['login'] == USER_LOGIN && password_verify($_POST['password'], $mdpu)){
        $_SESSION['logged'] = USER_LOGIN;
        $page="accueilAdmin";
        
        require_once(PATH_CONTROLLERS_P.$page.'.php');
    }
}
else{
    $_SESSION['logged']=array();
    require_once(PATH_VIEWS.'connexion.php'); 
}



?>