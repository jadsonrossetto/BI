CREATE DATABASE covid;

CREATE TABLE tabela_covid (
  DataNotificacao VARCHAR(50),
  DataCadastro VARCHAR(50),
  DataDiagnostico VARCHAR(50),
  DataColeta_RT_PCR VARCHAR(50),
  DataColetaTesteRapido VARCHAR(50),
  DataColetaSorologia VARCHAR(50),
  DataColetaSorologiaIGG VARCHAR(50),
  DataEncerramento VARCHAR(50),
  DataObito VARCHAR(50),
  Classificacao VARCHAR(50),
  Evolucao VARCHAR(50),
  CriterioConfirmacao VARCHAR(50),
  StatusNotificacao VARCHAR(50),
  Municipio VARCHAR(50),
  Bairro VARCHAR(50),
  FaixaEtaria VARCHAR(50),
  IdadeNaDataNotificacao VARCHAR(50),
  Sexo VARCHAR(50),
  RacaCor VARCHAR(50),
  Escolaridade VARCHAR(100),
  Gestante VARCHAR(50),
  Febre VARCHAR(50),
  DificuldadeRespiratoria VARCHAR(50),
  Tosse VARCHAR(50),
  Coriza VARCHAR(50),
  DorGarganta VARCHAR(50),
  Diarreia VARCHAR(50),
  Cefaleia VARCHAR(50),
  ComorbidadePulmao VARCHAR(50),
  ComorbidadeCardio VARCHAR(50),
  ComorbidadeRenal VARCHAR(50),
  ComorbidadeDiabetes VARCHAR(50),
  ComorbidadeTabagismo VARCHAR(50),
  ComorbidadeObesidade VARCHAR(50),
  FicouInternado VARCHAR(50),
  ViagemBrasil VARCHAR(50),
  ViagemInternacional VARCHAR(50),
  ProfissionalSaude VARCHAR(50),
  PossuiDeficiencia VARCHAR(50),
  MoradorDeRua VARCHAR(50),
  ResultadoRT_PCR VARCHAR(50),
  ResultadoTesteRapido VARCHAR(50),
  ResultadoSorologia VARCHAR(50),
  ResultadoSorologia_IGG VARCHAR(50),
  TipoTesteRapido VARCHAR(50)
);



LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MICRODADOS_UTF8.csv' 
INTO TABLE tabela_covid
FIELDS TERMINATED BY ';'
IGNORE 1 ROWS
(@dummy, DataNotificacao, DataCadastro, DataDiagnostico, DataColeta_RT_PCR, DataColetaTesteRapido, DataColetaSorologia, DataColetaSorologiaIGG, DataEncerramento, DataObito, Classificacao, Evolucao, CriterioConfirmacao, StatusNotificacao, Municipio, Bairro, FaixaEtaria, IdadeNaDataNotificacao, Sexo, RacaCor, Escolaridade, Gestante, Febre, DificuldadeRespiratoria, Tosse, Coriza, DorGarganta, Diarreia, Cefaleia, ComorbidadePulmao, ComorbidadeCardio, ComorbidadeRenal, ComorbidadeDiabetes, ComorbidadeTabagismo, ComorbidadeObesidade, FicouInternado, ViagemBrasil, ViagemInternacional, ProfissionalSaude, PossuiDeficiencia, MoradorDeRua, ResultadoRT_PCR, ResultadoTesteRapido, ResultadoSorologia, ResultadoSorologia_IGG, TipoTesteRapido);

-- drop table tabela_covid;