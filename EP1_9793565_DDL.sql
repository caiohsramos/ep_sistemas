CREATE DATABASE yggdrasil;

CREATE TABLE usuario (
  id_usuario SERIAL PRIMARY KEY,
  usuario_login CHAR(10) NOT NULL UNIQUE,
  usuario_senha CHAR(256) NOT NULL,
  usuario_criacao TIMESTAMP NOT NULL
);

CREATE TABLE perfil (
  id_perfil SERIAL PRIMARY KEY,
  perfil_codigo CHAR(3) NOT NULL UNIQUE,
  perfil_nome CHAR(10) NOT NULL UNIQUE
);

CREATE TABLE servico (
  id_servico SERIAL PRIMARY KEY,
  servico_codigo CHAR(4) NOT NULL UNIQUE,
  servico_nome CHAR(10) NOT NULL UNIQUE,
  servico_descricao CHAR(200)
);

CREATE TABLE pessoa (
  id_pessoa SERIAL PRIMARY KEY,
  pessoa_cpf CHAR(11) NOT NULL UNIQUE,
  pessoa_nome CHAR(70) NOT NULL,
  pessoa_data_de_nascimento DATE,
  pessoa_sexo CHAR(1),
  pessoa_endereco CHAR(50),
  pessoa_ID_usuario INT UNIQUE REFERENCES usuario(id_usuario)
);

CREATE TABLE aluno (
  id_aluno SERIAL PRIMARY KEY,
  aluno_nusp CHAR(9) NOT NULL UNIQUE,
  aluno_ano_de_ingresso INTEGER,  --NÃO BOTEI CONSTRAINT
  aluno_forma_de_ingresso CHAR(1)
);

CREATE TABLE professor (
  id_professor SERIAL PRIMARY KEY,
  professor_nusp CHAR(9) NOT NULL UNIQUE,
  professor_ano_de_ingresso INTEGER,  --NÃO BOTEI CONSTRAINT
  professor_departamento CHAR(20)
);

CREATE TABLE disciplina (
  id_disciplina SERIAL PRIMARY KEY,
  disciplina_codigo CHAR(7) NOT NULL UNIQUE,
  disciplina_nome CHAR(50) NOT NULL,
  disciplina_ementa CHAR(200) NOT NULL,
  disciplina_criacao DATE,
  disciplina_bibliografia CHAR(100),
  disciplina_credito_aula INTEGER NOT NULL,
  disciplina_credito_trabalho INTEGER NOT NULL,
  disciplina_tipo CHAR NOT NULL
);

CREATE TABLE modulo (
  id_modulo SERIAL PRIMARY KEY,
  modulo_nome CHAR(20) NOT NULL UNIQUE,
  modulo_descricao CHAR(200)
);

CREATE TABLE trilha (
  id_trilha SERIAL PRIMARY KEY,
  trilha_nome CHAR(20) NOT NULL UNIQUE,
  trilha_descricao CHAR(200)
);

CREATE TABLE tem_perfil (
  id_tem_perfil SERIAL PRIMARY KEY,
  tem_perfil_ID_usuario INTEGER REFERENCES usuario(id_usuario),
  tem_perfil_ID_perfil INTEGER REFERENCES perfil(id_perfil)
);

CREATE TABLE tem_permissao (
  id_tem_permissao SERIAL PRIMARY KEY,
  tem_permissao_ID_servico INTEGER REFERENCES servico(id_servico),
  tem_permissao_ID_perfil INTEGER REFERENCES perfil(id_perfil)
);

CREATE TABLE ministra (
  id_ministra SERIAL PRIMARY KEY,
  ministra_ID_professor INTEGER REFERENCES professor(id_professor),
  ministra_ID_disciplina INTEGER REFERENCES disciplina(id_disciplina)
);

CREATE TABLE compoe_modulo (
  id_compoe_modulo SERIAL PRIMARY KEY,
  compoe_modulo_ID_disciplina INTEGER REFERENCES disciplina(id_disciplina),
  compoe_modulo_ID_modulo INTEGER REFERENCES modulo(id_modulo)
);

CREATE TABLE compoe_trilha (
  id_compoe_trilha SERIAL PRIMARY KEY,
  compoe_trilha_ID_trilha INTEGER REFERENCES trilha(id_trilha),
  compoe_trilha_ID_modulo INTEGER REFERENCES modulo(id_modulo)
);

CREATE TABLE cursa (
  id_cursa SERIAL PRIMARY KEY,
  cursa_ID_disciplina INTEGER REFERENCES disciplina(id_disciplina),
  cursa_ID_aluno INTEGER REFERENCES aluno(id_aluno)
);

CREATE TABLE plano (
 id_plano SERIAL PRIMARY KEY,
 plano_ID_cursa INTEGER REFERENCES cursa(id_cursa)
);
