CREATE TABLE usuario (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	senha VARCHAR(150) NOT NULL
) ENGINE = InnoDB  
DEFAULT CHARACTER SET = utf8;

CREATE TABLE permissao (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(50) NOT NULL
) ENGINE = InnoDB  
DEFAULT CHARACTER SET = utf8;

CREATE TABLE usuario_permissao (
	codigo_usuario BIGINT(20) NOT NULL,
	codigo_permissao BIGINT(20) NOT NULL,
	PRIMARY KEY(codigo_usuario, codigo_permissao),
	FOREIGN KEY (codigo_usuario) REFERENCES usuario(codigo),
	FOREIGN KEY (codigo_permissao) REFERENCES permissao(codigo)
) ENGINE = InnoDB  
DEFAULT CHARACTER SET = utf8;


INSERT INTO usuario(codigo, nome, email, senha)
	VALUES (1, "admin", "admin@zinsk", "$2a$10$4NFitvKx3jM8bkdbMUrTVOQVZlnh0EqFpX3A.8u9Wuxr9fbfGvMnO");
INSERT INTO usuario(codigo, nome, email, senha)
	VALUES (2, "clenio", "clenio.borges@gmail.com", "$2a$10$vJoGSX/6vhkTJC/7YzT1Bu8AtfgdzT2Ohx3/UBekrR06Rf7.jCIRS");
	
INSERT INTO permissao(codigo, descricao) values (1, "ROLE_CADASTRAR_MARCA");
INSERT INTO permissao(codigo, descricao) values (2, "ROLE_PESQUISAR_MARCA");

INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 1);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 2);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (2, 1);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (2, 2);

