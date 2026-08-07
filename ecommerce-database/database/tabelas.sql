-- =========================================================
-- Projeto: Ecommerce Database
-- Arquivo: tabelas.sql
-- Descrição: Script de criação da estrutura das tabelas
--            (DDL - Data Definition Language)
-- =========================================================

create database if not exists ecommerce_db;
use ecommerce_db;

-- Tabela de clientes cadastrados na loja
create table clientes (
    id_cliente int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    telefone varchar(20) not null,
    endereco varchar(200) not null,
    data_cadastro date not null
);

-- Tabela de categorias de produtos
create table categorias (
    id_categoria int auto_increment primary key,
    nome varchar(100) not null,
    descricao varchar(255)
);

-- Tabela de produtos disponíveis para venda
create table produtos (
    id_produto int auto_increment primary key,
    nome varchar(100) not null,
    descricao varchar(255),
    preco decimal(10,2) not null,
    estoque int not null,
    id_categoria int not null,
    foreign key (id_categoria) references categorias(id_categoria)
);

-- Tabela de pedidos realizados pelos clientes
create table pedidos (
    id_pedido int auto_increment primary key,
    id_cliente int not null,
    data_pedido date not null,
    valor_total decimal(10,2) not null,
    status varchar(30) not null,
    foreign key (id_cliente) references clientes(id_cliente)
);

-- Tabela de itens vinculados a cada pedido
create table itens_pedido (
    id_item int auto_increment primary key,
    id_pedido int not null,
    id_produto int not null,
    quantidade int not null,
    preco_unitario decimal(10,2) not null,
    foreign key (id_pedido) references pedidos(id_pedido),
    foreign key (id_produto) references produtos(id_produto)
);
