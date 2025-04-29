CREATE OR ALTER VIEW [dbo].[vw_Pais] AS
SELECT
	ROW_NUMBER() OVER (ORDER BY Country) AS ID_Pais,
	Country AS Pais
FROM Threats
GROUP BY Country;


CREATE OR ALTER VIEW [dbo].[vw_Setores] AS
SELECT
	ROW_NUMBER() OVER (ORDER BY Target_Industry) AS ID_Setor,
	Target_Industry AS Setor
FROM Threats
GROUP BY Target_Industry;



CREATE OR ALTER VIEW [dbo].[vw_Defesas] AS
SELECT
	ROW_NUMBER() OVER (ORDER BY Defense_Mechanism) AS ID_Defesa,
	Defense_Mechanism AS Mecanismo_Defesa
FROM Threats
GROUP BY Defense_Mechanism;


CREATE OR ALTER VIEW [dbo].[vw_TipoAtaque] AS
SELECT
	ROW_NUMBER() OVER (ORDER BY Attack_Type) AS ID_TipoAtaque,
	Attack_Type AS Tipo_Ataque
FROM Threats
GROUP BY Attack_Type;


CREATE OR ALTER VIEW [dbo].[vw_TipoVulnerabilidadeAtaque] AS
SELECT
	ROW_NUMBER() OVER (ORDER BY Vulnerability_Type) AS ID_Vulnerabilidade,
	Vulnerability_Type AS Tipo_Vulnerabilidade
FROM Threats
GROUP BY Vulnerability_Type;