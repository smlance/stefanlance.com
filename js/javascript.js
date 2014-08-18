
$(function() {
    $('#dark-header').hide().fadeIn(3000);
    $('#light-header').hide().fadeIn(5000);
});

$(function() {
    var list = $("#content").find("li");
    var count = $(list).length;
    list.each(function() {
        $(this).attr("value", count--);
    });
});
