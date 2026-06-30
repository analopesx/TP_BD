-- =====================================
-- INSERIR DADOS
-- =====================================

-- =====================================
-- CLIENTES
-- =====================================

INSERT INTO Cliente (nome, email, telefone)
VALUES
('Ana Julia', 'ana@gmail.com', '31999999999'),
('João Silva', 'joao@gmail.com', '31888888888'),
('Pedro Costa', 'pedro@gmail.com', '31777777777'),
('Maria Santos', 'maria@gmail.com', '31666666666'),
('Lucas Souza', 'lucas@gmail.com', '31555555555');


-- =====================================
-- PRODUTOS
-- =====================================

INSERT INTO Produto (nome, preco, descricao)
VALUES
('Pizza Calabresa', 45.90, 'Pizza de calabresa'),
('Hamburguer Artesanal', 28.50, 'Hamburguer artesanal'),
('Batata Frita', 15.00, 'Porção de batata'),
('Refrigerante 2L', 12.00, 'Refrigerante gelado'),
('Suco Natural', 10.00, 'Suco natural'),
('Acai 500ml', 22.00, 'Acai tradicional'),
('Sorvete', 18.00, 'Sorvete artesanal'),
('Milkshake', 20.00, 'Milkshake de chocolate');


-- =====================================
-- ENTREGADORES
-- =====================================

INSERT INTO Entregador
(telefone, veiculo, nome)
VALUES
('31911111111', 'Moto Honda CG', 'Carlos Ferreira'),
('31922222222', 'Moto Yamaha Factor', 'Fernanda Lima'),
('31933333333', 'Moto Honda Biz', 'Rafael Gomes');


-- =====================================
-- PEDIDOS
-- =====================================

INSERT INTO Pedido
(id_cliente, data_pedido, status_pedido, endereco_entrega)
VALUES
(1,'2026-06-15','ENTREGUE','Rua A, 100'),
(1,'2026-06-16','ENTREGUE','Rua A, 100'),
(1,'2026-06-17','EM_PREPARO','Rua A, 100'),

(2,'2026-06-15','ENTREGUE','Rua B, 200'),
(2,'2026-06-18','PENDENTE','Rua B, 200'),

(3,'2026-06-15','ENTREGUE','Rua C, 300'),
(3,'2026-06-16','ENTREGUE','Rua C, 300'),
(3,'2026-06-18','SAIU_PARA_ENTREGA','Rua C, 300'),

(4,'2026-06-17','ENTREGUE','Rua D, 400'),

(5,'2026-06-18','PENDENTE','Rua E, 500');


-- =====================================
-- ITENS DOS PEDIDOS
-- =====================================

INSERT INTO Item_Pedido
(quantidade, id_produto, id_pedido)
VALUES

(1,1,1),
(2,4,1),

(1,2,2),
(1,3,2),

(2,1,3),
(1,5,3),

(1,2,4),
(1,4,4),

(2,6,5),
(1,5,5),

(1,7,6),
(1,8,6),

(2,1,7),
(1,3,7),

(1,2,8),
(2,4,8),

(1,6,9),
(1,8,9),

(1,1,10),
(2,5,10);


-- =====================================
-- ENTREGAS
-- =====================================

INSERT INTO Entrega
(id_entregador, id_pedido, status_entrega, data_entrega, data_saida)
VALUES
(1,1,'ENTREGUE','2026-06-15','2026-06-15'),
(1,2,'ENTREGUE','2026-06-16','2026-06-16'),
(2,3,'EM_ANDAMENTO','2026-06-17','2026-06-17'),
(2,4,'ENTREGUE','2026-06-15','2026-06-15'),
(3,5,'PENDENTE','2026-06-18','2026-06-18'),
(1,6,'ENTREGUE','2026-06-15','2026-06-15'),
(2,7,'ENTREGUE','2026-06-16','2026-06-16'),
(3,8,'EM_ANDAMENTO','2026-06-18','2026-06-18'),
(1,9,'ENTREGUE','2026-06-17','2026-06-17'),
(2,10,'PENDENTE','2026-06-18','2026-06-18');