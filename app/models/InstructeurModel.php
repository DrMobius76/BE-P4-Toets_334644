<?php

class InstructeurModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getInstructeurs()
    {
        $sql = "SELECT Id
                      ,Voornaam
                      ,Tussenvoegsel
                      ,Achternaam
                      ,Mobiel
                      ,DatumInDienst
                      ,AantalSterren
                FROM  Instructeur
                ORDER BY AantalSterren DESC";

        $this->db->query($sql);
        return $this->db->resultSet();
    }



    public function getToegewezenVoertuigen($Id)
    {
        $sql = "SELECT VOER.Type
                       ,VOER.Kenteken
                       ,VOER.Bouwjaar
                       ,VOER.Brandstof
                       ,TYVO.TypeVoertuig
                       ,TYVO.RijbewijsCategorie 
                       
                FROM Voertuig   AS  VOER
                INNER JOIN TypeVoertuig AS TYVO
                ON    INNER JOIN VoertuigInstructeur AS VOIN
                ON    VOIN.VoertuigId = VOER.id
                WHERE VOIN.InstructeurId = $Id
                ORDER BY TYVO.RijbewijsCategorie DESC";
        $this->db->query($sql);
        return $this->db->
    }
}