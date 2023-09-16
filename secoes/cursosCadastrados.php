<?php

    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    foreach($manipula->getCursosPorUsuarios($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id']) as $cursos ){
        
?>
    
    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
           
                    
       
                <a href="?secoes=semanas&IdCurso=<?= $cursos ['id_curso'] ?>" style="text-decoration: none; color: black;">
                    <h1><?= $manipula->getCursos($cursos['id_curso'])[0]['titulo'] ?></h1>
                    
                
                <?php
                    foreach($manipula->getCursos($cursos['id_curso']) as $curso ){
                        if($cursos['semana'] > $curso['semanas']){
                ?>
                        <h3>concluido</h3>
                        
                        <form method="POST" style="margin-left: 80%; margin-top: -50px; position: relative;" action="adm/cadastrarCurso/verCertificado.php" >
                            <input type="text" class="form-control" hidden  name="id_curso" value="<?= $cursos['id_curso']?>" >
                            <button type="submit" class="btn btn-primary">Baixar Certificado</button>
                        </form>



                <?php
                        }else{
                ?>
                        <h3>em andamento</h3>

                <?php
                        }
                    }
                ?>
                </a>
            </div>   
        </div>


<?php
    }
?>


