<?php
// Implémente le pattern Singleton
class Connexion 
{
  private $_bdd = null;
  private static $_instance = null;


  //appelée par new
  public function __construct ()
  {
    $port = 3307;
	$this->_bdd = new PDO('mysql:host='.BD_HOST.'; dbname='.BD_DBNAME.';port='.$port.';charset=utf8', BD_USER, BD_PWD,array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	$this->_bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  }

  //appelée par clone
  private function __clone()
  {
  }

  //appelée par unserialize
  private function __wakeup()
  {
  }

  public static function getInstance()
  {
    if(is_null(self::$_instance))
      self::$_instance = new Connexion();
    return self::$_instance;
  }

  public function getBdd()
  {
    return $this->_bdd;
  }

}
?>