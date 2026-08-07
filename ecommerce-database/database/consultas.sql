-- =========================================================
-- Projeto: Ecommerce Database
-- Arquivo: consultas.sql
-- Descrição: Consultas de exemplo (SELECT, UPDATE, DELETE)
--            para manipulação e teste do banco de dados
-- =========================================================

use ecommerce_db;

-- Listar todos os registros de cada tabela
select * from clientes;
select * from categorias;
select * from produtos;
select * from pedidos;
select * from itens_pedido;

-- Produtos com preço acima de R$ 100,00
select * from produtos
where preco > 100;

-- Clientes ordenados em ordem alfabética
select * from clientes
order by nome asc;

-- Primeiros 5 produtos cadastrados
select * from produtos
limit 5;

-- Atualizar o preço de um produto específico
update produtos
set preco = 100.00
where id_produto = 2;

-- Remover um item de pedido específico
delete from itens_pedido
where id_item = 10;
