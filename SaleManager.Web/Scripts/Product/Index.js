$(document).ready(function () {
    setTimeout(function () {
        $('.alert').alert('close');
    }, 10000);

    $('table.datatable').DataTable({
        "bLengthChange": false,
        "pageLength": 5
    });

    $('td[data-type="currency"]').simpleMoneyFormat();
});