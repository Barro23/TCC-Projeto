<?php
    
        
    if(@$_SESSION['alert'] != null){

        echo '<div class="alert alert-warning alert-dismissible fade show container" role="alert">
        <strong>Parabéns, Modulo completado!</strong>.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        ';   
        $_SESSION['alert'] == null;  
    }

    

    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    foreach($manipula->getSemanasPorCurso($_GET['IdCurso']) as $semanas ){
        
?>
    
    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
           
                    
       <?php
       $manipula = new manipuladados();

       foreach($manipula->getCursando($_GET['IdCurso'], $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id']) as $checkSemana){

            if($checkSemana['semana'] >= $semanas['semana']){
       ?>
                <a href="?secoes=semana&IdSemana=<?= $semanas['id'] ?>" style="text-decoration: none; color: black;">
                    <h3><?= $semanas['id_curso'] ?></h3>
                    <h1><?= $semanas['nomeMateria'] ?></h1>
                </a>
        <?php
            }else{
        ?>

                <a href="#" style="text-decoration: none; color: black;">
                    <h3><?= $semanas['id_curso'] ?></h3>
                    <h1><?= $semanas['nomeMateria'] ?></h1>
                    <h3>complete as etapas anteriores do curso</h3>
                </a>

        <?php
            }
        }
        ?>
            
            </div>   
        </div>


<?php
    }
?>