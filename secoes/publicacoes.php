    
<?php


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
        <a class="nav-link active" aria-current="page" href="#textos">Cursos</a>
    </li>
   
    </ul>

   
    <div class="container" style="height:800px; width:100%; overflow:auto; padding:2%">
        <h1 id="textos"></h1>
    <?php
        if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['tipo'] == "aluno"){
    ?>
            <h1 style="margin-left: 20px;">Cursos Cadastrados:</h1>
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
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Poste um novo Conteúdo</h1>
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
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Edite seu Postagem</h1>
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
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Edite seu Postagem</h1>
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
            }}
        ?>          
        
<?php
    }
?>
       
           
</div>

