function postComment(){
	console.log("clicked post comment");

	if($("#commentField").val() !== null && $("#commentField").val() !=""){
		var stringToPrepend = '<li>' + 
				'<blockquote>' + 
					'<div class="commentContent">' + 
						$("#commentField").val() + 
					'</div>' + 
				'</blockquote>' + 
			'</li>';
		$("#commentList").prepend(stringToPrepend);
		$("#commentField").val("");
	}
}
