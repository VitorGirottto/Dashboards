<?php
include 'db.php';

$stmt = $pdo->query("SELECT * FROM contas ORDER BY data_vencimento ASC");
$dados = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Exibe a tabela HTML (index.php)
foreach ($dados as $row) {
    echo "<tr>
        <td>{$row['data_vencimento']}</td>
        <td>{$row['tipo']}</td>
        <td>R$ {$row['valor']}</td>
        <td>{$row['cliente_fornecedor']}</td>
    </tr>";
}

// Salva JSON para uso em script.js
file_put_contents('dados.json', json_encode($dados));
?>
