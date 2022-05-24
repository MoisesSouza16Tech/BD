USE bdEscolaIdiomas

--1.Crie uma visão “Preço_Baixo” que exiba o código, nome do curso, carga horária e o valor do curso de todos os cursos que tenha preço inferior a R$300,00
CREATE VIEW vwPrecoBaixo AS
	SELECT  codCurso AS 'Cod', nomeCurso AS 'Nome do Curso', cargahorariaCurso AS 'Carga Horária', valorCurso AS 'Valor' FROM tbCurso
	WHERE valorCurso < 300
    
--2.Usando a visão “Preço_Baixo”, mostre todos os cursos ordenados por carga horária.
SELECT * FROM vwPrecoBaixo
ORDER BY [Carga Horária]

--3.Crie uma visão “Qtde_Aluno_Curso” que exiba o curso e a quantidade de alunos por turma.
CREATE VIEW vwQtde_Aluno_Curso AS
	SELECT  nomeCurso AS 'curso', nomeTurma 'Turma', COUNT(nomeAluno) 'Qtde. de alunos' FROM tbCurso
      INNER JOIN tbTurma on tbTurma.codCurso = tbCurso.codCurso
		INNER JOIN tbMatricula on tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbAluno on tbAluno.codAluno = tbMatricula.codaluno
      	GROUP BY nomeTurma, nomeCurso

--4.Usando a visão “Qtde_Aluno_Curso” exiba a turma com maior número de alunos.
SELECT MAX([Qtde. de alunos]), [Turma] FROM vwQtde_Aluno_Curso
GROUP By [Turma]

--5. Crie uma visão “Curso_Qtde_Turmas” que exiba o curso e a quantidade de turmas.
CREATE VIEW vwCurso_Qtde_Turmas AS
	SELECT COUNT(tbTurma.codCurso) as qtde, nomeCurso FROM tbTurma

	INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
	GROUP BY nomeCurso

--6. Usando a visão “Curso_Qtde_Turmas” exiba o curso com menor número de turmas.
SELECT MIN(qtde) FROM vwCurso_Qtde_Turmas
SELECT nomeCurso FROM vwCurso_Qtde_Turmas WHERE qtde = 1
