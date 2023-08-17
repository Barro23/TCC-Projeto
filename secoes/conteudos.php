<div class="container">  
    <?php 
    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    $texto = $manipula->getTextoPorID($_GET['textoId']);

   
    ?>
    
    <div class="card" style="width: 100%;">
            <div class="card-body">
            <?php 
   
                if($manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] == $texto[0]['id_usuario']){
   
            ?>
                    <a href="?secoes=perfil" style="text-decoration: none; color: black;">

            <?php 
   
                }else{
   
            ?>
                <a href="?secoes=perfis&perfisId=<?= $texto[0]['id_usuario']?>" style="text-decoration: none; color: black;">

            <?php 

                }

            ?>
                
                    <div>
                        <img src="<?= $manipula->getTextosByUsuariosID($texto[0]['id_usuario'])[0]['img_capa']?>" style="object-fit: cover; width: 45px; height: 45px; border-radius: 50%">
                    </div>
                    <div style="margin-left: 50px; margin-top: -30px;">
                        <h6><?= $manipula->getTextosByUsuariosID($texto[0]['id_usuario'])[0]['nome']?></h6>
                    </div>  
                </a>
                
                </div>
                    <div style="margin-left: 3%; margin-right: 3%;">
                        <h5 class="card-title"><?= $texto[0]['titulo']?></h5>
                        <p><h6>Resumo</h6></p>

                        <p class="card-text"><?= $texto[0]['resumo']?></p>
                        <p><h6>Texto</h6></p>
                        <p class="card-text"><?= $texto[0]['texto']?></p>
                    </div>
                </div>
             
            </div>
    </div>

    <?php 

    ?>
</div>