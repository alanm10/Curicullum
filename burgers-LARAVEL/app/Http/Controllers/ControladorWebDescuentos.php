<?php

namespace App\Http\Controllers;
use App\Entidades\Descuento;
use App\Entidades\Sucursal;

class ControladorWebDescuentos extends Controller
{

    public function index()
    {   
        $descuento = new Descuento();
        $aDescuentos = $descuento->obtenerTodos();


        $sucursal = new Sucursal();
        $aSucursales = $sucursal->obtenerTodos();

        return view('web.descuentos', compact('aDescuentos', 'aSucursales'));
    }

}
