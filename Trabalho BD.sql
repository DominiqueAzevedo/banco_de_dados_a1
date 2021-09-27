-- Database
CREATE DATABASE kpop;
USE kpop;

-- tables
-- Table: empresas
CREATE TABLE empresas (
    id_empresa int  NOT NULL AUTO_INCREMENT,
    nome_empresa varchar(30)  NOT NULL,
    ceo varchar(30)  NOT NULL,
    PRIMARY KEY (id_empresa)
);

insert into empresas (nome_empresa, ceo) 
values("SM Entertainment", "Lee Sung Soo");
insert into empresas (nome_empresa, ceo) 
values("JYP Entertainment", "Jung Wook");
insert into empresas (nome_empresa, ceo) 
values("YG Entertainment", "Hwang Bo Kyung");
insert into empresas (nome_empresa, ceo) 
values("Big Hit Entertainment", "Park Ji Won");
insert into empresas (nome_empresa, ceo) 
values("FNC Entertainment", "Ahn Seok Joon");
insert into empresas (nome_empresa, ceo) 
values("CUBE Entertainment", "Shin Jung Hwa, Park Chung Min");
insert into empresas (nome_empresa, ceo) 
values("Starship Entertainment", "Kim Shi Dae");
insert into empresas (nome_empresa, ceo) 
values("Pledis Entertainment", "Han Sung Soo");

-- Table: contato_empresas
CREATE TABLE contato_empresas (
    id_contato_emp int  NOT NULL AUTO_INCREMENT,
    email varchar(50)  NULL,
    site varchar(100)  NOT NULL,
    telefone varchar(20)  NOT NULL,
    empresa_id int NOT NULL,
    PRIMARY KEY (id_contato_emp),
    FOREIGN KEY (empresa_id) REFERENCES empresas (id_empresa)
);

insert into contato_empresas (empresa_id, site, telefone) 
values(1, "smentertainment.com", "0262409800");
insert into contato_empresas (empresa_id, site, telefone) 
values(2, "jype.com", "12122733480");
insert into contato_empresas (empresa_id, site, telefone) 
values(3, "ygfamily.com", "82231421104");
insert into contato_empresas (empresa_id, site, telefone) 
values(4, "ibighit.com", "6477482448");
insert into contato_empresas (empresa_id, site, telefone) 
values(5, "fncent.com", "8225175426");
insert into contato_empresas (empresa_id, site, email, telefone) 
values(6, "cubeent.co.kr", "cube@cubeent.co.kr", "82234451045");
insert into contato_empresas (empresa_id, site, email, telefone) 
values(7, "starship-ent.com", "starship-ent@hanmail.net", "8225924000");
insert into contato_empresas (empresa_id, site, telefone) 
values(8, "pledis.co.kr", "8224481677");

-- Table: porcentagem_ganhos
CREATE TABLE porcentagem_ganhos (
    id_porcentagem int  NOT NULL AUTO_INCREMENT,
    vendas_fisicas decimal(10,1)  NOT NULL,
    vendas_fisicas_ren decimal(10,1)  NOT NULL,
    eventos decimal(10,1)  NOT NULL,
    promo_exterior decimal(10,1)  NOT NULL,
    empresa_id int  NOT NULL,
    PRIMARY KEY (id_porcentagem),
    FOREIGN KEY (empresa_id) REFERENCES empresas (id_empresa)
);

insert into porcentagem_ganhos (empresa_id, vendas_fisicas, vendas_fisicas_ren, eventos, promo_exterior) 
values(1, 50.0, 90.0, 60.0, 30.0);
insert into porcentagem_ganhos (empresa_id, vendas_fisicas, vendas_fisicas_ren, eventos, promo_exterior) 
values(2, 50.0, 30.0, 60.0, 40.0);
insert into porcentagem_ganhos (empresa_id, vendas_fisicas, vendas_fisicas_ren, eventos, promo_exterior) 
values(3, 50.0, 30.0, 40.0, 50.0);
insert into porcentagem_ganhos (empresa_id, vendas_fisicas, vendas_fisicas_ren, eventos, promo_exterior) 
values(4, 50.0, 30.0, 50.0, 30.0);
insert into porcentagem_ganhos (empresa_id, vendas_fisicas, vendas_fisicas_ren, eventos, promo_exterior) 
values(5, 60.0, 50.0, 60.0, 50.0);
insert into porcentagem_ganhos (empresa_id, vendas_fisicas, vendas_fisicas_ren, eventos, promo_exterior) 
values(6, 80.0, 70.0, 60.0, 40.0);
insert into porcentagem_ganhos (empresa_id, vendas_fisicas, vendas_fisicas_ren, eventos, promo_exterior) 
values(7, 20.0, 20.0, 50.0, 30.0);
insert into porcentagem_ganhos (empresa_id, vendas_fisicas, vendas_fisicas_ren, eventos, promo_exterior) 
values(8, 80.0, 80.0, 70.0, 20.0);

-- Table: grupos
CREATE TABLE grupos (
    id_grupo int  NOT NULL AUTO_INCREMENT,
    nome_grupo varchar(30)  NOT NULL,
    debut date  NOT NULL,
    turnes_concertos int  NOT NULL,
    discos_vendidos int  NOT NULL,
    empresa_id int  NOT NULL,
    PRIMARY KEY (id_grupo),
    FOREIGN KEY (empresa_id) REFERENCES empresas (id_empresa)
);

insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("Red Velvet", "2014-08-01", 3, 18656011, 1);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("Blackpink", "2016-08-08", 4, 19787813, 3);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("Twice", "2015-10-20", 7, 29982024, 2);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("BTS", "2013-06-11", 8, 26807907, 4);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("Sistar", "2010-06-03", 0, 150454, 7);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("Seventeen", "2015-05-26", 5, 11431262, 8);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("SHINee", "2008-05-25", 7, 2173559, 1);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("GOT7", "2014-01-16", 10, 1348726, 2);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("Girls' Generation", "2007-08-05", 15, 4261023, 1);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("Monsta X", "2015-05-14", 4, 2067860, 7);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("AOA", "2012-08-09", 12, 198992, 5);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("SF9", "2016-10-05", 13, 1120909, 5);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("Stray Kids", "2018-03-25", 1, 2219462, 2);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("TXT", "2019-03-04", 1, 677693, 4);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("Itzy", "2019-02-12", 1, 916680, 2);
insert into grupos (nome_grupo, debut, turnes_concertos, discos_vendidos, empresa_id) 
values("(G)I-DLE", "2018-05-02", 1, 899390, 6);

-- Table: status
CREATE TABLE status_ (
    id_status int  NOT NULL AUTO_INCREMENT,
    ativo bool  NOT NULL,
    hiatus bool  NOT NULL,
    disband bool  NOT NULL,
    grupo_id int  NOT NULL,
    PRIMARY KEY (id_status),
    FOREIGN KEY (grupo_id) REFERENCES grupos (id_grupo)
);

insert into status_ (grupo_id, ativo, hiatus, disband) 
values(1, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(2, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(3, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(4, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(5, False, False, True);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(6, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(7, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(8, False, True, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(9, False, True, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(10, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(11, False, True, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(12, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(13, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(14, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(15, True, False, False);
insert into status_ (grupo_id, ativo, hiatus, disband) 
values(16, True, False, False);

-- Table: tipo_endereco
CREATE TABLE tipo_endereco (
    id_tipo_end int  NOT NULL AUTO_INCREMENT,
    facebook varchar(20)  NOT NULL,
    twitter varchar(20)  NOT NULL,
    instagram varchar(20)  NOT NULL,
    youtube varchar(20)  NOT NULL,
    grupo_id int  NOT NULL,
    PRIMARY KEY (id_tipo_end),
    FOREIGN KEY (grupo_id) REFERENCES grupos (id_grupo)
);

insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(1, "@RedVelvet", "@RVsmtown", "redvelvet.smtown", "Red Velvet");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(2, "@BLACKPINKOFFICIAL", "@BLACKPINK", "blackpinkofficial", "BLACKPINK");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(3, "@JYPETWICE", "@JYPETWICE", "twicetagram", "TWICE");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(4, "@bangtan.official", "@bts_bighit", "bts.bighitofficial", "BTS");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(5, "@officialsistar", "@sistarsistar", "official_sistar", "SISTAR");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(6, "@seventeennews", "@pledis_17", "saythename_17", "SEVENTEEN");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(7, "@shinee", "@SHINee", "shinee", "SHINee");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(8, "@GOT7Official", "@GOT7Official", "got7.with.igot7", "GOT7");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(9, "@girlsgeneration", "@GirlsGeneration", "girlsgeneration", "Girls' Generation");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(10, "@OfficialMonstaX", "@OfficialMonstaX", "official_monsta_x", "MONSTA X");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(11, "@OfficialAOA", "@AOA_Official", "official_team_aoa", "AOA");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(12, "@SF9official", "@SF9official", "sf9official", "SF9");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(13, "@JYPEStrayKids", "@Stray_Kids", "realstraykids", "Stray Kids");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(14, "@TXT.bighit", "@TXT_bighit", "txt_bighit", "TOMORROW X TOGETHER");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(15, "@OfficialItzy", "@ITZYofficial", "itzy.all.in.us", "ITZY");
insert into tipo_endereco (grupo_id, facebook, twitter, instagram, youtube) 
values(16, "@G.I.DLE.CUBE", "@G_I_DLE", "official_g_i_dle", "(G)I-DLE");

-- Table: Integrantes
CREATE TABLE integrantes (
    id_integrante int  NOT NULL AUTO_INCREMENT,
    nome varchar(30)  NOT NULL,
    pais varchar(40)  NOT NULL,
    data_nascimento date  NOT NULL,
    grupo_id int  NOT NULL,
    PRIMARY KEY (id_integrante),
    FOREIGN KEY (grupo_id) REFERENCES grupos (id_grupo)
);

insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Bae Joohyun", "Coréia do Sul", "1991-03-29", 1);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Park Sooyoung", "Coréia do Sul", "1996-09-03", 1);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Son Seung Wan", "Coréia do Sul", "1994-02-21", 1);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Yerim", "Coréia do Sul", "1999-03-06", 1);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kang Seulgi", "Coréia do Sul", "1994-02-10", 1);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Ji Soo", "Coréia do Sul", "1995-01-03", 2);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Jennie", "Coréia do Sul", "1996-01-16", 2);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Roseanne Park", "Nova Zelândia, Coréia do Sul", "1997-02-11", 2);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Sana Minatozaki", "Japão", "1996-12-29", 3);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Mina Myoi", "Japão", "1997-03-24", 3);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Im Nayeon", "Coréia do Sul", "1995-09-22", 3);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Park Ji Hyo", "Coréia do Sul", "1997-02-01", 3);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Yoo Jeongyeon", "Coréia do Sul", "1996-11-01", 3);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Son Chaeyoung", "Coréia do Sul", "1999-04-23", 3);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Dahyun", "Coréia do Sul", "1998-05-28", 3);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Chou Tzuyu", "Taiwan", "1999-06-14", 3);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Momo Hirai", "Japão", "1996-11-09", 3);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lalisa Manoban", "Tailândia", "1997-03-27", 2);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Tae Hyung", "Coréia do Sul", "1995-12-30", 4);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Jeon Jungkook", "Coréia do Sul", "1997-09-01", 4);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Park Jimin", "Coréia do Sul", "1995-10-13", 4);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Seokjin", "Coréia do Sul", "1992-12-04", 4);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Min Yoongi", "Coréia do Sul", "1993-03-09", 4);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Jung Hoseok", "Coréia do Sul", "1994-02-18", 4);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Namjoom", "Coréia do Sul", "1994-09-12", 4);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Yoon Bora", "Coréia do Sul", "1989-12-30", 5);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Dasom", "Coréia do Sul", "1993-05-06", 5);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kang Jihyun", "Coréia do Sul", "1992-02-12", 5);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Hyojung", "Coréia do Sul", "1990-12-11", 5);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Yoon Jonghan", "Coréia do Sul", "1995-10-04", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Mingyu", "Coréia do Sul", "1997-04-06", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kwon Soonyoung", "Coréia do Sul", "1996-06-15", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Wen Junhui", "China", "1996-06-10", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Jihoon", "Coréia do Sul", "1996-11-22", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Jeon Wonwoo", "Coréia do Sul", "1996-07-17", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Joshua Hong", "Estados Unidos", "1995-12-30", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Hansol Vernon Chwe", "Coréia do Sul, Estados Unidos", "1995-10-04", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Seok Min", "Coréia do Sul", "1997-02-18", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Choi Seungcheol", "Coréia do Sul", "1995-08-08", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Chan", "Coréia do Sul", "1999-02-11", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Xu Minghao", "China", "1997-11-07", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Boo Seungkwan", "Coréia do Sul", "1998-01-16", 6);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Jonghyun", "Coréia do Sul", "1990-04-08", 7);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Taemin", "Coréia do Sul", "1993-07-18", 7);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Choi Minho", "Coréia do Sul", "1991-12-09", 7);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Kibum", "Coréia do Sul", "1991-09-23", 7);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Jinki", "Coréia do Sul", "1989-12-14", 7);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Park Jinyoung", "Coréia do Sul", "1994-09-22", 8);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Jackson Wang", "Hong Kong", "1994-03-28", 8);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lim Jaebeom", "Coréia do Sul", "1994-01-06", 8);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Mark Tuan", "Estados Unidos", "1993-09-04", 8);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Choi Youngjae", "Coréia do Sul", "1996-09-17", 8);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kunpimook Bhuwakul", "Tailândia", "1997-05-02", 8);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Yugyeom", "Coréia do Sul", "1997-11-17", 8);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lim Yoona", "Coréia do Sul", "1990-05-30", 9);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Choi Sooyoung", "Coréia do Sul", "1990-02-10", 9);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Taeyeon", "Coréia do Sul", "1989-03-09", 9);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Jessica Jung", "Estados Unidos", "1989-04-18", 9);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Tiffany Young", "Estados Unidos", "1989-08-01", 9);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Seo Juhyun", "Coréia do Sul", "1991-06-28", 9);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kwon Yuri", "Coréia do Sul", "1989-12-05", 9);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Hyoyeon", "Coréia do Sul", "1989-09-22", 9);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Soonkyu", "Coréia do Sul", "1989-05-15", 9);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Hoseok", "Coréia do Sul", "1993-03-01", 10);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Im Changkyun", "Coréia do Sul", "1996-01-26", 10);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Son Hyunwoo", "Coréia do Sul", "1992-06-18", 10);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Chae Hyungwon", "Coréia do Sul", "1994-01-15", 10);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Minhyuk", "Coréia do Sul", "1993-11-03", 10);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Jooheon", "Coréia do Sul", "1994-10-06", 10);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Yoo Kihyun", "Coréia do Sul", "1993-11-22", 10);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Shin Jimin", "Coréia do Sul", "1991-01-08", 11);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kwon Minah", "Coréia do Sul", "1993-09-21", 11);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Seolhyun", "Coréia do Sul", "1995-01-03", 11);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Park Choah", "Coréia do Sul", "1990-03-06", 11);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Shin Hyejeong", "Coréia do Sul", "1993-08-10", 11);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Chanmi", "Coréia do Sul", "1996-06-19", 11);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Youkyung", "Coréia do Sul", "1993-03-15", 11);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Seokwoo", "Coréia do Sul", "1996-08-07", 12); #
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Hwiyoung", "Coréia do Sul", "1999-05-11", 12);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kang Chanhee", "Coréia do Sul", "2000-01-17", 12);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Yoo Taeyang", "Coréia do Sul", "1997-02-28", 12);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Dawon", "Coréia do Sul", "1995-07-24", 12);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Inseong", "Coréia do Sul", "1993-07-12", 12);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Baek Juho", "Coréia do Sul", "1996-07-04", 12);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Jaeyoung", "Coréia do Sul", "1994-08-09", 12);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Youngbin", "Coréia do Sul", "1993-11-23", 12);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Hwang Hyunjin", "Coréia do Sul", "2000-03-20", 13);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Felix", "Austrália", "2000-09-15", 13);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Christopher Bang", "Coréia do Sul", "1997-10-03", 13);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Han Jisung", "Coréia do Sul", "2000-09-14", 13);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Minho", "Coréia do Sul", "1998-10-25", 13);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Yang Jeong In", "Coréia do Sul", "2001-02-08", 13);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Seo Changbin", "Coréia do Sul", "1999-08-11", 13);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kim Woojin", "Coréia do Sul", "1997-04-08", 13);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Choi Yeon Jun", "Coréia do Sul", "1999-09-13", 14);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Choi Soobin", "Coréia do Sul", "2000-12-05", 14);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Choi Beomgyu", "Coréia do Sul", "2001-03-13", 14);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kai Kamal Huening", "Estados Unidos", "2002-08-14", 14);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Kang Taehyun", "Coréia do Sul", "2002-02-05", 14);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Shin Ryujin", "Coréia do Sul", "2001-04-17", 15);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Shin Yuna", "Coréia do Sul", "2003-12-09", 15);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Hwang Yeji", "Coréia do Sul", "2000-05-26", 15);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Choi Jisu", "Coréia do Sul", "2000-07-21", 15);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Lee Chaeryeong", "Coréia do Sul", "2001-06-05", 15);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Seo Soojin", "Coréia do Sul", "1998-03-09", 16);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Nicha Yontararak", "Tailândia", "1997-10-23", 16);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Cho Miyeon", "Coréia do Sul", "1997-01-31", 16);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Yeh Shu Hua", "Taiwan", "2000-01-06", 16);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Song Yuqi", "China", "1999-09-23", 16);
insert into integrantes (nome, pais, data_nascimento, grupo_id) 
values("Jeon Soyeon", "Coréia do Sul", "1998-08-26", 16);

-- Table: albuns
CREATE TABLE albuns (
    id_album int  NOT NULL,
    nome_album varchar(50)  NOT NULL,
    quant_musicas int  NOT NULL,
    lancamento int  NOT NULL,
    grupos_id int  NOT NULL,
    PRIMARY KEY (id_album),
    FOREIGN KEY (grupos_id) REFERENCES grupos (id_grupo)
);

insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(60, "I Am", 6, 2018, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(61, "I Made", 5, 2019, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(62, "LATATA", 4, 2019, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(63, "I Trust", 3, 2020, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(64, "Oh My God", 5, 2020, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(65, "I burn", 6, 2021, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(66, "i'M THE TREND", 1, 2020, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(67, "DUMi DUMDi", 1, 2020, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(68, "HWAA", 1, 2021, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(69, "Last Dance", 1, 2021, 16);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(70, "IT'z ICY", 5, 2019, 15);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(71, "IT'z ME", 7, 2020, 15);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(72, "Not Shy", 6, 2020, 15);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(73, "GUESS WHO", 6, 2021, 15);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(74, "IT'z Different", 2, 2019, 15);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(75, "Trust Me: MIDZY", 1, 2021, 15);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(76, "In the Morning", 1, 2021, 15);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(77, "Break Ice", 1, 2021, 15);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(78, "THE DREAM CHAPTER: STAR", 5, 2019, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(79, "minisode1: Blue Hour", 5, 2020, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(80, "STILL DREAMING", 10, 2021, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(81, "The Chaos Chapter: FREEZE", 8, 2021, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(82, "The Chaos Chapter: FIGHT OR ESCAPE", 10, 2021, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(83, "The Chaos Chapter: ETERNITY", 6, 2020, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(84, "The Chaos Chapter: MAGIC", 8, 2019, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(85, "MAGIC HOUR", 3, 2020, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(86, "DRAMA", 3, 2020, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(87, "Your Light (Live On)", 1, 2020, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(88, "Force", 1, 2021, 14);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(89, "Mixtape", 6, 2018, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(90, "I Am NOT", 7, 2018, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(91, "I Am WHO", 7, 2018, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(92, "I Am YOU", 7, 2018, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(93, "Clé 1: MIROH", 7, 2019, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(94, "Clé 2: Yellow Wood", 7, 2019, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(95, "UNVEIL Stray Kids", 9, 2019, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(96, "Clé: LEVANTER", 7, 2019, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(97, "SKZ2020", 24, 2020, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(98, "GO LIVE", 14, 2020, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(99, "ALL IN", 7, 2020, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(150, "NOEASY", 14, 2021, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(151, "TOP", 1, 2020, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(152, "SLUMP", 1, 2020, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(153, "God's Menu", 1, 2020, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(154, "Back Door", 1, 2020, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(155, "ALL IN", 1, 2020, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(156, "Going Dumb", 1, 2021, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(157, "Mixtape: OH", 1, 2021, 13);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(158, "SF9 1st Mini Album [Burning Sensation]", 6, 2017, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(159, "SF9 2nd Mini Album [Breaking Sensation]", 6, 2017, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(160, "SF9 3rd Mini Album [Knights of the Sun]", 6, 2017, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(161, "Sensation Feeling Nine", 10, 2017, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(162, "SF9 4th Mini Album [MAMMA MIA!]", 6, 2018, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(163, "SF9 5th Mini Album [Sensuous]", 5, 2018, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(164, "NARCISSUS", 6, 2019, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(165, "Illuminate", 10, 2019, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(166, "RPM", 6, 2019, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(167, "9loryUS", 6, 2020, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(168, "GOLDEN ECHO", 10, 2020, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(169, "FIRT COLLECTION", 10, 2020, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(170, "TURN OVER", 6, 2021, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(171, "Different", 1, 2018, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(172, "Enough", 1, 2019, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(173, "RPM", 3, 2019, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(174, "Good Guy", 3, 2020, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(175, "SPECIAL HISTORY BOOK", 3, 2020, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(176, "Summer Breeze", 1, 2020, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(177, "KINGDOM <NO LIMIT>", 1, 2021, 12);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(178, "Short Hair", 5, 2014, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(179, "Like a Cat", 6, 2014, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(180, "Heart Attack", 6, 2015, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(181, "AOA 4th Mini Album Good Luck", 5, 2016, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(182, "AOA 1st Album ANGEL'S KNOCK", 10, 2017, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(183, "BINGLE BANGLE", 6, 2018, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(184, "NEW MOON", 5, 2019, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(185, "Angels`Story", 3, 2012, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(186, "WANNA BE", 3, 2012, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(187, "MOYA", 2, 2013, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(188, "RED MOTION", 2, 2013, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(189, "Miniskirt", 2, 2014, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(190, "Ai Wo Choudai", 1, 2016, 11);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(191, "TRESPASS", 7, 2015, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(192, "RUSH", 6, 2015, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(193, "THE CLAN pt.1 <LOST>", 6, 2016, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(194, "THE CLAN pt.2 [GUILTY]", 6, 2016, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(195, "THE CLAN pt.2.5 [BEAUTIFUL]", 10, 2017, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(196, "SHINE FOREVER", 12, 2017, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(197, "THE CODE", 7, 2017, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(198, "THE CONNECT: DEJAVU", 7, 2018, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(199, "Piece", 10, 2018, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(250, "Take.1 Are You There?", 10, 2018, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(251, "Take.2 We Are Here", 10, 2019, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(252, "FOLLOW - FIND YOU", 8, 2019, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(253, "Phenomenon", 9, 2019, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(254, "ALL ABOUT LUV", 10, 2020, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(255, "FANTASIA X", 7, 2020, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(248, "Fatal Love", 10, 2020, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(249, "One of a Kind", 7, 2021, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(256, "Wish On The Same Sky", 1, 2020, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(257, "Reckless", 1, 2020, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(258, "Love Killa", 2, 2020, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(259, "Wanted", 1, 2021, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(260, "Flavors of love", 1, 2021, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(261, "KISS OR DEATH", 1, 2021, 10);
insert into albuns (id_album, nome_album, quant_musicas, lancamento, grupos_id) 
values(262, "One Day", 1, 2021, 10);

-- Table: musicas
CREATE TABLE musicas (
    id_musica int  NOT NULL AUTO_INCREMENT,
    nome_musica varchar(40)  NOT NULL,
    album_id int  NOT NULL,
    PRIMARY KEY (id_musica),
    FOREIGN KEY (album_id) REFERENCES albuns (id_album)
);

insert into musicas (nome_musica, album_id) 
values("LATATA", 60);
insert into musicas (nome_musica, album_id) 
values("$$$", 60);
insert into musicas (nome_musica, album_id) 
values("MAZE", 60);
insert into musicas (nome_musica, album_id) 
values("DON'T TEXT ME", 60);
insert into musicas (nome_musica, album_id) 
values("What's in your house?", 60);
insert into musicas (nome_musica, album_id) 
values("Hear me", 60);
insert into musicas (nome_musica, album_id) 
values("Senorita", 61);
insert into musicas (nome_musica, album_id) 
values("What's Your Name", 61);
insert into musicas (nome_musica, album_id) 
values("Put It Straight", 61);
insert into musicas (nome_musica, album_id) 
values("Give Me Your", 61);
insert into musicas (nome_musica, album_id) 
values("Blow Your Mind", 61);
insert into musicas (nome_musica, album_id) 
values("LATATA", 62);
insert into musicas (nome_musica, album_id) 
values("Light My Fire", 62);
insert into musicas (nome_musica, album_id) 
values("Maze", 62);
insert into musicas (nome_musica, album_id) 
values("For You", 62);
insert into musicas (nome_musica, album_id) 
values("Oh my god", 63);
insert into musicas (nome_musica, album_id) 
values("Luv U", 63);
insert into musicas (nome_musica, album_id) 
values("Maybe", 63);
insert into musicas (nome_musica, album_id) 
values("Oh my god", 64);
insert into musicas (nome_musica, album_id) 
values("Uh-Oh", 64);
insert into musicas (nome_musica, album_id) 
values("Senorita", 64);
insert into musicas (nome_musica, album_id) 
values("Tung-Tung (Empty)", 64);
insert into musicas (nome_musica, album_id) 
values("DUMDi DUMDi", 64);
insert into musicas (nome_musica, album_id) 
values("HANN", 65);
insert into musicas (nome_musica, album_id) 
values("HWAA", 65);
insert into musicas (nome_musica, album_id) 
values("MOON", 65);
insert into musicas (nome_musica, album_id) 
values("Where is love", 65);
insert into musicas (nome_musica, album_id) 
values("LOST", 65);
insert into musicas (nome_musica, album_id) 
values("DAHLIA", 65);
insert into musicas (nome_musica, album_id) 
values("i'M THE TREND", 66);
insert into musicas (nome_musica, album_id) 
values("DUMDi DUMDi", 67);
insert into musicas (nome_musica, album_id) 
values("HWAA", 68);
insert into musicas (nome_musica, album_id) 
values("Last Dance", 69);
insert into musicas (nome_musica, album_id) 
values("ICY", 70);
insert into musicas (nome_musica, album_id) 
values("CHERRY", 70);
insert into musicas (nome_musica, album_id) 
values("It'z SUMMER", 70);
insert into musicas (nome_musica, album_id) 
values("DALLA DALLA", 70);
insert into musicas (nome_musica, album_id) 
values("WANT IT?", 70);
insert into musicas (nome_musica, album_id) 
values("WANNABE", 71);
insert into musicas (nome_musica, album_id) 
values("TING TING TING", 71);
insert into musicas (nome_musica, album_id) 
values("THAT'S A NO NO", 71);
insert into musicas (nome_musica, album_id) 
values("NOBODY LIKE YOU", 71);
insert into musicas (nome_musica, album_id) 
values("YOU MAKE ME", 71);
insert into musicas (nome_musica, album_id) 
values("I DON'T WANNA DANCE", 71);
insert into musicas (nome_musica, album_id) 
values("24HRS", 71);
insert into musicas (nome_musica, album_id) 
values("Not Shy", 72);
insert into musicas (nome_musica, album_id) 
values("Don't Give A What", 72);
insert into musicas (nome_musica, album_id) 
values("Louder", 72);
insert into musicas (nome_musica, album_id) 
values("iD", 72);
insert into musicas (nome_musica, album_id) 
values("SURF", 72);
insert into musicas (nome_musica, album_id) 
values("Be in Love", 72);
insert into musicas (nome_musica, album_id) 
values("In the morning", 73);
insert into musicas (nome_musica, album_id) 
values("Sorry Not Sorry", 73);
insert into musicas (nome_musica, album_id) 
values("KIDDING ME", 73);
insert into musicas (nome_musica, album_id) 
values("Wild Wild West", 73);
insert into musicas (nome_musica, album_id) 
values("SHOOT!", 73);
insert into musicas (nome_musica, album_id) 
values("TENNIS (0:0)", 73);
insert into musicas (nome_musica, album_id) 
values("DALLA DALLA", 74);
insert into musicas (nome_musica, album_id) 
values("WANT IT?", 74);
insert into musicas (nome_musica, album_id) 
values("Trust Me: MIDZY", 75);
insert into musicas (nome_musica, album_id) 
values("In the Morning", 76);
insert into musicas (nome_musica, album_id) 
values("Break Ice", 77);
insert into musicas (nome_musica, album_id) 
values("Blue Orangeade", 78);
insert into musicas (nome_musica, album_id) 
values("CROWN", 78);
insert into musicas (nome_musica, album_id) 
values("Our Summer", 78);
insert into musicas (nome_musica, album_id) 
values("Cat & Dog", 78);
insert into musicas (nome_musica, album_id) 
values("Nap of a star", 78);
insert into musicas (nome_musica, album_id) 
values("Ghosting", 79);
insert into musicas (nome_musica, album_id) 
values("Blue Hour", 79);
insert into musicas (nome_musica, album_id) 
values("We Lost The Summer", 79);
insert into musicas (nome_musica, album_id) 
values("Wishlist", 79);
insert into musicas (nome_musica, album_id) 
values("Way Home", 79);
insert into musicas (nome_musica, album_id) 
values("Intro: DREAMING", 80);
insert into musicas (nome_musica, album_id) 
values("Force", 80);
insert into musicas (nome_musica, album_id) 
values("Blue Hour", 80);
insert into musicas (nome_musica, album_id) 
values("9 and Three Quarters (Run Away)", 80);
insert into musicas (nome_musica, album_id) 
values("CROWN", 80);
insert into musicas (nome_musica, album_id) 
values("Angel Or Devil", 80);
insert into musicas (nome_musica, album_id) 
values("Drama", 80);
insert into musicas (nome_musica, album_id) 
values("Everlasting Shine", 80);
insert into musicas (nome_musica, album_id) 
values("Can't You See Me?", 80);
insert into musicas (nome_musica, album_id) 
values("Outro: STILL", 80);
insert into musicas (nome_musica, album_id) 
values("Anti-Romantic", 81);
insert into musicas (nome_musica, album_id) 
values("0X1=LOVESONG (I Know I Love You)", 81);
insert into musicas (nome_musica, album_id) 
values("Magic", 81);
insert into musicas (nome_musica, album_id) 
values("Ice Cream", 81);
insert into musicas (nome_musica, album_id) 
values("What If I Had Been That Puma", 81);
insert into musicas (nome_musica, album_id) 
values("No Rules", 81);
insert into musicas (nome_musica, album_id) 
values("Dear Sputnik", 81);
insert into musicas (nome_musica, album_id) 
values("Frost", 81);
insert into musicas (nome_musica, album_id) 
values("LO$ER=LOVER", 82);
insert into musicas (nome_musica, album_id) 
values("Anti-Romantic", 82);
insert into musicas (nome_musica, album_id) 
values("0X1=LOVESONG (I Know I Love You)", 82);
insert into musicas (nome_musica, album_id) 
values("Magic", 82);
insert into musicas (nome_musica, album_id) 
values("Ice Cream", 82);
insert into musicas (nome_musica, album_id) 
values("What If I Had Been That Puma", 82);
insert into musicas (nome_musica, album_id) 
values("No Rules", 82);
insert into musicas (nome_musica, album_id) 
values("MOA Diary (Dubaddu Wari Wari)", 82);
insert into musicas (nome_musica, album_id) 
values("Dear Sputnik", 82);
insert into musicas (nome_musica, album_id) 
values("Frost", 82);
insert into musicas (nome_musica, album_id) 
values("Drama", 83);
insert into musicas (nome_musica, album_id) 
values("Can't You See Me?", 83);
insert into musicas (nome_musica, album_id) 
values("Fairy of Shampoo", 83);
insert into musicas (nome_musica, album_id) 
values("Maze in the Mirror", 83);
insert into musicas (nome_musica, album_id) 
values("PUMA", 83);
insert into musicas (nome_musica, album_id) 
values("Eternally", 83);
insert into musicas (nome_musica, album_id) 
values("New Rules", 84);
insert into musicas (nome_musica, album_id) 
values("9 and Three Quarters (Run Away)", 84);
insert into musicas (nome_musica, album_id) 
values("Roller Coaster", 84);
insert into musicas (nome_musica, album_id) 
values("Poppin' Star", 84);
insert into musicas (nome_musica, album_id) 
values("Can't We Just Leave The Monster Alive?", 84);
insert into musicas (nome_musica, album_id) 
values("Magic Island", 84);
insert into musicas (nome_musica, album_id) 
values("20cm", 84);
insert into musicas (nome_musica, album_id) 
values("Angel or Devil", 84);
insert into musicas (nome_musica, album_id) 
values("9 and Three Quarters (Run Away)", 85);
insert into musicas (nome_musica, album_id) 
values("CROWN", 85);
insert into musicas (nome_musica, album_id) 
values("Angel or Devil", 85);
insert into musicas (nome_musica, album_id) 
values("Drama", 86);
insert into musicas (nome_musica, album_id) 
values("Everlasting Shine", 86);
insert into musicas (nome_musica, album_id) 
values("Can't You See Me?", 86);
insert into musicas (nome_musica, album_id) 
values("Your Light", 87);
insert into musicas (nome_musica, album_id) 
values("Force", 88);
insert into musicas (nome_musica, album_id) 
values("Hellevator", 89);
insert into musicas (nome_musica, album_id) 
values("Grrr Law of Total Madness", 89);
insert into musicas (nome_musica, album_id) 
values("YAYAYA", 89);
insert into musicas (nome_musica, album_id) 
values("GLOW", 89);
insert into musicas (nome_musica, album_id) 
values("School Life", 89);
insert into musicas (nome_musica, album_id) 
values("4419", 89);
insert into musicas (nome_musica, album_id) 
values("NOT!", 90);
insert into musicas (nome_musica, album_id) 
values("District 9", 90);
insert into musicas (nome_musica, album_id) 
values("Mirror", 90);
insert into musicas (nome_musica, album_id) 
values("Awaken", 90);
insert into musicas (nome_musica, album_id) 
values("ROCK", 90);
insert into musicas (nome_musica, album_id) 
values("Grow Up", 90);
insert into musicas (nome_musica, album_id) 
values("3rd Eye", 90);
insert into musicas (nome_musica, album_id) 
values("WHO?", 91);
insert into musicas (nome_musica, album_id) 
values("My Pace", 91);
insert into musicas (nome_musica, album_id) 
values("Voices", 91);
insert into musicas (nome_musica, album_id) 
values("Question", 91);
insert into musicas (nome_musica, album_id) 
values("Insomnia", 91);
insert into musicas (nome_musica, album_id) 
values("M.I.A.", 91);
insert into musicas (nome_musica, album_id) 
values("Awkward Silence", 91);
insert into musicas (nome_musica, album_id) 
values("YOU.", 92);
insert into musicas (nome_musica, album_id) 
values("I Am YOU", 92);
insert into musicas (nome_musica, album_id) 
values("My Side", 92);
insert into musicas (nome_musica, album_id) 
values("Hero's Soup", 92);
insert into musicas (nome_musica, album_id) 
values("Get Cool", 92);
insert into musicas (nome_musica, album_id) 
values("N/S", 92);
insert into musicas (nome_musica, album_id) 
values("0325", 92);
insert into musicas (nome_musica, album_id) 
values("Entrance", 93);
insert into musicas (nome_musica, album_id) 
values("MIROH", 93);
insert into musicas (nome_musica, album_id) 
values("Victory Song", 93);
insert into musicas (nome_musica, album_id) 
values("Maze of Memories", 93);
insert into musicas (nome_musica, album_id) 
values("Boxer", 93);
insert into musicas (nome_musica, album_id) 
values("Chronosaurus", 93);
insert into musicas (nome_musica, album_id) 
values("19", 93);
insert into musicas (nome_musica, album_id) 
values("Road ot Take", 94);
insert into musicas (nome_musica, album_id) 
values("Side Effects", 94);
insert into musicas (nome_musica, album_id) 
values("TMT", 94);
insert into musicas (nome_musica, album_id) 
values("Mixtape#1", 94);
insert into musicas (nome_musica, album_id) 
values("Mixtape#2", 94);
insert into musicas (nome_musica, album_id) 
values("Mixtape#3", 94);
insert into musicas (nome_musica, album_id) 
values("Mixtape#4", 94);
insert into musicas (nome_musica, album_id) 
values("Hellevator", 95);
insert into musicas (nome_musica, album_id) 
values("District 9", 95);
insert into musicas (nome_musica, album_id) 
values("My Pace", 95);
insert into musicas (nome_musica, album_id) 
values("I Am YOU", 95);
insert into musicas (nome_musica, album_id) 
values("Get Cool", 95);
insert into musicas (nome_musica, album_id) 
values("MIROH", 95);
insert into musicas (nome_musica, album_id) 
values("Victory Song", 95);
insert into musicas (nome_musica, album_id) 
values("Side Effects", 95);
insert into musicas (nome_musica, album_id) 
values("Grow Up", 95);
insert into musicas (nome_musica, album_id) 
values("STOP", 96);
insert into musicas (nome_musica, album_id) 
values("Double Knot", 96);
insert into musicas (nome_musica, album_id) 
values("Levanter", 96);
insert into musicas (nome_musica, album_id) 
values("Booster", 96);
insert into musicas (nome_musica, album_id) 
values("Astronaut", 96);
insert into musicas (nome_musica, album_id) 
values("Sunshine", 96);
insert into musicas (nome_musica, album_id) 
values("You Can STAY", 96);
insert into musicas (nome_musica, album_id) 
values("Hellevator", 97);
insert into musicas (nome_musica, album_id) 
values("BEWARE", 97);
insert into musicas (nome_musica, album_id) 
values("Spread My Wings", 97);
insert into musicas (nome_musica, album_id) 
values("YAYAYA", 97);
insert into musicas (nome_musica, album_id) 
values("District 9", 97);
insert into musicas (nome_musica, album_id) 
values("Mirror", 97);
insert into musicas (nome_musica, album_id) 
values("Grow Up", 97);
insert into musicas (nome_musica, album_id) 
values("My Pace", 97);
insert into musicas (nome_musica, album_id) 
values("Voices", 97);
insert into musicas (nome_musica, album_id) 
values("Question", 97);
insert into musicas (nome_musica, album_id) 
values("M.I.A.", 97);
insert into musicas (nome_musica, album_id) 
values("Awkward Silence", 97);
insert into musicas (nome_musica, album_id) 
values("Im Am YOU", 97);
insert into musicas (nome_musica, album_id) 
values("Get Cool", 97);
insert into musicas (nome_musica, album_id) 
values("MIROH", 97);
insert into musicas (nome_musica, album_id) 
values("Victory Song", 97);
insert into musicas (nome_musica, album_id) 
values("Boxer", 97);
insert into musicas (nome_musica, album_id) 
values("Chronosaurus", 97);
insert into musicas (nome_musica, album_id) 
values("19", 97);
insert into musicas (nome_musica, album_id) 
values("Side Effects", 97);
insert into musicas (nome_musica, album_id) 
values("TMT", 97);
insert into musicas (nome_musica, album_id) 
values("Double Knot", 97);
insert into musicas (nome_musica, album_id) 
values("Levanter", 97);
insert into musicas (nome_musica, album_id) 
values("Astronaut", 97);
insert into musicas (nome_musica, album_id) 
values("GO LIVE", 98);
insert into musicas (nome_musica, album_id) 
values("God's Menu", 98);
insert into musicas (nome_musica, album_id) 
values("Easy", 98);
insert into musicas (nome_musica, album_id) 
values("Pacemaker", 98);
insert into musicas (nome_musica, album_id) 
values("Airplane", 98);
insert into musicas (nome_musica, album_id) 
values("Another Day", 98);
insert into musicas (nome_musica, album_id) 
values("Phobia", 98);
insert into musicas (nome_musica, album_id) 
values("Blueprint", 98);
insert into musicas (nome_musica, album_id) 
values("TA", 98);
insert into musicas (nome_musica, album_id) 
values("Haven", 98);
insert into musicas (nome_musica, album_id) 
values("TOP", 98);
insert into musicas (nome_musica, album_id) 
values("SLUMP", 98);
insert into musicas (nome_musica, album_id) 
values("Mixtape: Gone Days", 98);
insert into musicas (nome_musica, album_id) 
values("Mixtape: On Track", 98);
insert into musicas (nome_musica, album_id) 
values("ALL IN", 99);
insert into musicas (nome_musica, album_id) 
values("FAM", 99);
insert into musicas (nome_musica, album_id) 
values("One Day", 99);
insert into musicas (nome_musica, album_id) 
values("God's Menu", 99);
insert into musicas (nome_musica, album_id) 
values("Back Door", 99);
insert into musicas (nome_musica, album_id) 
values("TOP", 99);
insert into musicas (nome_musica, album_id) 
values("SLUMP", 99);
insert into musicas (nome_musica, album_id) 
values("Cheese", 150);
insert into musicas (nome_musica, album_id) 
values("Thunderous", 150);
insert into musicas (nome_musica, album_id) 
values("Domino", 150);
insert into musicas (nome_musica, album_id) 
values("Ssick", 150);
insert into musicas (nome_musica, album_id) 
values("The View", 150);
insert into musicas (nome_musica, album_id) 
values("Sorry, I Love You", 150);
insert into musicas (nome_musica, album_id) 
values("Silent Cry", 150);
insert into musicas (nome_musica, album_id) 
values("Secret Secret", 150);
insert into musicas (nome_musica, album_id) 
values("Star Lost", 150);
insert into musicas (nome_musica, album_id) 
values("Red Lights", 150);
insert into musicas (nome_musica, album_id) 
values("Surfin'", 150);
insert into musicas (nome_musica, album_id) 
values("Gone Away", 150);
insert into musicas (nome_musica, album_id) 
values("Wolfgang", 150);
insert into musicas (nome_musica, album_id) 
values("Mixtape: Oh", 150);
insert into musicas (nome_musica, album_id) 
values("TOP", 151);
insert into musicas (nome_musica, album_id) 
values("SLUMP", 152);
insert into musicas (nome_musica, album_id) 
values("God's Menu", 153);
insert into musicas (nome_musica, album_id) 
values("Back Door", 154);
insert into musicas (nome_musica, album_id) 
values("ALL IN", 155);
insert into musicas (nome_musica, album_id) 
values("Going Dumb", 156);
insert into musicas (nome_musica, album_id) 
values("Mixtape: OH", 157);
insert into musicas (nome_musica, album_id) 
values("Tell Me What It Is", 158);
insert into musicas (nome_musica, album_id) 
values("ROAR", 158);
insert into musicas (nome_musica, album_id) 
values("Still My Lady", 158);
insert into musicas (nome_musica, album_id) 
values("Shut Up N' Lemme Go", 158);
insert into musicas (nome_musica, album_id) 
values("4 Step", 158);
insert into musicas (nome_musica, album_id) 
values("Jungle Game", 158);
insert into musicas (nome_musica, album_id) 
values("Intro;", 159);
insert into musicas (nome_musica, album_id) 
values("Easy Love", 159);
insert into musicas (nome_musica, album_id) 
values("Watch Out", 159);
insert into musicas (nome_musica, album_id) 
values("Hide and Seek", 159);
insert into musicas (nome_musica, album_id) 
values("Fall Down", 159);
insert into musicas (nome_musica, album_id) 
values("Why", 159);
insert into musicas (nome_musica, album_id) 
values("Poetry; 00:00", 160);
insert into musicas (nome_musica, album_id) 
values("O Sole Mio", 160);
insert into musicas (nome_musica, album_id) 
values("Let's Hang Out", 160);
insert into musicas (nome_musica, album_id) 
values("Blank", 160);
insert into musicas (nome_musica, album_id) 
values("Scold", 160);
insert into musicas (nome_musica, album_id) 
values("Just On My Way", 160);
insert into musicas (nome_musica, album_id) 
values("Boku No Taiyo: O Sole Mio", 161);
insert into musicas (nome_musica, album_id) 
values("Fanfare", 161);
insert into musicas (nome_musica, album_id) 
values("Roar", 161);
insert into musicas (nome_musica, album_id) 
values("Together", 161);
insert into musicas (nome_musica, album_id) 
values("Hide and Seek", 161);
insert into musicas (nome_musica, album_id) 
values("Easy Love", 161);
insert into musicas (nome_musica, album_id) 
values("Just On My Way", 161);
insert into musicas (nome_musica, album_id) 
values("Watch Out", 161);
insert into musicas (nome_musica, album_id) 
values("Kuuhaku", 161);
insert into musicas (nome_musica, album_id) 
values("Still My Lady", 161);
insert into musicas (nome_musica, album_id) 
values("MAMMA MIA", 162);
insert into musicas (nome_musica, album_id) 
values("Never Say Goodbye", 162);
insert into musicas (nome_musica, album_id) 
values("Go back in Time", 162);
insert into musicas (nome_musica, album_id) 
values("Be my Baby", 162);
insert into musicas (nome_musica, album_id) 
values("Midnight Road", 162);
insert into musicas (nome_musica, album_id) 
values("Dear Fantasy", 162);
insert into musicas (nome_musica, album_id) 
values("Now or Never", 163);
insert into musicas (nome_musica, album_id) 
values("Different", 163);
insert into musicas (nome_musica, album_id) 
values("Unlimited", 163);
insert into musicas (nome_musica, album_id) 
values("PHOTOGRAPH", 163);
insert into musicas (nome_musica, album_id) 
values("SHADOW", 163);
insert into musicas (nome_musica, album_id) 
values("Enough", 164);
insert into musicas (nome_musica, album_id) 
values("Play Hard", 164);
insert into musicas (nome_musica, album_id) 
values("Heartbeat", 164);
insert into musicas (nome_musica, album_id) 
values("Life Is So Beautiful", 164);
insert into musicas (nome_musica, album_id) 
values("Fall In Love", 164);
insert into musicas (nome_musica, album_id) 
values("The Beat Goes On", 164);
insert into musicas (nome_musica, album_id) 
values("Enough", 165);
insert into musicas (nome_musica, album_id) 
values("Now or Never", 165);
insert into musicas (nome_musica, album_id) 
values("Unlimited", 165);
insert into musicas (nome_musica, album_id) 
values("Play Hard", 165);
insert into musicas (nome_musica, album_id) 
values("Photograph", 165);
insert into musicas (nome_musica, album_id) 
values("Be My Baby", 165);
insert into musicas (nome_musica, album_id) 
values("Love Is so Beautiful", 165);
insert into musicas (nome_musica, album_id) 
values("The Beat Goes On", 165);
insert into musicas (nome_musica, album_id) 
values("Mamma Mia !", 165);
insert into musicas (nome_musica, album_id) 
values("Dear Fantasy", 165);
insert into musicas (nome_musica, album_id) 
values("RPM", 166);
insert into musicas (nome_musica, album_id) 
values("Round And Round", 166);
insert into musicas (nome_musica, album_id) 
values("Dreamer", 166);
insert into musicas (nome_musica, album_id) 
values("Liar", 166);
insert into musicas (nome_musica, album_id) 
values("See U Tomorrow", 166);
insert into musicas (nome_musica, album_id) 
values("Echo", 166);
insert into musicas (nome_musica, album_id) 
values("Summer Breeze", 167);
insert into musicas (nome_musica, album_id) 
values("Into The Night", 167);
insert into musicas (nome_musica, album_id) 
values("OK Sign", 167);
insert into musicas (nome_musica, album_id) 
values("All Day All Night", 167);
insert into musicas (nome_musica, album_id) 
values("Go High", 167);
insert into musicas (nome_musica, album_id) 
values("My Story, My Song", 167);
insert into musicas (nome_musica, album_id) 
values("Summer Breeze", 168);
insert into musicas (nome_musica, album_id) 
values("One Love", 168);
insert into musicas (nome_musica, album_id) 
values("Go High", 168);
insert into musicas (nome_musica, album_id) 
values("RPM", 168);
insert into musicas (nome_musica, album_id) 
values("My Story, My Song", 168);
insert into musicas (nome_musica, album_id) 
values("See U Tomorrow", 168);
insert into musicas (nome_musica, album_id) 
values("Good Guy", 168);
insert into musicas (nome_musica, album_id) 
values("Round And Round", 168);
insert into musicas (nome_musica, album_id) 
values("Like The Hands Held Tight", 168);
insert into musicas (nome_musica, album_id) 
values("Beautiful Light", 168);
insert into musicas (nome_musica, album_id) 
values("Good Guy", 169);
insert into musicas (nome_musica, album_id) 
values("Am I The Only One", 169);
insert into musicas (nome_musica, album_id) 
values("Shh", 169);
insert into musicas (nome_musica, album_id) 
values("Lullu Lalla", 169);
insert into musicas (nome_musica, album_id) 
values("One Love", 169);
insert into musicas (nome_musica, album_id) 
values("Like The Hands Held Tight", 169);
insert into musicas (nome_musica, album_id) 
values("Fire", 169);
insert into musicas (nome_musica, album_id) 
values("Stop It Now", 169);
insert into musicas (nome_musica, album_id) 
values("Dance With Us", 169);
insert into musicas (nome_musica, album_id) 
values("Beautiful Light", 169);
insert into musicas (nome_musica, album_id) 
values("Tear Drop", 170);
insert into musicas (nome_musica, album_id) 
values("|Believer|", 170);
insert into musicas (nome_musica, album_id) 
values("Love Again", 170);
insert into musicas (nome_musica, album_id) 
values("Off My Mind", 170);
insert into musicas (nome_musica, album_id) 
values("Fanatic", 170);
insert into musicas (nome_musica, album_id) 
values("Hei Hi Bye", 170);
insert into musicas (nome_musica, album_id) 
values("Different", 171);
insert into musicas (nome_musica, album_id) 
values("Enough", 172);
insert into musicas (nome_musica, album_id) 
values("RPM", 173);
insert into musicas (nome_musica, album_id) 
values("Round and Round", 173);
insert into musicas (nome_musica, album_id) 
values("Echo", 173);
insert into musicas (nome_musica, album_id) 
values("Good Guy", 174);
insert into musicas (nome_musica, album_id) 
values("One Love", 174);
insert into musicas (nome_musica, album_id) 
values("Am I The Only One", 174);
insert into musicas (nome_musica, album_id) 
values("Shine Together", 175);
insert into musicas (nome_musica, album_id) 
values("Forever", 175);
insert into musicas (nome_musica, album_id) 
values("Love No.5", 175);
insert into musicas (nome_musica, album_id) 
values("Summer Breeze", 176);
insert into musicas (nome_musica, album_id) 
values("Move", 177);
insert into musicas (nome_musica, album_id) 
values("Fantasy", 178);
insert into musicas (nome_musica, album_id) 
values("Short Hair", 178);
insert into musicas (nome_musica, album_id) 
values("Joa YO!", 178);
insert into musicas (nome_musica, album_id) 
values("You're the one for mw", 178);
insert into musicas (nome_musica, album_id) 
values("You know that", 178);
insert into musicas (nome_musica, album_id) 
values("AOA", 179);
insert into musicas (nome_musica, album_id) 
values("Like a Cat", 179);
insert into musicas (nome_musica, album_id) 
values("Girl's Heart", 179);
insert into musicas (nome_musica, album_id) 
values("Just The Two of Us", 179);
insert into musicas (nome_musica, album_id) 
values("Time", 179);
insert into musicas (nome_musica, album_id) 
values("Tears Falling", 179);
insert into musicas (nome_musica, album_id) 
values("Heart Attack", 180);
insert into musicas (nome_musica, album_id) 
values("Luv me", 180);
insert into musicas (nome_musica, album_id) 
values("Come To Me", 180);
insert into musicas (nome_musica, album_id) 
values("One Thing", 180);
insert into musicas (nome_musica, album_id) 
values("Really Really", 180);
insert into musicas (nome_musica, album_id) 
values("Chocolate", 180);
insert into musicas (nome_musica, album_id) 
values("Good Luck", 181);
insert into musicas (nome_musica, album_id) 
values("10 Seconds", 181);
insert into musicas (nome_musica, album_id) 
values("Cherry Pop", 181);
insert into musicas (nome_musica, album_id) 
values("Crazy Boy", 181);
insert into musicas (nome_musica, album_id) 
values("Still Falls The Rain", 181);
insert into musicas (nome_musica, album_id) 
values("Excuse Me", 182);
insert into musicas (nome_musica, album_id) 
values("Bing Bing", 182);
insert into musicas (nome_musica, album_id) 
values("Three Out", 182);
insert into musicas (nome_musica, album_id) 
values("Feeling", 182);
insert into musicas (nome_musica, album_id) 
values("Can't Sleep", 182);
insert into musicas (nome_musica, album_id) 
values("Lily", 182);
insert into musicas (nome_musica, album_id) 
values("Melting Love", 182);
insert into musicas (nome_musica, album_id) 
values("Help Me", 182);
insert into musicas (nome_musica, album_id) 
values("Oh Boy", 182);
insert into musicas (nome_musica, album_id) 
values("With ELVIS", 182);
insert into musicas (nome_musica, album_id) 
values("Bingle Bangle", 183);
insert into musicas (nome_musica, album_id) 
values("Super Duper", 183);
insert into musicas (nome_musica, album_id) 
values("HEAT", 183);
insert into musicas (nome_musica, album_id) 
values("Ladi Dadi", 183);
insert into musicas (nome_musica, album_id) 
values("Parfait", 183);
insert into musicas (nome_musica, album_id) 
values("DoDoDo", 183);
insert into musicas (nome_musica, album_id) 
values("Come See Me", 184);
insert into musicas (nome_musica, album_id) 
values("Sorry", 184);
insert into musicas (nome_musica, album_id) 
values("Magic Spell", 184);
insert into musicas (nome_musica, album_id) 
values("Ninety Nine", 184);
insert into musicas (nome_musica, album_id) 
values("My Way", 184);
insert into musicas (nome_musica, album_id) 
values("ELVIS", 185);
insert into musicas (nome_musica, album_id) 
values("Love Is Only You", 185);
insert into musicas (nome_musica, album_id) 
values("Temptation", 185);
insert into musicas (nome_musica, album_id) 
values("GET OUT", 186);
insert into musicas (nome_musica, album_id) 
values("HAPPY ENDING", 186);
insert into musicas (nome_musica, album_id) 
values("MY SONG", 186);
insert into musicas (nome_musica, album_id) 
values("MOYA", 187);
insert into musicas (nome_musica, album_id) 
values("Without You", 187);
insert into musicas (nome_musica, album_id) 
values("Confused", 188);
insert into musicas (nome_musica, album_id) 
values("We belong together", 188);
insert into musicas (nome_musica, album_id) 
values("Miniskirt", 189);
insert into musicas (nome_musica, album_id) 
values("Short Hair", 189);
insert into musicas (nome_musica, album_id) 
values("Ai Wo Choudai", 190);
insert into musicas (nome_musica, album_id) 
values("Trespass", 191);
insert into musicas (nome_musica, album_id) 
values("No Exit", 191);
insert into musicas (nome_musica, album_id) 
values("One Love", 191);
insert into musicas (nome_musica, album_id) 
values("Honestly", 191);
insert into musicas (nome_musica, album_id) 
values("Steal Your Heart", 191);
insert into musicas (nome_musica, album_id) 
values("Blue Moon", 191);
insert into musicas (nome_musica, album_id) 
values("Interstellar", 191);
insert into musicas (nome_musica, album_id) 
values("RUSH", 192);
insert into musicas (nome_musica, album_id) 
values("HERO", 192);
insert into musicas (nome_musica, album_id) 
values("Perfect Girl", 192);
insert into musicas (nome_musica, album_id) 
values("Amen", 192);
insert into musicas (nome_musica, album_id) 
values("Gone Bad", 192);
insert into musicas (nome_musica, album_id) 
values("Broken Heart", 192);
insert into musicas (nome_musica, album_id) 
values("Ex Girl", 193);
insert into musicas (nome_musica, album_id) 
values("All in", 193);
insert into musicas (nome_musica, album_id) 
values("Stuck", 193);
insert into musicas (nome_musica, album_id) 
values("Sweetheart", 193);
insert into musicas (nome_musica, album_id) 
values("Unfair Love", 193);
insert into musicas (nome_musica, album_id) 
values("Beacause of U", 193);
insert into musicas (nome_musica, album_id) 
values("Fighter", 194);
insert into musicas (nome_musica, album_id) 
values("Be Quiet", 194);
insert into musicas (nome_musica, album_id) 
values("Blind", 194);
insert into musicas (nome_musica, album_id) 
values("Queen", 194);
insert into musicas (nome_musica, album_id) 
values("White Love", 194);
insert into musicas (nome_musica, album_id) 
values("Roller Coaster", 194);
insert into musicas (nome_musica, album_id) 
values("Ready or Not", 195);
insert into musicas (nome_musica, album_id) 
values("Beautiful", 195);
insert into musicas (nome_musica, album_id) 
values("Incomparable", 195);
insert into musicas (nome_musica, album_id) 
values("Need U", 195);
insert into musicas (nome_musica, album_id) 
values("Oi", 195);
insert into musicas (nome_musica, album_id) 
values("Miss You", 195);
insert into musicas (nome_musica, album_id) 
values("Calm Down", 195);
insert into musicas (nome_musica, album_id) 
values("All I Do", 195);
insert into musicas (nome_musica, album_id) 
values("5:14 (Last Page)", 195);
insert into musicas (nome_musica, album_id) 
values("I'll Be There", 195);
insert into musicas (nome_musica, album_id) 
values("SHINE FOREVER", 196);
insert into musicas (nome_musica, album_id) 
values("GRAVITY", 196);
insert into musicas (nome_musica, album_id) 
values("Ready or Not", 196);
insert into musicas (nome_musica, album_id) 
values("Beautiful", 196);
insert into musicas (nome_musica, album_id) 
values("Incomparable", 196);
insert into musicas (nome_musica, album_id) 
values("Need U", 196);
insert into musicas (nome_musica, album_id) 
values("Oi", 196);
insert into musicas (nome_musica, album_id) 
values("Miss You", 196);
insert into musicas (nome_musica, album_id) 
values("Calm Down", 196);
insert into musicas (nome_musica, album_id) 
values("All I Do", 196);
insert into musicas (nome_musica, album_id) 
values("5:14 (Last Page)", 196);
insert into musicas (nome_musica, album_id) 
values("I'll Be There", 196);
insert into musicas (nome_musica, album_id) 
values("DRAMARAMA", 197);
insert into musicas (nome_musica, album_id) 
values("Now or Never", 197);
insert into musicas (nome_musica, album_id) 
values("In Time", 197);
insert into musicas (nome_musica, album_id) 
values("From Zero", 197);
insert into musicas (nome_musica, album_id) 
values("X", 197);
insert into musicas (nome_musica, album_id) 
values("Tropical Night", 197);
insert into musicas (nome_musica, album_id) 
values("Deja Vu", 197);
insert into musicas (nome_musica, album_id) 
values("Jealousy", 198);
insert into musicas (nome_musica, album_id) 
values("Destroyer", 198);
insert into musicas (nome_musica, album_id) 
values("Fallin'", 198);
insert into musicas (nome_musica, album_id) 
values("Crazy in Love", 198);
insert into musicas (nome_musica, album_id) 
values("Lost in the Dream", 198);
insert into musicas (nome_musica, album_id) 
values("If Only", 198);
insert into musicas (nome_musica, album_id) 
values("Special", 198);
insert into musicas (nome_musica, album_id) 
values("KILLIN' ME", 199);
insert into musicas (nome_musica, album_id) 
values("SHINE FOREVER", 199);
insert into musicas (nome_musica, album_id) 
values("STUCK", 199);
insert into musicas (nome_musica, album_id) 
values("Ready or Not", 199);
insert into musicas (nome_musica, album_id) 
values("HERO", 199);
insert into musicas (nome_musica, album_id) 
values("SPOTLIGHT", 199);
insert into musicas (nome_musica, album_id) 
values("Aura", 199);
insert into musicas (nome_musica, album_id) 
values("Beautiful", 199);
insert into musicas (nome_musica, album_id) 
values("PUZZLE", 199);
insert into musicas (nome_musica, album_id) 
values("#GFYL", 199);
insert into musicas (nome_musica, album_id) 
values("INTRO: ARE YOU THERE?", 250);
insert into musicas (nome_musica, album_id) 
values("Underwater", 250);
insert into musicas (nome_musica, album_id) 
values("Shoot Out", 250);
insert into musicas (nome_musica, album_id) 
values("Heart Attack", 250);
insert into musicas (nome_musica, album_id) 
values("I Do Love U", 250);
insert into musicas (nome_musica, album_id) 
values("MOHAE", 250);
insert into musicas (nome_musica, album_id) 
values("Oh My", 250);
insert into musicas (nome_musica, album_id) 
values("Myself", 250);
insert into musicas (nome_musica, album_id) 
values("By My Side", 250);
insert into musicas (nome_musica, album_id) 
values("Spotlight", 250);
insert into musicas (nome_musica, album_id) 
values("INTRO: WE ARE HERE", 251);
insert into musicas (nome_musica, album_id) 
values("Aligator", 251);
insert into musicas (nome_musica, album_id) 
values("Ghost", 251);
insert into musicas (nome_musica, album_id) 
values("Play it Cool", 251);
insert into musicas (nome_musica, album_id) 
values("No Reason", 251);
insert into musicas (nome_musica, album_id) 
values("Give Me Dat", 251);
insert into musicas (nome_musica, album_id) 
values("Turbulance", 251);
insert into musicas (nome_musica, album_id) 
values("Rodeo", 251);
insert into musicas (nome_musica, album_id) 
values("Stealer", 251);
insert into musicas (nome_musica, album_id) 
values("Party Time", 251);
insert into musicas (nome_musica, album_id) 
values("Find you", 252);
insert into musicas (nome_musica, album_id) 
values("Follow", 252);
insert into musicas (nome_musica, album_id) 
values("Monsta Truck", 252);
insert into musicas (nome_musica, album_id) 
values("U R", 252);
insert into musicas (nome_musica, album_id) 
values("Disaster", 252);
insert into musicas (nome_musica, album_id) 
values("Burn it up", 252);
insert into musicas (nome_musica, album_id) 
values("Mirror", 252);
insert into musicas (nome_musica, album_id) 
values("See You Again", 252);
insert into musicas (nome_musica, album_id) 
values("X-Phenomenon", 253);
insert into musicas (nome_musica, album_id) 
values("Livin' It Up", 253);
insert into musicas (nome_musica, album_id) 
values("My Beast", 253);
insert into musicas (nome_musica, album_id) 
values("Alligator", 253);
insert into musicas (nome_musica, album_id) 
values("Shoot Out", 253);
insert into musicas (nome_musica, album_id) 
values("Black Swan", 253);
insert into musicas (nome_musica, album_id) 
values("Flash Back", 253);
insert into musicas (nome_musica, album_id) 
values("Swish", 253);
insert into musicas (nome_musica, album_id) 
values("Carry On", 253);
insert into musicas (nome_musica, album_id) 
values("WHO DO U LOVE?", 254);
insert into musicas (nome_musica, album_id) 
values("LOVE U", 254);
insert into musicas (nome_musica, album_id) 
values("HAPPY WITHOUT ME", 254);
insert into musicas (nome_musica, album_id) 
values("GOT MY NUMBER", 254);
insert into musicas (nome_musica, album_id) 
values("SOMEONE'S SOMEONE", 254);
insert into musicas (nome_musica, album_id) 
values("MIDDLE OF THE NIGHT", 254);
insert into musicas (nome_musica, album_id) 
values("SHE'S THE ONE", 254);
insert into musicas (nome_musica, album_id) 
values("YOU CAN'T HOLD MY HEART", 254);
insert into musicas (nome_musica, album_id) 
values("MISBEHAVE", 254);
insert into musicas (nome_musica, album_id) 
values("BESIDE U", 254);
insert into musicas (nome_musica, album_id) 
values("FANTASIA", 255);
insert into musicas (nome_musica, album_id) 
values("FLOW", 255);
insert into musicas (nome_musica, album_id) 
values("ZONE", 255);
insert into musicas (nome_musica, album_id) 
values("Chaotic", 255);
insert into musicas (nome_musica, album_id) 
values("Beautiful Night", 255);
insert into musicas (nome_musica, album_id) 
values("IT AIN'T OVER", 255);
insert into musicas (nome_musica, album_id) 
values("Stand Up", 255);
insert into musicas (nome_musica, album_id) 
values("GAMBLER", 249);
insert into musicas (nome_musica, album_id) 
values("Heaven", 249);
insert into musicas (nome_musica, album_id) 
values("Addicted", 249);
insert into musicas (nome_musica, album_id) 
values("Secrets", 249);
insert into musicas (nome_musica, album_id) 
values("BEBE", 249);
insert into musicas (nome_musica, album_id) 
values("Rotate", 249);
insert into musicas (nome_musica, album_id) 
values("Livin' It Up", 249);
insert into musicas (nome_musica, album_id) 
values("Love Killa", 248);
insert into musicas (nome_musica, album_id) 
values("Gasoline", 248);
insert into musicas (nome_musica, album_id) 
values("Thriller", 248);
insert into musicas (nome_musica, album_id) 
values("Guess Who", 248);
insert into musicas (nome_musica, album_id) 
values("Nobody Else", 248);
insert into musicas (nome_musica, album_id) 
values("BEASTMODE", 248);
insert into musicas (nome_musica, album_id) 
values("Stand Together", 248);
insert into musicas (nome_musica, album_id) 
values("Night View", 248);
insert into musicas (nome_musica, album_id) 
values("Last Carnival", 248);
insert into musicas (nome_musica, album_id) 
values("Sorry I'm Not Sorry", 248);
insert into musicas (nome_musica, album_id) 
values("Wish On The Same Sky", 256);
insert into musicas (nome_musica, album_id) 
values("Rekless", 257);
insert into musicas (nome_musica, album_id) 
values("Love Killa", 258);
insert into musicas (nome_musica, album_id) 
values("Fantasia", 258);
insert into musicas (nome_musica, album_id) 
values("Wanted", 259);
insert into musicas (nome_musica, album_id) 
values("Flavors of love", 260);
insert into musicas (nome_musica, album_id) 
values("KISS OR DEATH", 261);
insert into musicas (nome_musica, album_id) 
values("One Day", 262);



-- End of file.
