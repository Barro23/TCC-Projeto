<div class="container">

    <?php 
    error_reporting(0);
    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    $perfil = $manipula->getUsuariosPorID($_GET['perfisId']);

    ?>

            <div class="card mb-3" style="">
                <img src="<?= $perfil[0]['img_fundo'] ?>" class="card-img-top" style="object-fit: cover; height: 150px; ">
                <div class="card-body">
                    
                    <img src="<?= $perfil[0]['img_capa'] ?>" style="object-fit: fill; background-color: white; width: 140px; height: 140px; border-radius: 50%; border: solid 4px white; position: relative; margin-top: -100px;">
                    <form method="POST" action="adm/chats/chat.php" >      
                        <input type="text" class="form-control" hidden  name="id_usuario1" value="<?= $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >                      
                        <input type="text" class="form-control" hidden  name="id_usuario2" value="<?= $perfil[0]['id']?>" >
                        <button type="submit"  class="btn btn" name="acao" value="criarChat" style="margin-left:90%; margin-top: -70px;" ><img src="img/Icons/chat-text-fill.svg"/></button> 
                    </form> 
                    <h1 class="card-title"><?= $perfil[0]['nome'] ?></h1>
                    <p><h5 class="card-title">Nome: <?= $perfil[0]['nome_completo'] ?></h5></p>
                    <p class="card-text">Sobre: <?= $perfil[0]['descricao'] ?></p>
                    <p class="card-text">Instituição: <?= $perfil[0]['instituto'] ?></p>
                    <?php
                    $cursando = new manipuladados();

                    $cursando->setTable("tb_cursando");
                    $i = 0;
                    foreach($cursando->getCursosPorUsuarios($perfil[0]['id']) as $cursados){
                        $i++;
                    
                        if($i == 1){
                            
                        ?> 
                        <h4 style="position: absolute; margin-left: 80%; margin-top: -190px; ">img</h4>
                        <?php
                            }else if($i >= 3){        
                        ?>
                        <h4 style="position: absolute; margin-left: 80%; margin-top: -190px; ">img1</h4>
                        <?php
                            }else if($i >= 6){        
                        ?>
                        <h4 style="position: absolute; margin-left: 80%; margin-top: -190px; ">img2</h4>
                    <?php
                        }    
                    }  
                    ?>
                  
                </div>
            </div>
    <?php 
        
    ?>
    <?php
        if($perfil[0]['tipo'] == "aluno"){
    ?>
            
    <?php
        }else if($perfil[0]['tipo'] == "prof"){

   
    ?>
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

   
    <div class="container" style="height:370px; width:100%; overflow:auto; padding:2%">
    
            
    


       <div class="container " id="textos">
               
               
               
        </div>
        
       <?php
        $publicacoes = new manipuladados();

        $publicacoes->setTable("tb_textos");

        foreach($publicacoes->getAllDataTable() as $textos){

            if($perfil[0]['id'] == $textos['id_usuario']){
                
        ?> 
            
            <div class="card container mb-4" style="width: 100%;">
                <div class="card-body">

                   
                       
                        <div >
                            <div >
                                <h5 class="card-title"><?= $textos['titulo']?></h5>
                                
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
    
        <div class="container" id="pdf">
                 
        </div>
        
       <?php
        $publicacoes = new manipuladados();

        $publicacoes->setTable("tb_pdf");

        foreach($publicacoes->getAllDataTable() as $pdfs){

            if($perfil[0]['id'] == $pdfs['id_usuario']){
                
        ?> 
            
            <div class="card container mb-4" style="width: 100%;">
                <div class="card-body">

                   
                       
                        <div >
                            <div >
                                <h5 class="card-title"><?= $pdfs['titulo']?></h5>
                            
                                
                           
                                
                           

                            </div>
                    
                            
                        </div>

                        <div style="width: 100%; height: 800px;">
                                <embed src="<?= $pdfs['pdf']?>" type="application/pdf" style="width: 100%; height: 100%;">
                        </div>
                
                    </div>
            </div>
                
               
               
        <?php
            }
        ?>          
        
<?php
    }}
?>
       
           

</div>
</div>
</div>