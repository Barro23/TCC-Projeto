<div class="container">

    <?php 
    include_once('dao/manipuladados.php');
    $manipula = new manipuladados();

    $perfil = $manipula->getUsuariosPorID($_GET['perfisId']);

    ?>

            <div class="card mb-3" style="">
                <img src="<?= $perfil[0]['img_fundo'] ?>" class="card-img-top" style="object-fit: cover; height: 150px; ">
                <div class="card-body">
                    
                    <img src="<?= $perfil[0]['img_capa'] ?>" style="object-fit: fill; background-color: white; width: 140px; height: 140px; border-radius: 50%; border: solid 4px white; position: relative; margin-top: -100px;">
                    <h1 class="card-title"><?= $perfil[0]['nome'] ?></h1>
                    <p><h5 class="card-title">Nome: <?= $perfil[0]['nome_completo'] ?></h5></p>
                    <p class="card-text">Sobre: <?= $perfil[0]['descricao'] ?></p>
                    <p class="card-text">Instituição: <?= $perfil[0]['instituto'] ?></p>
                  
                </div>
            </div>
    <?php 
        
    ?>
</div>