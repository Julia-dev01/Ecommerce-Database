-- =========================================================
-- Projeto: Ecommerce Database
-- Arquivo: banco_dados.sql
-- Descrição: Script completo de criação do banco de dados,
--            criação das tabelas e inserção dos dados iniciais
-- =========================================================

create database if not exists ecommerce_db;
use ecommerce_db;

-- ---------------------------------------------------------
-- Criação das tabelas
-- ---------------------------------------------------------

create table clientes (
    id_cliente int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    telefone varchar(20) not null,
    endereco varchar(200) not null,
    data_cadastro date not null
);

create table categorias (
    id_categoria int auto_increment primary key,
    nome varchar(100) not null,
    descricao varchar(255)
);

create table produtos (
    id_produto int auto_increment primary key,
    nome varchar(100) not null,
    descricao varchar(255),
    preco decimal(10,2) not null,
    estoque int not null,
    id_categoria int not null,
    foreign key (id_categoria) references categorias(id_categoria)
);

create table pedidos (
    id_pedido int auto_increment primary key,
    id_cliente int not null,
    data_pedido date not null,
    valor_total decimal(10,2) not null,
    status varchar(30) not null,
    foreign key (id_cliente) references clientes(id_cliente)
);

create table itens_pedido (
    id_item int auto_increment primary key,
    id_pedido int not null,
    id_produto int not null,
    quantidade int not null,
    preco_unitario decimal(10,2) not null,
    foreign key (id_pedido) references pedidos(id_pedido),
    foreign key (id_produto) references produtos(id_produto)
);

-- ---------------------------------------------------------
-- Inserção dos dados iniciais
-- ---------------------------------------------------------

insert into clientes (nome, email, telefone, endereco, data_cadastro) values
('Alexandre','alexandre@gmail.com','71999990001','rua a','2026-01-10'),
('Julia Neves','julia@gmail.com','71999990002','rua b','2026-01-11'),
('Fredson','fredson@gmail.com','71999990003','rua c','2026-01-12'),
('Luma','luma@gmail.com','71999990004','rua d','2026-01-13'),
('Murilo de Assis','murilo.a@gmail.com','71999990005','rua e','2026-01-14'),
('Murilo Costa','murilo.j@gmail.com','71999990006','rua f','2026-01-15'),
('Lucas','lucas@gmail.com','71999990007','rua g','2026-01-16'),
('Gabriel Fontes','gabriel@gmail.com','71999990008','rua h','2026-01-17'),
('Adalberto','adalberto@gmail.com','71999990009','rua i','2026-01-18'),
('Everton','everton@gmail.com','71999990010','rua j','2026-01-19');

insert into categorias (nome, descricao) values
('eletronicos','produtos eletrônicos'),
('informatica','computadores e acessórios'),
('livros','livros diversos'),
('moda','roupas'),
('esportes','artigos esportivos'),
('moveis','móveis'),
('beleza','cosméticos'),
('brinquedos','brinquedos infantis'),
('alimentos','alimentos'),
('automotivo','acessórios para veículos');

insert into produtos (nome, descricao, preco, estoque, id_categoria) values
('notebook','notebook dell',3500.00,10,2),
('mouse','mouse sem fio',80.00,50,2),
('teclado','teclado mecânico',250.00,30,2),
('camiseta','camiseta esportiva',60.00,40,4),
('bola','bola de futebol',120.00,20,5),
('livro sql','aprenda sql',90.00,15,3),
('perfume','perfume importado',220.00,12,7),
('cadeira','cadeira gamer',950.00,8,6),
('carrinho','brinquedo infantil',70.00,25,8),
('carregador','carregador usb',45.00,60,1);

insert into pedidos (id_cliente, data_pedido, valor_total, status) values
(1,'2026-02-01',3500.00,'entregue'),
(2,'2026-02-02',80.00,'enviado'),
(3,'2026-02-03',250.00,'pendente'),
(4,'2026-02-04',60.00,'entregue'),
(5,'2026-02-05',120.00,'enviado'),
(6,'2026-02-06',90.00,'pendente'),
(7,'2026-02-07',220.00,'entregue'),
(8,'2026-02-08',950.00,'enviado'),
(9,'2026-02-09',70.00,'pendente'),
(10,'2026-02-10',45.00,'entregue');

insert into itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) values
(1,1,1,3500.00),
(2,2,1,80.00),
(3,3,1,250.00),
(4,4,1,60.00),
(5,5,1,120.00),
(6,6,1,90.00),
(7,7,1,220.00),
(8,8,1,950.00),
(9,9,1,70.00),
(10,10,1,45.00);
