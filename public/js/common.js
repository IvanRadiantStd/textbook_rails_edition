$(function() {

	//SVG Fallback
	if(!Modernizr.svg) {
		$("img[src*='svg']").attr("src", function() {
			return $(this).attr("src").replace(".svg", ".png");
		});
	};

	$(".left-sidebar ul li .course").click(function(){
		$(this).toggleClass("active");
		$(this).parent().find(".subject").slideToggle();
	});

	$(".left-sidebar ul li .subject h3").click(function(){
		$(this).parent().parent().parent().parent().toggleClass("active");
	});

	$("img, a").on("dragstart", function(event) { event.preventDefault(); });
	

	

});
