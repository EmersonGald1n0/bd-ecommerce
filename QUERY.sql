-- quais vendas tivemos entre o periodo do dia 20 de janeiro a 2 de fevereiro ?

SELECT dt_pedido,  nome_social, vl_pedido, nr_pedido
 FROM pedido
 INNER JOIN cliente on id_cliente = cliente_id_cliente
 WHERE dt_pedido
 BETWEEN "2023-01-20" AND "2023-02-02"
 ORDER BY vl_pedido;
 
 -- qual é a faixa etaria de clientes cadastrados ?
 SELECT id_cliente, idade, nome_social,
 CASE
 WHEN idade >= 55 THEN 'cliente senior'
 WHEN idade <= 54 THEN 'cliente preferencial'
 END AS categoria_cliente
 FROM cliente
 order by idade desc; 


-- COMO SELECIONAR SOMENTE OS PRODUTOS COM O VALORES ENTRE X E Y ? --
SELECT * 
FROM produto 
WHERE vl_unitario 
BETWEEN 50 AND 1000 ORDER BY vl_unitario;

-- qual cliente gastou mais em nosso e-commerce em uma compra ?

SELECT id_cliente, nome_social, vl_pedido
FROM cliente
INNER JOIN pedido on id_cliente = cliente_id_cliente
order by vl_pedido desc 




