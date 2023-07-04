<?php

?>
<center>


     <p><h1>Fazer Login</h1></p>
     <form method="post" action="validarCookie.php" class="container text-center" width="30%">
          
          <div class="mb-3 row" width="30%">
          <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
          <div class="col-sm-10">
               <input type="text"  name="txtEmail" placeholder="email@gmail">
          </div>
          </div>
          <div class="mb-3 row">
          <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
          <div class="col-sm-10">
               <input type="password" class="form-control" id="inputPassword" name="senha">
          </div>


          <input type="submit" name="enviar" >
          </div>

     </form>
     <br/><br/>


     <center>
        <button class="btn btn w-100 mt-3" style="max-width:350px; border:solid 1px black;" data-bs-toggle="modal" data-bs-target="#modal">Criar a sua conta da Amazon</button>
     </center>

    
        <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Crie a sua conta</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form method="POST" action="cadastrar.php">
                        <div class="modal-body">
                            <div class="mb-3">
                                <label class="form-label">Seu nome:</label>
                                <input type="text" class="form-control" name="nome">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Seu endereço Email:</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                                <div id="emailHelp" class="form-text">Coloque a sua melhor senha.</div>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Senha:</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="senha">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Tipo de conta:</label>
                                <input type="radio" name="tipoC" value="professor">
                                <label for="css">Professor</label><br>
                                <input type="radio" name="tipoC" value="aluno">
                                <label for="javascript">Aluno</label>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                            <button type="submit" class="btn btn-primary">Criar Conta</button>
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>

     <a href="../../index.php"><h4>Volte para a pagina inicial</h4></a>
</center>


