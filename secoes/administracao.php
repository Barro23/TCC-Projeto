<div class="container" style="height:600px; width:100%; overflow:auto; padding:2%">
    <div class="row">
    <div class="col-3">
        <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
        <nav class="nav nav-pills flex-column">
            <a class="nav-link" href="#item-1">Item 1</a>
            <a class="nav-link" href="#item-2">Item 2</a>
            <a class="nav-link" href="#item-3">Item 3</a> 
        </nav>
        </nav>
    </div>

    <div class="col-9">
        <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true" class="scrollspy-example-2" tabindex="0">
        <div id="item-1">
            <h4>Item 1</h4>
            <p>
            <script>
            window.onload = function () {

            var chart = new CanvasJS.Chart("chartContainer", {
                exportEnabled: true,
                animationEnabled: true,
                title:{
                    text: "State Operating Funds"
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
                        { y: 26, name: "School Aid", exploded: true },
                        { y: 20, name: "Medical Aid" },
                        { y: 5, name: "Debt/Capital" },
                        { y: 3, name: "Elected Officials" },
                        { y: 7, name: "University" },
                        { y: 17, name: "Executive" },
                        { y: 22, name: "Other Local Assistance"}
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
            <h4>Item 2</h4>
            <p></p>
           
        </p>
        </div>
        <div id="item-3">
            <h4>Item 3</h4>
            <p>...</p>
        </div>
        <div id="item-3-1">
            <h5>Item 3-1</h5>
            <p>...</p>
        </div>
        <div id="item-3-2">
            <h5>Item 3-2</h5>
            <p>...</p>
        </div>
        </div>
    </div>
    </div>


 
        
        
    
</div>