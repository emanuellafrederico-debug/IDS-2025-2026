
USE exerc_1;

-- TABELA: produto
-- ===========================
INSERT INTO produto (nome, data_fabricacao) VALUES
('danone integral',      '2024-01-01'),
('leite integral',       '2024-01-15'),
('danone desnatado',     '2024-02-01'),
('leite desnatado',      '2024-02-15'),
('creme de leite',       '2024-03-20'),
('iogurte natural',      '2024-04-10'),
('queijo minas',         '2024-05-05'),
('requeijao cremoso',    '2024-06-12'),
('leite condensado',     '2024-07-22'),
('manteiga',             '2024-08-08'),
('chocolate ao leite',   '2024-09-01'),
('chocolate amargo',     '2024-09-15'),
('pão de queijo',        '2024-10-15'),
('pão de mel',           '2024-11-10');


-- TABELA: fornecedor
-- ===========================
INSERT INTO fornecedor (nome) VALUES
('Laticínios Brasil'),      -- id 1
('Fazenda Boa Vista'),      -- id 2
('Cooperativa Almeida'),    -- id 3  
('Cooperativa Minas'),      -- id 4
('Fazenda São João'),       -- id 5
('Laticínios do Sul'),      -- id 6
('Produtos Caseiros'),      -- id 7
('Fazenda Bela Vista'),     -- id 8
('Laticínios Premium'),     -- id 9
('Distribuidora Alvo'),     -- id 10
('Dona Doce'),              -- id 11 
('Mercantil Central');      -- id 12


-- TABELA: produto_fornecedor
-- ===========================
INSERT INTO produto_fornecedor (id_produto, id_fornecedor) VALUES
(1, 1),   -- danone integral - Laticínios Brasil
(2, 1),   -- leite integral - Laticínios Brasil
(3, 2),   -- danone desnatado - Cooperativa Almeida
(4, 3),   -- leite desnatado - Fazenda Boa Vista
(5, 6),   -- creme de leite - Laticínios do Sul
(6, 7),   -- iogurte natural - Produtos Caseiros
(7, 4),   -- queijo minas - Cooperativa Minas
(8, 7),   -- requeijão cremoso - Produtos Caseiros
(9, 9),   -- leite condensado - Laticínios Premium
(10, 10), -- manteiga - Distribuidora Alvo
(11, 9),  -- chocolate ao leite - Laticínios Premium
(12, 11), -- chocolate amargo - Dona Doce
(13, 3),  -- pão de queijo - Cooperativa Almeida
(14, 11); -- pão de mel - Dona Doce