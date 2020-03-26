$(document).ready(function () {    
    $('td[data-type="currency"]').simpleMoneyFormat();
    $('input[data-type="currency"]').simpleMoneyFormat();

    $('input#recomment-name').autocomplete({
        source: function (req, res) {
            $.ajax({
                url: "https://localhost:44346/Product/AutoComplete/?condition=" + encodeURIComponent(req.term),
                dataType: "json",
                success: function (data) {
                    res(data);
                }
            });
        },
        autoFocus: true,
        delay: 500,
        minLength: 2
    });
});