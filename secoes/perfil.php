
<?php


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
                    <img style=" margin-top: 10px; margin-left: 90%; width: 25px; height: 25px;" src="img/Icons/editar.svg"/>
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
                                            <input type="text" class="form-control" name="nome" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Nome Completo</label>
                                            <input type="text" class="form-control" name="nome_completo" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome_completo'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Instituição</label>
                                            <input type="text" class="form-control" name="instituto" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['instituto'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Descreva-se</label>
                                            <input type="text" class="form-control" name="descricao" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['descricao'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Escolha uma imagem para sua Capa</label>
                                            <input type="file" name="img_capa" class="form-control" value="<?php echo $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_capa'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Escolha uma imagem para seu Fundo</label>
                                            <input type="file" name="img_fundo" class="form-control" id="formGroupExampleInput2" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_fundo'] ?>">
                                        </div>
                                
                                        <div class="mb-3">
                                            <label class="form-label">Data de Nascimento</label>
                                            <input type="date" class="form-control" name="data_nascimento" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['data_nascimento'] ?>">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputEmail1" class="form-label">Email</label>
                                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" value="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['email'] ?>">
                                            
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword1" class="form-label">Senha</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" name="senha">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword1" class="form-label">Aluno</label>   
                                            <input type="radio" id="html" name="tipo" value="aluno">
                                            <label for="exampleInputPassword1" class="form-label" style="margin-left: 15%;">Professor</label>
                                            <input type="radio" id="html" name="tipo" value="prof">
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
            </div>
        </div>
    </div>
    <br/><br/>

    <?php
        if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['tipo'] == "aluno"){
    ?>
            <h1 style="margin-left: 20px;">Cursos Cadastrados:</h1>
    <?php
        }else if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['tipo'] == "prof"){

   
    ?>
            


       <div class="container row">
                <div class="col-9">
                    <h1 class="card-title">Suas Publicações</h1>
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
            </div>
        

    <?php
        }}
   
    ?>



    <?php
        }
    ?>

</div>