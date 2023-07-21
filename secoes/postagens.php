



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
            
                    <div>
                        <img src="<?= $post->getTextosByUsuariosID($textos['id_usuario'])[0]['img_capa']?>" style="object-fit: cover; width: 45px; height: 45px; border-radius: 50%">
                    </div>
                    <div style="margin-left: 50px; margin-top: -30px;">
                        <h6><?= $post->getTextosByUsuariosID($textos['id_usuario'])[0]['nome']?></h6>
                    </div>  
                </a>
                <a href="?secoes=conteudos&textoId=<?= $textos['id']?>" style="text-decoration: none; color: black;">
                    </div>
                        <h5 class="card-title"><?= $textos['titulo']?></h5>
                        Resumo
                        <p class="card-text"><?= $textos['resumo']?></p>
                    </div>
                </a>
       
        </div>
        </div>

    <?php 
    }
    ?>

