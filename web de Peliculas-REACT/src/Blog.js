import { useState } from 'react';
import './App.css';
import PageWrapper from './PageWrapper';
import Paginacion from './Paginacion';
import Pelicula from './Pelicula';
import peliculasJson from './peliculas.json';

function Blog() {



    return (
        <PageWrapper>

            <div className="col-md-9 col-sm-12 col-xs-12">
                <div className="blog-detail-ct">
                    <h1>Se estima que 'Sin tiempo para morir' recaudará 90 millones de dólares en su estreno internacional</h1>
                    <span className="time">27 Mar 2017</span>
                    <img src="images/uploads/blog-detail.jpg" alt="" />
                    <p>
                        Tras año y medio de retraso a causa del coronavirus, 'Sin tiempo para morir' llega por fin a la pantalla grande, y lo hace por todo lo alto, ya que se prevé que en el fin de semana de su debut recaude al menos 90 millones de dólares en la taquilla internacional. 
                        La película se estrenará en Estados Unidos el 8 de octubre, pero en otros mercados extranjeros como Corea se ha lanzado hoy mismo, 29 de septiembre. En países como Brasil, Alemania, Italia, Países Bajos o Reino Unido la entrega 
                        se proyectará mañana 30 de septiembre, y en Japón, México y España hay que esperar al 1 de octubre.</p>

                    <p>Debido a la pandemia, muchas regiones siguen manteniendo restricciones de aforo en las salas e incluso algunas como Francia, Italia y Alemania han estado pidiendo a los 
                        espectadores el certificado de vacunación. Por otro lado, en zonas como Corea, Japón, Australia y la mayoría del sudeste asiático, una gran cantidad de cines se han visto obligados a cerrar 
                        y los que todavía siguen abiertos tienen horas de funcionamiento reducidas.</p>

                    
                    <div class ="flex-it flex-ct">
                    <p>
                            Con todo esto en contra, para 'Sin tiempo para morir' embolsar 90 millones de dólares en su inauguración supondría todo un éxito, ya que la suma se aproximaría a sus películas predecesoras: 'Spectre' de 2015 (123 millones) y de 2012 'Skyfall' (109 millones) en sus lanzamientos internacionales. Además, el largometraje también se posicionaría entre uno de los mejores estrenos internacionales de Hollywood durante la epidemia. Actualmente sobresalen 'Viuda Negra' (78 millones) 
                            y 'Fast & Furious 9' (69 millones).
                    </p>
                    <img src="images/uploads/blog-detail2.jpg" alt="" />
                    </div>
                                      
                    <div class ="flex-it share-tag">
                    <div class ="social-link">
                    <h4>Share it</h4>
                    <a href="#"><i class ="ion-social-facebook"></i></a>
                    <a href="#"><i class ="ion-social-twitter"></i></a>
                    <a href="#"><i class ="ion-social-googleplus"></i></a>
                    <a href="#"><i class ="ion-social-pinterest"></i></a>
                    <a href="#"><i class ="ion-social-linkedin"></i></a>
                    </div>
                    <div class ="right-it">
                    <h4>Tags</h4>
                    <a href="#">Gray,</a>
                    <a href="#">Film,</a>
                    <a href="#">Poster</a>
                    </div>
                    </div>
                   
                    <div class ="comments">
                    <h4>04 Comments</h4>
                    <div class ="cmt-item flex-it">
                    <img src="images/uploads/author.png" alt="" />
                    <div class ="author-infor">
                    <div class ="flex-it2">
                    <h6><a href="#">Steve Perry</a></h6> <span class ="time"> - 27 Mar 2017</span>
                    </div>
                    <p>Even though Journey's classic vocalist Steve Perry didn’t reunite with the band during their Rock Hall performance (to the dismay of hopeful fans), he did offer up a touching speech.</p>
                    <p><a class ="rep-btn" href="#">+ Reply</a></p>
                    </div>
                    </div>
                    <div class ="cmt-item flex-it reply">
                    <img src="images/uploads/author2.png" alt="" />
                    <div class ="author-infor">
                    <div class ="flex-it2">
                    <h6><a href="#">Joss Whedon</a></h6> <span class ="time"> - 27 Mar 2017</span>
                    </div>
                    <p>Prince died not long after the 2016 Rock Hall ceremony, so this year's edition featured Lenny Kravitz and a full gospel choir performing a swamp-funk take on When Doves Cry.</p>
                    </div>
                    </div>
                    <div class ="cmt-item flex-it reply">
                    <img src="images/uploads/author3.png" alt="" />
                    <div class ="author-infor">
                    <div class ="flex-it2">
                    <h6><a href="#">Dave McNary</a></h6> <span class ="time"> - 27 Mar 2017</span>
                    </div>
                    <p>Blue Sky Studios is one of the world’s leading digital animation movie studios and we are proud of their commitment to stay and grow in Connecticut.</p>
                    </div>
                    </div>
                    <div class ="cmt-item flex-it">
                    <img src="images/uploads/author4.png" alt="" />
                    <div class ="author-infor">
                    <div class ="flex-it2">
                    <h6><a href="#">Margot Robbie</a></h6> <span class ="time"> - 27 Mar 2017</span>
                    </div>
                    <p>Joan Baez was the sharpest of the Rock Hall inductees, singing about deportees and talking social activism as well as joking about her age and the likelihood that a good portion of the Barclays.</p>
                    <p><a class ="rep-btn" href="#">+ Reply</a></p>
                    </div>
                    </div>
                    </div>
                    <div class ="comment-form">
                    <h4>Leave a comment</h4>
                    <form action="#">
                    <div class ="row">
                    <div class ="col-md-4">
                    <input type ="text" placeholder="Your name" />
                    </div>
                    <div class ="col-md-4">
                    <input type ="text" placeholder="Your email" />
                    </div>
                    <div class ="col-md-4">
                    <input type ="text" placeholder="Website" />
                    </div>
                    </div>
                    <div class ="row">
                    <div class ="col-md-12">
                    <textarea name="message" id="" placeholder="Message"></textarea>
                    </div>
                    </div>
                    <input class ="submit" type ="submit" placeholder="submit" />
                    </form>
                    </div>
               
                </div>
         </div>
        </PageWrapper>
    );


 
} 

export default Blog;