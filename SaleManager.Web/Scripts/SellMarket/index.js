

function Bill(id, products) {
    var self = this;
    self.id = ko.observable(id);
    self.href = ko.computed(function () {
        return "#menu" + this.id();
    }, this);
    self.attrId = ko.computed(function () {
        return "menu" + this.id();
    }, this);
    self.name = ko.computed(function () {
        return "Hoá đơn " + this.id();
    }, this);
    self.products = ko.observableArray(typeof (products) !== "undefined" ? products : []);
}

function Product(barcode, name, price, quantity, img) {
    var self = this;
    self.barcode = barcode;
    self.name = name;
    self.price = price;
    self.quantity = ko.observable(quantity === "undefined" ? 1 : quantity);
    self.total = price;
    self.img = img;
}

$(document).ready(function () {
    $('td[data-type="currency"]').simpleMoneyFormat();
    $('input[data-type="currency"]').simpleMoneyFormat();

    var SellViewModel = function () {
        var self = this;
        self.bills = ko.observableArray();
        self.currBill = ko.observable();
        self.products = ko.observableArray();
        self.error = ko.observable();
        self.condition = ko.observable();
        self.condition.subscribe(function (condition) {
            if (condition == null || condition == '') return;
            getProduct(condition);
        });
        self.condition.extend({ rateLimit: 500 });
        self.selectPlace = function (place) {
            self.currBill(place.Href)
        }

        getBills();
        getProduct(5);

        function ajaxHelper(uri, method, data) {
            self.error(''); // Clear error message
            return $.ajax({
                type: method,
                url: uri,
                dataType: 'json',
                contentType: 'application/json',
                data: data ? JSON.stringify(data) : null
            }).fail(function (jqXHR, textStatus, errorThrown) {
                self.error(errorThrown);
            });
        }

        function getProduct(condition) {
            var getProduct = ajaxHelper('/SellMarket/SearchProduct', 'POST', { 'condition': condition });
            var getProducts = ajaxHelper('/SellMarket/SearchProducts', 'POST', { 'condition': condition });
            $.when(getProduct, getProducts).done(function (product, products) {
                //self.bills(product[0].data);
                self.products(products[0].data);
            });
        };

        function getBills() {
            var bills = ajaxHelper('/SellMarket/GetTransaction', 'GET');
            bills.done(function (bill) {
                self.bills(bill.data);
                self.currBill(bill.data[0].Href)
                $('.nav-tabs a:last').tab('show')
            });
        }
    };

    var element = $('#sell-market')[0];
    ko.cleanNode(element);
    ko.applyBindings(new SellViewModel(), document.getElementById('sell-market'));
});


//$(document).ready(function () {       
//    const BASE_URL = "https://localhost:44346";
//    $('td[data-type="currency"]').simpleMoneyFormat();
//    $('input[data-type="currency"]').simpleMoneyFormat();

//    var delayTimer;
//    $('input#recomment-name').change(searchProduct);
//    var ajaxGetProduct = fetchData({ 'condition': $('input#recomment-name').val() }, '/SaleMarket/SeachProduct/');
//    function searchProduct() {
//        var condition = $('input#recomment-name').val();
//        if (condition == null || condition == '') return;
//        if (delayTimer) clearTimeout(delayTimer);
//        //delayTimer = setTimeout(function () {
//            $.ajax({
//                data: {'condition':condition},
//                dataType: 'json',
//                url: '/SellMarket/SeachProduct'
//            }).done(function (data) {
//                // If successful
//                addRow(data)
//                console.log(data);
//            }).fail(function (jqXHR, textStatus, errorThrown) {
//                // If fail
//                console.log(textStatus + ': ' + errorThrown);
//            });
//        //}, 500); // Will do the ajax stuff after 1000 ms, or 1 s
//    }

    
//    //$('input#recomment-name').autocomplete({
//    //    source: function (req, res) {
//    //        $.ajax({
//    //            url: "https://localhost:44346/Product/AutoComplete/?condition=" + encodeURIComponent(req.term),
//    //            dataType: "json",
//    //            success: function (data) {
//    //                res(data);
//    //            }
//    //        });
//    //    },
//    //    autoFocus: true,
//    //    delay: 500,
//    //    minLength: 2
//    //});
//});

//// Add row to bill
//function addRow(data) {
//    if (data.Bill == '') return;
//    var htmlRow = "<tr>";
//    htmlRow += '<td class="d-inline-block col-1"><a href="#"><i class="far fa-trash-alt"></i></a></td>';
//    htmlRow += '<td class="d-inline-block col-1">2</td>';
//    htmlRow += '<td class="d-inline-block col-4">' + data.Bill.Name + '</td>';
//    htmlRow += '<td class="d-inline-block col-2">' + data.Bill.Price + '</td>';
//    htmlRow += '<td class="d-inline-block col-2">';
//    htmlRow += '<div class="row">';
//    htmlRow += '<span class="col-6 text-left justify-content-center align-self-center">' + data.Bill.Quantity + '</span>';
//    htmlRow += '<div class="d-flex flex-column justify-content-between">';
//    htmlRow += '<span><i class="fas fa-chevron-up"></i></span>';
//    htmlRow += '<span><i class="fas fa-chevron-down"></i></span>';
//    htmlRow += '</div>';
//    htmlRow += '</div>';
//    htmlRow += '</td>';
//    htmlRow += '<td class="d-inline-block col-2">' + data.Bill.Price + '</td>';
//    htmlRow += '</tr>';
//    $('tbody').append(htmlRow)
//}

//var fetchData = function (query, dataURL) {
//    // Return the $.ajax promise
//    return $.ajax({
//        data: query,
//        dataType: 'json',
//        url: "https://localhost:44346" + dataURL
//    });
//}