



<?php


include_once("dao/manipuladados.php");
$manipula = new manipuladados();

?>
<div class="container">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#textos">Textos Salvos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#pdf">PDfs Salvos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#jogos">Jogos Salvos</a>
        </li>
    </ul>

   
    <div class="container" style="height:800px; width:100%; overflow:auto; padding:2%">

        
        
      
        <?php
        $salvos = new manipuladados();

        $salvos->setTable("tb_salvos");
        error_reporting(0);
        foreach($salvos->getAllDataTable() as $salvo){
          
            if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $salvo['id_usuario']){
                $salvosPDF = new manipuladados();

                $salvosPDF->setTable("tb_pdf");

                
                foreach($salvosPDF->getAllDataTable() as $salvoPDF){

                    if($salvoPDF['id'] == $salvo['id_pdf']){
                
        ?> 
            
            <div class="container card mb-3" style="width: 100%;">
        <div class="card-body">
        <?php 
   
            if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $salvoPDF['id_usuario']){

        ?>
                <a href="?secoes=perfil" style="text-decoration: none; color: black;">

        <?php 

            }else{

        ?>
                <a href="?secoes=perfis&perfisId=<?= $salvoPDF['id_usuario']?>" style="text-decoration: none; color: black;">

        <?php 

            }

        ?>
                <div class="container-fluid"> 
                    <div>
                    <div id="pdf">
                        <img src="<?= $manipula->getTextosByUsuariosID($salvoPDF['id_usuario'])[0]['img_capa']?>" style="object-fit: cover; width: 45px; height: 45px; border-radius: 50%">
                    </div>
                    <div style="margin-left: 50px; margin-top: -30px;">
                        <h6><?= $manipula->getTextosByUsuariosID($salvoPDF['id_usuario'])[0]['nome']?></h6>
                    </div>  
                    <div>
                    <?php
                        
                        $salvos = new manipuladados();

                        $salvos->setTable("tb_salvos");
                        $id_pdf = $salvoPDF['id'];
                        $id_usuario = $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'];
                        $salvo1 = $salvos->getSalvoPorIDPdf($id_pdf, $id_usuario );
                        if( $salvo1[0]['id_usuario'] == $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ){
                            
                
                                    
                                
                        ?> 
                        
                            <form method="POST" action="adm/salvar/salvar.php" enctype="multipart/form-data">
                                
                                <input type="text" class="form-control" hidden  name="id" value="<?= $salvo1[0]['id']?>" >
                                <button type="submit"  class="btn btn" name="acao" value="deletarPdfsInSalvarAlunos" style="margin-left:95%; margin-top: -70px;" ><img src="img/Icons/save-fill.svg"/></button> 
                            </form>                        
                            
                        <?php
                                
                            }else{
                                
                                    
                        ?>

                            <form method="POST" action="adm/salvar/salvar.php" enctype="multipart/form-data">
                                
                                <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                <input type="text" class="form-control" hidden  name="id_pdf" value="<?= $salvoPDF['id']?>" >
                                <button type="submit"  class="btn btn" name="acao" value="salvarPdfsInSalvarAlunos" style="margin-left:95%; margin-top: -70px;" ><img src="img/Icons/save.svg"/></button> 
                            </form>
                            
                            
                    <?php
                                
                            }            
                    
                    ?> 
                   </div>  
                   </div>
                   </div>
                </a>
                
                    </div>
                        <h5 class="card-title"><?= $salvoPDF['titulo']?></h5>
                        <div style="width: 100%; height: 800px;">
                            <embed src="<?= $salvoPDF['pdf']?>" type="application/pdf" style="width: 100%; height: 100%;">
                        </div>
                    </div>
                </a>
               
       
        <?php
            }
        }
 }
        ?>       
             
               
        <?php

            if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $salvo['id_usuario']){

            $salvosTxt = new manipuladados();

            $salvosTxt->setTable("tb_textos");

                    
           foreach($salvosTxt->getAllDataTable() as $salvoTxt){
                if($salvoTxt['id'] == $salvo['id_texto']){

                    
        
        ?> 
        
            
            <div class="container card mb-3" style="width: 100%;">
            <div class="card-body">
            <?php 
    
                if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $salvoTxt['id_usuario']){

            ?>
                    <a href="?secoes=perfil" style="text-decoration: none; color: black;">

            <?php 

                }else{

            ?>
                    <a href="?secoes=perfis&perfisId=<?= $salvoTxt['id_usuario']?>" style="text-decoration: none; color: black;">

            <?php 

                }

            ?>
            <div class="container-fluid"> 
                <div>
                    
                        <div id="textos">
                            <img src="<?= $manipula->getTextosByUsuariosID($salvoTxt['id_usuario'])[0]['img_capa']?>" style="object-fit: cover; width: 45px; height: 45px; border-radius: 50%">
                        </div>
                        <div style="margin-left: 50px; margin-top: -30px;">
                            <h6><?= $manipula->getTextosByUsuariosID($salvoTxt['id_usuario'])[0]['nome']?></h6>
                        </div>
                        <div>
                        <?php
        

                       

                        $salvos = new manipuladados();

                        $salvos->setTable("tb_salvos");
                    
                        $id_texto = $salvoTxt['id'];
                        $id_usuario = $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'];
                        $salvo2 = $salvos->getSalvoPorIDText($id_texto, $id_usuario );
                           
                            if( $salvo2[0]['id_usuario'] == $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ){
                
                                    
                                
                        ?> 
                        
                            <form method="POST" action="adm/salvar/salvar.php" enctype="multipart/form-data">
                                
                                <input type="text" class="form-control" hidden  name="id" value="<?= $salvo2[0]['id']?>" >
                                <button type="submit"  class="btn btn" name="acao" value="deletarTextosInSalvarAlunos" style="margin-left:95%; margin-top: -70px;" ><img src="img/Icons/save-fill.svg"/></button> 
                            </form>                        
                            
                        <?php
                                
                            }else{
                                
                                    
                        ?>

                            <form method="POST" action="adm/salvar/salvar.php" enctype="multipart/form-data">
                                
                                <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>" >
                                <input type="text" class="form-control" hidden  name="id_texto" value="<?= $salvoTxt['id']?>" >
                                <button type="submit"  class="btn btn" name="acao" value="salvarTextoInSalvarAlunos" style="margin-left:95%; margin-top: -70px;" ><img src="img/Icons/save.svg"/></button> 
                            </form>
                            
                            
                    <?php
                                
                            }
                        

                    ?> 
                    </div>
                    </div> 
                    </div>
                    </a>
                    <a href="?secoes=conteudos&textoId=<?= $salvoTxt['id']?>" style="text-decoration: none; color: black;">

                        </div>
                        <div style="margin-left: 2%; margin-right: 2%;">
                            <h5 class="card-title"><?= $salvoTxt['titulo']?></h5>
                            Resumo
                            <p class="card-text"><?= $salvoTxt['resumo']?></p>
                            </div>
                        </div>
                    </a>
               
        <?php
                    }    
                }
            }
        }
        ?> 