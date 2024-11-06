--1
SELECT Nome, Ano
	FROM Filmes

--2
SELECT * FROM Filmes
	ORDER BY Ano ASC

--3
SELECT * FROM Filmes
	WHERE Id = 28

--4
SELECT * FROM Filmes
	WHERE Ano = 1997

--5
SELECT * FROM Filmes
	WHERE Ano > 2000
		
--6
SELECT * FROM Filmes
	WHERE Duracao > 100 
	  AND Duracao < 150
	ORDER BY Duracao ASC

--7
SELECT Ano, COUNT(*) AS Quantidade,
	MAX(Duracao) AS Duracao
	FROM Filmes
	GROUP BY Ano
	ORDER BY  Quantidade DESC;

--8
SELECT Id, PrimeiroNome,
	UltimoNome, Genero 
	From Atores
	WHERE Genero = 'M'

--9
SELECT Id, PrimeiroNome, 
	UltimoNome, Genero 
	FROM Atores
	WHERE Genero = 'F'
	ORDER BY PrimeiroNome

--10
SELECT F.Nome AS NomeFilme, G.Genero AS NomeGenero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
INNER JOIN Generos AS G ON FG.IdGenero = G.Id;

--11
SELECT F.Nome AS NomeFilme, G.Genero AS NomeGenero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
INNER JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

--12
SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
INNER JOIN Atores AS A ON EF.IdAtor = A.Id

