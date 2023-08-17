<?php
    include_once("controller/verurl.php");
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ECOTEC</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="icon" type="image/png" sizes="32x32" href="img/icons/mato.svg">
    <link rel='stylesheet' type='text/css' href='css/bootstrap.css'>
    <link rel='stylesheet' type='text/css' href='css/app.css'>
    <script src='js/bootstrap.js'></script>
</head>
<body>
    
    <nav class="colorMenu navbar navbar-expand-lg bg-body-tertiary">
        <?php include("includes/menu.php")?>
    </nav>
    
    <section>
        <?php
            $red = new verurl();
            $red->trocarUrl(@$_GET['secoes']);
        ?>
    </section>
    <br/>
    <footer  class="colorRodape container-fluid">
        <?php include("includes/rodape.php")?>
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    
</body>
</html>