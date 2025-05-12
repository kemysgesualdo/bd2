USE clinica_medica;
-- resolver o exercício 1
-- Utilizara função SUM() para somar os medicamentos (preco).
SELECT paciente.nome, SUM(medicammento.preco) as "Gastos com Medicamentos"
 FROM paciente JOIN historicomedico
ON paciente.id = historicomedico.paciente_id JOIN prescricoes
ON historicomedico.id = prescricoes.historico_medico_id JOIN medicamentos
ON medicamentos.id = prescricoes.medicamentos_id
GROUP BY pacientes.nome;

-- MOSTRAR O TOTAL DE PRESCRIÇÕES POR PACIENTES
SELECT pacientes.nome, COUNT(prescricoes.id)
FROM pacientes JOIN historicomedico
ON pacientes.id = historicomedico.paciente_id JOIN prescricoes
ON historicomedico.id = precricoes.historico_medico_id
GROUP BY pacientes.nome;

-- MOSTRAR OS MEDICAMENTOS DE CADA PRESCRIÇÃO
SELECT prescricoes.id "Prescrição" , medicamentos.nome "Medicamento"
 FROM prescricoes JOIN medicamentos