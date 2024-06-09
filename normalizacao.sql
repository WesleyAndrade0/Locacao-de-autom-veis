CREATE TABLE Veiculos (
    CodVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    Veiculo VARCHAR(50) NOT NULL,
    Cor VARCHAR(20) NOT NULL,
    Placa VARCHAR(10) NOT NULL,
    Diaria DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Clientes (
    CPF VARCHAR(14) PRIMARY KEY,
    Cliente VARCHAR(50) NOT NULL,
    Nascimento DATE NOT NULL
);

CREATE TABLE Locacoes (
    CodLocacao INT PRIMARY KEY AUTO_INCREMENT,
    CodVeiculo INT NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    Dias INT NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CodVeiculo) REFERENCES Veiculos(CodVeiculo),
    FOREIGN KEY (CPF) REFERENCES Clientes(CPF)
);

INSERT INTO Veiculos (Veiculo, Cor, Placa, Diaria) VALUES
('Fusca', 'Preto', 'WER-3456', 30.00),
('Variante', 'Rosa', 'FDS-8384', 60.00),
('Comodoro', 'Preto', 'CVB-9933', 20.00),
('Deloriam', 'Azul', 'FGH-2256', 80.00),
('Brasília', 'Amarela', 'DDI-3948', 45.00);

INSERT INTO Clientes (CPF, Cliente, Nascimento) VALUES
('123.456.789-01', 'Ariano Suassuna', '1022-05-21'),
('543.765.987-23', 'Grace Hopper', '2002-04-29'),
('987.654.231-90', 'Richard Feynman', '2001-10-12'),
('432.765.678-67', 'Edgar Poe', '1998-12-14'),
('927.384.284-44', 'Gordon Freeman', '1984-11-26');

INSERT INTO Locacoes (CodVeiculo, CPF, Dias, Total) VALUES
(1, '123.456.789-01', 3, 90.00),
(2, '543.765.987-23', 7, 420.00),
(3, '987.654.231-90', 1, 20.00),
(4, '432.765.678-67', 3, 240.00),
(5, '927.384.284-44', 7, 315.00);

CREATE VIEW LocacoesCompletas AS
SELECT 
    l.CodLocacao,
    v.Veiculo,
    v.Cor,
    v.Placa,
    v.Diaria,
    c.Cliente,
    c.CPF,
    c.Nascimento,
    l.Dias,
    l.Total
FROM 
    Locacoes l
JOIN 
    Veiculos v ON l.CodVeiculo = v.CodVeiculo
JOIN 
    Clientes c ON l.CPF = c.CPF;
