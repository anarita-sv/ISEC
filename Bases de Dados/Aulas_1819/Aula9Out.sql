-- Aula 9Out -- 

LPAD( )
RPAD( )
LENGTH(texto) -> numero de caracteres 

-- f2 ex c 

SELECT LPAD(TITULO,30+LENGTH(TITULO)/2,'>'),60,'>')
AS "TITULO CENTRADO"
FROM LIVROS;
SELECT TO_CHAR (SYSDATE,'YYYY') FROM DUAL;
SELECT * FROM DUAL;

-- f3 ex 1 
SELECT TITULO
FROM LIVROS
WHERE TO_CHAR(DATA_EDICAO,'YYYY') = '2011';


-- f3 ex 2 
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') AS"HORA ATUAL",
	TO_CHAR(SYSDATE,'DD, Month, YYYY' ) AS "DATA ATUAL"
FROM DUAL;
	

-- f3 ex 3
SELECT TITULO, PRECO_TABELA
FROM LIVROS
WHERE SYSDATE - DATA_EDICAO < 80;
-- WHERE DATA_EDICAO > SYSDATE - 80;


-- f3 ex 4
SELECT TITULO
FROM LIVROS L, CLIENTES C, VENDAS V
WHERE L.CODIGO_LIVRO = V.CODIGO_LIVRO
AND V.CODIGO_CLIENTE = C.CODIGO_CLIENTE
AND UPPER(MORADA) LIKE 'LISBOA'
AND DATA_VENDA >= TO_DATE('01082013','DDMMYYYY')
AND DATA_VENDA < TO_DATE('01102013','DDMMYYYY')

-- OU
-- AND TO_CHAR (DATA_VENDA,'YYYY') = '2013'
-- AND TO_CHAR (DATA_VENDA, 'MM') BETWEEN '08' AND '09'


-- f3 ex 8
SELECT NOME 
FROM AUTORES A, LIVROS L, CLIENTES C
WHERE L.CODIGO_LIVRO = V.CODIGO_LIVRO
AND V.CODIGO_CLIENTE = C.CODIGO_CLIENTE
AND LOWER(GENERO) = 'informática'
AND TO_CHAR(DATA_VENDA, 'HH24') < '17'  -- 17 horas
AND TO_CHAR(DATA_VENDA, 'D') = '3'		-- 3* feira
AND TO_CHAR(DATA_VENDA, 'DD') < '8'		-- dia do mes<8 , ou 	seja, na primeira semana


-- f3 ex 7 
SELECT TITULO,
		TRUNC(MONTHS_BETWEEN(SYSDATE, DATA_EDICAO) / 12) NANOS
FROM LIVROS L
WHERE lower(GENERO) = 'informática';



-- f3 ex 6
SELECT NOME, DATA_EDICAO "Editado em"
FROM AUTORES A, LIVROS L
WHERE L.CODIGO_LIVRO = A.CODIGO_LIVRO
AND L.PAGINAS > 190
AND LOWER(GENERO) = 'informática'
AND DATA_EDICAO BETWEEN TO_DATE ('21062013', 'DDMMYYY')
					AND TO_DATE ('22092013', 'DDMMYYY')
					
		
		





















