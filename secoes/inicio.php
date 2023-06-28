<?php

?>


<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Amazon Administradores</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="icon" type="image/png" sizes="32x32" href="https://cdn.icon-icons.com/icons2/1195/PNG/512/1490889698-amazon_82521.png">
    <link rel='stylesheet' type='text/css' href='../css/bootstrap.css'>
    <link rel='stylesheet' type='text/css' href='../css/app.css'>
    <script src='../js/bootstrap.js'></script>
</head>
<body>


<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel"><center>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="1000">
      <img src="https://m.media-amazon.com/images/I/71IhMdsCniL._SX3000_.jpg" class="" style=" width: 100%; -webkit-mask-image: linear-gradient(to top, transparent 20%, white 70%);">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="https://m.media-amazon.com/images/I/71EFWvNGjeL._SX3000_.jpg" class=""  style=" width: 100%; -webkit-mask-image: linear-gradient(to top, transparent 20%, white 70%);">
    </div>
    <div class="carousel-item">
      <img src="https://m.media-amazon.com/images/I/71+imcmNzFL._SX3000_.jpg" class=""  style=" width: 100%; -webkit-mask-image: linear-gradient(to top, transparent 20%, white 70%);">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</center>
</div>
</div>

   

    <div  class="container" >
        <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 g-4">

 
        <?php
            include_once("dao/manipuladados.php");
            $busca = new manipuladados();

            $busca->setTable("produto");
            $resultado = $busca->getAllDataTable();
            while($row = @mysqli_fetch_array($resultado, MYSQLI_ASSOC)){
        ?>
        
            <div class="col">
                <div class="card h-20" >
                    <img src="<?=$row['img'];?>"  style="object-fit: contain; width: 100%; height:280px;">

                    <div class="card-body" style="width: 100%;">
                        <p class="card-text text-truncate">Descrição: <?=$row['descricao'];?></p>
                        <p class="card-text text-truncate">Preço: <?=$row['valor'];?>,00 R$</p>
                        <p class="card-text text-truncate">qtn: <?=$row['quantidade'];?></p>
                        <form action="">
                            <input type="submit" class="btn btn-primary" name="vender" value="Comprar">
                        </form>
                    </div>
                </div>
            </div>
        <?php
            }
        ?>
        </div>


 </div>