<?php 
$pg="inicio";
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
    <title>Inicio</title>
</head>

<body id="Inicio">
    <?php include_once ("header.php") ?>
    <main>
        <div class="container">
            <div class="row">
                <div class="row col-12 sm-4 text-center">
                    <a href="proyectos.php">
                        <img src="images/cohete.svg" alt="" class="cohete">
                    </a>
                </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-10 my-4 mt-sm-5 offset-sm-1 mb-3 text-center ">
                        <p class="p-1 bienvenido">Bienvenid@ a mi sitio web, mi nombre es Alan y 
                                                te invito a conocer sobre mis proyectos y estudios </p>
                    </div>
                </div>
            
            <div class="row">
                <div class="col-12 text-center mt-3">
                    <a href="proyectos.php" class="btn-shadow">Conoce mis proyectos</a>
                </div>
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