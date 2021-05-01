CREATE DATABASE agenda;
use agenda;
CREATE TABLE contato(
	id int primary key auto_increment,
    nome varchar(100) not null,
    fone varchar(15),
    email varchar(100),
    observacao tinytext
    
);
-- mostra a estrutura da tabela
describe contato;

-- inserir dados
insert into contato(nome, fone, email, observacao, data_cadastro)
	value("Adriano","(47) 0 0000 0000","adriano@gmail.com","Vai ser um programador","17/04/21");
    
insert into contato(nome, fone, email, observacao)
	value("Alicio","(47) 0 0000 0000","alicio@gmail.com","Vai ser um programador");
    
insert into contato(nome, fone, email, observacao)
	value("Gabriel","(47) 0 0000 0000","gabriel@gmail.com","Vai ser um programador");
    
select * from contato;


-- update - atualizar
update contato
set nome = "GABRIEL"
where id = 2;

commit;

-- delete - excluir
delete from contato
where id = 2;

insert into contato(nome, fone, email, observacao)
	value("Ronan","(47) 0 0000 0000","ronan@gmail.com","Vai ser um programador");

ALTER  TABLE contato add COLUMN data_cadastro datetime default now();
    
