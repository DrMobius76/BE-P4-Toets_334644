<?php

class CountryModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getCountries()
    {
        $sql = 'SELECT  Id
                       ,Name
                FROM    Country';

        $this->db->query($sql);

        return $this->db->resultSet();        
    }

}