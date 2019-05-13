<%-- 
    Document   : Page2
    Created on : 17/05/2018, 20:33:23
    Author     : mayco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sistema Inteligente</title>

        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
        <script type="text/javascript" src="JavaScript/javascript.js"></script>
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

        <div class="page-header">
                <h1><i class="fas fa-users"></i> Execução</h1>
        </div>

        <div class="row">
                
                      <form class="form-horizontal" action="trainer" method="GET" >
                      <div class="col-md-6">  
                        <div class="form-group">
                            
                                <label for="centrocusto">Centro de custo*</label>
                                <select  class="form-control" id="centrocusto" name="centrocusto" required>
                                   
                                    <option disabled selected>Selecione uma Opção ...</option>
                                    <option value="10">10</option>
                                   <option value="20">20</option>
                                   <option value ="30">30</option>
                                   <option value ="40">40</option>
                                   <option value="50">50</option>
                                   <option value="60">60</option>
                                   <option value ="70">70</option>
                                   <option value ="80">80</option>
                                   <option value="90">90</option>
                                   <option value="100">100</option>
                                   <option value ="110">110</option>
                                   <option value ="120">120</option>
                                   <option value="130">130</option>
                                   <option value="140">140</option>
                                   <option value ="150">150</option>
                                   <option value ="160">160</option>
                                   <option value="170">170</option>
                                   <option value="180">180</option>
                                   <option value ="190">190</option>
                                   <option value ="200">200</option>
                                   <option value="210">210</option>
                                   <option value="220">220</option>
                                   <option value ="230">230</option>
                                   <option value ="240">240</option>
                                   <option value="250">250</option>
                                   <option value="260">260</option>
                                   <option value ="270">270</option>
                                   
                                </select>
                        </div>
                        <div class="form-group">
                            
                                <label for="municipio">Municipio*</label>
                                
                                 <select  class="form-control" id="municipio" name="municipio" required>
                                   
                                   <option disabled selected>Selecione uma Opção ...</option>
                                   <option value="1">Mateus Leme</option>
                                   <option value="2">Itauna</option>
                                   <option value ="3">Juatuba</option>
                                   <option value ="4">Ibirite</option>
                                   <option value ="5">São Gonçalo do Pará</option>
                                   <option value ="6">Belo Horizonte </option>
                                   <option value ="7">Contagem</option>
                                </select>
                        </div>
                        <div class="form-group">
                            
                                <label for="sexo">Sexo*</label>
                                
                                <select  class="form-control" id="sexo" name="sexo" required>
                                   
                                   <option disabled selected>Selecione uma Opção ...</option>
                                   <option value="1">Masculino</option>
                                   <option value="2">Feminino</option>
                                   
                                </select>
                        </div>
                        <div class="form-group">
                            
                                <label for="estadocivil">Estado civil*</label>
                                
                                <select  class="form-control" id="estadocivil" name="estadocivil" required>
                                   
                                   <option disabled selected>Selecione uma Opção ...</option>
                                   <option value="1">Solteiro</option>
                                   <option value="2">Casado</option>
                                   <option value="3">Divorciado</option>
                                   <option value="4">Viuvo</option>
                                   
                                </select>
                       
                        </div>
                      </div>

                     <div class="col-md-6">
                        <div class="form-group">
                            
                                <label for="idade">Idade*</label>
                                <input type="number" name="idade" id="idade" class="form-control" step="any" min="0" max="99" placeholder="Idade" required>
                                
                        </div>
                        <div class="form-group">
                            
                                <label for="tempocasa">Tempo de casa (Anos)*</label>
                                <input type="number" name="tempocasa" id="tempocasa" class="form-control" min="0" max="99" step="any"  placeholder="Tempo de Casa" required>
                            
                        </div>
                        <div class="form-group">
                            
                                <label for="dependentes">Dependentes*</label>
                                <input type="number" name="dependentes" id="dependentes" class="form-control" min="0" max="99" step="any"  placeholder="Dependentes" required>
                            
                        </div>
                        <div class="form-group">
                                <label for="totalatestado">Total de atestados*</label>
                                <input type="number" id="totalatestado" name="totalatestado" class="form-control" min="0" max="99" step="any"  placeholder="Total de Atestados" required>
                            
                        </div>
                    </div>
                        <div class="row">
                            <div class="col-md-12 treinar">

                                <button type="submit" class="btn btn-default" value="Treinar">Treinar</button>
                            </div>
                        </div>
                    </form>
            </div>
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
