function loadComments(){
	$.ajax({
            type: "GET",
            url: "data/loadComments.php",
            dataType : "json",
            success: function(jsonData) {
            	/* iteramos por el arreglo de filas */
            	for(var i = 0; i < jsonData.length; i++){
            		/* formateamos los comentarios en HTML */
            		var stringToPrepend = formatCommentString(jsonData[i].comment);
            		/* agrega el HTML a la lista */
					$("#commentList").prepend(stringToPrepend);
				}
            },
            error: function(errorMsg){
            	alert("Error getting comments log from DB");
            }
        });
}
