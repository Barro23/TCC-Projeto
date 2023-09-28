
<div  class="container" >
    <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 g-3">


<?php 
    include_once('dao/manipuladados.php');
    $curso = new manipuladados();

    $curso->setTable("tb_curso");

    foreach($curso->getAllDataTable() as $cursos){

    ?>


        <div class="col" >
                <div class="card h-20 " style=" width: 100%; height:300px;" >
                    <div class="container">
                        <br/>
                    <form method="POST" action="adm/cadastrarCurso/cadastrarNoCurso.php" enctype="multipart/form-data">
                    
                   
               
        <?php 
   
            if($curso->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $cursos['id_usuario']){

        ?>
                <a href="?secoes=perfil" style="text-decoration: none; color: black;">
                    <img src="<?= $curso->getTextosByUsuariosID($cursos['id_usuario'])[0]['img_capa']?>" style="object-fit: cover; width: 45px; height: 45px; border-radius: 50%">
                        
                    <div style=" margin-left:45px; margin-top: -30px;">
                        <h6><?= $curso->getTextosByUsuariosID($cursos['id_usuario'])[0]['nome']?></h6>
                    </div>  
                </a>

        <?php 

            }else{

        ?>
                <a href="?secoes=perfis&perfisId=<?= $cursos['id_usuario']?>" style="text-decoration: none; color: black;">
                <img src="<?= $curso->getTextosByUsuariosID($cursos['id_usuario'])[0]['img_capa']?>" style="object-fit: cover; width: 45px; height: 45px; border-radius: 50%">
                        
                    <div style=" margin-left:45px; margin-top: -30px;">
                        <h6><?= $curso->getTextosByUsuariosID($cursos['id_usuario'])[0]['nome']?></h6>
                    </div>  
                </a>

        <?php 

            }

        ?>
                    <p></p>
                    <p>
                        <h5 class="card-title"><?= $cursos['titulo']?></h5>
                    </p>
                    <p class="card-text">Semanas de Duração:  <?= $cursos['semanas']?></p>
                    <p class="card-text">Cargar horária: <?= $cursos['horas']?> horas</p>

                    
                        
                    
                            
                    <input type="text"  hidden  name="id_usuario" value="<?php echo  $curso->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                    <input type="text"  hidden  name="id_curso" value="<?= $cursos['id']?>" >
                    <input type="text" hidden  name="semana" value="1">
                   
    
                    <?php
                        error_reporting(0);
                        $cursar = new manipuladados();
                        $cursando = $cursar->getCursando($cursos['id'], $curso->getUsuarioByEmail($_COOKIE['email'])[0]['id']);
                        if($cursando[0]['id_usuario'] == $curso->getUsuarioByEmail($_COOKIE['email'])[0]['id']){

                        
                        
                    ?>
                       
                            <h5 style="color: green;">cadastrado</h5>

                    <?php
                        

                        }else{
                        
                    ?>
                        <button type="submit" class="btn btn-primary" name="acao" value="cadastrar-se">Cadastrar-se</button>
                    <?php
                        
                        }
                        
                    ?>
                       
                </form>
                    
              
              
                </div>
            </div>
        </div>
        

    <?php 
    }
    ?>
    </div>
</div>