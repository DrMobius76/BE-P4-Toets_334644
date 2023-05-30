<?php

class ExamenModel 
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getoverzichtExamens()
    {
        $sql = "SELECT Id
                       ,StudentId
                       ,Rijschool
                       ,Stad
                       ,Rijbewijscategorie
                       ,Datum
                       ,Uitslag
                FROM Examen, ExamenPerExaminator, Examinator";

        $this->db->query($sql);
        return $this->db->resultSet();
    }

    public function getExamenPerExaminator()
    {
        $sql = "SELECT Id
                       ,ExamenId
                       ,ExaminatorId";
        $this->db->query($sql);
        return $this->db->resultSet();
    }
}