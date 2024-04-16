create database recursoshumanos;

create table funcionario (
    idfuncionario int not null primary key,
    nome varchar(50) null,
    endereco varchar(100) null,
    cidade varchar(100) null,
    estado varchar(2) null,
    email varchar(50) null unique,
    dataNascto date null,
    salario decimal(7,2) null,
    cargos varchar(2) null,
    ativo bit null
);

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values (1, 'Jose da silva', 'AV são paulo,1', 'itu', 'SP', 'ZEsilva@yahoo.com.br', '1991-02-24');

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto, cargos, ativo)
values (2, 'joao de oliveira', 'rua da saude,138', 'jundiai', 'sp', 'jojo@hotmail.com', '1998-01-07', 'ti', 1);

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto, salario, cargos, ativo)
values (3, 'ana pimenta', 'rua da saude,11', 'jundiai', 'sp', 'pimentinha@hotmail.com', '1987-01-01', 750, 'TI', 0);

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto, salario, cargos, ativo)
values (4, 'mario lopes', 'rua angelica,143', 'jundiai', 'sp', 'mlops@hotmail.com', '1985-04-10', 750, 'ti', 0);

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values (5, 'Carlos dias', 'AV lapa,121', 'itu', 'SP', 'carlao@gmail.com', '1990-03-30');

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values (6, 'Ana maria da cunha', 'AV saopaulo,388', 'itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12');

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values (7, 'Claudia regina martins', 'rua holanda,89', 'campinas', 'SP', 'cregina@gmail.com', '1988-04-12');

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values (8, 'Marcela tatho', 'rua belgica,43', 'campinas', 'SP', 'marcttho@gmail.com', '1987-11-09');

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values (9, 'Jorge luis rodrigues', 'AV da saudade,1989', 'sao paulo', 'SP', 'jorgeluis@yahoo.com.br', '1990-05-05');

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values (10, 'Ana paula camargo', 'Rua costa e silva,33', 'jundiai', 'SP', 'apcamargo@gmail.com', '1991-06-30');

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values (11, 'Ivo chunha', 'AV raio de luz,100', 'campinas', 'SP', 'ivo@bol.com.br', '1987-04-11');

insert into funcionario (idfuncionario, nome, endereco, cidade, estado, email, dataNascto)
values (12, 'Carlos luis de souza', 'rua nicolau coelho,22', 'sao paulo', 'SP', 'cls@bol.com.br', '1988-04-30');
