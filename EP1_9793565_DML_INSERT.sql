INSERT INTO usuario VALUES (DEFAULT, 'igorfratel', 'senha!!!', '2018-05-11 14:53:00');
INSERT INTO usuario VALUES (DEFAULT, 'feulo', 'senha!!!', '2018-05-11 14:53:00');
INSERT INTO usuario VALUES (DEFAULT, 'caiotop', 'senha!!!', '2018-05-11 14:53:00');
INSERT INTO usuario VALUES (DEFAULT, 'pablito', 'senha!!!', '2018-05-11 14:53:00');
INSERT INTO usuario VALUES (DEFAULT, 'manobrown1', 'senha!!!', '2018-05-11 14:53:00');

INSERT INTO pessoa VALUES (DEFAULT, '12345678910', 'Igor', '23/04/1998', 'M', 'Rua 1', (SELECT id_usuario FROM usuario WHERE usuario_login='igorfratel'));
INSERT INTO pessoa VALUES (DEFAULT, '12345678911', 'Guilherme', '01/04/1996', 'M', 'Rua 2', (SELECT id_usuario FROM usuario WHERE usuario_login='feulo'));
INSERT INTO pessoa VALUES (DEFAULT, '12345678912', 'Caio', '24/05/1980', 'M', 'Rua 3', (SELECT id_usuario FROM usuario WHERE usuario_login='caiotop'));
INSERT INTO pessoa VALUES (DEFAULT, '12345678913', 'Pablo', '10/04/1950', 'M', 'Rua 4', (SELECT id_usuario FROM usuario WHERE usuario_login='pablito'));
INSERT INTO pessoa VALUES (DEFAULT, '12345678914', 'Pedro', '10/10/1910', 'M', 'Rua 5', (SELECT id_usuario FROM usuario WHERE usuario_login='manobrown1'));

INSERT INTO pessoa VALUES (DEFAULT, '12345678900', 'Arnaldo', '20/04/1988', 'M', 'Rua 6', NULL);
INSERT INTO pessoa VALUES (DEFAULT, '12345678921', 'Carlos', '01/04/1995', 'M', 'Rua 7', NULL);
INSERT INTO pessoa VALUES (DEFAULT, '12345678932', 'João', '10/08/1940', 'M', 'Rua 8', NULL);
INSERT INTO pessoa VALUES (DEFAULT, '12345678943', 'Roberto', '03/07/1930', 'M', 'Rua 9', NULL);
INSERT INTO pessoa VALUES (DEFAULT, '12345678954', 'Nina', '15/10/1998', 'F', 'Rua 10', NULL);

INSERT INTO perfil VALUES (DEFAULT, 'adm', 'perfil_adm');
INSERT INTO perfil VALUES (DEFAULT, 'alu', 'perfil_alu');
INSERT INTO perfil VALUES (DEFAULT, 'pro', 'perfil_pro');
INSERT INTO perfil VALUES (DEFAULT, 'gue', 'perfil_gue');
INSERT INTO perfil VALUES (DEFAULT, 'mas', 'perfil_mas');

INSERT INTO servico VALUES (DEFAULT, '0000', 'visu grade');
INSERT INTO servico VALUES (DEFAULT, '0001', 'alte grade');
INSERT INTO servico VALUES (DEFAULT, '0002', 'visu plano');
INSERT INTO servico VALUES (DEFAULT, '0003', 'alte plano');
INSERT INTO servico VALUES (DEFAULT, '0004', 'matricular');

INSERT INTO aluno VALUES (DEFAULT, '9793565', 2016, 'V', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='Igor'));
INSERT INTO aluno VALUES (DEFAULT, '123456', 2016, 'V', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='Guilherme'));
INSERT INTO aluno VALUES (DEFAULT, '9791234', 2016, 'V', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='Caio'));
INSERT INTO aluno VALUES (DEFAULT, '9794561', 2016, 'E', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='Pablo'));
INSERT INTO aluno VALUES (DEFAULT, '0000000', 1975, 'V', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='Pedro'));

INSERT INTO professor VALUES (DEFAULT, '0000001', 2010, 'DCC', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='Arnaldo'));
INSERT INTO professor VALUES (DEFAULT, '0000002', 2011, 'DCC', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='Carlos'));
INSERT INTO professor VALUES (DEFAULT, '0000003', 2012, 'DCC', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='João'));
INSERT INTO professor VALUES (DEFAULT, '0000004', 2013, 'DCC', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='Roberto'));
INSERT INTO professor VALUES (DEFAULT, '0000005', 2014, 'DCC', (SELECT id_pessoa FROM pessoa WHERE pessoa_nome='Nina'));

INSERT INTO disciplina VALUES (DEFAULT, 'MAC0000', 'Introdução à computação quântica', 'Ementa blablabla1', '23/04/1998', NULL, 4, 0, 'O');
INSERT INTO disciplina VALUES (DEFAULT, 'MAC0001', 'Tópicos em Assistência Técnica', 'Ementa blablabla2' , '23/04/1996', NULL, 4, 0, 'E');
INSERT INTO disciplina VALUES (DEFAULT, 'MAC0002', 'Introdução ao VIM', 'Ementa blablabla3', '23/04/1995', NULL, 4, 2, 'O');
INSERT INTO disciplina VALUES (DEFAULT, 'MAC0003', 'Bandejão 2', 'Ementa blablabla4', '23/04/1994', NULL, 4, 4, 'O');
INSERT INTO disciplina VALUES (DEFAULT, 'MAC0004', 'Leitura Dramática', 'Ementa blablabla5', '23/04/1993', NULL, 4, 0, 'L');

INSERT INTO modulo VALUES (DEFAULT, 'Desenvolvimento', 'Software blablabla');
INSERT INTO modulo VALUES (DEFAULT, 'Matemática', 'Continha blablabla');
INSERT INTO modulo VALUES (DEFAULT, 'Machine Learning', 'Dados blablabla');
INSERT INTO modulo VALUES (DEFAULT, 'Bitcoin', 'Bolha blablabla');
INSERT INTO modulo VALUES (DEFAULT, 'Hacking', '1337 blablabla');

INSERT INTO trilha VALUES (DEFAULT, 'Sistemas', 'Sistemas blablabla');
INSERT INTO trilha VALUES (DEFAULT, 'Ciência de Dados', 'Muitos dados blablabla');
INSERT INTO trilha VALUES (DEFAULT, 'Teoria', 'Grafos blablabla');
INSERT INTO trilha VALUES (DEFAULT, 'I.A', 'Extinção da humanidade blablabla');
INSERT INTO trilha VALUES (DEFAULT, 'Quântica', 'Hype blablabla');

INSERT INTO tem_perfil VALUES (DEFAULT, (SELECT id_usuario FROM usuario WHERE usuario_login='igorfratel'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='alu'));
INSERT INTO tem_perfil VALUES (DEFAULT, (SELECT id_usuario FROM usuario WHERE usuario_login='feulo'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='alu'));
INSERT INTO tem_perfil VALUES (DEFAULT, (SELECT id_usuario FROM usuario WHERE usuario_login='caiotop'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='alu'));
INSERT INTO tem_perfil VALUES (DEFAULT, (SELECT id_usuario FROM usuario WHERE usuario_login='pablito'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='alu'));
INSERT INTO tem_perfil VALUES (DEFAULT, (SELECT id_usuario FROM usuario WHERE usuario_login='manobrown1'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='mas'));

INSERT INTO tem_permissao VALUES (DEFAULT, (SELECT id_servico FROM servico WHERE servico_nome='visu grade'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='gue'));
INSERT INTO tem_permissao VALUES (DEFAULT, (SELECT id_servico FROM servico WHERE servico_nome='alte grade'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='mas'));
INSERT INTO tem_permissao VALUES (DEFAULT, (SELECT id_servico FROM servico WHERE servico_nome='alte plano'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='alu'));
INSERT INTO tem_permissao VALUES (DEFAULT, (SELECT id_servico FROM servico WHERE servico_nome='visu plano'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='pro'));
INSERT INTO tem_permissao VALUES (DEFAULT, (SELECT id_servico FROM servico WHERE servico_nome='matricular'), (SELECT id_perfil FROM perfil WHERE perfil_codigo='alu'));

INSERT INTO ministra VALUES (DEFAULT, (SELECT id_professor FROM professor WHERE professor_nusp='0000001'), (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0000'));
INSERT INTO ministra VALUES (DEFAULT, (SELECT id_professor FROM professor WHERE professor_nusp='0000002'), (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0001'));
INSERT INTO ministra VALUES (DEFAULT, (SELECT id_professor FROM professor WHERE professor_nusp='0000003'), (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0002'));
INSERT INTO ministra VALUES (DEFAULT, (SELECT id_professor FROM professor WHERE professor_nusp='0000004'), (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0003'));
INSERT INTO ministra VALUES (DEFAULT, (SELECT id_professor FROM professor WHERE professor_nusp='0000005'), (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0004'));

INSERT INTO compoe_modulo VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0000'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Desenvolvimento'));
INSERT INTO compoe_modulo VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0001'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Matemática'));
INSERT INTO compoe_modulo VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0002'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Machine Learning'));
INSERT INTO compoe_modulo VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0003'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Bitcoin'));
INSERT INTO compoe_modulo VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0004'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Hacking'));

INSERT INTO compoe_trilha VALUES (DEFAULT, (SELECT id_trilha FROM trilha WHERE trilha_nome='Sistemas'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Desenvolvimento'));
INSERT INTO compoe_trilha VALUES (DEFAULT, (SELECT id_trilha FROM trilha WHERE trilha_nome='Teoria'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Matemática'));
INSERT INTO compoe_trilha VALUES (DEFAULT,(SELECT id_trilha FROM trilha WHERE trilha_nome='I.A'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Machine Learning'));
INSERT INTO compoe_trilha VALUES (DEFAULT, (SELECT id_trilha FROM trilha WHERE trilha_nome='Ciência de Dados'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Bitcoin'));
INSERT INTO compoe_trilha VALUES (DEFAULT, (SELECT id_trilha FROM trilha WHERE trilha_nome='Quântica'), (SELECT id_modulo FROM modulo WHERE modulo_nome='Hacking'));

INSERT INTO cursa VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0000'), (SELECT id_aluno FROM aluno WHERE aluno_nusp='9793565'));
INSERT INTO cursa VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0001'), (SELECT id_aluno FROM aluno WHERE aluno_nusp='9793565'));
INSERT INTO cursa VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0002'), (SELECT id_aluno FROM aluno WHERE aluno_nusp='9793565'));
INSERT INTO cursa VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0001'), (SELECT id_aluno FROM aluno WHERE aluno_nusp='123456'));
INSERT INTO cursa VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0002'), (SELECT id_aluno FROM aluno WHERE aluno_nusp='9791234'));
INSERT INTO cursa VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0003'), (SELECT id_aluno FROM aluno WHERE aluno_nusp='9794561'));
INSERT INTO cursa VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0004'), (SELECT id_aluno FROM aluno WHERE aluno_nusp='0000000'));
INSERT INTO cursa VALUES (DEFAULT, (SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0005'), (SELECT id_aluno FROM aluno WHERE aluno_nusp='0000000'));

INSERT INTO plano VALUES (DEFAULT, 'Plano 1', (SELECT id_cursa FROM cursa WHERE cursa_ID_aluno = (SELECT id_aluno FROM aluno WHERE aluno_nusp='9793465') AND cursa_ID_disciplina=(SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0000')), 1, 2019);
INSERT INTO plano VALUES (DEFAULT, 'Plano 1', (SELECT id_cursa FROM cursa WHERE cursa_ID_aluno = (SELECT id_aluno FROM aluno WHERE aluno_nusp='9793465') AND cursa_ID_disciplina=(SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0001')), 1, 2019);
INSERT INTO plano VALUES (DEFAULT, 'Plano 1', (SELECT id_cursa FROM cursa WHERE cursa_ID_aluno = (SELECT id_aluno FROM aluno WHERE aluno_nusp='9793465') AND cursa_ID_disciplina=(SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0002')), 1, 2019);
INSERT INTO plano VALUES (DEFAULT, 'Plano 2', (SELECT id_cursa FROM cursa WHERE cursa_ID_aluno = (SELECT id_aluno FROM aluno WHERE aluno_nusp='0000000') AND cursa_ID_disciplina=(SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0004')), 1, 2019);
INSERT INTO plano VALUES (DEFAULT, 'Plano 2', (SELECT id_cursa FROM cursa WHERE cursa_ID_aluno = (SELECT id_aluno FROM aluno WHERE aluno_nusp='0000000') AND cursa_ID_disciplina=(SELECT id_disciplina FROM disciplina WHERE disciplina_codigo='MAC0005')), 2, 2019);
