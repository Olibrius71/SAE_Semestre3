<?php

require_once('./config/configuration.php');
require_once(PATH_TEXTES.'lang.php');

session_name('session');
session_start();


if(isset($_GET['page']))
{

  $page = htmlspecialchars($_GET['page']); // http://.../index.php?page=toto
  if(is_file(PATH_CONTROLLERS_P.$_GET['page'].".php"))
  { 
    if($_GET['page']=='accueilAdmin'){
        $page = 'accueilAdmin';
    }
    elseif($_GET['page']=='generation'){
        $page = 'generation';
    }
    require_once(PATH_CONTROLLERS_P.$page.'.php');
  }
  elseif(is_file(PATH_CONTROLLERS_B.$_GET['page'].".php")){
    $page = 'achat';
    require_once(PATH_CONTROLLERS_B.$page.'.php');
  }

}
else{
  $page='accueil'; //page d'accueil du site - http://.../index.php
  require_once(PATH_CONTROLLERS_P.$page.'.php');
}
	

//appel du controller


?>

