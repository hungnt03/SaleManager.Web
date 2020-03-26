require("../Common/constant");
$(document).ready(function () {
    var fetchData = function (query, dataURL) {
        // Return the $.ajax promise
        return $.ajax({
            data: query,
            dataType: 'json',
            url: BASE_URL + dataURL
        });
    }
});