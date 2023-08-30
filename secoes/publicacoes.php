    
<?php

error_reporting(0);

include_once("dao/manipuladados.php");
$manipula = new manipuladados();

?>

 <div class="container">
    <ul class="nav nav-tabs">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#textos">Textos</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#pdf">PDfs</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#cursos">Cursos</a>
    </li>
   
    </ul>

   
    <div class="container" style="height:800px; width:100%; overflow:auto; padding:2%">
        <h1 id="textos"></h1>
    <?php
        if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['tipo'] == "aluno"){
    ?>
            
    <?php
        }else if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['tipo'] == "prof"){

   
    ?>
            
    


       <div class="container row" id="textos">
                <div class="col-9">
                    <h1 class="card-title">Textos</h1>
                </div>
                <div class="col-3">
                    
                    <button class="btn btn" style="margin-left:80%;" data-bs-toggle="modal" data-bs-target="#modal02"><img src="img/Icons/mais.svg"/></a></button>

                    <div class="modal fade" id="modal02" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                        <div class="modal-dialog">
                            <div class="modal-content">

                            
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Poste um novo Texto</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form method="POST" action="adm/postagens/postar.php" enctype="multipart/form-data">
                                    <div class="modal-body">
                                        <div class="mb-3">
                                            <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                            <label class="form-label">Titulo do conteúdo</label>
                                            <input type="text" class="form-control" name="titulo">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Resumo</label>
                                            <input type="text" class="form-control" name="resumo" ">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Texto</label>
                                            <input type="text" class="form-control" name="texto">
                                        </div>
                                        
                                    </div>

                                    <div class="modal-footer">
                                        
                                        <button type="submit"  class="btn btn-primary" name="acao" value="postar">Postar</button>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                        
                    </div>
                </div>
               
               
            </div>
        
       <?php
        $publicacoes = new manipuladados();

        $publicacoes->setTable("tb_textos");

        foreach($publicacoes->getAllDataTable() as $textos){

            if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $textos['id_usuario']){
                
        ?> 
            
            <div class="card container mb-4" style="width: 100%;">
                <div class="card-body">

                   
                       
                        <div class="row">
                            <div class="col-10">
                                <h5 class="card-title"><?= $textos['titulo']?></h5>
                            </div>
                            <div class="col-2">
                                <button class="btn btn" style="margin-left:80%;" data-bs-toggle="modal" data-bs-target="#modal<?php echo  $textos['id']?>"><img src="img/Icons/editar.svg"/></button>
                        
                                <div class="modal fade" id="modal<?php echo $textos['id']?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                        
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Edite sua Postagem</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <form method="POST" action="adm/postagens/postar.php" enctype="multipart/form-data">
                                                <div class="modal-body">
                                                    <div class="mb-3">
                                                        <input type="text" class="form-control" hidden  name="id" value="<?= $textos['id']?>" >
                                                        <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                                        <label class="form-label">Titulo do conteúdo</label>
                                                        <input type="text" class="form-control" name="titulo" value="<?= $textos['titulo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Resumo</label>
                                                        <input type="text" class="form-control" name="resumo" value="<?= $textos['resumo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Texto</label>
                                                        <input type="text" class="form-control" name="texto" value="<?= $textos['texto']?>">
                                                    </div>
                                                    
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="submit"  class="btn btn-primary" name="acao" value="apagar">Apagar</button>
                                                    <button type="submit"  class="btn btn-primary" name="acao" value="atualizar">Atualizar</button>
                                                </div>
                                            </form>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                    <a href="?secoes=conteudos&textoId=<?= $textos['id']?>" style="text-decoration: none; color: black;">         
                        </div>  
                            Resumo                       
                            <p class="card-text"><?= $textos['resumo']?></p>
                        </div>
                    </a>
                </div>
            
        
            
    <?php
        }}
   
    ?>
    
    
    
    <div class="container row" id="pdf">
                <div class="col-9">
                    <h1 class="card-title">PDfs</h1>
                </div>
                <div class="col-3">
                    
                    <button class="btn btn" style="margin-left:80%;" data-bs-toggle="modal" data-bs-target="#modal01"><img src="img/Icons/mais.svg"/></a></button>

                    <div class="modal fade" id="modal01" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                        <div class="modal-dialog">
                            <div class="modal-content">

                            
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Poste um novo PDF</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form method="POST" action="adm/postagens/postarPdf.php" enctype="multipart/form-data">
                                    <div class="modal-body">
                                        <div class="mb-3">
                                            <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                            <label class="form-label">Titulo do conteúdo</label>
                                            <input type="text" class="form-control" name="titulo">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Resumo</label>
                                            <input type="text" class="form-control" name="resumo" ">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Texto</label>
                                            <input type="file" name="pdf" class="form-control">
                                        </div>
                                        
                                    </div>

                                    <div class="modal-footer">
                                        
                                        <button type="submit"  class="btn btn-primary" name="acao" value="postar">Postar</button>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                        
                    </div>
                </div>
               
               
            </div>
        
       <?php
        $publicacoes = new manipuladados();

        $publicacoes->setTable("tb_pdf");

        foreach($publicacoes->getAllDataTable() as $pdfs){

            if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $pdfs['id_usuario']){
                
        ?> 
            
            <div class="card container mb-4" style="width: 100%;">
                <div class="card-body">

                   
                       
                        <div class="row">
                            <div class="col-10">
                                <h5 class="card-title"><?= $pdfs['titulo']?></h5>
                            
                                
                            </div>
                            <div class="col-2">
                                <button class="btn btn" style="margin-left:80%;" data-bs-toggle="modal" data-bs-target="#modal<?php echo  $pdfs['id']?>"><img src="img/Icons/editar.svg"/></button>
                        
                                <div class="modal fade" id="modal<?php echo $pdfs['id']?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                        
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Edite sua Postagem</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <form method="POST" action="adm/postagens/postarPdf.php" enctype="multipart/form-data">
                                                <div class="modal-body">
                                                    <div class="mb-3">
                                                        <input type="text" class="form-control" hidden  name="id" value="<?= $pdfs['id']?>" >
                                                        <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                                        <label class="form-label">Titulo do conteúdo</label>
                                                        <input type="text" class="form-control" name="titulo" value="<?= $pdfs['titulo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Resumo</label>
                                                        <input type="text" class="form-control" name="resumo" value="<?= $pdfs['resumo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Arquivo PDF</label>
                                                        <input type="file" name="pdf" class="form-control" value="<?php echo $pdfs['pdf'] ?>">
                                                    </div>
                                                    
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="submit"  class="btn btn-primary" name="acao" value="apagar">Apagar</button>
                                                    <button type="submit"  class="btn btn-primary" name="acao" value="atualizar">Atualizar</button>
                                                </div>
                                            </form>
                                            
                                        </div>
                                    </div>
                                </div>
                           

                            </div>
                    
                            
                        </div>

                        <div style="width: 100%; height: 800px;">
                                <embed src="<?= $pdfs['pdf']?>" type="application/pdf" style="width: 100%; height: 100%;">
                        </div>
                
                    </div>
            </div>
                
               
               
        <?php
            }
        }

        ?>
        <div class="container row" id="cursos">
                <div class="col-9">
                    <h1 class="card-title">Cursos</h1>
                </div>
                <div class="col-3">
                    
                    <button class="btn btn" style="margin-left:80%;" data-bs-toggle="modal" data-bs-target="#modal03"><img src="img/Icons/mais.svg"/></a></button>

                    <div class="modal fade" id="modal03" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                        <div class="modal-dialog">
                            <div class="modal-content">

                            
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Poste um novo curso</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                
                                <div class="mb-3">
                                    
                                            <form method="POST" action="adm/postagens/postarCursos.php" enctype="multipart/form-data">
                                            <div class="modal-body">
                                                <div class="mb-3">
                                                    <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                                    <label class="form-label">Titulo do Curso</label>
                                                    <input type="text" class="form-control" name="titulo">
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Resumo</label>
                                                    <input type="text" class="form-control" name="resumo" >
                                                </div> 
                                                <div class="mb-3">
                                                    <label class="form-label">Quantidade de Modulos</label>
                                                    <input type="text" class="form-control"  name="semanas" >
                                                </div> 
                                                <div class="mb-3">
                                                    <label class="form-label">Carga Horária</label>
                                                    <input type="text" class="form-control" name="horas" >
                                                </div>
                                                

                                                <div class="modal-footer">
                                                    
                                                    <button type="submit"  class="btn btn-primary" name="acao" value="postar">Postar</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                   
                                    
                                                                
                                    
                            </div>
                        </div>
                        
                    </div>
                </div>
               
               
            </div>
        <?php
        $publicacoes = new manipuladados();

        $publicacoes->setTable("tb_curso");

        foreach($publicacoes->getAllDataTable() as $cursos){

        if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $cursos['id_usuario']){
            
            $verSemanas = new manipuladados;
            
            $verSemana = $verSemanas->getSemanaPorSemanas($cursos['id'], $cursos['semanas']);

            $verQuestionarios = new manipuladados;
            
            $verQuestionario = $verQuestionarios->getQuestionariosPorSemanas($cursos['id'], $cursos['semanas']);

            

            if($verSemana[0]['id_curso'] == $cursos['id'] and $verSemana[0]['semana'] == $cursos['semanas'] and $verQuestionario[0]['semana'] == $cursos['semanas'] ){
           

                
        ?> 
        

            
            <div class="card container mb-4" style="width: 100%;">
                <div class="card-body">

                   
                       
                        <div class="row">
                            <div class="col-10">
                                <h3 class="card-title"><?= $cursos['titulo']?></h3>
                            
                                
                            </div>
                            
                            <div class="col-2">
                                
                                <button class="btn btn" style="margin-left:80%;" data-bs-toggle="modal" data-bs-target="#modal00<?php echo  $cursos['id']?>"><img src="img/Icons/editar.svg"/></button>
                        
                                <div class="modal fade" id="modal00<?php echo $cursos['id']?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                        
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Edite sua Postagem</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <form method="POST" action="adm/postagens/postarPdf.php" enctype="multipart/form-data">
                                                <div class="modal-body">
                                                    <div class="mb-3">
                                                        <input type="text" class="form-control" hidden  name="id" value="<?= $cursos['id']?>" >
                                                        <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                                        <label class="form-label">Titulo do conteúdo</label>
                                                        <input type="text" class="form-control" name="titulo" value="<?= $cursos['titulo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Resumo</label>
                                                        <input type="text" class="form-control" name="resumo" value="<?= $cursos['resumo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Carga Horária</label>
                                                        <input type="text" class="form-control" name="resumo" value="<?= $cursos['horas']?>">
                                                    </div>

                                                </div>
                                                <?php
                                                    $publicacoes = new manipuladados();

                                                    $publicacoes->setTable("tb_semanas");

                                                    foreach($publicacoes->getAllDataTable() as $semanas){

                                                        if($semanas['id_curso'] == $cursos['id']){
                                                            
                                                ?>
                                                    <div class="mb-3 container">
                                                        <input type="text" class="form-control" hidden  name="id" value="<?= $semanas['id']?>" >
                                            
                                                        <label class="form-label"><h5>Modulo <?= $semanas['semana']?></h5></label>
                                                        <br/>
                                                        <label class="form-label">Nome:</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $semanas['nomeMateria']?>">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Conteúdo:</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $semanas['conteudo']?>">
                                                    </div>
                                                          
                                                    

                                                <?php
                                                        }
                                                        $publicacoes = new manipuladados();
                                                        $questionarios = $publicacoes->getQuestionarios($semanas['id'], $cursos['id']);

                                                ?>
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Questionário:</label>
                                                    
                                                    </div>

                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Pergunta 1</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['perg1']?>">
                                                   
                                                        <label class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['a1']?>">
                                                        <label class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['b1']?>">
                                                        <label class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['c1']?>">
                                                        <label class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['d1']?>">

                                                        <label class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['resp1']?>">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Pergunta 2</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['perg2']?>">

                                                        <label class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['a2']?>">
                                                        <label class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['b2']?>">
                                                        <label class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['c2']?>">
                                                        <label class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['d2']?>">

                                                        <label class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['resp2']?>">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Pergunta 3</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['perg3']?>">

                                                        <label class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['a3']?>">
                                                        <label class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['b3']?>">
                                                        <label class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['c3']?>">
                                                        <label class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['d3']?>">

                                                        <label class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['resp3']?>">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Pergunta 4</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['perg4']?>">

                                                        <label class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['a4']?>">
                                                        <label class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['b4']?>">
                                                        <label class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['c4']?>">
                                                        <label class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['d4']?>">

                                                        <label class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" name="nomeMateria" value="<?= $questionarios[0]['resp4']?>">
                                                    </div>

                                                <?php
                                                      
                                                    }
                                                
                                                ?>
                                                <div class="modal-footer">
                                                    <button type="submit"  class="btn btn-primary" name="acao" value="apagar">Apagar</button>
                                                    <button type="submit"  class="btn btn-primary" name="acao" value="atualizar">Atualizar</button>
                                                </div>
                                            </form>
                                            
                                        </div>
                                    </div>
                                </div>
                           

                            </div>
                    
                            
                        </div>

                        <div>
                        <h5 class="card-title"><?= $cursos['horas']?>hs</h5>  
                        </div>
                        
                    </div>
            </div>
                
               
               
        <?php
            }else{
            
        ?> 
            <div class="card container mb-4" style="width: 100%;">
                <div class="card-body">

                <h3 class="card-title"><?= $cursos['titulo']?></h3>
                       <?php
                            for ($i=0; $i < $cursos['semanas']; $i++) {
                                $publicacoes = new manipuladados();

                                $checarCadastro = $publicacoes->getSemanaPorSemanas($cursos['id'], $i + 1);
                                
                                if($checarCadastro[0]['semana'] !=  $i + 1){
                                
                       
                       ?>
                       <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse0<?php echo $i + 1?>" aria-expanded="false" aria-controls="flush-collapseOne">
                                    Cadastrar semana <?php echo  $i + 1?>
                                </button>
                                </h2>
                                <div id="flush-collapse0<?php echo $i + 1?>" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                <div class="row">
                                    <div class="col-9">
                                        <h5 style="margin-left:20%;">Cadastrar</h5>
                                    </div>
                                    <div class="col-3">
                                        <button class="btn btn"  data-bs-toggle="modal" data-bs-target="#modal00<?php echo  $cursos['id']?>"><img src="img/Icons/mais.svg"/></button>
                                    </div>
                                    <div class="modal fade" id="modal00<?php echo $cursos['id']?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                                        <div class="modal-dialog">
                                            <div class="modal-content">

                                            
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Edite sua Postagem</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <form class="was-validated" method="POST" action="adm/postagens/postarCursos.php" enctype="multipart/form-data">
                                                    <div class="modal-body">
                                                        <div class="mb-3">
                                                            <input type="text" class="form-control" hidden  name="semana" value="<?= $i + 1?>" >
                                                            <input type="text" class="form-control" hidden  name="id_curso" value="<?= $cursos['id']?>" >
                                                            <label for="validationTextarea" class="form-label">Assunto</label>
                                                            <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="nomeMateria" >
                                                            <div class="invalid-feedback">
                                                                Digite algo.
                                                            </div>
                                                        </div>
                                                        <div class="mb-3">
                                                            
                                                            <label for="validationTextarea" class="form-label">Conteúdo</label>
                                                            <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="conteudo" >
                                                            <div class="invalid-feedback">
                                                                Digite algo.
                                                            </div>
                                                        </div>

                                                    
                                                    

                                                    <div class="modal-footer">

                                                            <button type="submit"  class="btn btn-primary" name="acao" value="postarSemana">Postar</button>
                                                    </div>
                                                </form>
                                                
                                            </div>
                                        </div>
                                   
                                        </div>
                                        </div>
                                    </div>
                               
                                        
                                        
                                
                            </div>
                            
                        </div>
                            
                            
                           
                        <?php
                                }else{ 
                                    
                                    $verQuestionarios = new manipuladados;
            
                                    $verQuestionario = $verQuestionarios->getQuestionariosPorSemanas($cursos['id'], $i + 1);
                        
                                    
                        
                                    if($verQuestionario[0]['semana'] != $i + 1 ){
                                        $verIdSemanas = new manipuladados;
            
                                        $verIdSemana = $verIdSemanas->getSemanaPorSemanas($cursos['id'], $i + 1);

                                   
                            
                            
                        ?>
                        <h5>Modulo <?php echo $i + 1?> cadastrado</h5>
                        
                        <div class="accordion accordion-flush" id="accordionFlushExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse0<?php echo $verIdSemana[0]['id']?>" aria-expanded="false" aria-controls="flush-collapseOne">
                                    Cadastrar Questionário <?php echo  $i + 1?>
                                </button>
                                </h2>
                                <div id="flush-collapse0<?php echo $verIdSemana[0]['id']?>" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                                <div class="accordion-body">
                                <div class="row">
                                    <div class="col-9">
                                        <h5 style="margin-left:20%;">Cadastrar</h5>
                                    </div>
                                    <div class="col-3">
                                        <button class="btn btn"  data-bs-toggle="modal" data-bs-target="#modal000<?php echo  $verIdSemana[0]['id']?>"><img src="img/Icons/mais.svg"/></button>
                                    </div>
                                    <div class="modal fade" id="modal000<?php echo  $verIdSemana[0]['id']?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                                        <div class="modal-dialog">
                                            <div class="modal-content">

                                            
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Edite sua Postagem</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <form class="was-validated" method="POST" action="adm/postagens/postarCursos.php" enctype="multipart/form-data">
                                                    <div class="modal-body">
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Questionário:</label>
                                                    
                                                    </div>

                                                    <div class="mb-3 container">        
                                                    <label for="validationTextarea" class="form-label">Pergunta 1</label>
                                                        <input type="text" class="form-control"  hidden name="id_semana" value="<?= $verIdSemana[0]['id']?>" >
                                                        <input type="text" class="form-control" hidden  name="semana" value="<?= $i + 1?>" >
                                                        <input type="text" class="form-control" hidden  name="id_curso" value="<?= $cursos['id']?>" >
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="perg1">

                                                        <label class="form-label">Letra A</label>
                                                        <label for="validationTextarea" class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="a1">
                                                        <label for="validationTextarea" class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="b1">
                                                        <label for="validationTextarea" class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="c1">
                                                        <label for="validationTextarea" class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="d1">

                                                        <label for="validationTextarea" class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" placeholder="requer um texto" required name="resp1">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label for="validationTextarea" class="form-label">Pergunta 2</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="perg2">

                                                        <label class="form-label">Letra A</label>
                                                        <label for="validationTextarea" class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="a2">
                                                        <label for="validationTextarea" class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="b2">
                                                        <label for="validationTextarea" class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="c2">
                                                        <label for="validationTextarea" class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="d2">

                                                        <label for="validationTextarea" class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" placeholder="requer um texto" required name="resp2">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                    <label for="validationTextarea" class="form-label">Pergunta 3</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="perg3">

                                                        <label class="form-label">Letra A</label>
                                                        <label for="validationTextarea" class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="a3">
                                                        <label for="validationTextarea" class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="b3">
                                                        <label for="validationTextarea" class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="c3">
                                                        <label for="validationTextarea" class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="d3">

                                                        <label for="validationTextarea" class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" placeholder="requer um texto" required name="resp3">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label for="validationTextarea" class="form-label">Pergunta 4</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="perg4">

                                                        <label class="form-label">Letra A</label>
                                                        <label for="validationTextarea" class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="a4">
                                                        <label for="validationTextarea" class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="b4">
                                                        <label for="validationTextarea" class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="c4">
                                                        <label for="validationTextarea" class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" id="validationTextarea" placeholder="requer um texto" required name="d4">

                                                        <label for="validationTextarea" class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" placeholder="requer um texto" required name="resp4">

                                                       
                                                    </div>

                                                </div>

                                                <div class="modal-footer">
                                                    
                                                    <button type="submit"  class="btn btn-primary" name="acao" value="postarQuestionarios">Postar</button>
                                                </div>

                                        
                                                            
                                               
                                            </form>
                                                
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                                </div>
                                </div>
                            </div>
                            </div>
                            
                            
                        <?php
                                }else{                
                            
                            
                        ?>
                        
                            <h5>Modulo <?php echo $i + 1?> postado com sucesso! </h5>
                        <?php
                                    }
                                }                
                            }
                            
                        ?>
                        <br>
                        
                        <div>
                            <h5 class="card-title"><?= $cursos['horas']?>hs</h5>  
                        </div>
                            
                        </div>
                    
                    
                    
                </div>
                
               
      


 
        <?php
            
                }

            }
        }
        ?>  
      </div> 
  
      
</div>
</div>
      
</div>
     
        
<?php
    }
?>
</div> 
</div>  
</div> 
 
      
             
      


