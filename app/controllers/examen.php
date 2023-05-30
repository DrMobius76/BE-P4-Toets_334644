<?php

class examen extends BaseController{
    private $examenModel;

    public function __construct()
    {
        $this->examenModel = $this->model('ExamenModel');
    }

    public function overzichtExamens()
    {
        $result = $this->examenModel->getoverzichtExamens();

        $rows = "";
        foreach ($result as $examens) {
            $rows .= "<tr>
                        <td>$examens->voornaam</td>
                        <td>$examens-></td>
                        <td>$examens-></td>
                        <td>$examens-></td>
                        <td>$examens-></td>
                        <td>$examens-></td>"
        } 
    }
}