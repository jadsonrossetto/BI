-- Tabela Dimensão de Comorbidade
CREATE TABLE DimComorbidade (
    ComorbidadeID INT PRIMARY KEY auto_increment,
    ComorbidadePulmao VARCHAR(50),
	ComorbidadeCardio VARCHAR(50),
	ComorbidadeRenal VARCHAR(50),
	ComorbidadeDiabetes VARCHAR(50),
	ComorbidadeTabagismo VARCHAR(50),
	ComorbidadeObesidade VARCHAR(50)
);

-- Tabela Dimensão de Local
CREATE TABLE DimLocal (
    LocalID INT PRIMARY KEY auto_increment,
    Municipio VARCHAR(50),
	Bairro VARCHAR(50)
);

-- Tabela Dimensão de Etnia
CREATE TABLE DimEtnia (
    EtniaID INT PRIMARY KEY auto_increment,
    RacaCor VARCHAR(50)
);

-- Tabela Dimensão de Gênero
CREATE TABLE DimSexo (
    SexoID INT PRIMARY KEY auto_increment,
	Sexo VARCHAR(50)
);

-- Tabela Fato de Mortes
CREATE TABLE FatMortes (
    MortesID INT PRIMARY KEY auto_increment,
    ComorbidadeID INT,
    LocalID INT,
    EtniaID INT,
    SexoID INT,
    NumeroMortes INT,
    FOREIGN KEY (ComorbidadeID) REFERENCES DimComorbidade(ComorbidadeID),
    FOREIGN KEY (LocalID) REFERENCES DimLocal(LocalID),
    FOREIGN KEY (EtniaID) REFERENCES DimEtnia(EtniaID),
    FOREIGN KEY (SexoID) REFERENCES DimSexo(SexoID)
);

drop table DimComorbidade, DimLocal, DimEtnia, DimSexo, FatMortes;