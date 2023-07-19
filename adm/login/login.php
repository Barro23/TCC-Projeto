<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/app.css" id="appcss">
    <link rel="icon" href="">
    <title>Login</title>
</head>


<body>
    

    <!-- Card para fazer o login -->
    <div class="container card" style="max-width:400px; margin-top: 3%; color:black;">
        <div class="card-body">
        <h4>Fazer login</h4>

            <p class="card-text text-break">
                <div class="center-login">
                    <form method="post" action="validarCookie.php">
                        <div>
                            <label class="form-label">Email</label>
                            <input class="w-100" type="email:" name='email'>
                        </div>
                        <div >
                            <label class="form-label">Senha:</label>
                            <input class="w-100" type="password" name='password'>
                        </div>
                        <div >
                                <label for="exampleInputPassword1" class="form-label">Aluno</label>   
                                <input type="radio" id="html" name="tipo" value="aluno">
                                <label for="exampleInputPassword1" class="form-label"  style="margin-left: 15%;">Professor</label>
                                <input type="radio" id="html" name="tipo" value="prof">
                            
                            <input type="radio"  hidden id="html" name="tipo" value="adm" checked>
                            
                        </div>
                        <button type="submit" class="btn btn w-100 mt-3" style="border:solid 1px black;">Fazer login</button>
                    </form>
                    
                </div>
                </p>
                
            </div>

    
    

  



    <!-- Botão para o usuário cadastrar uma conta -->
    <center>
        <h5>Cadastre-se caso não tenha cadastro:</h5>
        <button class="btn btn w-100 mt-3" style="max-width: 340px; border:solid 1px black;" data-bs-toggle="modal" data-bs-target="#modal">Criar a sua conta</button>

        <br/><br/>

        <a  href="../../index.php">volte para o menu</a>
        
    </center>

    
        <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
            <div class="modal-dialog">
                <div class="modal-content">

                
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Crie a sua conta</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form method="POST" action="cadastrar.php" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="mb-3">
                                <label class="form-label">Nome</label>
                                <input type="text" class="form-control" name="nome">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Nome Completo</label>
                                <input type="text" class="form-control" name="nome_completo">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Instituição</label>
                                <input type="text" class="form-control" name="instituto">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Descreva-se</label>
                                <input type="text" class="form-control" name="descricao">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Escolha uma imagem para sua Capa</label>
                                <input type="file" name="img_capa" class="form-control" id="formGroupExampleInput2" placeholder="Ex.:img/img.png">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Escolha uma imagem para seu Fundo</label>
                                <input type="file" name="img_fundo" class="form-control" id="formGroupExampleInput2" placeholder="Ex.:img/img.png">
                            </div>
                    
                            <div class="mb-3">
                                <label class="form-label">Data de Nascimento</label>
                                <input type="date" class="form-control" name="data_nascimento">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                                
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
                            <button type="submit"  class="btn btn-primary" name="acao" value="cadastrar">Criar Conta</button>
                        </div>
                    </form>
                    
                </div>
            </div>
            
        </div>
     </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>


</body>
</html>

