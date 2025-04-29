--Criação e utilização do banco de dados
CREATE DATABASE CyberSecurityAnalysis;
GO

USE CyberSecurityAnalysis;
GO

--Criação da tabela definitiva
CREATE TABLE Threats (
	ThreatID INT IDENTITY(1,1) PRIMARY KEY,
	Country NVARCHAR(100),
	Year SMALLINT,
	Attack_Type NVARCHAR(150),
	Target_Industry NVARCHAR(150),
	Financial_Loss_MUSD DECIMAL(15,2) DEFAULT 0,
	Affected_Users INT,
	Attack_Source NVARCHAR(100),
	Vulnerability_Type NVARCHAR(100),
	Defense_Mechanism NVARCHAR(100),
	Resolution_Time_Hours INT
);
GO


--Criação da tabela temporária
CREATE TABLE #TempThreats (
	Country NVARCHAR(100),
	Year SMALLINT,
	Attack_Type NVARCHAR(150),
	Target_Industry NVARCHAR(150),
	Financial_Loss_MUSD DECIMAL(15,2),
	Affected_Users INT,
	Attack_Source NVARCHAR(100),
	Vulnerability_Type NVARCHAR(100),
	Defense_Mechanism NVARCHAR(100),
	Resolution_Time_Hours INT
);
GO

SELECT * FROM #TempThreats;
