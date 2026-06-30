# TP_BD

# Delivery - Sistema de Banco de Dados para Gestão de Entregas

## Descrição

Este projeto foi desenvolvido para a disciplina de Banco de Dados da PUC Minas.

O sistema simula uma operação de delivery utilizando um banco de dados relacional implementado em MySQL. O objetivo é gerenciar clientes, produtos, pedidos, entregadores e entregas, aplicando conceitos de modelagem de dados, normalização e consultas SQL.

---

## Tecnologias Utilizadas

- MySQL
- SQL (DDL e DML)
- Modelo Entidade-Relacionamento
- Modelo Lógico Relacional

---

## Funcionalidades

- Cadastro de clientes
- Cadastro de produtos
- Cadastro de entregadores
- Registro de pedidos
- Controle dos itens de cada pedido
- Controle das entregas
- Consultas SQL utilizando:
  - JOIN
  - Subconsultas
  - Funções de agregação
  - GROUP BY
  - ORDER BY

---

## Estrutura do Banco

O banco é composto pelas seguintes tabelas:

- Cliente
- Produto
- Pedido
- Item_Pedido
- Entregador
- Entrega

---

## Arquivos do Projeto

- **create.sql** → criação do banco de dados e das tabelas.
- **insert.sql** → inserção dos dados de teste.
- **select.sql** → consultas e relatórios do sistema.

---

## Como Executar

1. Abra o MySQL Workbench (ou outro cliente MySQL).
2. Execute o arquivo `create.sql`.
3. Execute o arquivo `insert.sql`.
4. Execute o arquivo `select.sql` para realizar as consultas e visualizar os resultados.

---

## Estrutura do Projeto

```text
/
├── create.sql
├── insert.sql
├── select.sql
└── README.md
```

---

## Modelagem

O banco foi desenvolvido seguindo as três primeiras formas normais (1FN, 2FN e 3FN), eliminando redundâncias e garantindo integridade referencial.

---

## Licença

Projeto desenvolvido exclusivamente para fins acadêmicos.
