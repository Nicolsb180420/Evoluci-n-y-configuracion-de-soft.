/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $('#example').DataTable({
    languaje:{
    //"order": [[1, "asc"]], /*ordenar por el nombre*/
            
            "lengthMenu": "Mostrar _MENU_ registros",
                    "info": "Mostrando pagina _PAGE_ de _PAGES_",
                    "infoEmpty": "No hay registros disponibles",
                    "infoFiltered": "(filtrada de _MAX_ registros)",
                    "loadingRecords": "Cargando...",
                    "processing": "Procesando...",
                    "search": "Buscar:",
                    "zeroRecords": "No se encontraron registros coincidentes",
                    "paginate": {
                    "next": "Siguiente",
                            "previous": "Anterior"
                    }
                },
            //botones
            responsive: "true",
            dom: 'Bfrtilp',
            buttons:[
            {
            extend: 'excelHtml5',
                    text:'<i class="fas fa-file-excel"></i>',
                    titleAttr: 'Exportar a Excel',
                    className: 'btn btn-success'
            },
            {
            extend: 'pdfHtml5',
                    text:'<i class="fas fa-file-pdf"></i>',
                    titleAttr: 'Exportar a PDF',
                    className: 'btn btn-danger'
            },
            {
            extend: 'print',
                    text:'<i class="fas fa-file-print"></i>',
                    titleAttr: 'Imprimir',
                    className: 'btn btn-info'
            }
            ]
    });

});