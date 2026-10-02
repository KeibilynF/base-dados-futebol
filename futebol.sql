CREATE DATABASE futebol;

USE futebol;

CREATE TABLE competicao (
    id_competicao INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    epoca VARCHAR(20)
);

CREATE TABLE estadio (
    id_estadio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    capacidade INT
);

CREATE TABLE equipa (
    id_equipa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    ano_fundacao INT,
    id_estadio INT,
    FOREIGN KEY (id_estadio)
        REFERENCES estadio(id_estadio)
);

CREATE TABLE treinador (
    id_treinador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50),
    id_equipa INT,
    FOREIGN KEY (id_equipa)
        REFERENCES equipa(id_equipa)
);

CREATE TABLE jogador (
    id_jogador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    posicao VARCHAR(50),
    nacionalidade VARCHAR(50),
    id_equipa INT,
    FOREIGN KEY (id_equipa)
        REFERENCES equipa(id_equipa)
);

CREATE TABLE jogo (
    id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    resultado VARCHAR(20),
    jornada INT,
    id_competicao INT,
    id_equipa_casa INT,
    id_equipa_fora INT,

    FOREIGN KEY (id_competicao)
        REFERENCES competicao(id_competicao),

    FOREIGN KEY (id_equipa_casa)
        REFERENCES equipa(id_equipa),

    FOREIGN KEY (id_equipa_fora)
        REFERENCES equipa(id_equipa)
);

SHOW TABLES;