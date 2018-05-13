-- Seleciona o numero usp de todos os alunos que ingressaram por vestibular.
SELECT aluno_nusp FROM aluno WHERE aluno_forma_de_ingresso='V';

-- Seleciona o nome de todas as pessoas do sexo feminino.
SELECT pessoa_nome FROM pessoa WHERE pessoa_sexo='F';

-- seleciona o nome de todos os professores.
SELECT pessoa_nome FROM pessoa JOIN professor ON id_pessoa=professor_id_pessoa;

-- Descreve as disciplinas que compoe o módulo 'Bitcoin'
SELECT disciplina_codigo, modulo_nome FROM ((compoe_modulo JOIN disciplina ON compoe_modulo_id_disciplina=id_disciplina) JOIN modulo ON compoe_modulo_id_modulo=id_modulo) WHERE modulo_nome='Bitcoin';
