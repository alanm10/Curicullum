 
 <?php 
($pg);
?>
 <footer 
 
<?php

switch ($pg) {
    case 'inicio':
      echo "class='container' id='footer-inicio'";
        break;
   
    case 'sobre-mi':
                echo "class='container' id='footer-proyectos'";
                break;
    case 'proyectos':
                 echo  "class='container' id='footer-proyectos'";
                break;
    case 'contacto':
            echo "class='container' id='footer-contacto'";
           
        break;
}

?>
    >

 
 <div class="row mt-5">
            <div class="col-12 col-sm-3 text-center text-sm-start">
                <a href="https://github.com" target="_blank" title="Github"><i class="fab fa-github"></i></a>
                <a href="https://www.linkedin.com/in/nelson-daniel-tarche/" target="_blank" title="Linkedin"><i
                        class="fab fa-linkedin-in"></i></a>
            </div>
            <div class="col-12 col-sm-3 text-center text-sm-start pt-2 p-sm-0">

                Sponsor <a href="https://depcsuite.com" target="_blank" title="DEPCSUITE">DePC Suite</a>
            </div>
            <div class="col-12 col-4 col-sm-3 text-sm-start pt-2 p-sm-0">
                <a href="mailto:alan_martinez94@hotmail.com">alan_martinez94@hotmail.com</a>
            </div>
        </div>

    </footer>
   