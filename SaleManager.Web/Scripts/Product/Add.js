$(document).ready(function () {
    $('input.datepicker').datepicker({
        //format: "yyyy/mm/dd",
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