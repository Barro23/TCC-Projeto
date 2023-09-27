
<?php
error_reporting(0);

include_once("dao/manipuladados.php");
$manipula = new manipuladados();

?>
<div class="container"> 
    
    <div class="card mb-3" style="">
        <img src="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_fundo'] ?>" class="card-img-top" style="object-fit: cover; height: 150px; ">
        <div class="card-body">
            <button type="button" class="btn btn" data-bs-toggle="modal" data-bs-target="#exampleModal" style="border:none;"><img src="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_capa'] ?>" style="object-fit: fill;background-color: white;  width: 140px; height: 140px; border-radius: 50%; border: solid 4px white; position: relative; margin-top: -100px;"></button>
            
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                <div class="modal-body">
                    <img src="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_capa'] ?>" style="object-fit: cover;  width: 100%;  height: 100%; border-radius: 2%;">
                </div>
                
    

        
                </div>
            </div>
            </div>
            
            <div class="container row row-cols-2">
                <div class="col">
                    <h1 class="card-title"><?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome'] ?></h1>
                </div>
                <div class="col">
                
                    <button class="btn btn" style="margin-left:92%;" data-bs-toggle="modal" data-bs-target="#modal<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>"><img src="img/Icons/editar.svg"/></a></button>

                    
                    <div class="modal fade" id="modal<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                        <div class="modal-dialog">
                            <div class="modal-content">

                            
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Atualize seus Dados</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form method="POST" action="adm/login/cadastrar.php" enctype="multipart/form-data">
                                    <div class="modal-body">
                                        <div class="mb-3">
                                            <input type="text" class="form-control" hidden  name="id" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                            <label class="form-label">Nome</label>
                                            <input type="text" class="form-control" required name="nome" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Nome Completo</label>
                                            <input type="text" class="form-control" required name="nome_completo" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome_completo'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Instituição</label>
                                            <input type="text" class="form-control" required name="instituto" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['instituto'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Descreva-se</label>
                                            <input type="text" class="form-control" required name="descricao" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['descricao'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Escolha uma imagem para sua Capa</label>
                                            <input type="file" name="img_capa" required="required" class="form-control" value="<?php echo $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_capa'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Escolha uma imagem para seu Fundo</label>
                                            <input type="file" name="img_fundo" required="required" class="form-control" id="formGroupExampleInput2" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_fundo'] ?>">
                                        </div>
                                
                                        <div class="mb-3">
                                            <label class="form-label">Data de Nascimento</label>
                                            <input type="date" class="form-control" required name="data_nascimento" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['data_nascimento'] ?>">
                                        </div>
                                        <div class="mb-3">
                                
                                            <input type="email" hidden required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['email'] ?>">
                                            
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword1" class="form-label">Senha</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" name="senha">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword1" class="form-label">Aluno</label>   
                                            <input type="radio" id="html" required="required" name="tipo" value="aluno">
                                            <label for="exampleInputPassword1" class="form-label" style="margin-left: 15%;">Professor</label>
                                            <input type="radio" id="html"  required="required" name="tipo" value="prof">
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-secondary" name="acao" value="Deletar">Apagar Conta</button>
                                        <button type="submit"  class="btn btn-primary" name="acao" value="Atualizar">Atualizar</button>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                        
                    </div>
                </div>
               
               
            </div>
            <h5 class="card-title" style="margin-left:13px">Nome: <?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome_completo'] ?></h5>
            <div class="container-fluid">
                <p class="card-text">Data Nasc: <?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['data_nascimento'] ?></p>
                <p class="card-text">Endereço Email: <?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['email'] ?></p>
                <p class="card-text">Sobre Você: <?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['descricao'] ?></p>
                <p class="card-text">Instituição: <?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['instituto'] ?></p>
                <?php
                    $cursando = new manipuladados();

                    $cursando->setTable("tb_cursando");
                    $i = 0;
                    foreach($cursando->getCursosPorUsuarios($cursando->getUsuarioByEmail($_COOKIE['email'])[0]['id']) as $cursados){
                        $i++;
                    }
                        if($i >= 1 and $i < 3){
                            
                        ?> 
                        
                        <img   src="img/icons/rank1.png" title="Novato" style="position: absolute; margin-left: 80%; margin-top: -190px; height: 13%; ">
                        <?php
                            }else if($i >= 3 and $i < 6){        
                        ?>
                        <img style="position: absolute; margin-left: 80%; margin-top: -190px; height: 13%;" title="Experiente" src="img/icons/rank2.png"></img>
                        <?php
                            }else if($i >= 6){        
                        ?>
                        <img style="position: absolute; margin-left: 80%; margin-top: -190px; height: 13%; " title="Mestre" src="img/icons/rank3.png"></img>
                    <?php
                        }    
                      
                    ?>
            </div>
            
                    
            
        </div>
    </div>
    
    <br/>

    

   
    
    <?php
        if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['tipo'] == "aluno"){
    ?>
            
    <?php
        }else if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['tipo'] == "prof"){

   
    ?>
            
    <div class="container" style="height:600px; width:100%; overflow:auto; padding:2%">
    <ul class="nav nav-tabs">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#textos">Textos</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#pdf">PDfs</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#curso">Cursos</a>
    </li>
   
    </ul>

       <div class="container row" id="textos">
                <div class="col-9">
                    <h1 class="card-title">Textos</h1>
                </div>
                <div class="col-3">
                    
                    <button class="btn btn" style="margin-left:80%;" data-bs-toggle="modal" data-bs-target="#modal2"><img src="img/Icons/mais.svg"/></a></button>

                    <div class="modal fade" id="modal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                        <div class="modal-dialog">
                            <div class="modal-content">

                            
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Poste um novo Conteúdo</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form method="POST" action="adm/postagens/postar.php" enctype="multipart/form-data">
                                    <div class="modal-body">
                                        <div class="mb-3">
                                            <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                            <label class="form-label">Titulo do conteúdo</label>
                                            <input type="text" required class="form-control" name="titulo">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Resumo</label>
                                            <input type="text" required class="form-control" name="resumo" ">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Texto</label>
                                            <input type="text" required class="form-control" name="texto">
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
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Edite seu Postagem</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <form method="POST" action="adm/postagens/postar.php" enctype="multipart/form-data">
                                                <div class="modal-body">
                                                    <div class="mb-3">
                                                        <input type="text" class="form-control" hidden  name="id" value="<?= $textos['id']?>" >
                                                        <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                                        <label class="form-label">Titulo do conteúdo</label>
                                                        <input type="text" class="form-control" required name="titulo" value="<?= $textos['titulo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Resumo</label>
                                                        <input type="text" class="form-control" required name="resumo" value="<?= $textos['resumo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Texto</label>
                                                        <input type="text" class="form-control" required name="texto" value="<?= $textos['texto']?>">
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
                                            <input type="text" required class="form-control" name="titulo">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Resumo</label>
                                            <input type="text" required class="form-control" name="resumo" ">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Texto</label>
                                            <input type="file" required name="pdf" class="form-control">
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
                                <button class="btn btn" style="margin-left:80%;" data-bs-toggle="modal" data-bs-target="#modal000<?php echo  $pdfs['id']?>"><img src="img/Icons/editar.svg"/></button>
                        
                                <div class="modal fade" id="modal000<?php echo $pdfs['id']?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                        
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Edite seu Postagem</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <form method="POST" action="adm/postagens/postarPdf.php" enctype="multipart/form-data">
                                                <div class="modal-body">
                                                    <div class="mb-3">
                                                        <input type="text" class="form-control" hidden  name="id" value="<?= $pdfs['id']?>" >
                                                        <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                                        <label class="form-label">Titulo do conteúdo</label>
                                                        <input type="text" class="form-control" required name="titulo" value="<?= $pdfs['titulo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Resumo</label>
                                                        <input type="text" class="form-control" required name="resumo" value="<?= $pdfs['resumo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Arquivo PDF</label>
                                                        <input type="file" name="pdf" required class="form-control" value="<?php echo $pdfs['pdf'] ?>">
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
            }}
        ?>          
        

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
        

            
            <div class="card container mb-4" id="curso" style="width: 100%;">
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
                                                        <input type="text" class="form-control" required name="titulo" value="<?= $cursos['titulo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Resumo</label>
                                                        <input type="text" class="form-control" required name="resumo" value="<?= $cursos['resumo']?>">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Carga Horária</label>
                                                        <input type="text" class="form-control" required name="resumo" value="<?= $cursos['horas']?>">
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
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $semanas['nomeMateria']?>">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Conteúdo:</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $semanas['conteudo']?>">
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
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['perg1']?>">
                                                   
                                                        <label class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['a1']?>">
                                                        <label class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['b1']?>">
                                                        <label class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['c1']?>">
                                                        <label class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['d1']?>">

                                                        <label class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['resp1']?>">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Pergunta 2</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['perg2']?>">

                                                        <label class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['a2']?>">
                                                        <label class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['b2']?>">
                                                        <label class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['c2']?>">
                                                        <label class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['d2']?>">

                                                        <label class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['resp2']?>">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Pergunta 3</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['perg3']?>">

                                                        <label class="form-label">Letra A</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['a3']?>">
                                                        <label class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['b3']?>">
                                                        <label class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['c3']?>">
                                                        <label class="form-label">Letra D</label>
                                                        <input type="text" class="form-control"  required name="nomeMateria" value="<?= $questionarios[0]['d3']?>">

                                                        <label class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control"  required name="nomeMateria" value="<?= $questionarios[0]['resp3']?>">
                                                    </div>
                                                    <div class="mb-3 container">        
                                                        <label class="form-label">Pergunta 4</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['perg4']?>">

                                                        <label class="form-label">Letra A</label>
                                                        <input type="text" class="form-control"  requiredname="nomeMateria" value="<?= $questionarios[0]['a4']?>">
                                                        <label class="form-label">Letra B</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['b4']?>">
                                                        <label class="form-label">Letra C</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['c4']?>">
                                                        <label class="form-label">Letra D</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['d4']?>">

                                                        <label class="form-label">Resposta Correta</label>
                                                        <input type="text" class="form-control" required name="nomeMateria" value="<?= $questionarios[0]['resp4']?>">
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
</div>
</div>
</div>

