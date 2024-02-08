DROP TABLE IF EXISTS "pais" CASCADE;
CREATE TABLE pais (
  id       bigserial NOT NULL,
  nome     varchar(60),
  nome_pt  varchar(60),
  sigla     varchar(2),
  bacen    integer,
  /* Keys */
  CONSTRAINT pais_pkey
    PRIMARY KEY (id)
);

COMMENT ON TABLE pais
  IS 'Países e Nações';

COMMENT ON COLUMN pais.sigla
  IS 'ISO 3166-1 Alpha2';


DROP TABLE IF EXISTS "estado" CASCADE;

CREATE TABLE estado (
  id     bigserial NOT NULL,
  nome   varchar(60),
  uf  varchar(2),
  ibge   integer,
  pais   integer,
  ddd    json,
  /* Keys */
  CONSTRAINT estado_pkey
    PRIMARY KEY (id)
);

COMMENT ON TABLE estado
  IS 'Unidades Federativas';