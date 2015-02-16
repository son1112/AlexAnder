$(document).ready(function () {

    $(".entry-content").hide();
    
    $(".title").click(function () {
	console.log($(this).parent().siblings("div.entry-content"));
	$(this).parent().siblings("div.entry-content").toggle();
    });
      
});
