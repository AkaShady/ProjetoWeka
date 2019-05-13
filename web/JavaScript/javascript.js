


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function pagina() {
        window.location.href = 'pagina2.html';
}
function sair() {
        window.location.href = 'index.html';
        }

var ctx = document.getElementsByClassName("line-chart");
var min = document.getElementsByClassName("max");
var chartGraph = new Chart(ctx, {
    // The type of chart we want to create
    type: 'bar',

    // The data for our dataset
   data: {

        labels: ["Jan","Fev"],

        datasets: [{label: "TAXA DE CLIQUES - 2018",

                    data:[min],

                    borderWidth: 6,

                    borderColor: 'rgba(77,166,253, 1)',

                    backgroundColor:'tranparent',


        }]

   }


    // Configuration options go here

});