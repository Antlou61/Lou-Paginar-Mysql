
<!DOCTYPE html>
<html>
<head>
    <title>My Pagination</title>
    <link rel="stylesheet" href="style.css"> </head>
<body>
<?php
/*
* Projectname: Lou Paginar Mysql class
* Description: Aplication example
* Descrição: Exemplo de aplicação 
* Criated: 24Mar25
* Author: Antonio Lourenço
* License: MIT
* Version: 1.00
*/

require_once('paginate.php');
/*	uso do wrapper	*/
$host = "localhost";
$user = "root";
$pass = "mysql";
$baseDeDados = "test";
$resultadosPorPagina = '10';

// Cria uma instância do wrapper
$wrapper = new DatabasePaginationWrapper($host, $user, $pass, $baseDeDados, $resultadosPorPagina);

// Define a query e o campo a ser exibido
$query = "SELECT * FROM noticias";
echo '<br><br>';
// Exibe os resultados e a paginação
$resultados = $wrapper->exibirResultados($query);
echo '<br><br>';
	if($resultados){
		while($row = $resultados->fetch_assoc()){
			//print_r($row);
			echo $row['id']." - " .$row['referencia']." - " .$row['titulo']." - " .$row['data'];
			echo '<br>';
		}
	}	
// Fecha a conexão com o banco de dados
$wrapper->fecharConexao();

?>
</body>
</html>