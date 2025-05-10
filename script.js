fetch('dados.json')
    .then(res => res.json())
    .then(data => {
        const meses = {};
        let totalReceber = 0, totalPagar = 0;
        const evolucao = { receber: [], pagar: [], datas: [] };

        data.forEach(item => {
            const valor = parseFloat(item.valor);
            const mes = item.data_vencimento.slice(0, 7);

            if (!meses[mes]) meses[mes] = {};
            meses[mes][item.tipo] = (meses[mes][item.tipo] || 0) + valor;

            if (item.tipo === "Receber") totalReceber += valor;
            else totalPagar += valor;

            evolucao.datas.push(item.data_vencimento);
            evolucao[item.tipo.toLowerCase()].push(valor);
        });

        new Chart(document.getElementById('barChart'), {
            type: 'bar',
            data: {
                labels: Object.keys(meses),
                datasets: [
                    {
                        label: 'Receber',
                        data: Object.values(meses).map(v => v.Receber || 0),
                        backgroundColor: 'green'
                    },
                    {
                        label: 'Pagar',
                        data: Object.values(meses).map(v => v.Pagar || 0),
                        backgroundColor: 'red'
                    }
                ]
            }
        });

        new Chart(document.getElementById('pieChart'), {
            type: 'pie',
            data: {
                labels: ['Receber', 'Pagar'],
                datasets: [{
                    data: [totalReceber, totalPagar],
                    backgroundColor: ['green', 'red']
                }]
            }
        });

        new Chart(document.getElementById('lineChart'), {
            type: 'line',
            data: {
                labels: evolucao.datas,
                datasets: [
                    {
                        label: 'Receber',
                        data: evolucao.receber,
                        borderColor: 'green',
                        fill: false
                    },
                    {
                        label: 'Pagar',
                        data: evolucao.pagar,
                        borderColor: 'red',
                        fill: false
                    }
                ]
            }
        });
    });
