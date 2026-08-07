# Ecommerce Database

## 📋 Descrição do Sistema

Este projeto consiste no desenvolvimento de um banco de dados relacional para uma loja virtual (e-commerce). O banco armazena informações de **clientes**, **categorias de produtos**, **produtos**, **pedidos** e **itens de pedido**, simulando o funcionamento básico de uma operação de vendas online — do cadastro do cliente até a finalização de um pedido com múltiplos itens.

## 🎯 Objetivo do Banco de Dados

O objetivo é estruturar, de forma normalizada, os dados necessários para uma plataforma de e-commerce, permitindo:

- Cadastro e gestão de clientes;
- Organização de produtos por categorias;
- Controle de estoque e preços;
- Registro de pedidos realizados pelos clientes;
- Detalhamento dos itens que compõem cada pedido;
- Execução de consultas para análise e manutenção dos dados (filtros, ordenações, atualizações e exclusões).

## 🛠️ Tecnologias Utilizadas

- **SQL** (MySQL)
- **Git** e **GitHub** (versionamento e hospedagem do projeto)
- **Python / Matplotlib** (geração do diagrama entidade-relacionamento)

## 👥 Integrantes da Equipe

- Júlia das Neves 
- Alexandre Brito
- Fredson Rafael

## 🗂️ Estrutura do Repositório

```
ecommerce-database/
├── database/
│   ├── banco_dados.sql   # Script completo (criação do banco + tabelas + dados)
│   ├── tabelas.sql       # Apenas a estrutura das tabelas (DDL)
│   └── consultas.sql     # Consultas de exemplo (SELECT, UPDATE, DELETE)
├── modelo/
│   └── DER.png           # Diagrama Entidade-Relacionamento
└── README.md
```

## 🧱 Principais Tabelas

| Tabela | Descrição |
|---|---|
| **clientes** | Armazena os dados cadastrais dos clientes da loja (nome, e-mail, telefone, endereço e data de cadastro). |
| **categorias** | Contém as categorias que classificam os produtos (ex.: eletrônicos, moda, esportes). |
| **produtos** | Guarda as informações dos produtos disponíveis para venda, incluindo preço, estoque e a categoria à qual pertencem (`id_categoria` como chave estrangeira). |
| **pedidos** | Registra os pedidos realizados pelos clientes, vinculando cada pedido a um cliente (`id_cliente`), com data, valor total e status. |
| **itens_pedido** | Detalha os produtos que compõem cada pedido, relacionando `pedidos` e `produtos`, com quantidade e preço unitário praticado na venda. |

### Relacionamentos

- Um **cliente** pode realizar **vários pedidos** (1:N);
- Uma **categoria** pode conter **vários produtos** (1:N);
- Um **pedido** pode conter **vários itens** (1:N);
- Um **produto** pode aparecer em **vários itens de pedido** (1:N).


## 📌 Versionamento

O projeto foi versionado no GitHub seguindo o fluxo:

1. Criação do repositório;
2. Organização dos arquivos na estrutura proposta;
3. Primeiro commit com os scripts SQL;
4. Commits subsequentes com atualizações e ajustes do banco de dados.
