#Cria um DataBase
create database db_lion_school_turma_manha;

# Visualiza todos os DataBase existentes no Banco de Dados 
show databases;

# Seleciona o database que sera utilizado
use db_lion_school_turma_manha;

#Visualiza todas as tabelas existentes em um  database
show tables;

# Comando para criar uma tabela
create table tbl_aluno (
  
  id int not null primary key auto_increment,
   nome varchar(100) not null,
   cpf varchar(18) not null,
   rg varchar(15) not null,
   data_nascimento date not null,
   email varchar(255) not null,
   unique index(id)
   

);

# desc Vai mostrar a discriçao da tabela 'Validar'
desc tbl_aluno;

#
insert into tbl_aluno (nome, cpf, rg, data_nascimento, email)
values ('José da Silva ' ,
 '300.400.458-10' ,
 '22.700.123-7', 
 '2000-05-20', 
 'José@gmail.com');

 # Mesma coisa so troquei o nome das pessoas
 insert into tbl_aluno (nome, cpf, rg, data_nascimento, email)
 values ('Maria da silva ' ,
 '333.430.458-10' ,
 '23.730.123-7', 
 '2003-05-20', 
 'maria@gmail.com');
 
 #Visualizar o conteúdo de uma tabela
 select*from tbl_aluno;
 
 #Atualizar informaçoes na tabela (NAO ESQUECER DO CRITERIO DE BUSCA) 'update';
 update tbl_aluno set email = 'José@hotmail.com where' where id = 1;
 
 # Deletar registro na tabela 'delete'
 delete from tbl_aluno where id = 2;


