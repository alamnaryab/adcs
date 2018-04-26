$(function () {

    $('.q-wrapper input:checkbox').change(function () {
        var prnt = $(this).parents('.q-wrapper');
        var copts = prnt.attr('data-copts');
        var checked = 0;
        $.each(prnt.find('input:checkbox'), function () {
            if ($(this).is(':checked')) {
                checked++;
            }
        });
        if (checked >= copts) {
            prnt.find('input:checkbox').not(':checked').attr('disabled', 'disabled');
        } else {
            prnt.find('input:checkbox').removeAttr('disabled');
        }
    });

    $('.q-wrapper').each(function () {
        $(this).find('input:checkbox').eq(1).trigger('change');
    });
});