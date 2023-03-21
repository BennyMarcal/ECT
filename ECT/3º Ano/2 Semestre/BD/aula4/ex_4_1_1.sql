USE RENT_A_CAR;
GO

CREATE TABLE CLIENTE (
	NIF INT NOT NULL,
	PRIMARY KEY (NIF),
	endereco VARCHAR(30) NOT NULL,
	nome VARCHAR(30) NOT NULL,
	num_carta INT NOT NULL
);

CREATE TABLE TIPO_VEICULO (
	designacao VARCHAR(30) NOT NULL,
	codigo INT NOT NULL,
	arcondicionado BIT NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE VEICULO (
	marca VARCHAR(30) NOT NULL,
	matricula VARCHAR(8) NOT NULL,
	ano INT NOT NULL,
	codigo_veiculo INT NOT NULL,
	PRIMARY KEY (matricula),
	FOREIGN KEY (codigo_veiculo) REFERENCES TIPO_VEICULO(codigo)
);

CREATE TABLE PESADO (
	peso INT NOT NULL,
	codigo_veiculo INT NOT NULL,
	passageiros	INT NOT NULL,
	PRIMARY KEY (codigo_veiculo),
	FOREIGN KEY (codigo_veiculo) REFERENCES TIPO_VEICULO(codigo)
);

CREATE TABLE LIGEIRO (
	numlugares	INT	NOT NULL,
	codigo_veiculo INT NOT NULL,
	portas INT NOT NULL,
	combustivel VARCHAR(30)	NOT NULL,
	PRIMARY KEY (codigo_veiculo),
	FOREIGN KEY (codigo_veiculo) REFERENCES TIPO_VEICULO(codigo)
);

CREATE TABLE SIMILARIDADE (
	codigo_a	INT	NOT NULL,
	codigo_b	INT	NOT NULL,
	PRIMARY KEY (codigo_a, codigo_b),
	FOREIGN KEY (codigo_a) REFERENCES TIPO_VEICULO(codigo),
	FOREIGN KEY (codigo_b) REFERENCES TIPO_VEICULO(codigo)
);

CREATE TABLE BALCAO (
	nome VARCHAR(30) NOT NULL,
	numero INT NOT NULL,
	endereco VARCHAR(30) NOT NULL,
	PRIMARY KEY (numero)
);

CREATE TABLE ALUGUER (
	NIF_cliente	INT NOT NULL,
	numero	INT	NOT NULL,
	duracao	INT	NOT NULL,
	ddata DATE NOT NULL,
	matricula VARCHAR(8) NOT NULL,
	numero_balcao INT NOT NULL,
	PRIMARY KEY (numero),
	FOREIGN KEY (NIF_cliente) REFERENCES CLIENTE(NIF),
	FOREIGN KEY (numero_balcao) REFERENCES BALCAO(numero),
	FOREIGN KEY (matricula)	REFERENCES VEICULO(matricula)
);