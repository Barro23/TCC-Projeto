<?php


include_once("dao/manipuladados.php");
$manipula = new manipuladados();

?>
<div class="container"> 
    <div class="card mb-3" style="">
        <img src="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_fundo'] ?>" class="card-img-top" style="object-fit: fill; height: 150px; ">
        <div class="card-body">
            <img src="<?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_capa'] ?>" style="object-fit: cover; width: 140px; height: 140px; border-radius: 50%;  border:solid 1px black; position: relative; margin-top: -100px;">
            <div class="container row row-cols-2">
                <div class="col">
                    <h1 class="card-title"><?php echo  $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome'] ?></h1>
                </div>
                <div class="col">
                    
                    <button class="btn btn" style="margin-left:92%;" data-bs-toggle="modal" data-bs-target="#modal"><img src="img/Icons/editar.svg"/></a></button>

                    <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
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
                                            <input type="file" name="img_capa" class="form-control" id="formGroupExampleInput2" value="<?php echo $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['img_capa'] ?>">
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
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
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
            <h1 style="margin-left: 20px;">Seus Cursos:</h1>
    <?php
        }
    ?>

</div>