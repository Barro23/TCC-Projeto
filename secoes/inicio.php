<?php
  $manipula = new manipuladados;
  $manipula->setTable("tb_inicio");
  $inicio =  $manipula->getAllDataTable();
?>


<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <center>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="1000">
      <img src="<?= $inicio[0]['imgCarroseu1']?>" class="" style=" object-fit: conver; width: 100%;  -webkit-mask-image: linear-gradient(to top, transparent 5%, white 35%);">
      <div class="carousel-caption text-start">
            <h1><?= $inicio[0]['textCarroseu1']?></h1>
            
            
          </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="<?= $inicio[0]['imgCarroseu2']?>" class=""  style=" object-fit: conver; width: 100%; -webkit-mask-image: linear-gradient(to top, transparent 5%, white 35%);">
      <div class="container">
          <div class="carousel-caption">
            <h1><?= $inicio[0]['textCarroseu2']?></h1>
            
            
          </div>
        </div>
    </div>
    <div class="carousel-item">
      <img src="<?= $inicio[0]['imgCarroseu3']?>" class=""  style=" object-fit: conver; width: 100%; -webkit-mask-image: linear-gradient(to top, transparent 5%, white 35%);">
      <div class="container">
          <div class="carousel-caption text-end">
            <h1 ><?= $inicio[0]['textCarroseu3']?></h1>
            
            
          </div>
        </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
  </center>
  </div>
</div>


<div class="container marketing" style="margin-top: -50px;">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <center>
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="<?= $inicio[0]['imgCirculo1']?>" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
        <h2 class="fw-normal"><?= $inicio[0]['textCirculo1']?></h2>
        
        <p><a class="btn btn-secondary" href="#EducacaoAmbiental">Veja mais&raquo;</a></p>
        </center>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <center>
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="<?= $inicio[0]['imgCirculo2']?>" role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
        <h2 class="fw-normal"><?= $inicio[0]['textCirculo2']?></h2>
        
        <p><a class="btn btn-secondary" href="#Cursos">Veja mais&raquo;</a></p>
        </center>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <center>
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="<?= $inicio[0]['imgCirculo3']?>"  role="img" aria-label="Placeholder" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-color)"/></img>
        <h2 class="fw-normal"><?= $inicio[0]['textCirculo2']?></h2>
        
        <p><a class="btn btn-secondary" href="#Jogos">Veja mais&raquo;</a></p>
        </center>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1"><span id="EducacaoAmbiental" class="text-body-secondary">Educação Ambiental</span></h2>
        <p class="lead"><?= $inicio[0]['textCompletoCirculo1']?></p>
      </div>
      <div class="col-md-5">
        <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="400" height="400" src="<?= $inicio[0]['imgCirculo1']?>" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-bg)"/><text x="50%" y="50%" fill="var(--bs-secondary-color)" dy=".3em"></text></img>
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading fw-normal lh-1"><span id="Cursos" class="text-body-secondary">Cursos</span></h2>
        <p class="lead"><?= $inicio[0]['textCompletoCirculo2']?></p>      
      </div>
      <div class="col-md-5 order-md-1">
        <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500"  src="<?= $inicio[0]['imgCirculo2']?>" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-bg)"/><text x="50%" y="50%" fill="var(--bs-secondary-color)" dy=".3em"></text></img>
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1"><span id="Jogos" class="text-body-secondary">Jogos</span></h2>
        <p class="lead"><?= $inicio[0]['textCompletoCirculo3']?></p>     
      </div>
      <div class="col-md-5">
        <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" src="<?= $inicio[0]['imgCirculo3']?>" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="var(--bs-secondary-bg)"/><text x="50%" y="50%" fill="var(--bs-secondary-color)" dy=".3em"></text></img>
      </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->
