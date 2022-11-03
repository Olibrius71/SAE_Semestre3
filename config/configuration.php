<?php
 
const DEBUG = true; // production : false; dev : true

// Accès base de données
const BD_HOST = 'localhost';
const BD_DBNAME = 'tournoiaged';
const BD_USER = 'root';
const BD_PWD = '';

// Langue du site
const LANG ='FR-fr';


// Paramètres du site : nom de l'auteur ou des auteurs
const USER_LOGIN = 'admin';
$mdpu = password_hash('p4ss4dm1n', PASSWORD_DEFAULT);


//dossiers racines du site
define('PATH_CONTROLLERS_B','./Billetterie/controllers/c_');
define('PATH_CONTROLLERS_P','./Planification/controllers/c_');

define('PATH_ENTITY_B','./Billetterie/entities/');
define('PATH_ENTITY_P','./Planification/entities/');

define('PATH_MODELS_B','./Billetterie/models/');
define('PATH_MODELS_P','./Planification/models/');

define('PATH_ASSETS','./assets/');
define('PATH_VIEWS','./views/v_');
define('PATH_TEXTES','./languages/');

//sous dossiers
define('PATH_CSS', PATH_ASSETS.'css/');
define('PATH_IMAGES', PATH_ASSETS.'images/');
define('PATH_SCRIPTS', PATH_ASSETS.'scripts/');

//fichiers
define('PATH_MENU', PATH_VIEWS.'menu.php');

?>