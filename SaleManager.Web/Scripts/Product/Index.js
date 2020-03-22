$(document).ready(function () {
    $(function () {
        setTimeout(function () {
            $('.alert').alert('close');
        }, 10000);
    });

    $('#datetimepicker1').datetimepicker();
    $('td[data-type="currency"]').simpleMoneyFormat();
});