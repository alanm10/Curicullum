export default function PageWrapper(props) {

  return (
    <div>
      <div id="preloader">
        <img className="logo" src="images/logo1.png" alt="" width="119" height="58" />
        <div id="status">
          <span></span>
          <span></span>
        </div>
      </div>
      <div className="login-wrapper" id="login-content">
        <div className="login-content">
          <a href="#" className="close">x</a>
          <h3>Login</h3>
          <form method="post" action="#">
            <div className="row">
              <label for="username">
                Username:
                <input type="text" name="username" id="username" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
              </label>
            </div>

            <div className="row">
              <label for="password">
                Password:
                <input type="password" name="password" id="password" placeholder="******" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
              </label>
            </div>
            <div className="row">
              <div className="remember">
                <div>
                  <input type="checkbox" name="remember" value="Remember me" /><span>Remember me</span>
                </div>
                <a href="#">Forget password ?</a>
              </div>
            </div>
            <div className="row">
              <button type="submit">Login</button>
            </div>
          </form>
          <div className="row">
            <p>Or via social</p>
            <div className="social-btn-2">
              <a className="fb" href="#"><i className="ion-social-facebook"></i>Facebook</a>
              <a className="tw" href="#"><i className="ion-social-twitter"></i>twitter</a>
            </div>
          </div>
        </div>
      </div>
      <div className="login-wrapper" id="signup-content">
        <div className="login-content">
          <a href="#" className="close">x</a>
          <h3>sign up</h3>
          <form method="post" action="#">
            <div className="row">
              <label for="username-2">
                Username:
                <input type="text" name="username" id="username-2" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
              </label>
            </div>

            <div className="row">
              <label for="email-2">
                your email:
                <input type="password" name="email" id="email-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
              </label>
            </div>
            <div className="row">
              <label for="password-2">
                Password:
                <input type="password" name="password" id="password-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
              </label>
            </div>
            <div className="row">
              <label for="repassword-2">
                re-type Password:
                <input type="password" name="password" id="repassword-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
              </label>
            </div>
            <div className="row">
              <button type="submit">sign up</button>
            </div>
          </form>
        </div>
      </div>

      <header className="ht-header">
        <div className="container">
          <nav className="navbar navbar-default navbar-custom">
            <div className="navbar-header logo">
              <div className="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span className="sr-only">Toggle navigation</span>
                <div id="nav-icon1">
                  <span></span>
                  <span></span>
                  <span></span>
                </div>
              </div>
              <a href="index-2.html"><img className="logo" src="images/logo1.png" alt="" width="119" height="58" /></a>
            </div>
            <div className="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
              <ul className="nav navbar-nav flex-child-menu menu-left">
                <li className="hidden">
                  <a href="#page-top"></a>
                </li>
                <li className="dropdown first">
                  <a href="/"className="btn btn-default dropdown-toggle lv1"  >
                    Inicio
                  </a>
                 
                </li>
                <li className="dropdown first">
                  <a href="/blog"  className="btn btn-default dropdown-toggle lv1">
                    Noticias
                  </a>
                
                  
                  
                </li>
                <li className="dropdown first">
                  <a className="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                    Celebridades <i className="fa fa-angle-down" aria-hidden="true"></i>
                  </a>
                  <ul className="dropdown-menu level1">
                    <li><a href="celebritygrid01.html">Celebridades 01</a></li>
                    <li><a href="celebritygrid02.html">Celebridades 02 </a></li>
                  </ul>
                </li>
                
              </ul>
              <ul className="nav navbar-nav flex-child-menu menu-right">
                <li className="dropdown first">
                  <a className="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                    Paginas <i className="fa fa-angle-down" aria-hidden="true"></i>
                  </a>
                  <ul className="dropdown-menu level1">
                    <li><a href="landing.html">Cargando</a></li>
                    <li><a href="404.html">Pagina 404</a></li>
                    <li className="it-last"><a href="comingsoon.html">Proximamente</a></li>
                  </ul>
                </li>
                <li><a href="#">Ayuda</a></li>
                <li className="loginLink"><a href="#">Login</a></li>
                <li className="btn signupLink"><a href="#">Acceder</a></li>
              </ul>
            </div>
          </nav>

          <div className="top-search">
            <select>
              <option value="united">TV </option>
              <option value="saab">Otros</option>
            </select>
            <input type="text" placeholder="Busca una pelicula o serie" />
          </div>
        </div>
      </header>

      <div className="hero common-hero">
        <div className="container">
          <div className="row">
            <div className="col-md-12">
              <div className="hero-ct">
                <h1> Lista de Peliculas</h1>
                <ul className="breadcumb">
                  <li className="active"><a href="#">Inicio</a></li>
                  <li> <span className="ion-ios-arrow-right"></span> Listado de peliculas</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="page-single movie_list">
        <div className="container">
          <div className="row ipad-width2">
            <div className="col-md-8 col-sm-12 col-xs-12">
              <div className="topbar-filter">
                <p>Encontrado <span>1,608 peliculas</span> en total</p>
                <label>Sort by:</label>
                <select>
                  <option value="popularity">Popularidad descendente</option>
                  <option value="popularity">Popularidad ascendente</option>
                  <option value="rating">Raating descendente</option>
                  <option value="rating">Rating ascendente</option>
                  <option value="date">Fecha de Lanzamiento descendente</option>
                  <option value="date">Fecha de Lanzamiento ascendente</option>
                </select>
                <a href="movielist.html" className="list"><i className="ion-ios-list-outline active"></i></a>
                <a href="moviegrid.html" className="grid"><i className="ion-grid"></i></a>
              </div>


              {props.children}


            </div>
            <div className="col-md-4 col-sm-12 col-xs-12">
              <div className="sidebar">
                <div className="searh-form">
                  <h4 className="sb-title">Buscar peliculas</h4>
                  <form className="form-style-1" action="#">
                    <div className="row">
                      <div className="col-md-12 form-it">
                        <label>Nombre</label>
                        <input type="text" placeholder="Ingrese su busqueda" />
                      </div>
                      <div className="col-md-12 form-it">
                        <label>Genero & Subgenero</label>
                        <div className="group-ip">
                          <select
                            name="skills" multiple="" className="ui fluid dropdown">
                            <option value="">Enter Para filtrar generos</option>
                            <option value="Action1">Action 1</option>
                            <option value="Action2">Action 2</option>
                            <option value="Action3">Action 3</option>
                            <option value="Action4">Action 4</option>
                            <option value="Action5">Action 5</option>
                          </select>
                        </div>

                      </div>
                      <div className="col-md-12 form-it">
                        <label>Rating</label>

                        <select>
                          <option value="range">-- Select the rating range below --</option>
                          <option value="saab">-- Select the rating range below --</option>
                          <option value="saab">-- Select the rating range below --</option>
                          <option value="saab">-- Select the rating range below --</option>
                        </select>

                      </div>
                      <div className="col-md-12 form-it">
                        <label>Fecha de lanzamiento</label>
                        <div className="row">
                          <div className="col-md-6">
                            <select>
                              <option value="range">From</option>
                              <option value="number">10</option>
                              <option value="number">20</option>
                              <option value="number">30</option>
                            </select>
                          </div>
                          <div className="col-md-6">
                            <select>
                              <option value="range">To</option>
                              <option value="number">20</option>
                              <option value="number">30</option>
                              <option value="number">40</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div className="col-md-12 ">
                        <input className="submit" type="submit" value="submit" />
                      </div>
                    </div>
                  </form>
                </div>
                <div className="ads">
                  <img src="images/uploads/ads1.png" alt="" />
                </div>
                <div className="sb-facebook sb-it">
                  <h4 className="sb-title">Encuentranos en Facebook</h4>
                  <iframe src="#" data-src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Ftemplatespoint.net%2F%3Ffref%3Dts&tabs=timeline&width=340&height=315px&small_header=true&adapt_container_width=false&hide_cover=false&show_facepile=true&appId" height="315"  ></iframe>
                </div>
                <div className="sb-twitter sb-it">
                  <h4 className="sb-title">Tweet</h4>
                  <div className="slick-tw">
                    <div className="tweet item" id="">
                    </div>
                    <div className="tweet item" id="">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer className="ht-footer">
        <div className="container">
          <div className="flex-parent-ft">
            <div className="flex-child-ft item1">
              <a href="index-2.html"><img className="logo" src="images/logo1.png" alt="" /></a>
              <p>Velez Sarfield 300</p>
              <p>Contacto: <a href="#">(+01) 202 342 6789</a></p>
            </div>
            <div className="flex-child-ft item2">
              <h4>Recursos</h4>
              <ul>
                <li><a href="#">Sobre Nosotros</a></li>
                <li><a href="#">Blockbuster</a></li>
                <li><a href="#">Contacto</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Ayuda</a></li>
              </ul>
            </div>
            <div className="flex-child-ft item3">
              <h4>Legal</h4>
              <ul>
                <li><a href="#">Terminos y condiciones</a></li>
                <li><a href="#">Politica de Privacidad</a></li>
                <li><a href="#">Seguridad</a></li>
              </ul>
            </div>
            <div className="flex-child-ft item4">
              <h4>Cuenta</h4>
              <ul>
                <li><a href="#">Mi cuenta</a></li>
                <li><a href="#">Mi lista</a></li>
                <li><a href="#">Colecciones</a></li>
                <li><a href="#">Guia de usuario</a></li>
              </ul>
            </div>
            <div className="flex-child-ft item5">
              <h4>Noticias</h4>
              <p>Suscribase a nuestras noticias  <br /> para obtener la información más reciente.</p>
              <form action="#">
                <input type="text" placeholder="Ingrese su email..." />
              </form>
              <a href="#" className="btn">Suscribete Ahora <i className="ion-ios-arrow-forward"></i></a>
            </div>
          </div>
        </div>
        <div className="ft-copyright">
          
          <div className="backtotop">
            <p><a href="#" id="back-to-top">Back to top  <i className="ion-ios-arrow-thin-up"></i></a></p>
          </div>
        </div>
      </footer>
    </div>
  );
}