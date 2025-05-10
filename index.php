<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Financeiro</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>

<h1>Dashboard Contas a Pagar e Receber</h1>

<div class="dashboard">
    <canvas id="barChart" width="200" height="150"></canvas>
    <canvas id="pieChart" width="200" height="150"></canvas>
    <canvas id="lineChart" width="200" height="150"></canvas>
</div>


<h2>Tabela Detalhada</h2>
<table>
    <thead>
        <tr>
            <th>Data Vencimento</th>
            <th>Tipo</th>
            <th>Valor</th>
            <th>Cliente/Fornecedor</th>
        </tr>
    </thead>
    <tbody>
        <?php include 'data.php'; ?>
    </tbody>
</table>

<script src="script.js"></script>
</body>
</html>
