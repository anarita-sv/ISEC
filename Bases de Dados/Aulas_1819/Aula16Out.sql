--f3 ex9 

--f3 ex10
SELECT LIVROS
FROM AUTORES
MINUS
SELECT LIVROS 
FROM AUTORES A, LIVROS L
WHERE A.CODIGO_LIVRO = L.CODIGO_AUTOR 
AND TO_CHAR(DATA_EDICAO,'YYYY') != TO_CHAR;

--f4 ex1
SELECT COUNT (*) "TOTAL DE LIVROS"
FROM LIVROS
WHERE UPPER(GENERO)='INFORM�TICA';

--f4 ex2
SELECT COUNT (CODIGO_LIVRO) "Total de Livros",
    ROUND(AVG(PRECO_TABELA),1) "Pre�o M�dio",
    SUM(UNIDADES_VENDIDAS) "Total de livros vendidos"
FROM LIVROS;

--f4 ex3
SELECT GENERO, TITULO, COUNT(CODIGO_LIVRO) "Quantidade"
FROM LIVROS L
GROUP BY GENERO, TITULO
ORDER BY 1;

--f4 ex4
SELECT TITULO, MIN(PRECO_UNITARIO) P_MAIS_BAIXO , 
    MAX(PRECO_UNITARIO) P_MAIS_BAIXO ,
    AVG(PRECO_UNITARIO) P_MEDIO
FROM LIVROS L, VENDAS V
WHERE L.CODIGO_LIVRO = V.CODIGO_LIVRO
AND LOWER(GENERO) = "inform�tica"
GROUP BY TITULO;

--f4 ex5 
SELECT GENERO,
    MAX(PRECO-UNITARIO) - MIN(PRECO_UNITARIO) "Diferen�a"
FROM LIVROS L
GROUP BY GENERO;

--f4 ex6
SELECT TITULO, PRECO_TABELA
    , SUM(QUANTIDADE) N_LIVROS_VENDIDOS
    , PRECO_TABELA * SUM(QUANTIDADE) REC_ESPERADA
    , PRECO_UNITARIO * SUM(QUANTIDADE) REC_EFETIVA
FROM LIVROS L, VENDAS V
WHERE L.CODIGO_LIVRO = V.CODIGO_LIVRO
GROUP BY TITULO, PRECO_TABELA;

--f4 ex7
SELECT GENERO, CELL(AVG(PRECO_TABELA)) PRECO_MEDIO
FROM LIVROS L
HAVING COUNT(CODIGO_LIVRO) > 4
ORDER BY 1;

--f4 ex8
SELECT NOME "Nome", MIN(PRECO_TABELA) "Pre�o Minimo"
FROM AUTORES A, LIVROS L
WHERE A.CODIGO_AUTOR=L.CODIGO_AUTOR
GROUP BY NOME
HAVING MIN(PRECO_TABELA) >= 30
ORDER BY 2; 

--fe ex9 
SELECT CODIGO_CLIENTE, NOME
    , COUNT(CODIGO_VENDA)N_LIVROS
    , AVG(PRECO_TABELA) "p
    , 
FROM LIVROS L, CLIENTES C, VENDAS V































