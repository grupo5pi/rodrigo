Create Database MeathHealth;
Use MeathHealth;

Create Table cliente (
	id int primary key auto_increment,
    nomeEmpresa varchar(80) not null,
    cidade varchar(25),
    UF char(2),
	CEP char(8),
    numeroEndereço int,
    telefone int,
    celular int,
    email varchar(60),
    usuarioLogin varchar(45),
    senha varchar(60)
);

Create Table aparelho (
	idAparelho varchar(20) primary key,
    numeroSerie varchar(45),
    idEmpresa int not null,
	temperatura decimal(4,2),
    umidade decimal(5,2),
    dataHora datetime
);

Create Table pagamento (
	idPagamento int primary key auto_increment,
    tipoPagamento varchar(45),
    idCliente int not null,
	situacao varchar(30)
);

Insert Into cliente(nomeEmpresa, cidade, UF, CEP, numeroEndereco, telefone, celular, email, usuarioLogin, senha) values
	('Sadia', 'Francisco Beltrão', 'PR', '85606-394', 1052, '0800 702 8800', '0800 702 8800', null,  'Sadia', 'sadia@123'),
    ('Friboi', 'Lins', 'SP', '16404-110', 123, '183702-7536', '18991664813', 'boni@jbs.com.br', 'Friboi' 'friboi#123' );
    

Insert Into aparelho(idAparelho, numeroSerie, idEmpresa, temperatura, umidade, dataHora) values
	('21032201', '123456789011', 1, 24.70, 100.00, '21-03-2022' ),
	('11061955', '234567890122', 1, 15.70, 93.5, '11-06-2019' ),
	('03112173', '456789012322', 1, 5.22, 91.2, '03-11-2021' );

Insert Into pagamento(tipoPagamento, idCliente, situacao) values
	('Boleto', 1, 'pendente'),
    ('Cartão', 2, 'pago');