$(document).ready(function () {
    $("a.btn-delete").click(function () {
        $('#deleteModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var id = button.data('value') // Extract info from data-* attributes
            $('button.delete-model-confirm').on('click', function (e) {
                $('form#form-delete>input#Id').val(id);
                $('form#form-delete').submit();
            });
        })
    });

    $('span.field-validation-error').each(
        function (index) {
            $(this).parent().parent().find('input.form-control').addClass('is-invalid');
        });

});