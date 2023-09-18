<?php

    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    
    if(@$_SESSION['alert'] != null){

        echo '<div class="alert alert-warning alert-dismissible fade show container" role="alert">
        <strong>Existem Questões Erradas!</strong>.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      ';   
      
    }
    $_SESSION['alert'] == null;  

    foreach($manipula->getSemana($_GET['IdSemana']) as $semana ){
        
?>
    
    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
        
                
                <h3><?= $semana['nomeMateria'] ?></h3>
                <h1><?= $semana['conteudo'] ?></h1>

        
            </div>   
        </div>


<?php
    
    }foreach($manipula->getQuestionarios($semana['id'],$semana['id_curso']) as $questionarios){
?>
        <?php
            foreach($manipula->getCursando($semana['id_curso'], $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id']) as $checkSemana){

                if($checkSemana['semana'] == $semana['semana']){
        ?>
        <div class="container card mb-3" style="width: 100%;">
            <div class="card-body">
      
                <form method="POST" action="adm/cadastrarCurso/cadastrarNoCurso.php" enctype="multipart/form-data"> 
                    
                    <h3><?= $questionarios['perg1'] ?></h3>
                        <p>
                        <label>
                        <input type="radio" name="questao1" value="a" /> A) <?= $questionarios['a1'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao1" value="b" /> B) <?= $questionarios['b1'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao1" value="c" /> C) <?= $questionarios['c1'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao1" value="d" /> D) <?= $questionarios['d1'] ?>.</label>

                        <input type="text" class="form-control" hidden  name="resp1" value="<?= $questionarios['resp1'] ?>">
                    <br />
                    <h3><?= $questionarios['perg2'] ?></h3>
                        <p>
                        <label>
                        <input type="radio" name="questao2" value="a" /> A) <?= $questionarios['a2'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao2" value="b" /> B) <?= $questionarios['b2'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao2" value="c" /> C) <?= $questionarios['c2'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao2" value="d" /> D) <?= $questionarios['d2'] ?>.</label>

                        <input type="text" class="form-control" hidden  name="resp2" value="<?= $questionarios['resp2'] ?>">
                    <br />
                    <h3><?= $questionarios['perg3'] ?></h3>
                        <p>
                        <label>
                        <input type="radio" name="questao3" value="a" /> A) <?= $questionarios['a3'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao3" value="b" /> B) <?= $questionarios['b3'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao3" value="c" /> C) <?= $questionarios['c3'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao3" value="d" /> D) <?= $questionarios['d3'] ?>.</label>

                        <input type="text" class="form-control" hidden  name="resp3" value="<?= $questionarios['resp3'] ?>">
                    <br />
                    <h3><?= $questionarios['perg4'] ?></h3>
                        <p>
                        <label>
                        <input type="radio" name="questao4" value="a" /> A) <?= $questionarios['a4'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao4" value="b" /> B) <?= $questionarios['b4'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao4" value="c" /> C) <?= $questionarios['c4'] ?>;</label>
                        <br />
                        <label>
                        <input type="radio" name="questao4" value="d" /> D) <?= $questionarios['d4'] ?>.</label>

                        <input type="text" class="form-control" hidden  name="resp4" value="<?= $questionarios['resp4'] ?>">
                    <br />
                    <input type="text" class="form-control" hidden  name="id_semana" value="<?= $semana['id'] ?>">
                    <input type="text" class="form-control" hidden  name="semana" value="<?= $semana['semana'] + 1 ?>">
                    <input type="text" class="form-control" hidden  name="id_curso" value="<?= $semana['id_curso'] ?>" >
                    <input type="text" class="form-control" hidden  name="id_usuario" value="<?= $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id']?>" >
                    <button type="submit"  class="btn btn" name="acao" value="atualizarSemana" style="margin-left:90%; margin-top: -70px;" ><img src="img/Icons/enviar.svg"/></button>
                </form>

                </div>   
            </div>
            

        <?php

                }
            }
        ?>
<?php
    }
    
?>