<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


if(file_exists("archivo.txt")){
    
    //Leer el json del archivo
    $jsonClientes = file_get_contents("archivo.txt");

    //Convertir el json a un array $aClientes
    $aClientes = json_decode($jsonClientes, true);

}else {
    $aClientes=array();
}

$id=isset($_REQUEST["id"]) && $_REQUEST["id"] >= 0? $_REQUEST["id"] :"";
 
if($_POST){ 
    $dni = $_REQUEST["txtDni"];
    $nombre = $_REQUEST["txtNombre"];
    $telefono = $_REQUEST["txtTelefono"];
    $correo = $_REQUEST["txtCorreo"];

     if ($_FILES["archivo"]["error"] === UPLOAD_ERR_OK) { //este if nos dice si se subio o no una imagen
        $nombreAleatorio = date("Ymdhmsi") . rand(1000, 5000);
        $archivo_tmp = $_FILES["archivo"]["tmp_name"];
        $nombreArchivo = $_FILES["archivo"]["name"];
        $extension = pathinfo($nombreArchivo, PATHINFO_EXTENSION);
        $nuevoNombre = "$nombreAleatorio.$extension";
        move_uploaded_file($archivo_tmp, "imagenes/$nuevoNombre");
    }


    if ($id != "") {//Si vino un id estoy editando un cliente
                 
        //Si no se subio la imagen, mantengo el nombre actual que ya existia de la imagen
        if ($_FILES["archivo"]["error"] !== UPLOAD_ERR_OK) {
         $nuevoNombre=$aClientes[$id]["imagen"];
                 
        }else { 
        //Si viene la imagen, elimino la imagen anterior y guardo el nombre de la nueva imagen 
        unlink("imagenes/".$aClientes[$id]["imagen"]); //elimina el archivo           
                  
        }
    


    //Actualiza un cliente existente
     $aClientes[$id] =array ("dni"=> $dni,
                    "nombre" => $nombre,
                    "telefono" => $telefono,
                    "correo" => $correo,
                    "imagen"=>$nuevoNombre);
        }else {//Es un nuevo cliente
            //Inserta un  nuevo cliente
             $aClientes[] =array ("dni"=> $dni,
                    "nombre" => $nombre,
                    "telefono" => $telefono,
                    "correo" => $correo,
                    "imagen"=> $nuevoNombre);
     
   
   
}
   //Convertir el array en json
$jsonClientes = json_encode($aClientes);

    //Guardar el json e un archivo llamado archivo.txt

file_put_contents("archivo.txt",$jsonClientes);

 }

 if ($id != "" && isset($_REQUEST["do"]) && $_REQUEST["do"] == "eliminar") {
    unlink("imagenes/".$aClientes[$id]["imagen"]);//elimina la imagen
    //Elimina el cliente del array
    unset($aClientes[$id]);
    //Actualizar el archivo con el nuevo array de aClientes
    $jsonClientes = json_encode($aClientes);
    file_put_contents("archivo.txt", $jsonClientes);
    header("Location: index.php");
 
}
?>




<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="css/estilos.css">
    <title>Document</title>
</head>
<body>
<div class="container">
        <div class="row">
            <div class="col-12 my-5 text-center">
                <h1>Registro de clientes</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <?php if (isset($msg) && $msg != ""): ?>
                        <div class="alert alert-success" role="alert">
                            <?php echo $msg; ?>
                        </div>
                        <?php endif;?>
                        <div class="col-12 form-group">
                            <label for="txtDni">DNI: *</label>
                            <input type="text" id="txtDni" name="txtDni" class="form-control" required value="<?php echo isset ($aClientes[$id])?$aClientes[$id]["dni"]:""?>">
                        </div>
                        <div class="col-12 form-group">
                            <label for="txtNombre">Nombre: *</label>
                            <input type="text" id="txtNombre" name="txtNombre" class="form-control"requiered value ="<?php echo isset($aClientes[$id])?$aClientes[$id]["nombre"]:"" ?>" >
                        </div>
                        <div class="col-12 form-group">
                            <label for="txtTelefono">Tel??fono:</label>
                            <input type="text" id="txtTelefono" name="txtTelefono" class="form-control" requiered value ="<?php echo isset ($aClientes[$id])?$aClientes[$id]["telefono"]:"" ?>" >
                        </div>
                        <div class="col-12 form-group">
                            <label for="txtCorreo">Correo: *</label>
                            <input type="text" id="txtCorreo" name="txtCorreo" class="form-control" requiered value ="<?php echo isset($aClientes[$id])?$aClientes[$id]["correo"]:"" ?>">
                        </div>
                        <div class="col-12 form-group">
                            <label for="txtCorreo">Archivo adjunto:</label>
                            <input type="file" id="archivo" name="archivo" class="form-control-file" accept=".jpg, .jpeg, .png">
                            <small class="d-block">Archivos admitidos: .jpg, .jpeg, .png</small>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mt-3">
                            <button type="submit" id="btnGuardar" name="btnGuardar" class="btn btn-primary">Guardar</button>
                        </div>
                    </div>
                </form>
            </div>



            
    <div class="col-6">
    <table class="table">
         <thead>
         <tr>
            <th scope="col">Imagen</th>
            <th scope="col">DNI</th>
             <th scope="col">Nombre</th>
             <th scope="col">Correo</th>
            <th scope="col">Acciones</th>
         </tr>
        </thead>
        <tbody>
        <?php foreach ($aClientes as  $pos => $cliente):?> 
            <td ><img src="imagenes/<?php echo $cliente["imagen"]; ?>"class="img-thumbnail"></td>
            <td><?php echo $cliente["dni"]; ?></td>
            <td><?php echo $cliente["nombre"]; ?></td>
            <td><?php echo $cliente["correo"]; ?></td>
            <td style="width: 110px;">
                                <a href="index.php?id=<?php echo $pos; ?>"><i class="fas fa-edit"></i></a>
                                <a href="index.php?id=<?php echo $pos; ?>&do=eliminar"><i class="fas fa-trash-alt"></i></a>
            </td>
        </tbody>

      
    <?php endforeach ;?>
        </table>
    </div>
</div>
</div>



 

  </div>  
</body>
</html>