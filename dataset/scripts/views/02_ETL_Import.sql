--Inserção de dados do CSV para a tabela temporária
BULK INSERT #TempThreats
FROM 'C:\PROJETOS\SQL_DATABASE\cyberseguranca\dataset\Threats.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n',
	CODEPAGE = '65001',  --UTF-8
	TABLOCK,
	ERRORFILE = 'C:\PROJETOS\SQL_DATABASE\cyberseguranca\dataset\Threats_Errors.txt',
    MAXERRORS = 1000
)


--Verificando a contagem de linhas
SELECT COUNT(*) AS TotalLinhasImportadas FROM #TempThreats;



--Transformação e Transferência da tabela temporária para a tabela permanente
BEGIN TRY
    DECLARE @RowsInserted INT;
    
    BEGIN TRANSACTION;
    
    INSERT INTO Threats (
        Country, Year, Attack_Type, Target_Industry, 
        Financial_Loss_MUSD, Affected_Users, Attack_Source,
        Vulnerability_Type, Defense_Mechanism, Resolution_Time_Hours
    )
    SELECT 
        Country, 
        CASE WHEN Year BETWEEN 2015 AND 2024 THEN Year ELSE NULL END,
        Attack_Type, 
        Target_Industry,
        ISNULL(Financial_Loss_MUSD, 0),
        Affected_Users,
        Attack_Source,
        Vulnerability_Type,
        Defense_Mechanism,
        Resolution_Time_Hours
    FROM #TempThreats;
    
    SET @RowsInserted = @@ROWCOUNT;
    COMMIT TRANSACTION;
    
    PRINT 'SUCESSO: ' + CAST(@RowsInserted AS VARCHAR) + ' linhas importadas.';
    
    --Verifica linhas com problemas
    SELECT 'Linhas não importadas' AS Tipo, * 
    FROM #TempThreats
    WHERE Year NOT BETWEEN 2015 AND 2024
    OR Country IS NULL OR Attack_Type IS NULL;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
    
    PRINT 'ERRO: ' + ERROR_MESSAGE();
    PRINT 'Linha: ' + CAST(ERROR_LINE() AS VARCHAR);
END CATCH



--Visualizando a tabela atual
SELECT * FROM Threats;


--Deletando a tabela temporária
DROP TABLE #TempThreats;
