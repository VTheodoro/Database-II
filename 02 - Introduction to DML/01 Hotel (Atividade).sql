CREATE DATABASE HOTEL;

CREATE TABLE CLIENTE(
RG INTEGER(50) NOT NULL PRIMARY KEY,
NOME VARCHAR(250) NOT NULL,
SEXO BOOL NOT NULL,
TELEFONE INTEGER(50) NOT NULL,
CIDADE VARCHAR(30) NOT NULL,
BAIRRO VARCHAR(30) NOT NULL,
RUA VARCHAR(60) NOT NULL
);

CREATE TABLE QUARTO(
NUMERO INTEGER(50) NOT NULL PRIMARY KEY,
RG INTEGER(50) NOT NULL,
FOREIGN KEY (RG) REFERENCES CLIENTE (RG),
DESCRIÇÃO VARCHAR(250) NOT NULL,
TIPO VARCHAR(60) NOT NULL,
ANDAR INTEGER(20) NOT NULL,
PRECO DECIMAL(4,2) NOT NULL
);

CREATE TABLE QUARTO_OCUPADO(
CODIGO_OCUPADO INTEGER(50) NOT NULL PRIMARY KEY,
RG INTEGER(50) NOT NULL,
FOREIGN KEY (RG) REFERENCES CLIENTE (RG),
NUMERO INTEGER(50) NOT NULL,
FOREIGN KEY(NUMERO) REFERENCES QUARTO (NUMERO),
HORA TIME NOT NULL,
DATA_ENTRADA DATE NOT NULL,
DATA_SAIDA DATE NOT NULL
);

CREATE TABLE QUARTO_RESERVADO(
CODIGO_RESERVADO INTEGER(50) NOT NULL PRIMARY KEY,
RG INTEGER(50) NOT NULL,
FOREIGN KEY (RG) REFERENCES CLIENTE (RG),
NUMERO INTEGER(50) NOT NULL,
FOREIGN KEY(NUMERO) REFERENCES QUARTO (NUMERO),
QUANTIDADE_DE_DIAS INTEGER(6) NOT NULL,
DATA_RESERVA DATE NOT NULL
);

CREATE TABLE SERVICOS(
CODIGO_SERVICO INTEGER(50) NOT NULL PRIMARY KEY,
VALOR DECIMAL(4,2) NOT NULL,
DESCRICAO VARCHAR(250) NOT NULL,
TIPO VARCHAR(100) NOT NULL
);

CREATE TABLE PAGAMENTO(
CODIGO_OCUPADO INTEGER(50) NOT NULL,
FOREIGN KEY (CODIGO_OCUPADO) REFERENCES QUARTO_OCUPADO (CODIGO_OCUPADO),
CODIGO_SERVICO INTEGER(50) NOT NULL,
FOREIGN KEY (CODIGO_SERVICO) REFERENCES SERVICOS (CODIGO_SERVICO),
VALOR_TOTAL DECIMAL(4,2) NOT NULL
);

