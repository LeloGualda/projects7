-- fazer cadastro de todos
INSERT INTO mydb.cadastro
(email,
idade,
altura,
peso,
status,
id_usuario,
admin,
analista)
VALUES
('aurelio.gualda@gmail.com',
24,
190,
70,
true,
(select id_usuario from usuarios where usuario = 'aurelio'),
true,
true);



INSERT INTO mydb.cadastro
(email,
idade,
altura,
peso,
status,
id_usuario,
admin,
analista)
VALUES
('cleiton@gmail.com',
28,
160,
80,
true,
(select id_usuario from usuarios where usuario = 'cleiton'),
true,
true);



INSERT INTO mydb.cadastro
(email,
idade,
altura,
peso,
status,
id_usuario,
admin,
analista)
VALUES
('carol@email.com',
26,
150,
60,
true,
(select id_usuario from usuarios where usuario = 'carol'),
false,
false);


INSERT INTO mydb.cadastro
(email,
idade,
altura,
peso,
status,
id_usuario,
admin,
analista)
VALUES
('ana@email.com',
30,
175,
70,
true,
(select id_usuario from usuarios where usuario = 'ana'),
false,
false);


INSERT INTO mydb.cadastro
(email,
idade,
altura,
peso,
status,
id_usuario,
admin,
analista)
VALUES
('noob@email.com',
12,
70,
30,
false,
(select id_usuario from usuarios where usuario = 'noobmaster69'),
false,
false);

SELECT * FROM mydb.cadastro;