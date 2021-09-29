<?php 
$pg="contacto";
?>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/fontawesome/css/fontawesome.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap');"
        rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="css/estilos.css?1.0" media="all" >
    <title>Contacto</title>
</head>

<body id="contacto">
     <?php include_once ("header.php") ?>
    <main class="container">
        <div class="row">
            <div class="col-12 mt-3 mb-5">
                <h1>Contacto</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-sm-6">
                <p> Te invito a que te contactes enviandome un
                    mensaje o bien por Whatsapp</p>
            </div>
            <div class="col-12 col-sm-6">
                <form action="" method="post">
                    <div class="mb-3">
                        <input type="text" id="txtNombre" name="txtNombre" placeholder="Nombre"
                            class="form-control shadow border-white">
                    </div>
                    <div class="mb-3">
                        <input type="email" id="txCorreo" name="txtCorreo" placeholder="Correo"
                            class="form-control shadow border-white">
                    </div>
                    <div class="mb-3">
                        <input type="tel" id="txtTelefono" name="txtTelefono" placeholder="Telefono/Whatsapp"
                            class="form-control shadow border-white">
                    </div>
                    <div class="mb-3">
                        <textarea name="txtMensaje" id="txtMensaje" placeholder="Escribe aqui tu mensaje" cols="30"
                            rows="10" class="form-control shadow border-white"></textarea>
                    </div>
                    <div class="me-auto">
                        <button id="btnEnviar" name="btnEnviar" class="btn px-4">ENVIAR</button>
                    </div>
                </form>
            </div>
        </div>
    </main>
    
        <?php include_once ("footer.php")?>

   
    <div class="whatsapp">
        <a href="https://api.whatsapp.com/send?phone=541162423341" title="Whatsapp"><i class="fab fa-whatsapp"></i></a>
    </div>
    
    <script src="css/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>