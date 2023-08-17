<div class="container">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#textos">Textos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#pdf">PDfs</a>
        </li>
    </ul>

   
    <div class="container" style="height:800px; width:100%; overflow:auto; padding:2%">

        <p id="textos"></p>

    <?php 
    include_once('dao/manipuladados.php');
    $post = new manipuladados();

    $post->setTable("tb_textos");
    
    foreach($post->getAllDataTable() as $textos){

    ?>

    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
           
                        
                            
        <?php 
   
            if($post->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $textos['id_usuario']){

        ?>
                <a href="?secoes=perfil" style="text-decoration: none; color: black;">

        <?php 

            }else{

        ?>
                <a href="?secoes=perfis&perfisId=<?= $textos['id_usuario']?>" style="text-decoration: none; color: black;">

        <?php 

            }

        ?>
                <div class="container-fluid"> 
                <div>
                    <div>
                        <img src="<?= $post->getTextosByUsuariosID($textos['id_usuario'])[0]['img_capa']?>" style="object-fit: cover; width: 45px; height: 45px; border-radius: 50%">
                    </div>
                    <div style="margin-left: 50px; margin-top: -30px;">
                        <h6><?= $post->getTextosByUsuariosID($textos['id_usuario'])[0]['nome']?></h6>
                    </div> 
                    <?php
                        $salvos = new manipuladados();

                        $salvos->setTable("tb_salvos");
                        $salvo = $salvos->getSalvoPorID($post->getUsuarioByEmail($_COOKIE['email'])[0]['id']);

                            if($post->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $salvo[0]['id_usuario']){
                
                                    if($salvo[0]['id_texto'] == $textos['id']){
                                
                        ?> 
                    <form method="POST" action="adm/salvar/salvar.php" enctype="multipart/form-data">
                                
                                <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $post->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                <input type="text" class="form-control" hidden  name="id_texto" value="<?= $textos['id']?>" >
                                <button type="submit"  class="btn btn" name="acao" value="salvarTexto" style="margin-left:95%; margin-top: -70px;" ><img src="img/Icons/save.svg"/></button> 
                            </form>
                            
                    <?php
                                    }else{
                                
                    ?>

                    <form method="POST" action="adm/salvar/salvar.php" enctype="multipart/form-data">
                                
                                <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $post->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                <input type="text" class="form-control" hidden  name="id_texto" value="<?= $textos['id']?>" >
                                <button type="submit"  class="btn btn" name="acao" value="salvarDelatar" style="margin-left:95%; margin-top: -70px;" ><img src="img/Icons/save-fill.svg"/></button> 
                            </form>                        
                            
                    <?php
                                    }
                            
                                
                        }
                    
                    ?>
                </div>
                </div>
                </a>
            
                <a href="?secoes=conteudos&textoId=<?= $textos['id']?>" style="text-decoration: none; color: black;">
                    </div>
                        <h5 class="card-title"><?= $textos['titulo']?></h5>
                        Resumo
                        <p class="card-text"><?= $textos['resumo']?></p>
                    </div>
                </a>
               
       

    <?php 
    }
    ?>

    <p id="pdf"></p>

    <?php 
    include_once('dao/manipuladados.php');
    $post = new manipuladados();

    $post->setTable("tb_pdf");
    
    foreach($post->getAllDataTable() as $pdfs){

    ?>

    <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
        <?php 
   
            if($post->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $pdfs['id_usuario']){

        ?>
                <a href="?secoes=perfil" style="text-decoration: none; color: black;">

        <?php 

            }else{

        ?>
                <a href="?secoes=perfis&perfisId=<?= $pdfs['id_usuario']?>" style="text-decoration: none; color: black;">

        <?php 

            }

        ?>
            
                    <div>
                        <img src="<?= $post->getTextosByUsuariosID($pdfs['id_usuario'])[0]['img_capa']?>" style="object-fit: cover; width: 45px; height: 45px; border-radius: 50%">
                    </div>
                    <div style="margin-left: 50px; margin-top: -30px;">
                        <h6><?= $post->getTextosByUsuariosID($pdfs['id_usuario'])[0]['nome']?></h6>
                    </div>  
                </a>
                
                    </div>
                        <h5 class="card-title"><?= $pdfs['titulo']?></h5>
                        <div style="width: 100%; height: 800px;">
                            <embed src="<?= $pdfs['pdf']?>" type="application/pdf" style="width: 100%; height: 100%;">
                        </div>
                    </div>
                </a>
               
       

    <?php 
    }
    ?>
        
    </div>
</div>