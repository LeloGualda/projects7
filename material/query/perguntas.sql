use mydb;

BEGIN;
INSERT INTO perguntas (descricao, id_usuario)
  VALUES('Voce bebe quanta por dia?', (select id_usuario from usuarios where usuario = 'aurelio'));
INSERT INTO alternativas (id_pergunta, alternativa, descricao,peso) 
  VALUES
		(LAST_INSERT_ID(),'a', 'menos que 1 litro',80),
        (LAST_INSERT_ID(),'b', 'entre 1 e 2 litros',60),
        (LAST_INSERT_ID(),'c', 'entre 2 e 3 litros',25),
        (LAST_INSERT_ID(),'d', 'mais do que 3 litros',0);
COMMIT;


BEGIN;
INSERT INTO perguntas (descricao, id_usuario)
  VALUES('Você come quantos vegetias quantos dias por semana?', (select id_usuario from usuarios where usuario = 'aurelio'));
INSERT INTO alternativas (id_pergunta, alternativa, descricao,peso) 
  VALUES
		(LAST_INSERT_ID(),'a', 'entre 1 e 2',50),
        (LAST_INSERT_ID(),'b', 'entre 2 a 3',20),
        (LAST_INSERT_ID(),'c', 'todos os dias',5),
        (LAST_INSERT_ID(),'d', 'nunca como vegetais',99);
COMMIT;
