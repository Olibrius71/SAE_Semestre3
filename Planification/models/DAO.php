<?php
require_once(PATH_MODELS_P.'Connexion.php');
abstract class DAO 
{

  private static $_erreur; //stocke les messages d'erreurs associées au PDOException
  private static $_debug;
  
  public function __construct($debug)
  {
    self::$_debug = $debug;
  }

  public function getErreur()
  {
   return self::$_erreur;
  }

  private static function _requete($sql, $args)  
  {
    if ($args == null) 
    {
	$pdos = Connexion::getInstance()->getBdd()->query($sql);// exécution directe
    }
    else 
    {
	$pdos = Connexion::getInstance()->getBdd()->prepare($sql);// requête préparée
	$pdos->execute($args);
    }
    return $pdos;
  }
 
  public static function queryRow($sql, $args = null){
	  try{
      $pdos = self::_requete($sql, $args);
      $res = $pdos->fetch();
      $pdos->closeCursor();
      }catch(PDOException $e){ 
        if(self::_debug){
          die($e->getMessage());
        }
        $this->_erreur = 'query';
        $res = false;
      } 
        return $res;
  }
  
  //retourne un tableau 2D avec éventuellement plusieurs enregistrements
  public static function queryAll($sql, $args = null)
  {
 	try
	{
		$pdos = DAO::_requete($sql, $args);
		$res = $pdos->fetchAll();
        $pdos->closeCursor();
        
	}
	catch(PDOException $e)
	{ 
	  if(self::$_debug)
      die($e->getMessage());
    self::$_erreur = 'query';
	  $res = false;
	}
    return $res;
  }
}
?>