<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String[] Array = (String[]) request.getAttribute("Resultado");
    String Min = Array[1];
    String Max = Array[2];
    String MinValue = Array[Array.length - 3].replace(",", ".");
    String MaxValue = Array[Array.length - 2].replace(",", ".");
    String Result = Array[Array.length - 1].replace(",", ".");
    double ValueMinTable = 429.01;
    double ValueMaxTable = 7049.1;
    double media = 2943;
    
%> 
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Sistema Inteligente</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">



        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <link rel="stylesheet" type="text/css"  href="css/estilo.css">
        
    </head>

    <body>


        <nav class="navbar navbar-default">
            <div class="container-fluid">

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="img/logo.png"></a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="Page2.jsp">Execução</a></li>
                    </ul>
                    <div class="navbar-form navbar-right">
                        <a type="submit" class="btn btn-default btn-sair" href="index.jsp">Sair</a>
                    </div>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <div class = "container">
            <div class="row">
                <div class ="col-md-12">
                    <canvas class="line-chart"></canvas>
                </div>
            </div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
        <script type="text/javascript">
            //---------------------GRAFICO 1-------------------------
            var ctx = document.getElementsByClassName("line-chart");
            ;
            Chart.defaults.global.defaultFontSize = 25;
            var chartGraph = new Chart(ctx, {
                // The type of chart we want to create
                type: 'horizontalBar',

                // The data for our dataset
                data: {

                    labels: ["Resultado","Média"],

                    datasets: [

                        {label: "Resultado",

                            data: [<%=Result%>,<%=media%>],

                            borderWidth: 6,

                            backgroundColor: 'rgb(0,0,255)',

                        },
                    ]

                },

                options: {
                    title: {
                        display: true,
                        fontSize: 40,
                        text: "Resultado"
                    },

                    labels: {

                        fontStyle: 'bold'
                    }
                }


                // Configuration options go here

            });
        </script>
       
        
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>
