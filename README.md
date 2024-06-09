# Locação de automóveis

## Descrição do Código SQL

O objetivo deste trabalho é transformar uma tabela não normalizada de uma locadora de veículos em um banco de dados relacional normalizado até a 3ª Forma Normal (3FN)

### Arquivos SQL

- `Banco de dados`: Este arquivo contém as instruções em SQL.
  
## Passos Realizados

Análise da Tabela Não Normalizada:

Observei a tabela original contendo informações de locação de veículos com os seguintes atributos: Cód. Locação, Veículo, Cor, Placa, Diária, Cliente, CPF, Nascimento, Dias e Total.
Aplicação da 3ª Forma Normal (3FN):

![pog](https://github.com/WesleyAndrade0/Locacao-de-autom-veis/assets/167809767/25d9b2e1-fe63-44b0-9b17-41c7f0c41cb5)


### 1ª Forma Normal (1FN): Garantiu-se que todos os valores dos atributos fossem atômicos.
### 2ª Forma Normal (2FN): Todos os atributos não-chave são completamente dependentes da chave primária.
### 3ª Forma Normal (3FN): Todos os atributos não-chave são diretamente dependentes da chave primária, eliminando dependências transitivas.

## Decomposição das Tabelas:

Veiculos: Contém informações sobre os veículos (CodVeiculo, Veiculo, Cor, Placa, Diaria)
Clientes: Contém informações sobre os clientes (CPF, Cliente, Nascimento)
Locacoes: Contém informações sobre as locações (CodLocacao, CodVeiculo, CPF, Dias, Total)

## Modelo Lógico de Banco de Dados Relacional:

### Entidades: Veiculos, Clientes, Locacoes.
### Relacionamentos: Definidos com chaves primárias (PK) e chaves estrangeiras (FK) para garantir integridade referencial.

## Criação das Tabelas:

Scripts SQL foram desenvolvidos para criar as tabelas Veiculos, Clientes e Locacoes com os relacionamentos apropriados

## Inserção dos Dados:

Dados fornecidos foram inseridos nas tabelas criadas

## Criação de uma View:

Uma view denominada LocacoesCompletas foi criada para permitir a visualização combinada de todas as locações com seus respectivos veículos e clientes.

# MODELO LÓGICO

![image](https://github.com/WesleyAndrade0/Locacao-de-autom-veis/assets/167809767/77c62bbe-eb5f-430d-8e08-bb9908f8c264)

