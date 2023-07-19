
<?php 
session_start();

// Variavel que retorna um boolean caso o usuário esteja logado = true, deslogado = false
$isset = IsSet($_COOKIE['email']);

?>
  
  <div class="container-fluid" style="width: 80%;">
    <a class="navbar-brand" href="?secoes=inicio">IMG</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon" ></span>
    </button>
    <?php 
      include_once("dao/manipuladados.php");

      $manipula = new manipuladados();
      // Caso o usuario logado seja o adm@adm
      if(@$_COOKIE['email'] == "adm@adm"){?>
        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="width: 60%; background-image: linear-gradient(to right, #146829, #3b5f47);">
          <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">IMG</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="?secoes=administracao">administração</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <?php echo "Olá ". $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome'] ?>
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="?secoes=perfil">Perfil</a></li>
                  <li><a class="dropdown-item" href="adm/login/sair.php">Sair</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>


      <?php

      
      }else if($isset){ 
        if(@$_SESSION['tipo'] == "aluno"){
      
        ?>

        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="width: 60%; background-image: linear-gradient(to right, #146829, #3b5f47);">
          <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">IMG</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="?secoes=jogos">Jogos</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <?php echo "Olá ". $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome'] ?>
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="?secoes=perfil">Perfil</a></li>
                  <li><a class="dropdown-item" href="adm/login/sair.php">Sair</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>

        <?php } else if(@$_SESSION['tipo'] == "prof"){ ?>
          <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="width: 60%; background-image: linear-gradient(to right, #146829, #3b5f47);">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasNavbarLabel">IMG</h5>
              <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="?secoes=curso">Cursos</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <?php echo "Olá ". $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome'] ?>
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="?secoes=perfil">Perfil</a></li>
                    <li><a class="dropdown-item" href="adm/login/sair.php">Sair</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>

        <?php }?>
                          
      <?php

      }else{ ?>
        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="width: 60%; background-image: linear-gradient(to right, #146829, #3b5f47);">
          <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">IMG</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="adm/login/login.php">Login</a>
              </li>
            </ul>
          </div>
        </div>

  

          
      <?php } ?>

      