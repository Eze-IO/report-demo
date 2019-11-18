//= require jquery3
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require_tree .

/*
    *Datatables configurations*
    (Sort through all tables and ignore the 'Actions' columns)

    src: https://github.com/rweng/jquery-datatables-rails
*/

/*$(document).on('page:load', function() {
    $('.table').DataTable({
        "info": false,
        "paging": false,
        "searching": false,
        "lengthChange": false,
        "columnDefs": [
                { "orderable": false, "targets": 'datatable-nosort' }
            ]
        });
});*/
$(document).ready(function(){
    $('.table').DataTable({
                "info": false,
                "paging": false,
                "searching": false,
                "lengthChange": false,
                "columnDefs": [
                        { "orderable": false, "targets": 'datatable-nosort' }
                    ]
                });
});