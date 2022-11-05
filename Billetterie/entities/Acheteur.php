<?php


class Acheteur{
    
    private int $_id;
    private String $_nomacheteur;
    private String $_prenomacheteur ;
    private String $_email;
    private int $_nbachetes;

    public function __construct(int $_id, String $_nomacheteur, String $_prenomacheteur, String $_email, int $_nbachetes){
        $this->_id = $_id;
        $this->_nomacheteur = $_nomacheteur;
        $this->_prenomacheteur = $_prenomacheteur;
        $this->_email = $_email;
        $this->_nbachetes = $_nbachetes;
    }

    public function getId(){
        return $this->_id;
    }

    public function getNbAchetes(){
        return $this->_nbachetes;
    }

}

?>
