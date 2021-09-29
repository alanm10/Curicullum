<?php

namespace App\Http\Controllers;

use App\Entidades\Descuento;
use App\Entidades\Sistema\Usuario;
use App\Entidades\Sistema\Patente;
use Illuminate\Http\Request;


require app_path().'/start/constants.php';


class ControladorDescuento extends Controller{

   public function index()
    {
        $titulo = "Descuentos";
        if (Usuario::autenticado() == true) {
            return view('descuento.descuento-listar', compact('titulo'));
        } else {
            return redirect('admin/login');
        }

    
    }

    public function cargarGrilla()
    {
        $request = $_REQUEST;

        $entidad = new Descuento();
        $aDescuentos = $entidad->obtenerFiltrado();

        $data = array();
        $cont = 0;

        $inicio = $request['start'];
        $registros_por_pagina = $request['length'];


        for ($i = $inicio; $i < count($aDescuentos) && $cont < $registros_por_pagina; $i++) {
            $row = array();
            $row[] = '<img src="/files/'. $aDescuentos[$i]->imagen .'" class="img-thumbnail">';
            $row[] = '<a href="/admin/descuento/' . $aDescuentos[$i]->iddescuento . '">' . $aDescuentos[$i]->nombre . '</a>';
            $row[] = $aDescuentos[$i]->descripcion;
            $cont++;
            $data[] = $row;
        }

        $json_data = array(
            "draw" => intval($request['draw']),
            "recordsTotal" => count($aDescuentos), //cantidad total de registros sin paginar
            "recordsFiltered" => count($aDescuentos), //cantidad total de registros en la paginacion
            "data" => $data,
        );
        return json_encode($json_data);
    }


    public function nuevo()
    {
        $titulo = "Nuevo Descuento";
        $descuento = new Descuento();

        return view('descuento.descuento-nuevo', compact('descuento', 'titulo'));
    }


    public function editar($id)
    {
        $titulo = "Modificar Descuento";
        if (Usuario::autenticado() == true)
        
        {
            if (!Patente::autorizarOperacion("MENUMODIFICACION")) {
                $codigo = "MENUMODIFICACION";
                $mensaje = "No tiene pemisos para la operaci&oacute;n.";
                return view('sistema.pagina-error', compact('titulo', 'codigo', 'mensaje'));
            } else {
                $descuento = new Descuento();
                $descuento->obtenerPorId($id);

                return view('descuento.descuento-nuevo', compact('descuento', 'titulo'));
            }
        }   else {
            return redirect('admin/login');
        }
    }

    

    public function eliminar(Request $request)
    {
        $id = $request->input('id');

        if (Usuario::autenticado() == true) {
            if (Patente::autorizarOperacion("MENUELIMINAR")) {

          
                $entidad = new Descuento();
                $entidad->cargarDesdeRequest($request);
                $entidad->eliminar();

                $aResultado["err"] = EXIT_SUCCESS; //eliminado correctamente
            } else {
                $codigo = "ELIMINARPROFESIONAL";
                $aResultado["err"] = "No tiene pemisos para la operaci&oacute;n.";
            }
            echo json_encode($aResultado);
        } else {
            return redirect('admin/login');
        }
    }

    public function guardar(Request $request)
    {
        try {
            //Define la entidad servicio
            $titulo = "Guardar descuento";
            $entidad = new Descuento();
            $entidad->cargarDesdeRequest($request);

            if ($_FILES["archivo"]["error"] === UPLOAD_ERR_OK) {//Se adjunta imagen
                $nombre = date("Ymdhmsi") . ".jpg";
                $archivo = $_FILES["archivo"]["tmp_name"];
                move_uploaded_file($archivo, env('APP_PATH') . "/public/files/$nombre"); //guardaelarchivo
                $entidad->imagen = $nombre;
            }

            //validaciones
            if ($entidad->nombre == "") {
                $msg["ESTADO"] = MSG_ERROR;
                $msg["MSG"] = "Complete todos los datos";
            } else {
                if ($_POST["id"] > 0) {
                    $descuentoAnt = new Descuento();
                    $descuentoAnt->obtenerPorId($entidad->iddescuento);

                    if($_FILES["archivo"]["error"] === UPLOAD_ERR_OK){
                        //Eliminar imagen anterior
                        @unlink(env('APP_PATH') . "/public/files/$descuentoAnt->imagen");                          
                    } else {
                        $entidad->imagen = $descuentoAnt->imagen;
                    }

                    //Es actualizacion
                    $entidad->guardar();

                    $msg["ESTADO"] = MSG_SUCCESS;
                    $msg["MSG"] = OKINSERT;
                } else {
                    //Es nuevo
                    $entidad->insertar();

                    $msg["ESTADO"] = MSG_SUCCESS;
                    $msg["MSG"] = OKINSERT;
                }
                $_POST["id"] = $entidad->iddescuento;
                return view('descuento.descuento-listar', compact('titulo', 'msg'));
            }
        } catch (Exception $e) {
            $msg["ESTADO"] = MSG_ERROR;
            $msg["MSG"] = ERRORINSERT;
        }

        $id = $entidad->iddescuento;
        $descuento = new Descuento();
        $descuento->obtenerPorId($id);

        return view('descuento.descuento-nuevo', compact('msg', 'descuento', 'titulo')) . '?id=' . $descuento->iddescuento;
    }

   public function guardarArchivo(Request $request) {

        $iddescuento=$request['id'];
        try {
            //Define la entidad servicio
            $titulo = "Modificar esencia";
            $entidad = new Descuento();
            $entidad->cargarDesdeRequest($request);
            $iddescuento=$_REQUEST['id'];
    
        if($_FILES["archivo"]["error"] === UPLOAD_ERR_OK)
    {
        $nombre = date("Ymdhmsi") . ".jpg"; 
        $archivo = $_FILES["archivo"]["tmp_name"];
        move_uploaded_file($archivo, env('APP_PATH') . "C:\Users\pc01\Desktop\burgers");//guardaelarchivo
        $entidad->imagen =$nombre;
    }   
    //validaciones
    if ($entidad->nombre == "") {
        $msg["ESTADO"] = MSG_ERROR;
        $msg["MSG"] = "Complete todos los datos";
    } else {
        if ($_POST["id"] > 0) {
            $descuentoAnt = new Descuento();
            $descuentoAnt->obtenerPorId($entidad->iddescuento);
       
            if(isset($_FILES["archivo"]) && $_FILES["archivo"]["name"] != ""){
                $archivoAnterior =$_FILES["archivo"]["name"];
                if($archivoAnterior !=""){
                    @unlink (env('APP_PATH') . "C:\Users\pc01\Desktop\burgers");
                }
            } else {
                $entidad->imagen = $descuentoAnt->imagen;
            }

         //Es actualizacion
         $entidad->guardar();

         $msg["ESTADO"] = MSG_SUCCESS;
         $msg["MSG"] = OKINSERT;
     }  else {
         //Es nuevo
         $entidad->insertar();

         $msg["ESTADO"] = MSG_SUCCESS;
         $msg["MSG"] = OKINSERT;
     }
   
     $_POST["id"] = $entidad->iddesceutno;
     return view('descuento.descuento-listar', compact('titulo', 'msg'));
 }
    }      catch (Exception $e) {
        $msg["ESTADO"] = MSG_ERROR;
    $msg["MSG"] = ERRORINSERT;


   }
   }
    
}