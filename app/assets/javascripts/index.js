
$(document).ready ( function () {

    $("div.entry-content").hide();
    
    $('a[href="#"]').click( function(e) {
	e.preventDefault();
    });


    $(".title").on('click' function (e) {
	var entry = $(this).parent().siblings("div.entry-content");
	entry.toggle("slow");
    });
});

