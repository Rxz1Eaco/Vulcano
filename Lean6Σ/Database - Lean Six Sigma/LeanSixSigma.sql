-- Criação do Banco de Dados
CREATE DATABASE LeanSixSigma;

-- Seleção do Banco de Dados
USE LeanSixSigma;

-- Tabela para Tempo de Ciclo do Processo
CREATE TABLE TempoCiclo (
    ProcessoID INT PRIMARY KEY,
    TempoTotal INT
);

-- Tabela para Taxa de Erro ou Defeito
CREATE TABLE TaxaErroDefeito (
    ProcessoID INT PRIMARY KEY,
    ErrosDefeitos INT,
    UnidadesProduzidas INT
);

-- Tabela para Taxa de Entrega Pontual
CREATE TABLE TaxaEntregaPontual (
    ProcessoID INT PRIMARY KEY,
    ProdutosEntreguesNoPrazo INT,
    TotalProdutos INT
);

-- Tabela para Eficiência do Equipamento
CREATE TABLE EficienciaEquipamento (
    EquipamentoID INT PRIMARY KEY,
    TempoAtividade INT,
    TempoInatividade INT
);

-- Tabela para Custo do Processo
CREATE TABLE CustoProcesso (
    ProcessoID INT PRIMARY KEY,
    CustoMaoDeObra DECIMAL,
    CustoMaterial DECIMAL,
    CustoManutencao DECIMAL
);

-- Tabela para Taxa de Retrabalho
CREATE TABLE TaxaRetrabalho (
    ProcessoID INT PRIMARY KEY,
    UnidadesRetrabalho INT,
    TotalUnidadesProduzidas INT
);

-- Tabela para Variação do Processo
CREATE TABLE VariacaoProcesso (
    ProcessoID INT PRIMARY KEY,
    DesvioPadrao DECIMAL
);

-- Tabela para Tempo de Configuração ou Troca de Ferramentas
CREATE TABLE TempoConfiguracaoFerramentas (
    MaquinaID INT PRIMARY KEY,
    TempoConfiguracao INT
);

-- Tabela para Satisfação do Cliente
CREATE TABLE SatisfacaoCliente (
    PesquisaID INT PRIMARY KEY,
    ResultadoPesquisa DECIMAL
);

-- Tabela para Lead Time de Produção
CREATE TABLE LeadTimeProducao (
    ProcessoID INT PRIMARY KEY,
    InicioProducao DATETIME,
    ConclusaoProducao DATETIME
);

-- Tabela para Utilização de Espaço
CREATE TABLE UtilizacaoEspaco (
    EspacoID INT PRIMARY KEY,
    EficienciaEspaco DECIMAL
);

-- Tabela para Taxa de Rejeição
CREATE TABLE TaxaRejeicao (
    ProcessoID INT PRIMARY KEY,
    ProdutosRejeitados INT,
    TotalProdutosControleQualidade INT
);

-- Tabela para Taxa de Rendimento do Processo
CREATE TABLE TaxaRendimentoProcesso (
    ProcessoID INT PRIMARY KEY,
    ProdutosConformes INT,
    TotalProdutosProduzidos INT
);

-- Tabela para Ciclo de Vida do Produto ou Serviço
CREATE TABLE CicloVidaProdutoServico (
    ProdutoServicoID INT PRIMARY KEY,
    FaseConcepcao DATETIME,
    FaseTermino DATETIME
);

-- Tabela para Ocorrências de Paradas Não Planejadas
CREATE TABLE ParadasNaoPlanejadas (
    PeriodoID INT PRIMARY KEY,
    NumeroOcorrencias INT
);
