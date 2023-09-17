<?php
  $manipula = new manipuladados;
  $manipula->setTable("tb_inicio");
  $inicio =  $manipula->getAllDataTable();
?>

<div class="container" style="height:600px; width:100%; overflow:auto; padding:2%">
    <div class="row">
  <div class="col-3">
    <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
      <nav class="nav  flex-column">
        <a class="nav-link" href="#item-1">Informações</a>
        <nav class="nav  flex-column">
          <a class="nav-link ms-3 my-1" href="#item-1-1">Contas</a>
          
        </nav>
        <nav class="nav  flex-column">
        <a class="nav-link" href="#item-2">Editar</a>
        <nav class="nav  flex-column">
          <a class="nav-link ms-3 my-1" href="#item-2-1">Inicio</a>
          
        </nav>
      </nav>
    </nav>
  </div>

    <div class="col-9">
        <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true" class="scrollspy-example-2" tabindex="0">
        <div id="item-1">
            <h4>Informações</h4>
          
        </div>
        <div id="item-1-1">
            <h4 style="margin-left: 4%;">Contas Cadastradas</h4>
            <p>
            <script>
            window.onload = function () {

            var chart = new CanvasJS.Chart("chartContainer", {
                exportEnabled: true,
                animationEnabled: true,
                title:{
                    text: "Tipo de Contas Cadastradas"
                },
                legend:{
                    cursor: "pointer",
                    itemclick: explodePie
                },
                data: [{
                    type: "pie",
                    showInLegend: true,
                    toolTipContent: "{name}: <strong>{y}%</strong>",
                    indexLabel: "{name} - {y}%",
                    dataPoints: [
                        { y: 26, name: "Estudates", exploded: true },
                        { y: 28, name: "Professores" , exploded: true },
                        { y: 5, name: "Administrador" },
                        
                    ]
                }]
            });
            chart.render();
            }

            function explodePie (e) {
                if(typeof (e.dataSeries.dataPoints[e.dataPointIndex].exploded) === "undefined" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {
                    e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;
                } else {
                    e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;
                }
                e.chart.render();

            }
            </script>

            <div id="chartContainer" style="height: 370px; width: 100%;"></div>
            <script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
            </p>
        </div>
        <div id="item-2">
            <h4>Editar</h4>
           
        </div>
        <div id="item-2-1">
        <h2 style="margin-left: 4%;" >Editar Inicio</h2>
            <p>
            
            <button class="btn btn" style="margin-left:92%; margin-top: -60px;" data-bs-toggle="modal" data-bs-target="#modal000<?= $inicio[0]['id']?>"><img src="img/Icons/editar.svg"/></a></button>

                    
                    <div class="modal fade" id="modal000<?= $inicio[0]['id']?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"  >
                        <div class="modal-dialog">
                            <div class="modal-content">

                            
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Atualize seus Dados</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form method="POST" action="adm/postagens/postarInicio.php" enctype="multipart/form-data">
                                    <div class="modal-body">
                                        <div class="mb-3">
                                            <input type="text" class="form-control" hidden  name="id_usuario" value="<?php echo $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['id'] ?>"/ >
                                            <input type="text" class="form-control" hidden  name="id" value="<?= $inicio[0]['id']?>"/ >
                                            <label class="form-label">Texto Carroseu 1</label>
                                            <input type="text" class="form-control" required="required" name="textCarroseu1" value="<?php echo  $inicio[0]['textCarroseu1']?>"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Imagem Carroseu 1</label>
                                            <input type="file" name="imgCarroseu1" required="required" class="form-control" value="<?php echo  $inicio[0]['imgCarroseu1']?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Texto Carroseu 2</label>
                                            <input type="text" class="form-control" required="required"  name="textCarroseu2" value="<?php echo  $inicio[0]['textCarroseu2']?>"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Imagem Carroseu 2</label>
                                            <input type="file" name="imgCarroseu2" required="required" class="form-control" value="<?php echo  $inicio[0]['imgCarroseu2']?>">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Texto Carroseu 3</label>
                                            <input type="text" class="form-control" required="required"  name="textCarroseu3" value="<?php echo  $inicio[0]['textCarroseu3']?>"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Imagem Carroseu 3</label>
                                            <input type="file" name="imgCarroseu3" required="required" class="form-control" value="<?php echo  $inicio[0]['imgCarroseu3']?>">
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Texto Circulo 1</label>
                                            <input type="text" class="form-control" required="required"  name="textCirculo1" value="<?php echo  $inicio[0]['textCirculo1']?>"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Imagem Circulo 1</label>
                                            <input type="file" name="imgCirculo1" required="required" class="form-control" value="<?php echo  $inicio[0]['imgCirculo1']?>">
                                        </div>
                                        <div class="mb-3">
                                            
                                            <label class="form-label">Texto Circulo 2</label>
                                            <input type="text" class="form-control" required="required"  name="textCirculo2" value="<?php echo  $inicio[0]['textCirculo2']?>"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Imagem Circulo 2</label>
                                            <input type="file" name="imgCirculo2" required="required" class="form-control" value="<?php echo  $inicio[0]['imgCirculo2']?>">
                                        </div>
                                        <div class="mb-3">
                                            
                                            <label class="form-label">Texto Circulo 3</label>
                                            <input type="text" class="form-control" required="required"   name="textCirculo3" value="<?php echo  $inicio[0]['textCirculo3']?>"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Imagem Circulo 3</label>
                                            <input type="file" name="imgCirculo3" required="required" class="form-control" value="<?php echo  $inicio[0]['imgCirculo3']?>">
                                        </div>

                                        <div class="mb-3">
                                            
                                            <label class="form-label">Texto Circulo Completo 1</label>
                                            <input type="text" class="form-control" required="required"  name="textCompletoCirculo1" value="<?php echo  $inicio[0]['textCompletoCirculo1']?>"/>
                                        </div>
                                        <div class="mb-3">
                                            
                                            <label class="form-label">Texto Circulo Completo 2</label>
                                            <input type="text" class="form-control" required="required"  name="textCompletoCirculo2" value="<?php echo  $inicio[0]['textCompletoCirculo2']?>"/>
                                        </div>
                                        <div class="mb-3">
                                            
                                            <label class="form-label">Texto Circulo Completo 3</label>
                                            <input type="text" class="form-control" required="required"  name="textCompletoCirculo3" value="<?php echo  $inicio[0]['textCompletoCirculo3']?>"/>
                                        </div>


                                    </div>
                                    <div class="modal-footer">
                                        
                                        <button type="submit"  class="btn btn-primary" name="acao" value="Atualizar">Atualizar</button>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
            </p>
        </div>
       
</div>

<?php

?>