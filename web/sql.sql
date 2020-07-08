/* BANCO DE DADOS dbcliente */

create table cliente(
	id serial,
	cpf varchar (20),
	nome varchar (50),
	telefone varchar (14),
	endereco varchar(100)
);
 
create table automovel(
	id serial,
	fabricante varchar (20),
	modelo varchar (20),
	ano varchar (20),
	cor varchar (20),
	placa varchar (20),
        status varchar(20)
);

CREATE OR REPLACE FUNCTION AlugarCarro() RETURNS TRIGGER AS
$BODY$
	/*	Tornar o Carro Indisponível ao Reservá-lo (Insert Tabela Reserva) */
	BEGIN
		UPDATE automovel SET status = 'Alugado' WHERE id = (SELECT id FROM automovel WHERE Id = New.CarroReserva);
		RETURN New;
	END;
$BODY$
LANGUAGE 'plpgsql';

CREATE TRIGGER AlugarCarro BEFORE INSERT ON Reservas FOR EACH ROW EXECUTE PROCEDURE AlugarCarro();