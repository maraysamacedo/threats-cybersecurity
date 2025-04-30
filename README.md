# 🔒 Análise de Ameaças Cibernéticas (2015–2024)

<br>

[![Ver Dashboard Power BI](https://img.shields.io/badge/Ver%20Dashboard-Power%20BI-F2D722?style=flat&logo=powerbi&logoColor=black)](https://app.powerbi.com/links/TPsKYkUKGk?ctid=001ed149-d761-4dc5-9830-52a79f552e84&pbi_source=linkShare&bookmarkGuid=261a763b-92b7-4da2-aff4-fc70e0f16bc4)




Projeto de análise de dados sobre ameaças cibernéticas globais, com ETL em SQL e visualização no Power BI.
<br><br>

![Dashboard Preview](layout/CyberSecurity.gif)

---

## 📋 Sumário

1. [🗂️ Estrutura do Projeto](#️-estrutura-do-projeto)
2. [🛠️ Pré-requisitos](#️-pré-requisitos)
3. [🚀 Como Executar](#️-como-executar)
4. [📊 Dataset](#️-dataset)
5. [📄 Documentação Técnica](#️-documentação-técnica)
6. [🤝 Contribuição](#️-contribuição)
7. [📜 Licença](#️-licença)
8. [✉️ Contato](#️-contato)

---

## 🗂️ Estrutura do Projeto
```plainttext
ciberseguranca/<br>
├── dataset/  
│   ├── scripts/              
│   │   ├── views/            
│   │   ├── 01_DataBase_Setup.sql  
│   │   ├── 02_ETL_import.sql  
│   │   └── 03_Views.sql  
│   │
│   ├── CyberSecurityAnalysis.pbix  
│   └── Threats.csv          
│
├── layout/                   
│   ├── Página 1.png  
│   ├── Página 2.png  
│   ├── Página 3.png  
│   └── tooltip.png
│   └── CyberSecurity.gif
│
├── Orientações/              
│   ├── Insight Simplificado para cada Setor.md 
│   └── Resumo do Projeto.md 
│
├── .gitignore               
└── README.md
```

## 🛠️ Pré-requisitos
- **SQL Server**
- **Power BI Desktop**: Versão 2.120+

<br>

## 🚀 Como Executar

### 🔹 Banco de Dados
Execute os scripts na ordem numérica:
```sql
-- 1. Criar estrutura
\i dataset/scripts/01_DataBase_Setup.sql

-- 2. Importar dados
\i dataset/scripts/02_ETL_import.sql

-- 3. Criar views analíticas
\i dataset/scripts/03_Views.sql
```

### 🔹 Power BI
* Abra dataset/CyberSecurityAnalysis.pbix

* Navegue para: Transformar Dados → Configurações da Fonte

* Atualize as conexões de dados

* Ajuste as visualizações conforme necessário
<br><br>

### 📊 Dataset
Fonte principal: 

* [Kaggle: **Global Cybersecurity Threats (2015–2024)**](https://www.kaggle.com/datasets/atharvasoundankar/global-cybersecurity-threats-2015-2024)
<br><br>

### 📄 Documentação Técnica
Inclui:

* Resumo do Projeto

* Insights pra cada setor
<br><br>

### 🔁 Fluxograma do ETL:

```mermaid
graph TD
    A[Dataset Kaggle]:::lilas --> B{ETL em SQL}:::lilas
    B --> C[Views Analíticas]:::lilas
    C --> D((Power BI)):::lilas

    classDef lilas fill:#E6E6FA,stroke:#9370DB,color:#000000,stroke-width:2px
```

<br>

### 🔢 Modelagem de Dados e Decisões do Dashboard

Esta seção detalha as escolhas estratégicas na modelagem dos dados, criação das views e seleção das métricas para o dashboard.

1- Criação das Views<br>
As métricas priorizadas refletem os indicadores-chave de segurança:

* Separação dos Dados<br>
Consolidação de informações multissetoriais (país, defesas, setores, tipo de ataque e vulnerabilidade) em formatos analíticos otimizados.

2- Seleção de Métricas<br>
As métricas priorizadas refletem os indicadores-chave de segurança:


* Taxa de Ataques: Contagem anual de ataques para análise comparativa (crescimento/redução interanual).

* Tempo de Resposta: Média de tempo para resolução de vulnerabilidades.

* Top Ameças: Classificação das ameaças mais frequentes (phishing, malware) para direcionamento de ações.
<br>

3- Justificativa das Visualizações<br>
A disposição dos elementos visuais foi pensada para:

* Identificar rapidamente setores e países mais vulneráveis;

* Permitir análise temporal comparativa;

* Destacar as defesas mais eficientes por tipo de ataque.

<br>

### 🤝 Contribuição
* Faça um fork do projeto

* Crie uma branch:
```sql
git checkout -b feature/nova-analise
```
Commit suas alterações:
```sql
git commit -m 'Adiciona análise X'
```
Push para sua branch:
```sql
git push origin feature/nova-analise
```
Abra um Pull Request
<br><br>
## 📜 Licença
Distribuído sob a licença MIT. Veja o arquivo LICENSE para mais informações.
<br><br>
## ✉️ Contato
 🤝 **Linkedin**: [/maraysamacedo](https://www.linkedin.com/in/maraysamacedo/)<br>
📧 **E-mail:** maraysa.macedo@outlook.com.br
