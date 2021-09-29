@extends('web.plantilla-sitio')
@section('contenido')

<section class="home-slider owl-carousel img" style="background-image:url(web/images/bg_1.jpg);">
      <div class="slider-item">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">

            <div class="col-md-6 col-sm-12 ftco-animate">
            	<span class="subheading">Aprovecha</span>
              <h1 class="mb-4">Descuentos con Banco Macro</h1>   
              <p><a href="#descuentos" class="btn btn-primary p-3 px-xl-4 py-xl-3">Conocer más</a></p>
            </div>
            <div class="col-md-6 ftco-animate">
            	<img src="web/images/macrodescuento.png" class="img-fluid" alt="">
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">

            <div class="col-md-6 col-sm-12 order-md-last ftco-animate">
            	<span class="subheading">Aprovecha</span>
              <h1 class="mb-4">Club Personal</h1>
              <p><a href="#descuentos" class="btn btn-primary p-3 px-xl-4 py-xl-3">Conocer más</a> </p>
            </div>
            <div class="col-md-6 ftco-animate">
            	<img src="web/images/descuentopersonal.png" class="img-fluid" alt="">
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url(web/images/posnet.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Descuentos exclusivos para Hamburguesas Delicous</span>
              <h1 class="mb-4">Conoce todas los descuentos que tenemos para vos</h1>
              <p class="mb-4 mb-md-5">Encontrá el descuento que más te convenga</p>
              <p><a href="#descuentos" class="btn btn-primary p-3 px-xl-4 py-xl-3">Conocer más</a> </p>
            </div>

          </div>
        </div>
      </div>
    </section>

<section class="ftco-section" id="descuentos">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate text-center">
                <h2 class="mb-4">Descuentos</h2>
                <p>Estamos en C.A.B.A y G.B.A. Te esperamos en cualquiera de nuestras sucursales para retirar nuestras mejores hamburguesas.</p>
            </div>
        </div>
    </div>
        <div class="container">
            <div class="row d-flex justify-content-center ">

            <!--Comienzo Item Menu-->
            @foreach ($aDescuentos as $descuento)         
            <div class="col-md-6 col-xl-4 col-12 p-sm-4 px-4 py-2 ftco-animate">
                <div class="row tarjeta d-flex justify-content-center">
                    <div class="col-12 p-0" style="overflow:hidden; height: 200px">
                        <img class="mx-auto d-block" src="files/{{$descuento->imagen}}" style="height:300px width:200px;" alt="">
                        <!-- img-fluid para que se adapte la foto al tamaño del contenedor -->
                    </div>
                    <div class="descripcion-items" style="background-color:rgb(18, 18, 18, .5);">
                        <div class="col-12 color-gradiente pt-3 text-center">
                            <h4>{{$descuento->nombre}}</h4>
                        </div>
                        <div class="col-12 text-center">
                            <p>{{$descuento->descripcion}} </p>
                        </div>
                        
                    </div>
                </div>
            </div>
            @endforeach
            <!--Fin Item Menu-->

            </div>
        </div>
    </div>

</section>

@endsection


