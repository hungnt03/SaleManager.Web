$(document).ready(function () {
    $('input.datepicker').datepicker({
        //dateFormat: "yyyy/mm/dd",
        //showStatus: true,
        //showWeeks: true,
        //currentText: 'Now',
        //autoSize: true,
        //gotoCurrent: true,
        //showAnim: 'blind',
        //highlightWeek: true
    });

    $('input[data-type="currency"]').simpleMoneyFormat();
});