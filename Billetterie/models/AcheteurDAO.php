<?php

require_once(PATH_MODELS_P.'DAO.php');
require_once(PATH_ENTITY_B.'Acheteur.php');

class AcheteurDAO extends DAO{

    private $_acheteur = null;
    private static $_nombreDeLigne=0;

    public static function acheteurFromEmail(String $email){
        $_acheteur = null;
        $acheteurDao = new AcheteurDAO(false);
        $sql = "select * from acheteur where emailacheteur =$email";

        try{
            $result = $acheteurDao::queryAll($sql);
        }
        catch(Exception $e){
            //$alert = 'query';
            //require_once(PATH_VIEWS.'alert.php');
        }
        if(!empty($result)){
            $nomacheteur = $result[0]['nomacheteur'];
            $prenomacheteur = $result[0]['prenomacheteur'];
            $nbachetes = $result[0]['nbachetes'];
            $id = $result[0]['idacheteur'];

            $_acheteur = new Acheteur($id, $nomacheteur, $prenomacheteur, $email, $nbachetes);

            return $_acheteur;
        }
        return $_acheteur;
    }


    public static function insertAcheteur($nomacheteur, $prenomacheteur, $email, $nbachetes){
        $acheteurDao = new AcheteurDAO(false);
        
        $sql = "insert into acheteur (nomacheteur, prenomacheteur, emailacheteur, nbachetes) values($nomacheteur, $prenomacheteur, $email, $nbachetes)";
        
        try{
            $result = $acheteurDao::queryAll ($sql);
        }
        catch(Exception $e){
            echo("nope");
        }
       
    }

    public static function updateAcheteur($nbachetes, $id){
        $acheteurDao = new AcheteurDAO(false);

        $sql = "update acheteur set nbachetes = $nbachetes where idacheteur = $id";

        try{
            $result = $acheteurDao::queryAll ($sql);
        }
        catch(Exception $e){
            //erreur
        }
       
    }



}
?>