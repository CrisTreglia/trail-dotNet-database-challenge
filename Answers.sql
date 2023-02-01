/* 1 - Buscar o nome e ano dos filmes */
SELECT	Nome, Ano
FROM	Filmes

/* 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
SELECT	Nome, ano
FROM	Filmes
order by ano ASC

/* 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração */
SELECT	NOME, ANO, Duracao
FROM	FILMES
WHERE	NOME = 'DE VOLTA PARA O FUTURO'

/* 4 - Buscar os filmes lançados em 1997 */
SELECT	NOME, ANO, DURACAO
FROM	FILMES
WHERE	ANO = '1997'

/* 5 - Buscar os filmes lançados APÓS o ano 2000 */
SELECT	NOME, ANO, DURACAO
FROM	Filmes
WHERE ANO > '2000'

/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */
SELECT	NOME, ANO, DURACAO
FROM	FILMES
WHERE	DURACAO BETWEEN 100 AND 150 
ORDER BY DURACAO ASC

/* 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */
SELECT	ANO, COUNT(ANO) AS 'QUANTIDADE'
FROM	FILMES
GROUP BY ANO
ORDER BY QUANTIDADE DESC

/* 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT	ID, PRIMEIRONOME, ULTIMONOME, Genero
FROM	ATORES
WHERE	GENERO = 'M'

/* 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */ 
SELECT	ID, PRIMEIRONOME, ULTIMONOME, Genero
FROM	ATORES
WHERE	GENERO = 'F'
ORDER BY PrimeiroNome ASC

/* 10 - Buscar o nome do filme e o gênero */
SELECT	F.NOME, G.Genero
FROM	Filmes F
INNER JOIN FILMESGENERO FG
	ON F.ID = FG.ID
INNER JOIN GENEROS G
	ON FG.ID = G.ID
ORDER BY G.Genero ASC

/* 11 - Buscar o nome do filme e o gênero do tipo "Mistério" */
SELECT	F.NOME, G.Genero
FROM	Filmes F
INNER JOIN FILMESGENERO FG
	ON F.ID = FG.ID
INNER JOIN GENEROS G
	ON FG.ID = G.ID
WHERE	G.Genero = 'Mistério'

/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT	F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM	FILMES F
		INNER JOIN	ELENCOFILME EF
	ON F.Id = EF.IdFilme
		INNER JOIN	ATORES A
	ON EF.IdAtor = A.ID
