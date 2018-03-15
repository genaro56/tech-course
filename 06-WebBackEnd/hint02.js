function formatCommentString(comment){
	var stringToPrepend = '<li>' + 
				'<blockquote>' + 
					'<div class="commentContent">' + 
						comment + 
					'</div>' + 
				'</blockquote>' + 
			'</li>';
	return stringToPrepend;
}

function postComment(){
	console.log("clicked post comment");

	if($("#commentField").val() !== null && $("#commentField").val() !=""){

		var stringToPrepend = formatCommentString($("#commentField").val());
		// AddCommentToDB($("#commentField").val(), stringToPrepend);
		$("#commentField").val("");
	}
}
