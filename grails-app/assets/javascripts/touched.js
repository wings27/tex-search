/**
 * Created by Wings on 2015/3/29 0029.
 */

var $invalidInput = $('input:invalid, select:invalid, textarea:invalid');

$(document).on('keyup', $invalidInput, function (e) {
    $(e.target).addClass('touched');
    console.log($(e.target));
});
