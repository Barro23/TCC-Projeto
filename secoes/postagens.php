

<div class="container">

    <?php 
    include_once('dao/manipuladados.php');
    $post = new manipuladados();

    $post->setTable("tb_textos");

    foreach($post->getAllDataTable() as $textos){

    ?>

        <div class="card" style="width: 100%;">
        <div class="card-body">
            <h5 class="card-title"><?= $textos['titulo']?></h5>
            <p class="card-text"><?= $textos['texto']?></p>
            <a href="#" class="card-link">Card link</a>
            <a href="#" class="card-link">Another link</a>
        </div>
        </div>

    <?php 
    }
    ?>

</div>