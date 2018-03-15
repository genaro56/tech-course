<?php
	header('Content-type: application/json');
	header('Accept: application/json');

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "myfirstdb";
	
	/* volvemos a establecer la conexión */
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	/* manejamos errores en la conexión */
	if ($conn->connect_error)
	{
		header("HTTP/1.1 500 Bad connection, portal down.");
		die("The server is down, we couldn't stablish the data base connection.");
	}
	else
	{
		$sql = "SELECT body
				FROM comentarios";
	
		/* corremos el query y obtenemos el resultado */
		$result = $conn->query($sql);

		/* creamos un arreglo para almacenar todos los comentarios */
		$response = array();
		
		/* por casa fila que haya en $result recuperamos la información */
		while($row =  $result->fetch_assoc()){
			/* obtenemos la variable body del resultado */
			$currentRow = array("comment"=>$row["body"]);
			/* la ponemos en un arreglo */
			array_push($response, $currentRow);
		}

		/* regresamos un arreglo con todas las filas recuperadas */
		echo json_encode($response);
	}

?>
