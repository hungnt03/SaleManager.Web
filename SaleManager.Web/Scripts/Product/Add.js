$(document).ready(function () {
    $('#datepicker').datepicker({
        uiLibrary: 'bootstrap4'
    });

    $('input[data-type="currency"]').simpleMoneyFormat();
});