
$(document).ready ( function () {

    $("div.entry-content").hide();
    
    $('a[href="#"]').click( function(e) {
	e.preventDefault();
    });


    $(".title").click(function (e) {
	var entry = $(this).parent().siblings("div.entry-content");
	entry.toggle("slow");
    });

});

