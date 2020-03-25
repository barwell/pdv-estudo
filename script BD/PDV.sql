USE [master]
GO
/****** Object:  Database [PDV]    Script Date: 12/04/2019 05:02:04 ******/
CREATE DATABASE [PDV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PDV', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PDV.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PDV_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PDV_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PDV] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PDV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PDV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PDV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PDV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PDV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PDV] SET ARITHABORT OFF 
GO
ALTER DATABASE [PDV] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PDV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PDV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PDV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PDV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PDV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PDV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PDV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PDV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PDV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PDV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PDV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PDV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PDV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PDV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PDV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PDV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PDV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PDV] SET  MULTI_USER 
GO
ALTER DATABASE [PDV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PDV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PDV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PDV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PDV] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PDV]
GO
/****** Object:  Table [dbo].[AlterarSalarioFuncionario]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlterarSalarioFuncionario](
	[AlterarSalarioFuncionarioId] [int] IDENTITY(1,1) NOT NULL,
	[FuncionarioId] [int] NULL,
	[DataHora] [datetime] NULL,
	[Valor] [decimal](18, 2) NULL,
 CONSTRAINT [PK_AlterarSalarioFuncionario] PRIMARY KEY CLUSTERED 
(
	[AlterarSalarioFuncionarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Caixa]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caixa](
	[CaixaId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NULL,
	[Abertura] [datetime] NULL,
	[Fechamento] [datetime] NULL,
	[Valor] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Caixa] PRIMARY KEY CLUSTERED 
(
	[CaixaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cfop]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cfop](
	[CfopId] [bigint] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](4) NULL,
	[Grupo] [bit] NULL,
	[Descricao] [varchar](max) NULL,
	[Aplica] [varchar](max) NULL,
 CONSTRAINT [PK_Cfop] PRIMARY KEY CLUSTERED 
(
	[CfopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cidades]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cidades](
	[CidadeId] [int] IDENTITY(1,1) NOT NULL,
	[CodigoIBGE] [int] NULL,
	[Nome] [varchar](255) NULL,
	[UF] [char](2) NULL,
 CONSTRAINT [PK_Cidades] PRIMARY KEY CLUSTERED 
(
	[CidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [bigint] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](75) NULL,
	[Ativo] [bit] NULL,
	[Sexo] [int] NULL,
	[EstadoCivil] [int] NULL,
	[ApelidoFantasia] [varchar](75) NULL,
	[Nacionalidade] [varchar](20) NULL,
	[Naturalidade] [varchar](40) NULL,
	[Tipo] [char](2) NULL,
	[CpfCnpj] [varchar](18) NULL,
	[RgIE] [varchar](18) NULL,
	[Nascimento] [datetime] NULL,
	[DataCadastro] [datetime] NULL,
	[Cep] [varchar](20) NULL,
	[Endereco] [varchar](75) NULL,
	[Numero] [varchar](10) NULL,
	[Complemento] [varchar](20) NULL,
	[CidadeId] [int] NULL,
	[Bairro] [varchar](50) NULL,
	[Telefone] [varchar](20) NULL,
	[Celular] [varchar](20) NULL,
	[Email] [varchar](75) NULL,
	[LimiteCredito] [decimal](18, 2) NULL,
	[Observacao] [varchar](300) NULL,
	[ImagemCliente] [image] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cofins]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cofins](
	[CofinsId] [int] IDENTITY(1,1) NOT NULL,
	[CofinsCst] [varchar](2) NULL,
	[Descricao] [varchar](max) NULL,
	[Tipo] [int] NULL,
 CONSTRAINT [PK_Cofins] PRIMARY KEY CLUSTERED 
(
	[CofinsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[EmpresaId] [int] IDENTITY(1,1) NOT NULL,
	[RazaoSocial] [varchar](75) NULL,
	[NomeFantasia] [varchar](75) NULL,
	[Telefone] [varchar](20) NULL,
	[Celular] [varchar](20) NULL,
	[Cep] [varchar](15) NULL,
	[Endereco] [varchar](75) NULL,
	[Numero] [varchar](10) NULL,
	[Bairro] [varchar](50) NULL,
	[CidadeId] [int] NULL,
	[CNPJ] [varchar](18) NULL,
	[IE] [varchar](18) NULL,
	[IM] [varchar](8) NULL,
	[SiteEmpresa] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[RegimeTributario] [int] NULL,
	[TipoAtividade] [int] NULL,
	[Csosn] [int] NULL,
	[NomeC] [varchar](75) NULL,
	[CpfC] [varchar](18) NULL,
	[CRCC] [varchar](20) NULL,
	[TelefoneC] [varchar](20) NULL,
	[CelularC] [varchar](20) NULL,
	[EmailC] [varchar](50) NULL,
	[CidadeCId] [int] NULL,
	[Logotipo] [image] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[EmpresaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[EstadoId] [int] NOT NULL,
	[NomeEstado] [varchar](50) NULL,
	[UF] [char](2) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[EstadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estoque]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estoque](
	[EstoqueId] [bigint] IDENTITY(1,1) NOT NULL,
	[EstoqueEntradaId] [bigint] NULL,
	[EstoqueSaidaId] [bigint] NULL,
	[ProdutosId] [bigint] NULL,
	[VendasItensId] [bigint] NULL,
	[DataHora] [datetime] NULL,
	[Tipo] [int] NULL,
	[Quantidade] [int] NULL,
	[Serie] [int] NULL,
	[MovimentacaoSerie] [bit] NULL,
 CONSTRAINT [PK_Estoque] PRIMARY KEY CLUSTERED 
(
	[EstoqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EstoqueEntrada]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstoqueEntrada](
	[EstoqueEntradaId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProdutosId] [bigint] NULL,
	[EstoqueTipoMovimentacaoId] [int] NULL,
	[Valor] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[Quantidade] [int] NULL,
	[Serie] [char](3) NULL,
	[ValorCustoAtual] [decimal](18, 2) NULL,
	[EstoqueAtual] [int] NULL,
 CONSTRAINT [PK_EstoqueEntrada] PRIMARY KEY CLUSTERED 
(
	[EstoqueEntradaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstoqueSaida]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstoqueSaida](
	[EstoqueSaidaId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProdutosId] [bigint] NULL,
	[EstoqueTipoMovimentacaoId] [int] NULL,
	[Valor] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[Quantidade] [int] NULL,
	[Serie] [char](3) NULL,
	[ValorCustoAtual] [decimal](18, 2) NULL,
	[EstoqueAtual] [int] NULL,
 CONSTRAINT [PK_EstoqueSaida] PRIMARY KEY CLUSTERED 
(
	[EstoqueSaidaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstoqueTipoMovimentacao]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstoqueTipoMovimentacao](
	[EstoqueTipoMovimentacaoId] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](30) NULL,
	[Tipo] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_EstoqueTipoMovimentacao] PRIMARY KEY CLUSTERED 
(
	[EstoqueTipoMovimentacaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormaPagamento]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormaPagamento](
	[FormaPagamentoId] [int] IDENTITY(1,1) NOT NULL,
	[StatusId] [int] NULL,
	[Ativo] [bit] NULL,
	[Tipo] [char](1) NULL,
	[Descricao] [varchar](50) NULL,
	[Forma1] [int] NULL,
	[Forma2] [int] NULL,
	[Forma3] [int] NULL,
	[Forma4] [int] NULL,
	[Forma5] [int] NULL,
	[Forma6] [int] NULL,
	[FormaCartao] [int] NULL,
	[FormaPercentualTaxa] [decimal](18, 2) NULL,
	[FormaIntervaloEmDias] [int] NULL,
	[FormaParcelas] [int] NULL,
	[FormaPrimeiroVencimento] [int] NULL,
 CONSTRAINT [PK_FormaPagamento] PRIMARY KEY CLUSTERED 
(
	[FormaPagamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormaPagamentoPrazos]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormaPagamentoPrazos](
	[FormaPagamentoPrazosId] [int] IDENTITY(1,1) NOT NULL,
	[FormaPagamentoId] [int] NULL,
	[Parcela] [int] NULL,
	[Valor] [int] NULL,
	[ValorCoeficiente] [decimal](18, 2) NULL,
 CONSTRAINT [PK_FormaPagamentoPrazos] PRIMARY KEY CLUSTERED 
(
	[FormaPagamentoPrazosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formularios](
	[FormulariosId] [int] NOT NULL,
	[Nome] [varchar](50) NULL,
 CONSTRAINT [PK_Formularios] PRIMARY KEY CLUSTERED 
(
	[FormulariosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[FornecedorId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](75) NULL,
	[NomeFantasia] [varchar](75) NULL,
	[Ativo] [bit] NULL,
	[TipoPessoa] [char](1) NULL,
	[CpfCnpj] [varchar](18) NULL,
	[RgIE] [varchar](18) NULL,
	[Telefone] [varchar](20) NULL,
	[Celular] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Contato] [varchar](30) NULL,
	[Cep] [varchar](9) NULL,
	[CidadeId] [int] NULL,
	[Endereco] [varchar](75) NULL,
	[Numero] [varchar](10) NULL,
	[Bairro] [varchar](50) NULL,
	[SiteFornecedor] [varchar](50) NULL,
	[Observacao] [varchar](300) NULL,
	[DataCadastro] [datetime] NULL,
 CONSTRAINT [PK_Fornecedor] PRIMARY KEY CLUSTERED 
(
	[FornecedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[FuncionarioId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](75) NULL,
	[Sexo] [int] NULL,
	[Endereco] [varchar](75) NULL,
	[Numero] [varchar](10) NULL,
	[Bairro] [varchar](50) NULL,
	[Cep] [varchar](20) NULL,
	[CidadeId] [int] NULL,
	[Cpf] [varchar](18) NULL,
	[Rg] [varchar](18) NULL,
	[Telefone] [varchar](20) NULL,
	[Celular] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[DataCadastro] [datetime] NULL,
	[Admissao] [datetime] NULL,
	[Cargo] [varchar](50) NULL,
	[Ativo] [bit] NULL,
	[Vendedor] [bit] NULL,
	[TituloEleitoral] [varchar](20) NULL,
	[CTPS] [varchar](18) NULL,
	[Pis] [varchar](20) NULL,
	[DataExpedicaoRg] [datetime] NULL,
	[Ferias] [int] NULL,
	[DecimoTerceiroSalario] [int] NULL,
	[Demissao] [datetime] NULL,
	[CBO] [varchar](10) NULL,
	[Encarregado] [varchar](75) NULL,
	[Representante] [bit] NULL,
	[Usuario] [varchar](20) NULL,
	[Senha] [varchar](20) NULL,
	[Observacao] [varchar](255) NULL,
	[Salario] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Funcionarios] PRIMARY KEY CLUSTERED 
(
	[FuncionarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GrupoImpostos]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GrupoImpostos](
	[GrupoImpostosId] [int] NOT NULL,
	[Descricao] [varchar](75) NULL,
	[Tipo] [int] NULL,
	[IcmsAliquotaECF] [varchar](4) NULL,
	[IcmsPercentualBC] [decimal](18, 2) NULL,
	[IcmsPercentual] [decimal](18, 2) NULL,
	[IpiPercentualBC] [decimal](18, 2) NULL,
	[IpiPercentual] [decimal](18, 2) NULL,
	[PisPercentualBC] [decimal](18, 2) NULL,
	[PisPercentual] [decimal](18, 2) NULL,
	[CofinsPercentualBC] [decimal](18, 2) NULL,
	[CofinsPercentual] [decimal](18, 2) NULL,
	[Cfop] [varchar](4) NULL,
	[IcmsId] [int] NULL,
	[IpiId] [int] NULL,
	[PisId] [int] NULL,
	[CofinsId] [int] NULL,
	[OrigemId] [int] NULL,
	[CofinsNaturezaReceitaId] [int] NULL,
	[PisNaturezaReceitaId] [int] NULL,
 CONSTRAINT [PK_GrupoImpostos] PRIMARY KEY CLUSTERED 
(
	[GrupoImpostosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GrupoProdutos]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GrupoProdutos](
	[GrupoProdutosId] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](75) NULL,
	[Ativo] [bit] NULL,
	[SubgrupoId] [int] NULL,
	[Observacao] [varchar](255) NULL,
	[GrupoImpostoEntradaId] [int] NULL,
	[GrupoImpostoSaidaId] [int] NULL,
	[TributacaoFiscalEntradaId] [int] NULL,
	[TributacaoFiscalSaidaId] [int] NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[GrupoProdutosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Icms]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Icms](
	[IcmsId] [int] IDENTITY(1,1) NOT NULL,
	[IcmsCst] [varchar](3) NULL,
	[Descricao] [varchar](max) NULL,
	[Tipo] [int] NULL,
 CONSTRAINT [PK_Icms] PRIMARY KEY CLUSTERED 
(
	[IcmsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ipi]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ipi](
	[IpiId] [int] IDENTITY(1,1) NOT NULL,
	[IpiCst] [varchar](2) NULL,
	[Descricao] [varchar](max) NULL,
	[Tipo] [int] NULL,
 CONSTRAINT [PK_Ipi] PRIMARY KEY CLUSTERED 
(
	[IpiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovimentacaoCaixa]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovimentacaoCaixa](
	[MovimentacaoCaixaId] [int] IDENTITY(1,1) NOT NULL,
	[CaixaId] [int] NULL,
	[ReceitasDespesasId] [int] NULL,
	[ReceitasDespesasBaixasId] [int] NULL,
	[DataHora] [datetime] NULL,
	[Valor] [decimal](18, 2) NULL,
	[Tipo] [char](1) NULL,
	[StatusMovimentacao] [char](1) NULL,
	[Observacao] [varchar](max) NULL,
 CONSTRAINT [PK_MovimentacaoCaixa] PRIMARY KEY CLUSTERED 
(
	[MovimentacaoCaixaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovimentacaoVendas]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovimentacaoVendas](
	[MovimentacaoVendasId] [int] IDENTITY(1,1) NOT NULL,
	[ReceitasDespesasId] [int] NULL,
	[CaixaId] [int] NULL,
	[TransferenciaSaldoClientesId] [int] NULL,
	[ReceitasDespesasBaixasId] [int] NULL,
	[ClientesId] [bigint] NULL,
	[DataHora] [datetime] NULL,
	[Valor] [decimal](18, 2) NULL,
	[Tipo] [char](1) NULL,
	[StatusMovimentacao] [char](1) NULL,
	[Observacao] [varchar](300) NULL,
 CONSTRAINT [PK_MovimentacaoVendas] PRIMARY KEY CLUSTERED 
(
	[MovimentacaoVendasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NaturezaReceita]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NaturezaReceita](
	[NaturezaReceitaId] [int] IDENTITY(1,1) NOT NULL,
	[Cst] [varchar](2) NULL,
	[Codigo] [int] NULL,
	[Descricao] [varchar](max) NULL,
 CONSTRAINT [PK_NaturezaReceita] PRIMARY KEY CLUSTERED 
(
	[NaturezaReceitaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Origem]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Origem](
	[OrigemId] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](max) NULL,
 CONSTRAINT [PK_Origem] PRIMARY KEY CLUSTERED 
(
	[OrigemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permissoes]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissoes](
	[PermissoesId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NULL,
	[FormulariosId] [int] NULL,
	[Inserir] [bit] NULL,
	[Alterar] [bit] NULL,
	[Excluir] [bit] NULL,
	[Visualizar] [bit] NULL,
 CONSTRAINT [PK_Permissoes] PRIMARY KEY CLUSTERED 
(
	[PermissoesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pis]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pis](
	[PisId] [int] IDENTITY(1,1) NOT NULL,
	[PisCst] [varchar](2) NULL,
	[Descricao] [varchar](max) NULL,
	[Tipo] [int] NULL,
 CONSTRAINT [PK_Pis] PRIMARY KEY CLUSTERED 
(
	[PisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produtos](
	[ProdutosId] [bigint] IDENTITY(1,1) NOT NULL,
	[UnidadeMedidaId] [int] NULL,
	[GrupoProdutosId] [int] NULL,
	[SubgrupoProdutosId] [int] NULL,
	[TributacaoFiscalId] [int] NULL,
	[NaturezaReceitaId] [int] NULL,
	[FornecedorId] [int] NULL,
	[TabelaIBPTId] [bigint] NULL,
	[CodigoBarras] [varchar](25) NULL,
	[Descricao] [varchar](100) NULL,
	[Ativo] [bit] NULL,
	[ValorCompra] [decimal](18, 2) NULL,
	[ValorVenda] [decimal](18, 2) NULL,
	[ValorUnitario] [decimal](18, 2) NULL,
	[EstoqueInicial] [int] NULL,
	[EstoqueAtual] [int] NULL,
	[EstoqueMinimo] [int] NULL,
	[EstoqueMaximo] [int] NULL,
	[Observacao] [varchar](300) NULL,
	[DataCadastro] [datetime] NULL,
	[UltimaCompra] [datetime] NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[ProdutosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReceitasDespesas]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReceitasDespesas](
	[ReceitasDespesasId] [int] IDENTITY(1,1) NOT NULL,
	[ClientesId] [bigint] NULL,
	[VendasId] [bigint] NULL,
	[FormaPagamentoId] [int] NULL,
	[FornecedorId] [int] NULL,
	[Emissao] [datetime] NULL,
	[Vencimento] [datetime] NULL,
	[Valor] [decimal](18, 2) NULL,
	[Parcela] [varchar](15) NULL,
	[Observacao] [varchar](max) NULL,
	[ValorPago] [decimal](18, 2) NULL,
	[DataPagamento] [datetime] NULL,
	[StatusPagamento] [varchar](2) NULL,
	[ValorExtenso] [varchar](max) NULL,
	[ValorFatura] [decimal](18, 2) NULL,
	[NumeroDocumento] [varchar](14) NULL,
	[MultaAposVencimento] [decimal](18, 2) NULL,
	[MultaPorDia] [decimal](18, 3) NULL,
	[DiasAtraso] [varchar](6) NULL,
	[BaixaParcial] [int] NULL,
	[PagouComCartão] [bit] NULL,
	[Desconto] [decimal](18, 2) NULL,
	[MultaAposVencimentoPercentualValor] [int] NULL,
	[MultaAoDiaPercentualValor] [int] NULL,
 CONSTRAINT [PK_ReceitasDespesas] PRIMARY KEY CLUSTERED 
(
	[ReceitasDespesasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReceitasDespesasBaixas]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceitasDespesasBaixas](
	[ReceitasDespesasBaixasId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NULL,
	[UsuarioCancelamentoId] [int] NULL,
	[ReceitasDespesasId] [int] NULL,
	[DataHora] [datetime] NULL,
	[MultaPercentualValor] [smallint] NULL,
	[Multa] [decimal](18, 2) NULL,
	[DescontoPercentualValor] [smallint] NULL,
	[Desconto] [decimal](18, 2) NULL,
	[JurosPercentualValor] [smallint] NULL,
	[Juros] [decimal](18, 2) NULL,
	[DataCancelamento] [datetime] NULL,
	[DiasAtraso] [int] NULL,
	[Valor] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ReceitasDespesasBaixas] PRIMARY KEY CLUSTERED 
(
	[ReceitasDespesasBaixasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaldoCaixa]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaldoCaixa](
	[SaldoCaixaId] [int] IDENTITY(1,1) NOT NULL,
	[MovimentacaoCaixaId] [int] NULL,
	[Valor] [decimal](18, 2) NULL,
 CONSTRAINT [PK_SaldoCaixa] PRIMARY KEY CLUSTERED 
(
	[SaldoCaixaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SaldoClientes]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaldoClientes](
	[SaldoClientesId] [int] IDENTITY(1,1) NOT NULL,
	[ClientesId] [bigint] NULL,
	[FuncionarioId] [int] NULL,
	[VendasId] [bigint] NULL,
	[ReceitasDespesasId] [int] NULL,
	[CaixaId] [int] NULL,
	[Operacao] [int] NULL,
	[Valor] [decimal](18, 2) NULL,
	[Observacao] [varchar](300) NULL,
	[DataHora] [datetime] NULL,
	[Situacao] [varchar](2) NULL,
	[Referencia] [int] NULL,
	[Devolucao] [int] NULL,
 CONSTRAINT [PK_SaldoClientes] PRIMARY KEY CLUSTERED 
(
	[SaldoClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sangria]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sangria](
	[SangriaId] [int] IDENTITY(1,1) NOT NULL,
	[CaixaId] [int] NULL,
	[UsuarioId] [int] NULL,
	[ValorCaixa] [decimal](18, 2) NULL,
	[ValorSangria] [decimal](18, 2) NULL,
	[ValorAposSangria] [decimal](18, 2) NULL,
	[DataHora] [datetime] NULL,
	[Tipo] [int] NULL,
	[Observacao] [varchar](100) NULL,
 CONSTRAINT [PK_Sangria] PRIMARY KEY CLUSTERED 
(
	[SangriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StatusOperacoes]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StatusOperacoes](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[Ativo] [bit] NULL,
	[Tipo] [int] NULL,
 CONSTRAINT [PK_StatusOperacoes] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubgrupoProdutos]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubgrupoProdutos](
	[SubgrupoProdutosId] [int] IDENTITY(1,1) NOT NULL,
	[GrupoProdutosId] [int] NULL,
	[Descricao] [varchar](75) NULL,
	[Ativo] [bit] NULL,
 CONSTRAINT [PK_Subcategoria] PRIMARY KEY CLUSTERED 
(
	[SubgrupoProdutosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TabelaIBPT]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TabelaIBPT](
	[TabelaIBPTId] [bigint] IDENTITY(1,1) NOT NULL,
	[NCM] [varchar](20) NULL,
	[Ex] [int] NULL,
	[Tipo] [int] NULL,
	[Descricao] [varchar](max) NULL,
	[Aliq_Federal_Nacional] [decimal](18, 2) NULL,
	[Aliq_Federal_Importado] [decimal](18, 2) NULL,
	[Aliq_Estadual] [decimal](18, 2) NULL,
	[Aliq_Municipal] [decimal](18, 2) NULL,
	[VigenciaInicio] [datetime] NULL,
	[VigenciaFim] [datetime] NULL,
	[Versao] [varchar](10) NULL,
 CONSTRAINT [PK_TabelaIBPT] PRIMARY KEY CLUSTERED 
(
	[TabelaIBPTId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransferenciaSaldoClientes]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransferenciaSaldoClientes](
	[TransferenciaSaldoClientesId] [int] IDENTITY(1,1) NOT NULL,
	[DataHora] [datetime] NULL,
	[Valor] [decimal](18, 2) NULL,
	[Observacao] [varchar](300) NULL,
 CONSTRAINT [PK_TransferenciaSaldoClientes] PRIMARY KEY CLUSTERED 
(
	[TransferenciaSaldoClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TributacaoFiscal]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TributacaoFiscal](
	[TributacaoFiscalId] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](max) NULL,
	[RegimeTributario] [int] NULL,
	[Tipo] [int] NULL,
	[Icms_Issqn] [int] NULL,
	[Cfop] [varchar](4) NULL,
	[MovimentaEstoque] [bit] NULL,
	[GerarFinanceiro] [bit] NULL,
	[CalcularIBPT] [bit] NULL,
	[IcmsCst] [varchar](3) NULL,
	[IcmsOrigem] [int] NULL,
	[IcmsPercentualBC] [decimal](18, 2) NULL,
	[IcmsPercentual] [decimal](18, 2) NULL,
	[IpiCst] [varchar](2) NULL,
	[IpiPercentualBC] [decimal](18, 2) NULL,
	[IpiPercentual] [decimal](18, 2) NULL,
	[IpiCodigo] [varchar](3) NULL,
	[PisCst] [varchar](2) NULL,
	[PisPercentualBC] [decimal](18, 2) NULL,
	[PisPercentual] [decimal](18, 2) NULL,
	[PisGerarST] [bit] NULL,
	[PisSTPercentualBC] [decimal](18, 2) NULL,
	[PisSTPercentual] [decimal](18, 2) NULL,
	[CofinsCst] [varchar](2) NULL,
	[CofinsPercentualBC] [decimal](18, 2) NULL,
	[CofinsPercentual] [decimal](18, 2) NULL,
	[CofinsGerarST] [bit] NULL,
	[CofinsSTPercentualBC] [decimal](18, 2) NULL,
	[CofinsSTPercentual] [decimal](18, 2) NULL,
	[CalcularSTIcms] [bit] NULL,
 CONSTRAINT [PK_TributacaoFiscal] PRIMARY KEY CLUSTERED 
(
	[TributacaoFiscalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TributacaoFiscalEstados]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TributacaoFiscalEstados](
	[TributacaoFiscalEstadosId] [int] IDENTITY(1,1) NOT NULL,
	[OperacaoId] [int] NULL,
	[UF] [int] NULL,
	[OperacaoUFSelecionado] [bit] NULL,
 CONSTRAINT [PK_TributacaoFiscalEstados] PRIMARY KEY CLUSTERED 
(
	[TributacaoFiscalEstadosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnidadeMedida]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnidadeMedida](
	[UnidadeMedidaId] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](20) NULL,
 CONSTRAINT [PK_UnidadeMedida] PRIMARY KEY CLUSTERED 
(
	[UnidadeMedidaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](75) NULL,
	[Ativo] [bit] NULL,
	[NomeLogin] [varchar](20) NULL,
	[Senha] [varchar](20) NULL,
	[Perfil] [varchar](20) NULL,
	[DataCadastro] [datetime] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendas]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendas](
	[VendasId] [bigint] IDENTITY(1,1) NOT NULL,
	[CaixaId] [int] NULL,
	[UsuarioId] [int] NULL,
	[ClientesId] [bigint] NULL,
	[ProdutosId] [bigint] NULL,
	[FormaPagamentoId] [int] NULL,
	[StatusId] [int] NULL,
	[FornecedorId] [int] NULL,
	[FuncionarioId] [int] NULL,
	[CidadeId] [int] NULL,
	[NumeroDocumento] [varchar](20) NULL,
	[DataEmissao] [datetime] NULL,
	[DataVendaFinalizada] [datetime] NULL,
	[Cpf] [varchar](18) NULL,
	[Cfop] [varchar](6) NULL,
	[Subtotal] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[Desconto] [decimal](18, 2) NULL,
	[LucroVenda] [decimal](18, 2) NULL,
	[CustoVenda] [decimal](18, 2) NULL,
	[Troco] [decimal](18, 2) NULL,
	[Tipo] [char](1) NULL,
	[StatusVenda] [varchar](20) NULL,
	[BaseCalculoIcms] [decimal](18, 2) NULL,
	[BaseCalculoIcmsST] [decimal](18, 2) NULL,
	[BaseCalculoPis] [decimal](18, 2) NULL,
	[BaseCalculoCofins] [decimal](18, 2) NULL,
	[ValorIcms] [decimal](18, 2) NULL,
	[ValorIcmsST] [decimal](18, 2) NULL,
	[ValorIpi] [decimal](18, 2) NULL,
	[ValorPis] [decimal](18, 2) NULL,
	[ValorCofins] [decimal](18, 2) NULL,
	[Serie] [varchar](3) NULL,
	[Observacao] [varchar](300) NULL,
	[CupomFiscal] [bit] NULL,
	[NumeroCupomFiscal] [varchar](10) NULL,
	[PercentualLucroVenda] [decimal](18, 2) NULL,
	[DescricaoFormaPagamento] [varchar](30) NULL,
	[SaldoClienteUtilizado] [decimal](18, 2) NULL,
	[VendaNumeroCFe] [varchar](7) NULL,
	[VendaChaveAcessoCFe] [varchar](44) NULL,
	[VendaNumeroSerieSatCFe] [varchar](9) NULL,
	[VendaNumeroCancelamentoCFe] [varchar](7) NULL,
	[VendaAssinaturaQRCODECFe] [varchar](max) NULL,
	[VendaChaveAcessoCancelamentoCFe] [varchar](44) NULL,
	[VendaDataHoraCancelamentoCFe] [datetime] NULL,
	[VendaQRCODECancelamentoCFe] [varchar](max) NULL,
	[VendaDataHoraAutorizacao] [datetime] NULL,
	[VendaNFCeNumero] [int] NULL,
	[VendaNFCeAmbiente] [smallint] NULL,
	[VendaNFCeSerie] [int] NULL,
	[VendaNFCeChaveAcesso] [varchar](44) NULL,
	[VendaNFCeNumeroRecibo] [varchar](15) NULL,
	[VendaNFCeDataHoraAutorizacao] [datetime] NULL,
	[VendaNFCeProtocoloAutorizacao] [varchar](15) NULL,
	[VendaNFCeDataHoraCancelamento] [datetime] NULL,
	[VendaNFCeProtocoloCancelamento] [varchar](15) NULL,
	[VendaNFCeQrCode] [varchar](max) NULL,
	[VendaSpedIcmsBaseCalculo] [decimal](18, 2) NULL,
	[VendaSpedIcmsValor] [decimal](18, 2) NULL,
	[VendaSpedIpiBaseCalculo] [decimal](18, 2) NULL,
	[VendaSpedIpiValor] [decimal](18, 2) NULL,
	[VendaSpedPisBaseCalculo] [decimal](18, 2) NULL,
	[VendaSpedPisValor] [decimal](18, 2) NULL,
	[VendaSpedCofinsBaseCalculo] [decimal](18, 2) NULL,
	[VendaSpedCofinsValor] [decimal](18, 2) NULL,
	[Identificacao] [bit] NULL,
 CONSTRAINT [PK_VendasCaixa] PRIMARY KEY CLUSTERED 
(
	[VendasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendasItens]    Script Date: 12/04/2019 05:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendasItens](
	[VendasItensId] [bigint] IDENTITY(1,1) NOT NULL,
	[VendasId] [bigint] NULL,
	[ProdutosId] [bigint] NULL,
	[Quantidade] [int] NULL,
	[ValorUnitario] [decimal](18, 2) NULL,
	[ValorTotal] [decimal](18, 2) NULL,
	[NumeroDocumento] [varchar](25) NULL,
	[Tipo] [char](1) NULL,
	[DataVencimento] [datetime] NULL,
	[Serie] [char](3) NULL,
	[Desconto] [decimal](18, 2) NULL,
	[Lucro] [decimal](18, 2) NULL,
	[PercentualLucro] [decimal](18, 2) NULL,
	[Custo] [decimal](18, 2) NULL,
	[ValorCusto] [decimal](18, 2) NULL,
	[EstoqueAtual] [int] NULL,
	[EstoqueAposMovimentacao] [int] NULL,
	[PercentualPis] [decimal](18, 2) NULL,
	[BaseCalculoPis] [decimal](18, 2) NULL,
	[ValorPis] [decimal](18, 2) NULL,
	[PercentualCofins] [decimal](18, 2) NULL,
	[BaseCalculoCofins] [decimal](18, 2) NULL,
	[ValorCofins] [decimal](18, 2) NULL,
	[PercentualIcms] [decimal](18, 2) NULL,
	[BaseCalculoIcms] [decimal](18, 2) NULL,
	[ValorIcms] [decimal](18, 2) NULL,
	[ValorIcmsST] [decimal](18, 2) NULL,
	[BaseCalculoIcmsST] [decimal](18, 2) NULL,
	[PercentualIcmsST] [decimal](18, 2) NULL,
	[IvaIcmsST] [decimal](18, 2) NULL,
	[CstCsosn] [varchar](4) NULL,
	[IbptValorFederal] [decimal](18, 2) NULL,
	[IbptValorEstadual] [decimal](18, 2) NULL,
	[IbptValorMunicipal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_VendasItens] PRIMARY KEY CLUSTERED 
(
	[VendasItensId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AlterarSalarioFuncionario]  WITH CHECK ADD  CONSTRAINT [FK_AlterarSalarioFuncionario_Funcionarios] FOREIGN KEY([FuncionarioId])
REFERENCES [dbo].[Funcionarios] ([FuncionarioId])
GO
ALTER TABLE [dbo].[AlterarSalarioFuncionario] CHECK CONSTRAINT [FK_AlterarSalarioFuncionario_Funcionarios]
GO
ALTER TABLE [dbo].[Caixa]  WITH CHECK ADD  CONSTRAINT [FK_Caixa_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Caixa] CHECK CONSTRAINT [FK_Caixa_Usuario]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Cidades] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([CidadeId])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Cidades]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Cidades] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([CidadeId])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Cidades]
GO
ALTER TABLE [dbo].[Estoque]  WITH CHECK ADD  CONSTRAINT [FK_Estoque_EstoqueEntrada] FOREIGN KEY([EstoqueEntradaId])
REFERENCES [dbo].[EstoqueEntrada] ([EstoqueEntradaId])
GO
ALTER TABLE [dbo].[Estoque] CHECK CONSTRAINT [FK_Estoque_EstoqueEntrada]
GO
ALTER TABLE [dbo].[Estoque]  WITH CHECK ADD  CONSTRAINT [FK_Estoque_EstoqueSaida] FOREIGN KEY([EstoqueSaidaId])
REFERENCES [dbo].[EstoqueSaida] ([EstoqueSaidaId])
GO
ALTER TABLE [dbo].[Estoque] CHECK CONSTRAINT [FK_Estoque_EstoqueSaida]
GO
ALTER TABLE [dbo].[Estoque]  WITH CHECK ADD  CONSTRAINT [FK_Estoque_Produtos] FOREIGN KEY([ProdutosId])
REFERENCES [dbo].[Produtos] ([ProdutosId])
GO
ALTER TABLE [dbo].[Estoque] CHECK CONSTRAINT [FK_Estoque_Produtos]
GO
ALTER TABLE [dbo].[Estoque]  WITH CHECK ADD  CONSTRAINT [FK_Estoque_VendasItens] FOREIGN KEY([VendasItensId])
REFERENCES [dbo].[VendasItens] ([VendasItensId])
GO
ALTER TABLE [dbo].[Estoque] CHECK CONSTRAINT [FK_Estoque_VendasItens]
GO
ALTER TABLE [dbo].[EstoqueEntrada]  WITH CHECK ADD  CONSTRAINT [FK_EstoqueEntrada_EstoqueTipoMovimentacao] FOREIGN KEY([EstoqueTipoMovimentacaoId])
REFERENCES [dbo].[EstoqueTipoMovimentacao] ([EstoqueTipoMovimentacaoId])
GO
ALTER TABLE [dbo].[EstoqueEntrada] CHECK CONSTRAINT [FK_EstoqueEntrada_EstoqueTipoMovimentacao]
GO
ALTER TABLE [dbo].[EstoqueEntrada]  WITH CHECK ADD  CONSTRAINT [FK_EstoqueEntrada_Produtos] FOREIGN KEY([ProdutosId])
REFERENCES [dbo].[Produtos] ([ProdutosId])
GO
ALTER TABLE [dbo].[EstoqueEntrada] CHECK CONSTRAINT [FK_EstoqueEntrada_Produtos]
GO
ALTER TABLE [dbo].[EstoqueSaida]  WITH CHECK ADD  CONSTRAINT [FK_EstoqueSaida_EstoqueTipoMovimentacao] FOREIGN KEY([EstoqueTipoMovimentacaoId])
REFERENCES [dbo].[EstoqueTipoMovimentacao] ([EstoqueTipoMovimentacaoId])
GO
ALTER TABLE [dbo].[EstoqueSaida] CHECK CONSTRAINT [FK_EstoqueSaida_EstoqueTipoMovimentacao]
GO
ALTER TABLE [dbo].[EstoqueSaida]  WITH CHECK ADD  CONSTRAINT [FK_EstoqueSaida_Produtos] FOREIGN KEY([ProdutosId])
REFERENCES [dbo].[Produtos] ([ProdutosId])
GO
ALTER TABLE [dbo].[EstoqueSaida] CHECK CONSTRAINT [FK_EstoqueSaida_Produtos]
GO
ALTER TABLE [dbo].[FormaPagamento]  WITH CHECK ADD  CONSTRAINT [FK_FormaPagamento_StatusOperacoes] FOREIGN KEY([StatusId])
REFERENCES [dbo].[StatusOperacoes] ([StatusId])
GO
ALTER TABLE [dbo].[FormaPagamento] CHECK CONSTRAINT [FK_FormaPagamento_StatusOperacoes]
GO
ALTER TABLE [dbo].[FormaPagamentoPrazos]  WITH CHECK ADD  CONSTRAINT [FK_FormaPagamentoPrazos_FormaPagamento] FOREIGN KEY([FormaPagamentoId])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoId])
GO
ALTER TABLE [dbo].[FormaPagamentoPrazos] CHECK CONSTRAINT [FK_FormaPagamentoPrazos_FormaPagamento]
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD  CONSTRAINT [FK_Fornecedor_Cidades] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([CidadeId])
GO
ALTER TABLE [dbo].[Fornecedor] CHECK CONSTRAINT [FK_Fornecedor_Cidades]
GO
ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD  CONSTRAINT [FK_Funcionarios_Cidades] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([CidadeId])
GO
ALTER TABLE [dbo].[Funcionarios] CHECK CONSTRAINT [FK_Funcionarios_Cidades]
GO
ALTER TABLE [dbo].[GrupoProdutos]  WITH CHECK ADD  CONSTRAINT [FK_GrupoProdutos_GrupoImpostosEntrada] FOREIGN KEY([GrupoImpostoEntradaId])
REFERENCES [dbo].[GrupoImpostos] ([GrupoImpostosId])
GO
ALTER TABLE [dbo].[GrupoProdutos] CHECK CONSTRAINT [FK_GrupoProdutos_GrupoImpostosEntrada]
GO
ALTER TABLE [dbo].[GrupoProdutos]  WITH CHECK ADD  CONSTRAINT [FK_GrupoProdutos_GrupoImpostosSaida] FOREIGN KEY([GrupoImpostoSaidaId])
REFERENCES [dbo].[GrupoImpostos] ([GrupoImpostosId])
GO
ALTER TABLE [dbo].[GrupoProdutos] CHECK CONSTRAINT [FK_GrupoProdutos_GrupoImpostosSaida]
GO
ALTER TABLE [dbo].[GrupoProdutos]  WITH CHECK ADD  CONSTRAINT [FK_GrupoProdutos_TributacaoFiscalEntrada] FOREIGN KEY([TributacaoFiscalEntradaId])
REFERENCES [dbo].[TributacaoFiscal] ([TributacaoFiscalId])
GO
ALTER TABLE [dbo].[GrupoProdutos] CHECK CONSTRAINT [FK_GrupoProdutos_TributacaoFiscalEntrada]
GO
ALTER TABLE [dbo].[GrupoProdutos]  WITH CHECK ADD  CONSTRAINT [FK_GrupoProdutos_TributacaoFiscalSaida] FOREIGN KEY([TributacaoFiscalSaidaId])
REFERENCES [dbo].[TributacaoFiscal] ([TributacaoFiscalId])
GO
ALTER TABLE [dbo].[GrupoProdutos] CHECK CONSTRAINT [FK_GrupoProdutos_TributacaoFiscalSaida]
GO
ALTER TABLE [dbo].[MovimentacaoCaixa]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoCaixa_Caixa] FOREIGN KEY([CaixaId])
REFERENCES [dbo].[Caixa] ([CaixaId])
GO
ALTER TABLE [dbo].[MovimentacaoCaixa] CHECK CONSTRAINT [FK_MovimentacaoCaixa_Caixa]
GO
ALTER TABLE [dbo].[MovimentacaoCaixa]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoCaixa_ReceitasDespesas] FOREIGN KEY([ReceitasDespesasId])
REFERENCES [dbo].[ReceitasDespesas] ([ReceitasDespesasId])
GO
ALTER TABLE [dbo].[MovimentacaoCaixa] CHECK CONSTRAINT [FK_MovimentacaoCaixa_ReceitasDespesas]
GO
ALTER TABLE [dbo].[MovimentacaoCaixa]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoCaixa_ReceitasDespesasBaixas] FOREIGN KEY([ReceitasDespesasBaixasId])
REFERENCES [dbo].[ReceitasDespesasBaixas] ([ReceitasDespesasBaixasId])
GO
ALTER TABLE [dbo].[MovimentacaoCaixa] CHECK CONSTRAINT [FK_MovimentacaoCaixa_ReceitasDespesasBaixas]
GO
ALTER TABLE [dbo].[MovimentacaoVendas]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoVendas_Caixa] FOREIGN KEY([CaixaId])
REFERENCES [dbo].[Caixa] ([CaixaId])
GO
ALTER TABLE [dbo].[MovimentacaoVendas] CHECK CONSTRAINT [FK_MovimentacaoVendas_Caixa]
GO
ALTER TABLE [dbo].[MovimentacaoVendas]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoVendas_Clientes] FOREIGN KEY([ClientesId])
REFERENCES [dbo].[Clientes] ([ClientesId])
GO
ALTER TABLE [dbo].[MovimentacaoVendas] CHECK CONSTRAINT [FK_MovimentacaoVendas_Clientes]
GO
ALTER TABLE [dbo].[MovimentacaoVendas]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoVendas_ReceitasDespesas] FOREIGN KEY([ReceitasDespesasId])
REFERENCES [dbo].[ReceitasDespesas] ([ReceitasDespesasId])
GO
ALTER TABLE [dbo].[MovimentacaoVendas] CHECK CONSTRAINT [FK_MovimentacaoVendas_ReceitasDespesas]
GO
ALTER TABLE [dbo].[MovimentacaoVendas]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoVendas_ReceitasDespesasBaixas] FOREIGN KEY([ReceitasDespesasBaixasId])
REFERENCES [dbo].[ReceitasDespesasBaixas] ([ReceitasDespesasBaixasId])
GO
ALTER TABLE [dbo].[MovimentacaoVendas] CHECK CONSTRAINT [FK_MovimentacaoVendas_ReceitasDespesasBaixas]
GO
ALTER TABLE [dbo].[MovimentacaoVendas]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoVendas_TransferenciaSaldoClientes] FOREIGN KEY([TransferenciaSaldoClientesId])
REFERENCES [dbo].[TransferenciaSaldoClientes] ([TransferenciaSaldoClientesId])
GO
ALTER TABLE [dbo].[MovimentacaoVendas] CHECK CONSTRAINT [FK_MovimentacaoVendas_TransferenciaSaldoClientes]
GO
ALTER TABLE [dbo].[Permissoes]  WITH CHECK ADD  CONSTRAINT [FK_Permissoes_Formularios] FOREIGN KEY([FormulariosId])
REFERENCES [dbo].[Formularios] ([FormulariosId])
GO
ALTER TABLE [dbo].[Permissoes] CHECK CONSTRAINT [FK_Permissoes_Formularios]
GO
ALTER TABLE [dbo].[Permissoes]  WITH CHECK ADD  CONSTRAINT [FK_Permissoes_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Permissoes] CHECK CONSTRAINT [FK_Permissoes_Usuario]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_Fornecedor] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedor] ([FornecedorId])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Produtos_Fornecedor]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_GrupoProdutos] FOREIGN KEY([GrupoProdutosId])
REFERENCES [dbo].[GrupoProdutos] ([GrupoProdutosId])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Produtos_GrupoProdutos]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_NaturezaReceita] FOREIGN KEY([NaturezaReceitaId])
REFERENCES [dbo].[NaturezaReceita] ([NaturezaReceitaId])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Produtos_NaturezaReceita]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_TabelaIBPT] FOREIGN KEY([TabelaIBPTId])
REFERENCES [dbo].[TabelaIBPT] ([TabelaIBPTId])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Produtos_TabelaIBPT]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_TributacaoFiscal] FOREIGN KEY([TributacaoFiscalId])
REFERENCES [dbo].[TributacaoFiscal] ([TributacaoFiscalId])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Produtos_TributacaoFiscal]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_UnidadeMedida] FOREIGN KEY([UnidadeMedidaId])
REFERENCES [dbo].[UnidadeMedida] ([UnidadeMedidaId])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Produtos_UnidadeMedida]
GO
ALTER TABLE [dbo].[ReceitasDespesas]  WITH CHECK ADD  CONSTRAINT [FK_ReceitasDespesas_Clientes] FOREIGN KEY([ClientesId])
REFERENCES [dbo].[Clientes] ([ClientesId])
GO
ALTER TABLE [dbo].[ReceitasDespesas] CHECK CONSTRAINT [FK_ReceitasDespesas_Clientes]
GO
ALTER TABLE [dbo].[ReceitasDespesas]  WITH CHECK ADD  CONSTRAINT [FK_ReceitasDespesas_FormaPagamento] FOREIGN KEY([FormaPagamentoId])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoId])
GO
ALTER TABLE [dbo].[ReceitasDespesas] CHECK CONSTRAINT [FK_ReceitasDespesas_FormaPagamento]
GO
ALTER TABLE [dbo].[ReceitasDespesas]  WITH CHECK ADD  CONSTRAINT [FK_ReceitasDespesas_Fornecedor] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedor] ([FornecedorId])
GO
ALTER TABLE [dbo].[ReceitasDespesas] CHECK CONSTRAINT [FK_ReceitasDespesas_Fornecedor]
GO
ALTER TABLE [dbo].[ReceitasDespesas]  WITH CHECK ADD  CONSTRAINT [FK_ReceitasDespesas_Vendas] FOREIGN KEY([VendasId])
REFERENCES [dbo].[Vendas] ([VendasId])
GO
ALTER TABLE [dbo].[ReceitasDespesas] CHECK CONSTRAINT [FK_ReceitasDespesas_Vendas]
GO
ALTER TABLE [dbo].[ReceitasDespesasBaixas]  WITH CHECK ADD  CONSTRAINT [FK_ReceitasDespesasBaixas_ReceitasDespesas] FOREIGN KEY([ReceitasDespesasId])
REFERENCES [dbo].[ReceitasDespesas] ([ReceitasDespesasId])
GO
ALTER TABLE [dbo].[ReceitasDespesasBaixas] CHECK CONSTRAINT [FK_ReceitasDespesasBaixas_ReceitasDespesas]
GO
ALTER TABLE [dbo].[ReceitasDespesasBaixas]  WITH CHECK ADD  CONSTRAINT [FK_ReceitasDespesasBaixas_Usuarios] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[ReceitasDespesasBaixas] CHECK CONSTRAINT [FK_ReceitasDespesasBaixas_Usuarios]
GO
ALTER TABLE [dbo].[ReceitasDespesasBaixas]  WITH CHECK ADD  CONSTRAINT [FK_ReceitasDespesasBaixas_UsuariosCancelamento] FOREIGN KEY([UsuarioCancelamentoId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[ReceitasDespesasBaixas] CHECK CONSTRAINT [FK_ReceitasDespesasBaixas_UsuariosCancelamento]
GO
ALTER TABLE [dbo].[SaldoCaixa]  WITH CHECK ADD  CONSTRAINT [FK_SaldoCaixa_MovimentacaoCaixa] FOREIGN KEY([MovimentacaoCaixaId])
REFERENCES [dbo].[MovimentacaoCaixa] ([MovimentacaoCaixaId])
GO
ALTER TABLE [dbo].[SaldoCaixa] CHECK CONSTRAINT [FK_SaldoCaixa_MovimentacaoCaixa]
GO
ALTER TABLE [dbo].[SaldoClientes]  WITH CHECK ADD  CONSTRAINT [FK_SaldoClientes_Caixa] FOREIGN KEY([CaixaId])
REFERENCES [dbo].[Caixa] ([CaixaId])
GO
ALTER TABLE [dbo].[SaldoClientes] CHECK CONSTRAINT [FK_SaldoClientes_Caixa]
GO
ALTER TABLE [dbo].[SaldoClientes]  WITH CHECK ADD  CONSTRAINT [FK_SaldoClientes_Clientes] FOREIGN KEY([ClientesId])
REFERENCES [dbo].[Clientes] ([ClientesId])
GO
ALTER TABLE [dbo].[SaldoClientes] CHECK CONSTRAINT [FK_SaldoClientes_Clientes]
GO
ALTER TABLE [dbo].[SaldoClientes]  WITH CHECK ADD  CONSTRAINT [FK_SaldoClientes_Funcionarios] FOREIGN KEY([FuncionarioId])
REFERENCES [dbo].[Funcionarios] ([FuncionarioId])
GO
ALTER TABLE [dbo].[SaldoClientes] CHECK CONSTRAINT [FK_SaldoClientes_Funcionarios]
GO
ALTER TABLE [dbo].[SaldoClientes]  WITH CHECK ADD  CONSTRAINT [FK_SaldoClientes_ReceitasDespesas] FOREIGN KEY([ReceitasDespesasId])
REFERENCES [dbo].[ReceitasDespesas] ([ReceitasDespesasId])
GO
ALTER TABLE [dbo].[SaldoClientes] CHECK CONSTRAINT [FK_SaldoClientes_ReceitasDespesas]
GO
ALTER TABLE [dbo].[SaldoClientes]  WITH CHECK ADD  CONSTRAINT [FK_SaldoClientes_Vendas] FOREIGN KEY([VendasId])
REFERENCES [dbo].[Vendas] ([VendasId])
GO
ALTER TABLE [dbo].[SaldoClientes] CHECK CONSTRAINT [FK_SaldoClientes_Vendas]
GO
ALTER TABLE [dbo].[Sangria]  WITH CHECK ADD  CONSTRAINT [FK_Sangria_Caixa] FOREIGN KEY([CaixaId])
REFERENCES [dbo].[Caixa] ([CaixaId])
GO
ALTER TABLE [dbo].[Sangria] CHECK CONSTRAINT [FK_Sangria_Caixa]
GO
ALTER TABLE [dbo].[Sangria]  WITH CHECK ADD  CONSTRAINT [FK_Sangria_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Sangria] CHECK CONSTRAINT [FK_Sangria_Usuario]
GO
ALTER TABLE [dbo].[SubgrupoProdutos]  WITH CHECK ADD  CONSTRAINT [FK_Subcategoria_GrupoProdutos] FOREIGN KEY([GrupoProdutosId])
REFERENCES [dbo].[GrupoProdutos] ([GrupoProdutosId])
GO
ALTER TABLE [dbo].[SubgrupoProdutos] CHECK CONSTRAINT [FK_Subcategoria_GrupoProdutos]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_Cidades] FOREIGN KEY([CidadeId])
REFERENCES [dbo].[Cidades] ([CidadeId])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_Cidades]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_Fornecedor] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedor] ([FornecedorId])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_Fornecedor]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_Funcionarios] FOREIGN KEY([FuncionarioId])
REFERENCES [dbo].[Funcionarios] ([FuncionarioId])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_Funcionarios]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_StatusOperacoes] FOREIGN KEY([StatusId])
REFERENCES [dbo].[StatusOperacoes] ([StatusId])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_StatusOperacoes]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_VendasCaixa_Caixa] FOREIGN KEY([CaixaId])
REFERENCES [dbo].[Caixa] ([CaixaId])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_VendasCaixa_Caixa]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_VendasCaixa_Clientes] FOREIGN KEY([ClientesId])
REFERENCES [dbo].[Clientes] ([ClientesId])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_VendasCaixa_Clientes]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_VendasCaixa_FormaPagamento] FOREIGN KEY([FormaPagamentoId])
REFERENCES [dbo].[FormaPagamento] ([FormaPagamentoId])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_VendasCaixa_FormaPagamento]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_VendasCaixa_Produtos] FOREIGN KEY([ProdutosId])
REFERENCES [dbo].[Produtos] ([ProdutosId])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_VendasCaixa_Produtos]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_VendasCaixa_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_VendasCaixa_Usuario]
GO
ALTER TABLE [dbo].[VendasItens]  WITH CHECK ADD  CONSTRAINT [FK_VendasItens_Produtos] FOREIGN KEY([ProdutosId])
REFERENCES [dbo].[Produtos] ([ProdutosId])
GO
ALTER TABLE [dbo].[VendasItens] CHECK CONSTRAINT [FK_VendasItens_Produtos]
GO
ALTER TABLE [dbo].[VendasItens]  WITH CHECK ADD  CONSTRAINT [FK_VendasItens_Vendas] FOREIGN KEY([VendasId])
REFERENCES [dbo].[Vendas] ([VendasId])
GO
ALTER TABLE [dbo].[VendasItens] CHECK CONSTRAINT [FK_VendasItens_Vendas]
GO
USE [master]
GO
ALTER DATABASE [PDV] SET  READ_WRITE 
GO