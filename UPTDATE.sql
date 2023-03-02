-- Caso algum produto tenha alteração de valor o que eu faço ? --

SELECT * FROM produto
where nm_produto like "dipiron%";

-- MUDAR O VALOR DE UM REGISTRO NA TABELA PRODUTO --
UPDATE produto
SET vl_unitario = 8.00
WHERE id_produto = 2 ;

-- VER O RESULTADO DA MUDANÇA
SELECT * FROM produto
where nm_produto like "dipiron%";



-- nao estamos trabalhando mais com um produto o que eu faço ? --

SELECT * FROM produto
where nm_produto like "%Sensodyne%";

DELETE FROM produto
WHERE id_produto = 13;



SELECT * FROM produto
where nm_produto like "%Sensodyne%";