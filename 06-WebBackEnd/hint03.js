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
		
		AddCommentToDB($("#commentField").val(), stringToPrepend);

		$("#commentField").val("");
	}
}

function AddCommentToDB(comment, stringToPrepend){

	var jsonObject = {
    	"comment" : comment
    };

	$.ajax({
            type: "POST",
            url: "data/photo-comments.php",
            data : jsonObject,
            dataType : "json",
            ContentType : "application/json",
            success: function(jsonData) {
            	alert("Your comment was posted successfully!");
            	$("#commentList").prepend(stringToPrepend);
            },
            error: function(errorMsg){
            	alert("Your comment could not be posted!");
            	console.log(errorMsg);
            }
        });
}
