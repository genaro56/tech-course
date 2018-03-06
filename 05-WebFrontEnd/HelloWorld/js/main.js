$(document).ready(function(){
	console.log("Script cargado correctamente!");

	// updating content when clicking the menu
	$("#menu > li").on("click", function(){

		console.log("menu item clicked correctly");

		// hiding previous elements
		$(".shownElement").addClass("hiddenElement").removeClass("shownElement");		
		
		// update option selected 
		$(".selected").removeClass("selected");
		
		// show current element
		var currentLi = $(this).attr("class");
		$("#" + currentLi).removeClass("hiddenElement").addClass("shownElement");

		$(this).addClass("selected");
	});
});