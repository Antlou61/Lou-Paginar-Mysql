<?php
/*
* Projectname: Lou Paginar Mysql class
*
* Description: Creates a pagination class with display of results;
*	 -> encapsulates (a reusable encapsulation) all connection logic to the DB
*	 -> allows you to reuse the code in an easier and more organized way
*	 -> centralized paging and connection logic.
* Descrição: Cria uma classe de paginação com exibição dos resultados; 
*	-> encapsula (um encapsulamento reutilizável) toda a lógica de conexão à BD 
*  	-> permitir reutilizar o código de forma mais fácil, limpo e organizada
*	-> lógica de paginação e conexão centralizadas
*	
* Criated: 24Mar25
* Author: Antonio Lourenço
* License: MIT
* Version: 1.00
*/

class DatabasePaginationWrapper {
    private $conexao;
    private $paginacao;

    public function __construct($host, $user, $pass, $baseDeDados, $resultadosPorPagina) {
        // Conecta ao banco de dados
        $this->conexao = new mysqli($host, $user, $pass, $baseDeDados);
        // Verifica erros na conexão
        if ($this->conexao->connect_error) {
            die("Erro na conexão: " . $this->conexao->connect_error);
        }
        // Inicializa a paginação
        $this->paginacao = new Paginacao($this->conexao, $resultadosPorPagina);
    }

    public function exibirResultados($query) {
        // Obtém os resultados paginados
        $resultados = $this->paginacao->getResultados($query);
        // Exibe os links de paginação
		echo "<div class='paginar'>" . $this->paginacao->getLinks() . "</div>";
        //Return the result set
        return $resultados;
        //echo "<div class='paginacao'>" . $this->paginacao->getLinks() . "</div>"; 
    }

    public function fecharConexao() {
        // Fecha a conexão com o banco de dados
        $this->conexao->close();
    }
}

// Classe de paginação 
class Paginacao {
    private $conexao;
    private $paginaAtual;
    private $resultadosPorPagina='10';
    private $totalResultados;
    private $totalPaginas;

    public function __construct($conexao, $resultadosPorPagina) {
        $this->conexao = $conexao;
        $this->resultadosPorPagina = $resultadosPorPagina;
        $this->paginaAtual = isset($_GET['pagina']) ? (int)$_GET['pagina'] : 1;
    }

    public function getResultados($query) {
        $resultadoTotal = $this->conexao->query($query);
        $this->totalResultados = $resultadoTotal->num_rows;
        $this->totalPaginas = ceil($this->totalResultados / $this->resultadosPorPagina);
        $this->paginaAtual = max(1, min($this->paginaAtual, $this->totalPaginas));
        $offset = ($this->paginaAtual - 1) * $this->resultadosPorPagina;
        $query .= " ORDER BY id DESC";
        $query .= " LIMIT $offset, $this->resultadosPorPagina";
        return $this->conexao->query($query);
    }

    public function getLinks() {
        $links = [];
        // Add index.php? to the base URL
        $baseUrl = "index.php?";
        if ($this->paginaAtual > 1) {
            $links[] = "<a href='".$baseUrl."&pagina=1'>Primeira</a>";
        }
        if ($this->paginaAtual > 1) {
            $links[] = "<a href='".$baseUrl."&pagina=" . ($this->paginaAtual - 1) . "'>Anterior</a>";
        }
        for ($i = 1; $i <= $this->totalPaginas; $i++) {
            if ($i == $this->paginaAtual) {
                $links[] = "<strong>$i</strong>";
            } else {
                $links[] = "<a href='".$baseUrl."&pagina=$i'>$i</a>";
            }
        }
        if ($this->paginaAtual < $this->totalPaginas) {
            $links[] = "<a href='".$baseUrl."&pagina=" . ($this->paginaAtual + 1) . "'>Próxima</a>";
        }
        if ($this->paginaAtual < $this->totalPaginas) {
            $links[] = "<a href='".$baseUrl."&pagina=" . $this->totalPaginas . "'>Última</a>";
        }
        /*return implode(" | ", $links); */
        return implode("  ", $links);
    }
}
?>