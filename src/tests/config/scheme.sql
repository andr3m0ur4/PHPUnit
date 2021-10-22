-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 172.17.0.1    Database: ligamagic_principal
-- ------------------------------------------------------
-- Server version	5.7.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_ecom_api_depara_card`
--

DROP TABLE IF EXISTS `_ecom_api_depara_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_api_depara_card` (
  `ID_DeParaCard` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `sCard` varchar(150) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_DeParaCard`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `sCard` (`sCard`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_api_depara_edicao`
--

DROP TABLE IF EXISTS `_ecom_api_depara_edicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_api_depara_edicao` (
  `ID_DeParaEdicao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `sSigla` varchar(15) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_DeParaEdicao`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `sSigla` (`sSigla`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_api_log`
--

DROP TABLE IF EXISTS `_ecom_api_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_api_log` (
  `IDE_UserLoja` int(9) NOT NULL,
  `sAPI` varchar(20) NOT NULL,
  `dtChamada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  KEY `IDE_UserLoja` (`IDE_UserLoja`,`sAPI`,`dtChamada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_assinatura_log`
--

DROP TABLE IF EXISTS `_ecom_assinatura_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_assinatura_log` (
  `ID_Log` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_NotaFiscal` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtPagamento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dValor` decimal(10,2) NOT NULL,
  `sDescricao` text NOT NULL,
  `iTipoPagamento` smallint(1) NOT NULL COMMENT '1 = Assinatura Loja Virtual / 2 = Plugins',
  PRIMARY KEY (`ID_Log`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `iTipoPagamento` (`iTipoPagamento`),
  KEY `IDE_NotaFiscal` (`IDE_NotaFiscal`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_autocomplete`
--

DROP TABLE IF EXISTS `_ecom_autocomplete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_autocomplete` (
  `sCardGame` varchar(30) NOT NULL,
  `iFlagAtualizar` smallint(1) NOT NULL DEFAULT '1',
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `sCardGame` (`sCardGame`),
  KEY `iFlagAtualizar` (`iFlagAtualizar`),
  KEY `dtUltimaAtualizacao` (`dtUltimaAtualizacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_agrupar`
--

DROP TABLE IF EXISTS `_ecom_cad_agrupar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_agrupar` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTipo` smallint(2) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDE_User_3` (`IDE_User`,`iTipo`,`IDE_Edicao`),
  KEY `iTipo` (`iTipo`),
  KEY `IDE_Edicao` (`IDE_Edicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_agrupar_produtos`
--

DROP TABLE IF EXISTS `_ecom_cad_agrupar_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_agrupar_produtos` (
  `IDE_Agrupar` int(9) NOT NULL,
  `IDE_ecom_Produto` int(9) NOT NULL,
  UNIQUE KEY `IDE_Agrupar` (`IDE_Agrupar`,`IDE_ecom_Produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_banners`
--

DROP TABLE IF EXISTS `_ecom_cad_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_banners` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sTitulo` varchar(80) NOT NULL,
  `sURL` varchar(400) NOT NULL,
  `iPosicao` smallint(1) NOT NULL,
  `iTipoAbertura` smallint(1) NOT NULL,
  `sArquivo` varchar(100) NOT NULL,
  `iStatus` smallint(1) NOT NULL COMMENT '0 = Deletado / 1 = Ativo',
  `iTipoBanner` smallint(1) NOT NULL DEFAULT '1',
  `iHome` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_User_2` (`IDE_User`,`iStatus`,`iTipoBanner`,`iHome`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_calendario`
--

DROP TABLE IF EXISTS `_ecom_cad_calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_calendario` (
  `ID_Data` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `dtData` date NOT NULL DEFAULT '0000-00-00',
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtCadastrou` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Data`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `iStatus` (`iStatus`),
  KEY `dtData` (`dtData`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_categorias`
--

DROP TABLE IF EXISTS `_ecom_cad_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_categorias` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_sys_Categoria` smallint(3) NOT NULL,
  `sNome` varchar(100) NOT NULL,
  `ID_CategoriaPai` int(9) NOT NULL,
  `iPosicao` int(5) NOT NULL,
  `sNCM` varchar(10) NOT NULL,
  `sICMSOrigem` varchar(1) NOT NULL,
  `sICMSST` varchar(3) NOT NULL,
  `sPISST` varchar(2) NOT NULL,
  `sCOFINSST` varchar(2) NOT NULL,
  `sLinkFixo` varchar(250) NOT NULL,
  `iExibeCartasAvulsas` smallint(1) NOT NULL COMMENT '0 = Produto / 1 = Magic / 2 = Todas edições de Magic / 3 = Pokemon / 4 = Todas edições de Pokemon / 5 = Yugioh / 6 = Todas edições de Yugioh',
  `status` smallint(1) NOT NULL COMMENT '0 = Inativa / 1 = Ativa',
  `dDesconto` decimal(4,2) NOT NULL,
  `dtDescItemInicio` date NOT NULL,
  `dtDescItemFim` date NOT NULL,
  `iSomenteFuncionario` smallint(1) NOT NULL DEFAULT '0',
  `iIntegraPriceQuest` int(1) NOT NULL DEFAULT '0',
  `iExibeAtualizacaoEstoque` smallint(1) NOT NULL DEFAULT '0',
  `iExibeNovaAba` smallint(1) NOT NULL DEFAULT '0',
  `iFlagBuylist` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`),
  KEY `ID_CategoriaPai` (`ID_CategoriaPai`),
  KEY `status` (`status`),
  KEY `IDE_sys_Categoria` (`IDE_sys_Categoria`),
  KEY `iSomenteFuncionario` (`iSomenteFuncionario`),
  KEY `joinindex_1` (`id`,`IDE_User`,`status`),
  KEY `joinindex_2` (`id`,`IDE_User`,`iSomenteFuncionario`) USING BTREE,
  KEY `dtDescItemFim` (`dtDescItemFim`),
  KEY `iFlagBuylist` (`iFlagBuylist`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_conteudo_email`
--

DROP TABLE IF EXISTS `_ecom_cad_conteudo_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_conteudo_email` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `cTipo` varchar(80) NOT NULL,
  `sTitulo` text NOT NULL,
  `sConteudo` text NOT NULL,
  `sEmailAviso` varchar(255) NOT NULL,
  `status` smallint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `idx_user_tipo_status` (`IDE_User`,`cTipo`,`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_creditos`
--

DROP TABLE IF EXISTS `_ecom_cad_creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_creditos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserCliente` int(9) NOT NULL,
  `IDE_UserAdicionou` int(9) NOT NULL,
  `dValor` decimal(10,2) NOT NULL,
  `dValorConsumido` decimal(10,2) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtExpira` date NOT NULL DEFAULT '0000-00-00',
  `iCreditoExpirado` smallint(1) NOT NULL,
  `iCreditoCancelado` smallint(1) NOT NULL,
  `IDE_Venda` int(9) NOT NULL,
  `iAnotado` smallint(1) NOT NULL,
  `sDescricao` text NOT NULL,
  `sIPCadastro` varchar(15) NOT NULL,
  `IDE_OrderBuylist` int(9) NOT NULL DEFAULT '0',
  `IDE_VendaConsumida` int(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `IDE_UserCliente` (`IDE_UserCliente`),
  KEY `dtExpira` (`dtExpira`),
  KEY `IDE_Venda` (`IDE_Venda`),
  KEY `IDE_UserAdicionou` (`IDE_UserAdicionou`),
  KEY `IDE_OrderBuylist` (`IDE_OrderBuylist`),
  KEY `IDE_VendaConsumida` (`IDE_VendaConsumida`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_creditos_cliente`
--

DROP TABLE IF EXISTS `_ecom_cad_creditos_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_creditos_cliente` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserCliente` int(9) NOT NULL,
  `dValorTotal` decimal(10,2) NOT NULL,
  `dtUltimaAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`IDE_UserCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_creditos_config`
--

DROP TABLE IF EXISTS `_ecom_cad_creditos_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_creditos_config` (
  `IDE_UserLoja` int(9) NOT NULL,
  `dValorMinimo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dPorcentagem` decimal(6,2) NOT NULL DEFAULT '0.00',
  `iDiasValidade` int(3) NOT NULL,
  `sIPCadastro` varchar(15) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iFormaPag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Todas Formas Pag / 1: Formas Pag Definida',
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_creditos_config_formas_pag`
--

DROP TABLE IF EXISTS `_ecom_cad_creditos_config_formas_pag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_creditos_config_formas_pag` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_FormaPag` int(9) NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`IDE_FormaPag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_creditos_config_status`
--

DROP TABLE IF EXISTS `_ecom_cad_creditos_config_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_creditos_config_status` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_Status` int(9) NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`IDE_Status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_cupons`
--

DROP TABLE IF EXISTS `_ecom_cad_cupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_cupons` (
  `ID_Cupom` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserCadastrou` int(9) NOT NULL,
  `sNome` varchar(30) NOT NULL,
  `dValorMinimo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dDesconto` decimal(4,2) NOT NULL,
  `dtValidadeInicio` date NOT NULL DEFAULT '0000-00-00',
  `dtValidadeTermino` date NOT NULL DEFAULT '0000-00-00',
  `iStatus` smallint(1) NOT NULL COMMENT '0 = Removido / 1 = Ativo / 2 = Expirado',
  `iLimiteUso` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:Sem limitação // 1:Limite por cliente // 2: Limite Geral',
  `iLimitePorCategoria` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Sem limite / 1 = Limite por Categoria',
  `iValorFixo` decimal(9,2) NOT NULL,
  `sCampanha` varchar(30) NOT NULL,
  `iQtdCupons` int(4) NOT NULL DEFAULT '0',
  `iQtdLimiteUso` int(4) NOT NULL,
  PRIMARY KEY (`ID_Cupom`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `IDE_UserCadastrou` (`IDE_UserCadastrou`),
  KEY `iStatus` (`iStatus`),
  KEY `iLimiteUso` (`iLimiteUso`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_cupons_categorias`
--

DROP TABLE IF EXISTS `_ecom_cad_cupons_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_cupons_categorias` (
  `IDE_Cupom` int(9) NOT NULL,
  `IDE_Categoria` int(9) NOT NULL,
  UNIQUE KEY `IDE_Cupom` (`IDE_Cupom`,`IDE_Categoria`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_cupons_tcg`
--

DROP TABLE IF EXISTS `_ecom_cad_cupons_tcg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_cupons_tcg` (
  `IDE_Cupom` int(9) NOT NULL,
  `IDE_TCG` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL COMMENT 'Edição ZERO = "Todas Edições"',
  UNIQUE KEY `idx_IDE_Cupom_TCG` (`IDE_Cupom`,`IDE_TCG`,`IDE_Edicao`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_descontos`
--

DROP TABLE IF EXISTS `_ecom_cad_descontos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_descontos` (
  `iTipo` int(2) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `dDesconto` decimal(4,2) NOT NULL,
  `dtDescItemInicio` date NOT NULL,
  `dtDescItemFim` date NOT NULL,
  `sIP` varchar(45) NOT NULL,
  UNIQUE KEY `joinindex_1` (`iTipo`,`IDE_User`,`IDE_Edicao`) USING BTREE,
  KEY `IDE_User` (`IDE_User`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `dDesconto` (`dDesconto`),
  KEY `dtDescItemInicio` (`dtDescItemInicio`),
  KEY `dtDescItemFim` (`dtDescItemFim`),
  KEY `joinindex_2` (`iTipo`,`IDE_User`,`IDE_Edicao`,`dDesconto`,`dtDescItemInicio`,`dtDescItemFim`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_descontos_edicoes`
--

DROP TABLE IF EXISTS `_ecom_cad_descontos_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_descontos_edicoes` (
  `IDE_RegraDesconto` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  UNIQUE KEY `idx_regra_unica` (`IDE_RegraDesconto`,`IDE_Edicao`),
  KEY `IDE_Edicao` (`IDE_Edicao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_descontos_historico`
--

DROP TABLE IF EXISTS `_ecom_cad_descontos_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_descontos_historico` (
  `iTipo` int(2) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `dDesconto` decimal(4,2) NOT NULL,
  `dtDescItemInicio` date NOT NULL,
  `dtDescItemFim` date NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  KEY `IDE_User` (`IDE_User`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iTipo` (`iTipo`),
  KEY `dDesconto` (`dDesconto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_descontos_regras`
--

DROP TABLE IF EXISTS `_ecom_cad_descontos_regras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_descontos_regras` (
  `ID_RegraDesconto` int(11) NOT NULL AUTO_INCREMENT,
  `sNomeRegra` varchar(30) NOT NULL,
  `IDE_UserLoja` int(9) NOT NULL,
  `iTCG` smallint(2) NOT NULL,
  `dDesconto` decimal(10,2) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '0',
  `dtDataCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iAgendaDesconto` tinyint(1) NOT NULL DEFAULT '0',
  `dtDataAplicacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtDataRemocao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iItensEncontrados` int(9) NOT NULL DEFAULT '0',
  `iFilaStatus` tinyint(1) NOT NULL DEFAULT '1',
  `sExtras` varchar(50) NOT NULL,
  `sRaridade` varchar(50) NOT NULL,
  `sIdioma` varchar(50) NOT NULL,
  `sQualidade` varchar(50) NOT NULL,
  `iVariaQuant` tinyint(1) NOT NULL,
  `iQuantidade` int(4) NOT NULL,
  `iVariaPreco` tinyint(1) NOT NULL,
  `dPrecoValor` decimal(10,2) NOT NULL,
  `iSemDescontoAtivo` tinyint(4) NOT NULL DEFAULT '0',
  `dtDescItemInicio` date NOT NULL DEFAULT '0000-00-00',
  `dtDescItemFim` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`ID_RegraDesconto`),
  KEY `iTCG` (`iTCG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_email_pagamento`
--

DROP TABLE IF EXISTS `_ecom_cad_email_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_email_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Cad_Email` int(11) NOT NULL COMMENT 'Foreign Key da tabela _ecom_cad_email',
  `iDiasAguarda` smallint(6) NOT NULL COMMENT 'Quantidade de dias aguardando pedido ainda não pago',
  `iDiasCancela` smallint(6) NOT NULL COMMENT 'Quantidade de dias para esperar antes de cancelar um pedido',
  `iFlagCancela` tinyint(4) NOT NULL COMMENT 'Cancelar ou não após iDias',
  `IDE_StatusCancela` int(9) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL COMMENT '1-Ativo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_etiqueta`
--

DROP TABLE IF EXISTS `_ecom_cad_etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_etiqueta` (
  `IDE_User` int(9) NOT NULL,
  `sNome` varchar(100) NOT NULL,
  `sRua` varchar(100) NOT NULL,
  `sNumero` varchar(50) NOT NULL,
  `sBairro` varchar(100) NOT NULL,
  `sCidade` varchar(100) NOT NULL,
  `sEstado` varchar(2) NOT NULL,
  `sCEP` varchar(6) NOT NULL,
  `sCEP2` varchar(3) NOT NULL,
  `sCPF` varchar(50) NOT NULL,
  `dValorMinimo` decimal(10,2) NOT NULL,
  `sDescricaoCards` varchar(100) NOT NULL,
  `sDescricaoProduto` varchar(100) NOT NULL,
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_forma_envio`
--

DROP TABLE IF EXISTS `_ecom_cad_forma_envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_forma_envio` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTipoEnvio` int(3) NOT NULL,
  `sNomeEnvio` varchar(50) NOT NULL,
  `sDescricao` text NOT NULL,
  `iPesoMin` int(6) NOT NULL,
  `iPesoMax` int(6) NOT NULL,
  `dPrecoFixo` decimal(10,2) NOT NULL,
  `iConDescPag` tinyint(4) NOT NULL COMMENT '0 - Não considera desconto na forma de envio; 1 - Considerar desconto na forma de envio',
  `iIntervPreco` tinyint(4) NOT NULL COMMENT '0 - Qualquer Valor; 1 - Intervalo de Preços',
  `dPrecoMin` decimal(10,2) NOT NULL COMMENT 'Preço Minimo no intervalo',
  `dPrecoMax` decimal(10,2) NOT NULL COMMENT 'Preço Máximo para o intervalo',
  `dAddSeguro` decimal(4,2) NOT NULL,
  `sCodigoEmpresaECT` varchar(255) NOT NULL,
  `sSenhaECT` varchar(255) NOT NULL,
  `status` smallint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo',
  `iTipoTaxaExtra` smallint(1) NOT NULL DEFAULT '0',
  `dTaxaExtra` decimal(10,2) NOT NULL,
  `sPathChancela` varchar(100) NOT NULL,
  `IDE_EstoquePosicao` int(9) NOT NULL,
  `iEspecificoRegiao` smallint(6) NOT NULL DEFAULT '0',
  `iRequisitoData` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 - Não requisitar preenchimento da data; 1 - Requisitar preenchimento da data',
  `iPrazoRetirar` smallint(2) NOT NULL,
  `iCancelarPedido` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 - Não Cancelar Pedido Automaticamente; 1 - Cancelar Pedido Automaticamente',
  `iPrazoCancelar` smallint(2) NOT NULL,
  `iInformarPrazoEntrega` smallint(1) NOT NULL DEFAULT '0' COMMENT '1 = Informa | 0 = Não Informa',
  `iSomarDiasPrazoEntrega` smallint(2) NOT NULL DEFAULT '0',
  `iCREnviaProduto` smallint(1) NOT NULL DEFAULT '0',
  `sEmailLoggi` varchar(30) NOT NULL,
  `sKeyLoggi` varchar(50) NOT NULL,
  `iShopID` int(8) NOT NULL,
  `iResponsavelFrete` smallint(2) NOT NULL COMMENT '0 => Por conta do emitente; 1 => Por conta do destinatário; 2 => Por conta de terceiros; 9 => Sem frete',
  `iLimiteTipo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Algum dos tipos de itens / 2:Somente os itens',
  `iEspecificoMagic` tinyint(1) NOT NULL DEFAULT '0',
  `iEspecificoBattleScenes` tinyint(1) NOT NULL DEFAULT '0',
  `iEspecificoPokemon` tinyint(1) NOT NULL DEFAULT '0',
  `iEspecificoStarWars` tinyint(1) NOT NULL DEFAULT '0',
  `iEspecificoVanguard` tinyint(1) NOT NULL DEFAULT '0',
  `iEspecificoYugioh` tinyint(1) NOT NULL DEFAULT '0',
  `iEspecificoDragonBall` tinyint(1) NOT NULL DEFAULT '0',
  `iEspecificoProduto` tinyint(1) NOT NULL DEFAULT '0',
  `sCodigoServico` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`),
  KEY `status` (`status`),
  KEY `iPesoMin` (`iPesoMin`),
  KEY `iPesoMax` (`iPesoMax`),
  KEY `IDE_EstoquePosicao` (`IDE_EstoquePosicao`),
  KEY `iTipoEnvio_2` (`iTipoEnvio`,`iCREnviaProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_forma_envio_regiao`
--

DROP TABLE IF EXISTS `_ecom_cad_forma_envio_regiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_forma_envio_regiao` (
  `ID_Regiao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_FormaEnvio` int(9) NOT NULL,
  `IDE_Estado` int(9) NOT NULL,
  `IDE_Cidade` int(9) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Regiao`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_FormaEnvio` (`IDE_FormaEnvio`),
  KEY `IDE_Estado` (`IDE_Estado`,`IDE_Cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_forma_envio_taxa_extra`
--

DROP TABLE IF EXISTS `_ecom_cad_forma_envio_taxa_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_forma_envio_taxa_extra` (
  `ID_TaxaExtra` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_FormaEnvio` int(9) NOT NULL,
  `IDE_Estado` int(9) NOT NULL,
  `IDE_Cidade` int(9) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_TaxaExtra`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_FormaEnvio` (`IDE_FormaEnvio`),
  KEY `IDE_Estado` (`IDE_Estado`,`IDE_Cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_forma_pagamento`
--

DROP TABLE IF EXISTS `_ecom_cad_forma_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_forma_pagamento` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTipoPag` smallint(1) NOT NULL,
  `sNomePag` varchar(150) NOT NULL,
  `iApenasFunc` smallint(1) NOT NULL,
  `iDesconto` smallint(2) NOT NULL,
  `iPrazoPagamento` int(2) NOT NULL DEFAULT '3' COMMENT 'em dias',
  `sDescricao` text NOT NULL,
  `sPVToken` varchar(150) NOT NULL,
  `sPVSenha` varchar(150) NOT NULL,
  `sPVUsuario` varchar(150) NOT NULL,
  `iIntegracaoAutomatica` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Não / 1 = Sim',
  `sBanco` varchar(50) NOT NULL,
  `sBancoTipoConta` varchar(50) NOT NULL,
  `sBancoAgencia` varchar(25) NOT NULL,
  `sBancoConta` varchar(25) NOT NULL,
  `sBancoTitular` varchar(50) NOT NULL,
  `sBancoOperacao` varchar(50) NOT NULL,
  `sBancoCPF` varchar(16) NOT NULL,
  `sBancoCNPJ` varchar(16) NOT NULL,
  `dTaxaConv` decimal(10,2) NOT NULL,
  `dValorMinConv` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` smallint(1) NOT NULL COMMENT '0 = Deletado / 1 = Ativo',
  `sEmailComprovPag` varchar(70) NOT NULL,
  `iExibirPreOrder` smallint(1) NOT NULL DEFAULT '0' COMMENT '1 = Não exibir | 0 = Exibir',
  `iLimiteTipo` tinyint(1) NOT NULL COMMENT '1:Algum dos tipos de itens / 2:Somente os itens',
  `iEspecificoMagic` smallint(1) NOT NULL DEFAULT '0',
  `iEspecificoBattleScenes` smallint(1) NOT NULL DEFAULT '0',
  `iEspecificoPokemon` smallint(1) NOT NULL DEFAULT '0',
  `iEspecificoStarWars` smallint(1) NOT NULL DEFAULT '0',
  `iEspecificoVanguard` smallint(1) NOT NULL DEFAULT '0',
  `iEspecificoYugioh` smallint(1) NOT NULL DEFAULT '0',
  `iEspecificoDragonBall` smallint(1) NOT NULL DEFAULT '0',
  `iEspecificoProduto` smallint(1) NOT NULL DEFAULT '0',
  `iEspecificoIngresso` smallint(1) NOT NULL DEFAULT '0',
  `iIntervPreco` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 - Qualquer Valor; 1 - Intervalo de Preços',
  `dPrecoMin` decimal(10,2) NOT NULL COMMENT 'Preço Minimo no intervalo',
  `dPrecoMax` decimal(10,2) NOT NULL COMMENT 'Preço Máximo no intervalo',
  `iConDescPag` smallint(1) NOT NULL COMMENT '0 - Não considera desconto na forma de envio; 1 - Considerar desconto na forma de envio',
  `sLabelTaxaConv` varchar(50) NOT NULL DEFAULT 'Taxa de ConveniÃªncia',
  `iTipoTaxaConv` tinyint(1) NOT NULL COMMENT '1 = Porcentagem / 2 = Preço Fixo',
  `iAtribuirDesconto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '(0 = Não / 1 = Sim / 2 = Somente sobre o valor excedente)',
  `sBancoPIX` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `iTipoPag` (`iTipoPag`),
  KEY `IDE_User_2` (`IDE_User`,`iTipoPag`),
  KEY `iEspecificoMagic` (`iEspecificoMagic`),
  KEY `iEspecificoBattleScenes` (`iEspecificoBattleScenes`),
  KEY `iEspecificoPokemon` (`iEspecificoPokemon`),
  KEY `iEspecificoStarWars` (`iEspecificoStarWars`),
  KEY `iEspecificoVanguard` (`iEspecificoVanguard`),
  KEY `iEspecificoYugioh` (`iEspecificoYugioh`),
  KEY `iEspecificoProduto` (`iEspecificoProduto`),
  KEY `iEspecificoIngresso` (`iEspecificoIngresso`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_forma_pagamento_ligasegura`
--

DROP TABLE IF EXISTS `_ecom_cad_forma_pagamento_ligasegura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_forma_pagamento_ligasegura` (
  `IDE_FormaPag` int(9) NOT NULL,
  `iCartaoCredito` tinyint(1) NOT NULL DEFAULT '0',
  `iCreditoLigaSegura` tinyint(1) NOT NULL DEFAULT '0',
  `iBancoBrasil` tinyint(1) NOT NULL DEFAULT '0',
  `iBradesco` tinyint(1) NOT NULL DEFAULT '0',
  `iCaixaEconomica` tinyint(1) NOT NULL DEFAULT '0',
  `iItau` tinyint(1) NOT NULL DEFAULT '0',
  `iSantander` tinyint(1) NOT NULL DEFAULT '0',
  `iInter` tinyint(1) NOT NULL DEFAULT '0',
  `iLSNotifAprov` tinyint(1) NOT NULL DEFAULT '0',
  `iLSNotifCancel` tinyint(1) NOT NULL DEFAULT '0',
  `iLSNotifSaldoDisp` tinyint(1) NOT NULL DEFAULT '0',
  `dtUltimaAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iBoleto` tinyint(1) NOT NULL DEFAULT '0',
  `iPIX` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_FormaPag` (`IDE_FormaPag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_funcionarios`
--

DROP TABLE IF EXISTS `_ecom_cad_funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_funcionarios` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Loja` int(9) NOT NULL,
  `IDE_UserFuncionario` int(9) NOT NULL,
  `iNivelAcesso` smallint(1) NOT NULL,
  `dDataAdicionado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` smallint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo / 2 = Aguardando Aceite',
  PRIMARY KEY (`id`),
  KEY `IDE_Loja` (`IDE_Loja`),
  KEY `IDE_UserFuncionario` (`IDE_UserFuncionario`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_home_destaque`
--

DROP TABLE IF EXISTS `_ecom_cad_home_destaque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_home_destaque` (
  `IDE_Loja` int(9) NOT NULL,
  `iOrdem` int(9) NOT NULL AUTO_INCREMENT,
  `iLancamento` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Não; 1 = Sim',
  `iHome` tinyint(2) NOT NULL DEFAULT '0',
  `iTipo` int(2) NOT NULL,
  `iMarcado` int(1) NOT NULL COMMENT '0 = Aleatorio / 1 = Marcado',
  `iOpcao` int(9) NOT NULL COMMENT '> 0 = Categoria de _ecom_cad_categorias',
  `sOpcaoCategoria` varchar(50) NOT NULL DEFAULT '',
  `sTitulo` varchar(60) NOT NULL,
  `sFiltros` varchar(40) DEFAULT '',
  `iOrderBy` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iOrdem`),
  KEY `iLancamento` (`iLancamento`),
  KEY `IDE_Loja` (`IDE_Loja`,`iLancamento`),
  KEY `iHome` (`iHome`),
  KEY `iOrderBy` (`iOrderBy`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_home_itens`
--

DROP TABLE IF EXISTS `_ecom_cad_home_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_home_itens` (
  `IDE_Loja` int(9) NOT NULL,
  `sHeaderA` varchar(60) NOT NULL,
  `iOpcaoA` smallint(2) NOT NULL,
  `sHeaderB` varchar(60) NOT NULL,
  `iOpcaoB` smallint(2) NOT NULL,
  `sHeaderC` varchar(60) NOT NULL,
  `iOpcaoC` smallint(2) NOT NULL,
  UNIQUE KEY `IDE_Loja` (`IDE_Loja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_home_noticia`
--

DROP TABLE IF EXISTS `_ecom_cad_home_noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_home_noticia` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iHome` tinyint(2) NOT NULL DEFAULT '0',
  `iTipoAbertura` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Mesma janela / 1 = Nova janela',
  `sUrl` varchar(150) NOT NULL,
  `sTitulo` varchar(150) NOT NULL,
  `sMensagem` varchar(150) NOT NULL,
  `sImagem` varchar(30) NOT NULL,
  `status` smallint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo',
  `tipo_noticia` smallint(2) NOT NULL DEFAULT '1',
  `iOrdem` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`),
  KEY `status` (`status`),
  KEY `iHome` (`iHome`),
  KEY `iOrdem` (`iOrdem`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_home_noticia_secundaria`
--

DROP TABLE IF EXISTS `_ecom_cad_home_noticia_secundaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_home_noticia_secundaria` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iHome` tinyint(2) NOT NULL DEFAULT '0',
  `sUrl` varchar(150) NOT NULL,
  `sTitulo` varchar(150) NOT NULL,
  `sMensagem` varchar(150) NOT NULL,
  `sImagem` varchar(150) NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1',
  `tipo_noticia` varchar(50) NOT NULL,
  `iOrdem` int(5) NOT NULL DEFAULT '0',
  `iTipoAbertura` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`),
  KEY `status` (`status`),
  KEY `iOrdem` (`iOrdem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_ingressos`
--

DROP TABLE IF EXISTS `_ecom_cad_ingressos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_ingressos` (
  `ID_Ingresso` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_ecom_Categoria` int(9) NOT NULL,
  `sImagem` varchar(70) NOT NULL,
  `iTCG` int(2) NOT NULL,
  `sNomeIngresso` varchar(100) NOT NULL,
  `sDescricao` text NOT NULL,
  `sNCM` varchar(10) NOT NULL,
  `sICMSOrigem` varchar(1) NOT NULL,
  `sICMSST` varchar(3) NOT NULL,
  `sPISST` varchar(2) NOT NULL,
  `sCOFINSST` varchar(2) NOT NULL,
  `dtEvento` date NOT NULL,
  `hrEvento` time NOT NULL,
  `iPreencherNome` smallint(1) NOT NULL DEFAULT '0',
  `iPreencherDCI` smallint(1) NOT NULL DEFAULT '0',
  `iPreencherPopID` smallint(1) NOT NULL DEFAULT '0',
  `iPreencherDataNascimento` smallint(1) NOT NULL DEFAULT '0',
  `iTipoIngresso` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Individual / 2 = Agrupamento',
  `iNivelAgrupamento` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Sem Agrupamento / 1 = Cabecalho / 2 = Item',
  `IDE_IngressoPai` int(9) NOT NULL DEFAULT '0',
  `sNomeProdPai` varchar(70) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iQuant` int(7) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iDestaque` smallint(1) NOT NULL DEFAULT '0',
  `dDescontoItem` decimal(4,2) NOT NULL,
  `dtDescItemInicio` date NOT NULL DEFAULT '0000-00-00',
  `dtDescItemFim` date NOT NULL DEFAULT '0000-00-00',
  `ultima_atualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtInicioVenda` datetime NOT NULL,
  `dtFimVenda` datetime NOT NULL,
  `IDE_FormatoDecklist` int(9) NOT NULL DEFAULT '0',
  `iPreencherCossy` smallint(1) NOT NULL DEFAULT '0',
  `iPreencherWizardsAccount` smallint(1) NOT NULL DEFAULT '0',
  `IDE_Event` int(9) NOT NULL,
  PRIMARY KEY (`ID_Ingresso`),
  KEY `IDE_ecom_Categoria` (`IDE_ecom_Categoria`),
  KEY `sNomeIngresso` (`sNomeIngresso`),
  KEY `dtEvento` (`dtEvento`),
  KEY `iQuant` (`iQuant`),
  KEY `dPreco` (`dPreco`),
  KEY `IDE_IngressoPai` (`IDE_IngressoPai`),
  KEY `iTCG` (`iTCG`),
  KEY `iDestaque` (`iDestaque`),
  KEY `dDescontoItem` (`dDescontoItem`),
  KEY `dtDescItemInicio` (`dtDescItemInicio`),
  KEY `dtDescItemFim` (`dtDescItemFim`),
  KEY `iTipoIngresso` (`iTipoIngresso`),
  KEY `iNivelAgrupamento` (`iNivelAgrupamento`),
  KEY `whereindex_1` (`IDE_UserLoja`,`iStatus`) USING BTREE,
  KEY `whereindex_2` (`iStatus`,`iTipoIngresso`,`iNivelAgrupamento`,`dtDescItemFim`) USING BTREE,
  KEY `whereindex_3` (`iStatus`,`iTipoIngresso`,`iNivelAgrupamento`,`dtDescItemFim`,`dtDescItemInicio`,`IDE_IngressoPai`,`dDescontoItem`) USING BTREE,
  KEY `joinindex_2` (`ID_Ingresso`,`dDescontoItem`) USING BTREE,
  KEY `ultima_atualizacao` (`ultima_atualizacao`) USING BTREE,
  KEY `idx_associa` (`IDE_UserLoja`,`ID_Ingresso`,`iQuant`,`iStatus`,`IDE_IngressoPai`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_integration`
--

DROP TABLE IF EXISTS `_ecom_cad_integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_integration` (
  `IDE_User` int(9) NOT NULL,
  `sFacebookPixel` varchar(25) NOT NULL,
  `sZopim` varchar(255) NOT NULL,
  `sRDStation` varchar(255) NOT NULL,
  `sGoogleSrc` varchar(50) NOT NULL,
  `sGoogleMaps` text NOT NULL,
  PRIMARY KEY (`IDE_User`),
  KEY `sZopim` (`sZopim`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_layout`
--

DROP TABLE IF EXISTS `_ecom_cad_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_layout` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sHeaderImage` varchar(22) NOT NULL,
  `sHTMLMenuBG` varchar(6) NOT NULL,
  `sFooterImage` varchar(22) NOT NULL,
  `iFooterImageChange` tinyint(1) NOT NULL COMMENT '0 = Exibe imagem default / 1 = Ja trocou',
  `iExibeDireitos` tinyint(1) NOT NULL COMMENT '0 = Não exibe / 1 = Exibe',
  `iCorLinks` tinyint(1) NOT NULL COMMENT '0 = Branco / 1 = Preto',
  `iCSSName` int(10) NOT NULL,
  `sHTMLBodyBgColor` varchar(6) NOT NULL,
  `sHTMLBodyBgImage` varchar(300) NOT NULL,
  `iBodyBgImgRepeat` tinyint(4) NOT NULL COMMENT '0 - Nenhuma Imagem Selecionada; 1 - Repeat X; 2 - Repeat Y ; 3 - Repeat X e Y',
  `sHTMLSubmenuBG` varchar(6) NOT NULL,
  `sHTMLFonteMenu` varchar(6) NOT NULL,
  `sHTMLFonteSubmenu` varchar(6) NOT NULL,
  `sHTMLHoverFonte` varchar(6) NOT NULL,
  `sHTMLHoverBG` varchar(6) NOT NULL,
  `IDE_PostErro403` int(9) NOT NULL,
  `imgIndicadorNormal` varchar(25) NOT NULL,
  `imgIndicadorHover` varchar(25) NOT NULL,
  `imgBusca` varchar(25) NOT NULL,
  `sHTMLDesignEmail` text NOT NULL,
  `sTitlebar` varchar(150) NOT NULL,
  `sHTMLComprarBgColor` varchar(6) NOT NULL,
  `sHTMLComprarBorder` varchar(6) NOT NULL,
  `sHTMLComprarText` varchar(6) NOT NULL,
  `sDescription` varchar(250) NOT NULL,
  `sKeyWords` varchar(250) NOT NULL,
  `sPathFacebook` varchar(75) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_layout_dashboard`
--

DROP TABLE IF EXISTS `_ecom_cad_layout_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_layout_dashboard` (
  `IDE_UserLoja` int(9) NOT NULL,
  `sAdmHeadBG` varchar(6) NOT NULL,
  `sAdmHeadFont` varchar(6) NOT NULL,
  `sAdmMenuBG` varchar(6) NOT NULL,
  `sAdmMenuLine` varchar(6) NOT NULL,
  `sAdmMenuFont` varchar(6) NOT NULL,
  `sAdmMenuFontHover` varchar(6) NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_layout_responsivo`
--

DROP TABLE IF EXISTS `_ecom_cad_layout_responsivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_layout_responsivo` (
  `IDE_UserLoja` int(9) NOT NULL,
  `iTipoLayout` tinyint(1) NOT NULL DEFAULT '1',
  `iStatusLayout` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `idx_tpo_sts` (`iTipoLayout`,`iStatusLayout`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_leiloes`
--

DROP TABLE IF EXISTS `_ecom_cad_leiloes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_leiloes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iTipo` smallint(1) NOT NULL COMMENT '1 = Magic ',
  `IDE_Leilao` int(9) NOT NULL,
  `iQuantidade` int(6) NOT NULL,
  `IDE_Ecom_Carta` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`),
  KEY `IDE_UserLogado` (`IDE_UserLogado`),
  KEY `iTipo` (`iTipo`),
  KEY `IDE_Leilao` (`IDE_Leilao`),
  KEY `IDE_Ecom_Carta` (`IDE_Ecom_Carta`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `IDE_Edicao` (`IDE_Edicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_leiloes_config`
--

DROP TABLE IF EXISTS `_ecom_cad_leiloes_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_leiloes_config` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iUnidades` int(2) NOT NULL,
  `iDuracaoDias` int(2) NOT NULL,
  `iRecadastrar` smallint(1) NOT NULL,
  `iMinReferencias` int(4) NOT NULL,
  `sDescricao` text NOT NULL,
  `iPrecoInicial` smallint(1) NOT NULL,
  `iIncremento` int(4) NOT NULL DEFAULT '1',
  `sPrecoInicialTipo` char(1) NOT NULL,
  `iPrecoInicialValor` int(3) NOT NULL,
  `iPrecoFixo` smallint(1) NOT NULL,
  `sPrecoFixoTipo` char(1) NOT NULL,
  `iPrecoFixoValor` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_loja`
--

DROP TABLE IF EXISTS `_ecom_cad_loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_loja` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sNomeLoja` varchar(50) NOT NULL,
  `sCNPJ` varchar(20) NOT NULL,
  `sDominio` varchar(50) NOT NULL,
  `iUtilizarComparador` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não usar o Dominio no comparador; 1 = Usar o Dominio no comparador',
  `iTelFisico_DDD` int(3) NOT NULL,
  `iTelFisico` bigint(20) NOT NULL,
  `IDE_EndFisico` int(9) NOT NULL,
  `sAdminNome` varchar(50) NOT NULL,
  `sAdminCPF` varchar(16) NOT NULL,
  `sAdminRG` varchar(25) NOT NULL,
  `sAdminEmail` varchar(40) NOT NULL,
  `iAdminTel_DDD` int(3) NOT NULL,
  `iAdminTel` bigint(20) NOT NULL,
  `iAdminCel_DDD` int(3) NOT NULL,
  `iAdminCel` bigint(20) NOT NULL,
  `atualizacaoAutoComplete` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Armazena data da proxima atualizacao do arquivo .txt de itens da loja.',
  `status` tinyint(1) DEFAULT '0' COMMENT '0 = Ativa mas nao publica / 1 = Ativa e publica / 2 = Inativa (Nem o admin acessa)',
  `statusCriacao` smallint(1) NOT NULL COMMENT '0 = Criada com sucesso / 1 = Em Criacao',
  `ctimeFimVip` bigint(15) NOT NULL DEFAULT '0',
  `iAtrasado` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Sem Atraso; 1 = Aviso de 5 dias de Atraso; 2 = Aviso de 10 dias de Atraso',
  `iVipExibeCompPrecos` smallint(1) NOT NULL COMMENT '0 = Nao exibe / 1 = Exibe',
  `iVipExibeCompPrecosBuylist` tinyint(1) NOT NULL DEFAULT '0',
  `iPKMExibeCompPrecos` smallint(1) NOT NULL DEFAULT '1',
  `iMPParticipa` smallint(1) NOT NULL DEFAULT '0',
  `dtCriacaoLoja` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iPlanoLojaVirtual` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Basic / 2 = Premium',
  `iProdExibeCompPrecos` smallint(1) NOT NULL DEFAULT '1',
  `iAtualizarCardsVendidos` tinyint(1) NOT NULL DEFAULT '0',
  `dtUltimaAtualizacaoCardsVendidos` datetime NOT NULL,
  `dtAtualizacaoCorreios` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sUsernameServer` varchar(10) NOT NULL,
  `iLojaDefineFormaPagLS` tinyint(1) NOT NULL DEFAULT '0',
  `iAvaliacaoPublica` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_EndEstado` int(6) NOT NULL DEFAULT '0',
  `IDE_EndCidade` int(6) NOT NULL DEFAULT '0',
  `iBuylist` tinyint(1) NOT NULL DEFAULT '0',
  `dtUltimaAtualizacaoPrecoMedio` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iLSExclusiva` tinyint(1) NOT NULL DEFAULT '0',
  `sPathLogo` varchar(60) NOT NULL,
  `iEvents` tinyint(1) NOT NULL DEFAULT '0',
  `iNewDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `iYGOExibeCompPrecos` tinyint(1) NOT NULL DEFAULT '1',
  `sPathLogoMarketplace` varchar(75) NOT NULL,
  `iAntecip` tinyint(1) NOT NULL DEFAULT '0',
  `dAntecipTaxa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sPathLogoAvatar` varchar(75) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`),
  KEY `status` (`status`),
  KEY `IDE_EndFisico` (`IDE_EndFisico`),
  KEY `iUtilizarComparador` (`iUtilizarComparador`),
  KEY `iPKMExibeCompPrecos` (`iPKMExibeCompPrecos`),
  KEY `IDE_User_2` (`IDE_User`,`status`,`iPKMExibeCompPrecos`),
  KEY `iMPParticipa` (`iMPParticipa`),
  KEY `sNomeLoja` (`sNomeLoja`),
  KEY `iPlanoLojaVirtual` (`iPlanoLojaVirtual`),
  KEY `iVipExibeCompPrecos` (`iVipExibeCompPrecos`),
  KEY `iProdExibeCompPrecos` (`iProdExibeCompPrecos`),
  KEY `sDominio` (`sDominio`),
  KEY `joinindex_1` (`IDE_User`,`status`,`iVipExibeCompPrecos`) USING BTREE,
  KEY `joinindex_2` (`IDE_User`,`status`),
  KEY `idx_ideuser_mp` (`IDE_User`,`status`,`iMPParticipa`) USING BTREE,
  KEY `idx_mp_precos` (`IDE_User`,`status`,`iVipExibeCompPrecos`,`iMPParticipa`) USING BTREE,
  KEY `sUsernameServer` (`sUsernameServer`),
  KEY `iEndEstado` (`IDE_EndEstado`),
  KEY `iEndCidade` (`IDE_EndCidade`),
  KEY `idx_status_ivip_imp` (`status`,`iVipExibeCompPrecos`,`iMPParticipa`) USING BTREE,
  KEY `iBuylist` (`iBuylist`),
  KEY `idx_status_compprecos_buylist` (`IDE_User`,`status`,`iVipExibeCompPrecos`,`iBuylist`) USING BTREE,
  KEY `dtUltimaAtualizacaoPrecoMedio` (`dtUltimaAtualizacaoPrecoMedio`),
  KEY `idx_ideuser_ilsexclusiva` (`IDE_User`,`iLSExclusiva`) USING BTREE,
  KEY `idx_usr_sts_mpbul` (`IDE_User`,`status`,`iVipExibeCompPrecosBuylist`) USING BTREE,
  KEY `idx_usr_sts_pkm` (`IDE_User`,`status`,`iPKMExibeCompPrecos`) USING BTREE,
  KEY `idx_usr_sts_ygo` (`IDE_User`,`status`,`iYGOExibeCompPrecos`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_loja_assinatura`
--

DROP TABLE IF EXISTS `_ecom_cad_loja_assinatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_loja_assinatura` (
  `IDE_UserLoja` int(9) NOT NULL,
  `dtVencimento` date NOT NULL DEFAULT '0000-00-00',
  `dtVencimentoCarencia` date NOT NULL DEFAULT '0000-00-00',
  `dtProximaCobranca` date NOT NULL DEFAULT '0000-00-00',
  `IDE_CardToken` int(9) NOT NULL,
  `iNotifVencimento` smallint(1) NOT NULL DEFAULT '0',
  `dtDesligamento` date NOT NULL DEFAULT '0000-00-00',
  `iTentativasCobranca` smallint(2) NOT NULL DEFAULT '0',
  `iNovoDiaVencimento` tinyint(2) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `dtVencimento` (`dtVencimento`),
  KEY `dtVencimentoCarencia` (`dtVencimentoCarencia`),
  KEY `dtProximaCobranca` (`dtProximaCobranca`),
  KEY `IDE_CardToken` (`IDE_CardToken`),
  KEY `iNotifVencimento` (`iNotifVencimento`),
  KEY `iTentativasCobranca` (`iTentativasCobranca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_loja_atualizacoes`
--

DROP TABLE IF EXISTS `_ecom_cad_loja_atualizacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_loja_atualizacoes` (
  `IDE_UserLoja` int(9) NOT NULL,
  `iAtualizarAutoComplete` smallint(1) NOT NULL DEFAULT '1',
  `iAtualizarMenu` smallint(1) NOT NULL DEFAULT '1',
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `iAtualizarAutoComplete` (`iAtualizarAutoComplete`),
  KEY `iAtualizarMenu` (`iAtualizarMenu`),
  KEY `dtUltimaAtualizacao` (`dtUltimaAtualizacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_loja_config_sys`
--

DROP TABLE IF EXISTS `_ecom_cad_loja_config_sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_loja_config_sys` (
  `IDE_User` int(9) NOT NULL,
  `iAtualizarDescontosHome` tinyint(1) NOT NULL DEFAULT '0',
  `dtUltimaAtualizacaoDescontosHome` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_User` (`IDE_User`),
  KEY `iAtualizarDescontosHome` (`iAtualizarDescontosHome`),
  KEY `dtUltimaAtualizacaoDescontosHome` (`dtUltimaAtualizacaoDescontosHome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_loja_contato`
--

DROP TABLE IF EXISTS `_ecom_cad_loja_contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_loja_contato` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserUltimaAlteracao` int(9) NOT NULL,
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sEmail` varchar(250) NOT NULL,
  `iPossuiWhatsapp` tinyint(1) NOT NULL DEFAULT '0',
  `iWhatsappDDD` int(4) NOT NULL,
  `sWhatsappNum` varchar(20) NOT NULL,
  `iPossuiCelular` tinyint(1) NOT NULL DEFAULT '0',
  `iCelularDDD` int(4) NOT NULL,
  `sCelularNum` varchar(20) NOT NULL,
  `iPossuiTelFixo` tinyint(1) NOT NULL DEFAULT '0',
  `iTelFixoDDD` int(4) NOT NULL,
  `sTelFixoNum` varchar(20) NOT NULL,
  `iPossuiFacebook` tinyint(1) NOT NULL DEFAULT '0',
  `sURLFacebook` varchar(250) NOT NULL,
  `iPossuiTwitter` tinyint(1) NOT NULL DEFAULT '0',
  `sURLTwitter` varchar(250) NOT NULL,
  `iPossuiInstagram` tinyint(1) NOT NULL DEFAULT '0',
  `sURLInstagram` varchar(250) NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_loja_sumario`
--

DROP TABLE IF EXISTS `_ecom_cad_loja_sumario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_loja_sumario` (
  `IDE_UserLoja` int(11) NOT NULL,
  `iProdutos` int(11) NOT NULL,
  `iIngressos` int(11) NOT NULL,
  `iMagic` int(11) NOT NULL,
  `iPokemon` int(11) NOT NULL,
  `iYugioh` int(11) NOT NULL,
  `iVanguard` int(11) NOT NULL,
  `iStarWars` int(11) NOT NULL,
  `iDragonBall` int(11) NOT NULL,
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `dtUltimaAtualizacao` (`dtUltimaAtualizacao`),
  KEY `iStarWars` (`iStarWars`),
  KEY `iProdutos` (`iProdutos`),
  KEY `iIngressos` (`iIngressos`),
  KEY `iMagic` (`iMagic`),
  KEY `iPokemon` (`iPokemon`),
  KEY `iYugioh` (`iYugioh`),
  KEY `iVanguard` (`iVanguard`),
  KEY `iDragonBall` (`iDragonBall`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_marketplace`
--

DROP TABLE IF EXISTS `_ecom_cad_marketplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_marketplace` (
  `IDE_User` int(9) NOT NULL,
  `iPrazoLS` smallint(1) NOT NULL,
  `iEmailPagamAprov` smallint(1) NOT NULL DEFAULT '1',
  `iEmailPagamCancel` smallint(1) NOT NULL DEFAULT '1',
  `iEmailPagamLiberado` smallint(1) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIPCadastro` varchar(15) NOT NULL,
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_marketplace_log`
--

DROP TABLE IF EXISTS `_ecom_cad_marketplace_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_marketplace_log` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iPrazoLS` smallint(1) NOT NULL,
  `sIPCadastro` varchar(15) NOT NULL,
  `dtAlteracao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_monitoramento`
--

DROP TABLE IF EXISTS `_ecom_cad_monitoramento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_monitoramento` (
  `ID_Monitoramento` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(11) NOT NULL,
  `iTCG` smallint(2) NOT NULL,
  `IDE_Item` int(11) NOT NULL,
  `IDE_Edicao` int(11) DEFAULT NULL,
  `sNumber` varchar(10) DEFAULT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Monitoramento`),
  UNIQUE KEY `idx_all` (`IDE_User`,`iTCG`,`IDE_Item`,`IDE_Edicao`,`sNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_multiplos_estoques`
--

DROP TABLE IF EXISTS `_ecom_cad_multiplos_estoques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_multiplos_estoques` (
  `ID_EstoquePosicao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_EndFisico` int(9) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sNomeEstoque` varchar(50) NOT NULL,
  `sDescricaoEstoque` varchar(150) NOT NULL,
  `iOrdenacao` int(3) NOT NULL,
  `iDifEstoqueMTG` int(11) NOT NULL,
  `iDifEstoquePROD` smallint(1) NOT NULL DEFAULT '0',
  `iDifEstoqueCarrinho` tinyint(1) NOT NULL DEFAULT '0',
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_EstoquePosicao`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `iStatus` (`iStatus`),
  KEY `sNomeEstoque` (`sNomeEstoque`),
  KEY `iOrdenacao` (`iOrdenacao`),
  KEY `joinindex_1` (`ID_EstoquePosicao`,`IDE_UserLoja`) USING BTREE,
  KEY `IDE_EndFisico` (`IDE_EndFisico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_notafiscal`
--

DROP TABLE IF EXISTS `_ecom_cad_notafiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_notafiscal` (
  `ID_NotaFiscal` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sNaturezaOperacao` varchar(60) NOT NULL,
  `sICMS` varchar(5) NOT NULL DEFAULT '0',
  `sICMSST` varchar(5) NOT NULL DEFAULT '0',
  `sIPI` varchar(5) NOT NULL DEFAULT '0',
  `sPIS` varchar(5) NOT NULL DEFAULT '0.00',
  `sCOFINS` varchar(5) NOT NULL DEFAULT '0.00',
  `sCFOPEstadual` varchar(20) NOT NULL,
  `sCFOPInterestadual` varchar(20) NOT NULL,
  `sCFOPInternacional` varchar(20) NOT NULL,
  `sTextoExtra` text NOT NULL,
  `sNCMCartas` varchar(10) NOT NULL,
  `sNCMProdutos` varchar(10) NOT NULL,
  `sNCMIngressos` varchar(10) NOT NULL,
  `sICMSOrigemBattleScenes` varchar(1) NOT NULL,
  `sICMSOrigemMagic` varchar(1) NOT NULL,
  `sICMSOrigemPokemon` varchar(1) NOT NULL,
  `sICMSOrigemStarWars` varchar(1) NOT NULL,
  `sICMSOrigemVanguard` varchar(1) NOT NULL,
  `sICMSOrigemYugioh` varchar(1) NOT NULL,
  `sICMSOrigemDragonBall` varchar(1) NOT NULL,
  `sICMSOrigemProdutos` varchar(1) NOT NULL,
  `sICMSOrigemIngressos` varchar(1) NOT NULL,
  `sICMSSTBattleScenes` varchar(3) NOT NULL,
  `sICMSSTMagic` varchar(3) NOT NULL,
  `sICMSSTPokemon` varchar(3) NOT NULL,
  `sICMSSTStarWars` varchar(3) NOT NULL,
  `sICMSSTVanguard` varchar(3) NOT NULL,
  `sICMSSTYugioh` varchar(3) NOT NULL,
  `sICMSSTDragonBall` varchar(3) NOT NULL,
  `sICMSSTProdutos` varchar(3) NOT NULL,
  `sICMSSTIngressos` varchar(3) NOT NULL,
  `sPISSTBattleScenes` varchar(2) NOT NULL,
  `sPISSTMagic` varchar(2) NOT NULL,
  `sPISSTPokemon` varchar(2) NOT NULL,
  `sPISSTStarWars` varchar(2) NOT NULL,
  `sPISSTVanguard` varchar(2) NOT NULL,
  `sPISSTYugioh` varchar(2) NOT NULL,
  `sPISSTDragonBall` varchar(2) NOT NULL,
  `sPISSTProdutos` varchar(2) NOT NULL,
  `sPISSTIngressos` varchar(2) NOT NULL,
  `sCOFINSSTBattleScenes` varchar(2) NOT NULL,
  `sCOFINSSTMagic` varchar(2) NOT NULL,
  `sCOFINSSTPokemon` varchar(2) NOT NULL,
  `sCOFINSSTStarWars` varchar(2) NOT NULL,
  `sCOFINSSTVanguard` varchar(2) NOT NULL,
  `sCOFINSSTYugioh` varchar(2) NOT NULL,
  `sCOFINSSTDragonBall` varchar(2) NOT NULL,
  `sCOFINSSTProdutos` varchar(2) NOT NULL,
  `sCOFINSSTIngressos` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_NotaFiscal`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_notafiscal_loja`
--

DROP TABLE IF EXISTS `_ecom_cad_notafiscal_loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_notafiscal_loja` (
  `ID_NotaFiscal_Loja` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sNomeLoja` varchar(255) NOT NULL,
  `sNomeFantasia` varchar(255) NOT NULL,
  `sEmail` varchar(255) NOT NULL,
  `iTel_DDD` int(3) NOT NULL,
  `iTel` int(10) NOT NULL,
  `sCNPJ` varchar(20) NOT NULL,
  `sInscMunicipal` varchar(20) NOT NULL,
  `sInscEstadual` varchar(20) NOT NULL,
  `iRegimeTributario` tinyint(1) NOT NULL,
  `iDiscrimaImpostos` tinyint(1) NOT NULL,
  `IDE_Endereco` int(9) NOT NULL,
  `sCodigoReferencia` varchar(20) NOT NULL,
  `sTokenHomolog` varchar(50) NOT NULL,
  `sTokenProd` varchar(50) NOT NULL,
  `sValidadeCertificado` varchar(50) NOT NULL,
  `sSenhaCertificado` varchar(255) NOT NULL,
  `sPathCertificado` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_NotaFiscal_Loja`),
  KEY `IDE_User` (`IDE_User`),
  KEY `IDE_Endereco` (`IDE_Endereco`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_pergunta_frequente`
--

DROP TABLE IF EXISTS `_ecom_cad_pergunta_frequente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_pergunta_frequente` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iOrdem` smallint(5) unsigned NOT NULL,
  `sPergunta` text NOT NULL,
  `sResposta` text NOT NULL,
  `status` smallint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_preferencias`
--

DROP TABLE IF EXISTS `_ecom_cad_preferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_preferencias` (
  `IDE_User` int(9) NOT NULL,
  `iExibicaoEstoque` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Checked / 1 = Checked',
  `iPosicaoInfoAdicional` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Abaixo dos itens; 1 = Acima dos itens',
  `iPosicaoComentarios` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Abaixo dos itens; 1 = Acima dos itens',
  `iExibicaoCards` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Agrupar Cartas Iguais - Geral; 1 = Agrupar Cartas Iguais - Por Edição; 2 = Não Agrupar Cartas',
  `iOrdenacaoCards` tinyint(4) NOT NULL COMMENT '0 = Order Crescente Preço, 1 = Ordem Decrescente Preço, 2 = Agrupado por Ediçao, Preço Crescente, 3 = Agrupado por Ediçao, Preço Decrescente',
  `iOrdemColunaMagic` smallint(2) DEFAULT '0' COMMENT '0 = Colunas Padrão ; 1 = Colunas Magic Bem Barato',
  `iErroPagina` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Mostra erros padrão, 1 = Mostra erros de página personalizados',
  `iPosicaoCalendario` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = Não Exibir ; 1 = Antes dos Banners ; 2 = Depois dos Banners',
  `iAlturaCalendario` int(4) NOT NULL,
  `iMagic` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não Utiliza / 1 = Todas Edições / 2 = Algumas Edições',
  `iAssociadosMagic` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não Exibir ; 1 = Exibir',
  `iOrdemPedidoMagic` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Alfabetica / 1 = Data de Lançamento',
  `iPokemon` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não Utiliza / 1 = Todas Edições / 2 = Algumas Edições',
  `iAssociadosPokemon` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não Exibir ; 1 = Exibir',
  `iPokemonInfoExtra` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Na imagem / 1 = Na descrição',
  `iPokemonNomeEdicao` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Exibe / 1 = Exibe',
  `iBattleScenes` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Utiliza / 1 = Todas Edições / 2 = Algumas Edições',
  `iAssociadosBattleScenes` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não Exibir ; 1 = Exibir',
  `iVanguard` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Utiliza / 1 = Todas Edições / 2 = Algumas Edições',
  `iAssociadosVanguard` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não Exibir ; 1 = Exibir',
  `iYugioh` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Utiliza / 1 = Todas Edições / 2 = Algumas Edições',
  `iAssociadosYugioh` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não Exibir ; 1 = Exibir',
  `iStarWars` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Utiliza / 1 = Todas Edições / 2 = Algumas Edições',
  `iAssociadosStarWars` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não Exibir ; 1 = Exibir',
  `iAssociadosProdutos` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não Exibir ; 1 = Exibir',
  `iHomeTCG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Unica / 1 = Separada',
  `iRetiradaBalcao` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Exibir para Clientes / 0 = Somente Funcionarios',
  `iDataPagamentoRetirarBalcao` tinyint(4) NOT NULL DEFAULT '0',
  `dValorMinimoCompra` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iEmailComprovPag` smallint(1) NOT NULL DEFAULT '0',
  `iEnderecoComprovPag` varchar(75) NOT NULL,
  `iEmailComentario` smallint(1) NOT NULL DEFAULT '0',
  `iEnderecoComentario` varchar(75) NOT NULL,
  `iCalendDiasAposAprov` smallint(1) NOT NULL DEFAULT '3',
  `iCalendDiasExtensao` smallint(1) NOT NULL DEFAULT '2',
  `iCalendDiasRastreio` smallint(1) NOT NULL DEFAULT '1',
  `iZerarPrecoCards` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Zerar / 1 = Zerar',
  `iWhiteList` smallint(1) NOT NULL DEFAULT '0',
  `iDadosItemMagic` smallint(1) NOT NULL DEFAULT '0',
  `iPrecoIgnorarItensSemEstoque` smallint(1) NOT NULL DEFAULT '0',
  `iImpressaoQuantRestante` smallint(1) NOT NULL DEFAULT '0',
  `iBuscaCodigoBarras` smallint(1) NOT NULL DEFAULT '0',
  `iExibeMultEstoques` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não exibir | 1 = Exibir',
  `iBloqueiaPedidoDifEst` tinyint(1) NOT NULL DEFAULT '0',
  `iDragonBall` tinyint(1) NOT NULL DEFAULT '0',
  `iAssociadosDragonBall` tinyint(1) NOT NULL DEFAULT '0',
  `iProdFiltroPadrao` tinyint(1) NOT NULL DEFAULT '0',
  `iAceitaComentarios` smallint(1) NOT NULL DEFAULT '1' COMMENT '(1 = ativo / 0 = inativo)',
  `iCancelaPedidos` tinyint(1) NOT NULL DEFAULT '0' COMMENT '(1 = ativo / 0 = inativo)',
  `iRemetente` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: Inativo / 1: Ativo',
  `iPrintPedido` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Completo / 1: Resumido',
  `iRemoveDescontos` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:Inativo / 1:Ativo',
  `iAceitarCredCompIng` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0:Inativo / 1:Ativo',
  `iOrdenacaoPedidosAguardEnvio` tinyint(1) NOT NULL DEFAULT '9' COMMENT '9: Dt da Aprov. [0-9]',
  `iNotifCart` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:Inativo/ 1:Ativo',
  `iDiasNotifCart` tinyint(1) NOT NULL DEFAULT '0',
  `iMPCreditos` tinyint(1) NOT NULL DEFAULT '1',
  `iMPCupons` tinyint(1) NOT NULL DEFAULT '1',
  `iModCorreiosOffline` tinyint(1) NOT NULL DEFAULT '0',
  `iMCOAlterarValor` tinyint(1) NOT NULL DEFAULT '0',
  `iMCOPorcentAlterar` tinyint(1) NOT NULL DEFAULT '0',
  `iOrdemEstoqueMagic` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = Default\r\n1 = Qualidade [Mint-Damaged], Idioma[a-z]\r\n2 = Qualidade [Mint-Damaged], Idioma[z-a]\r\n3 = Qualidade [Damaged-Mint], Idioma[a-z]\r\n4 = Qualidade [Damaged-Mint], Idioma[z-a]',
  `iOrdemExibicaoMagic` tinyint(4) NOT NULL DEFAULT '0',
  `iOrdemExibicaoPokemon` tinyint(4) NOT NULL DEFAULT '0',
  `iOrdemExibicaoBattleScenes` tinyint(4) NOT NULL DEFAULT '0',
  `iOrdemExibicaoDragonBall` tinyint(4) NOT NULL DEFAULT '0',
  `iOrdemExibicaoVanguard` tinyint(4) NOT NULL DEFAULT '0',
  `iOrdemExibicaoStarWars` tinyint(4) NOT NULL DEFAULT '0',
  `iOrdemExibicaoYugioh` tinyint(4) NOT NULL DEFAULT '0',
  `iOrdemExibicaoProdutos` tinyint(4) NOT NULL DEFAULT '0',
  `iLayoutPedidos` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Padrão | 1: Econômico',
  PRIMARY KEY (`IDE_User`),
  KEY `iRetiradaBalcao` (`iRetiradaBalcao`),
  KEY `iExibicaoCards` (`iExibicaoCards`),
  KEY `iHomeTCG` (`iHomeTCG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_preferencias_edicoes`
--

DROP TABLE IF EXISTS `_ecom_cad_preferencias_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_preferencias_edicoes` (
  `iTipo` int(2) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  KEY `IDE_User` (`IDE_User`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `joinindex_1` (`iTipo`,`IDE_User`,`IDE_Edicao`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_preferencias_favicon`
--

DROP TABLE IF EXISTS `_ecom_cad_preferencias_favicon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_preferencias_favicon` (
  `IDE_User` int(11) NOT NULL,
  `sPath_16` varchar(50) NOT NULL,
  `sPath_32` varchar(50) NOT NULL,
  `sPath_48` varchar(50) NOT NULL,
  `sPath_192` varchar(50) NOT NULL,
  `sPath_512` varchar(50) NOT NULL,
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_preferencias_home_tcg`
--

DROP TABLE IF EXISTS `_ecom_cad_preferencias_home_tcg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_preferencias_home_tcg` (
  `IDE_User` int(9) NOT NULL,
  `iTCG` tinyint(2) NOT NULL,
  `sURL` varchar(80) DEFAULT NULL,
  `isAtivo` tinyint(1) NOT NULL DEFAULT '0',
  `sFilepath` varchar(100) NOT NULL,
  PRIMARY KEY (`IDE_User`,`iTCG`),
  KEY `idx_usr_atv_url` (`IDE_User`,`isAtivo`,`sURL`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_preorder`
--

DROP TABLE IF EXISTS `_ecom_cad_preorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_preorder` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTipo` smallint(2) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_ecom_Categoria` int(9) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  `sPrevisaoEnvio` date NOT NULL DEFAULT '0000-00-00',
  `sDesc` text NOT NULL,
  `status` smallint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`id`),
  KEY `iTipo` (`iTipo`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `IDE_ecom_Categoria` (`IDE_ecom_Categoria`),
  KEY `IDE_Produto` (`IDE_Produto`),
  KEY `status` (`status`),
  KEY `sPrevisaoEnvio` (`sPrevisaoEnvio`),
  KEY `joinindex_1` (`IDE_User`,`iTipo`,`IDE_Edicao`,`status`),
  KEY `idx_usr_tpo_prod_sts` (`IDE_User`,`iTipo`,`IDE_Produto`,`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_produtos`
--

DROP TABLE IF EXISTS `_ecom_cad_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_produtos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  `IDE_ecom_Categoria` int(9) NOT NULL,
  `IDE_Limite` int(9) NOT NULL,
  `sNomeProd` varchar(255) NOT NULL,
  `sNomeProdEN` varchar(255) NOT NULL,
  `sNCM` varchar(10) NOT NULL,
  `sICMSOrigem` varchar(1) NOT NULL,
  `sICMSST` varchar(3) NOT NULL,
  `sPISST` varchar(2) NOT NULL,
  `sCOFINSST` varchar(2) NOT NULL,
  `sDesc` text NOT NULL,
  `iFlagCartaReg` tinyint(1) NOT NULL,
  `sImagem` varchar(120) NOT NULL,
  `iQuant` smallint(3) NOT NULL,
  `iQuantTotal` int(4) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `dDescontoItem` decimal(4,2) NOT NULL DEFAULT '0.00',
  `iIdioma` tinyint(2) NOT NULL,
  `iCondicao` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `iDestaque` smallint(1) NOT NULL,
  `dtDescItemInicio` date NOT NULL DEFAULT '0000-00-00',
  `dtDescItemFim` date NOT NULL DEFAULT '0000-00-00',
  `iTipoProduto` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Individual / 2 = Agrupamento',
  `iNivelAgrupamento` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Sem Agrupamento / 1 = Cabecalho / 2 = Item',
  `IDE_ProdutoPai` int(9) NOT NULL DEFAULT '0',
  `sNomeProdPai` varchar(80) NOT NULL,
  `IDE_EstoquePosicao` int(9) NOT NULL DEFAULT '0',
  `IDE_prod_Produto` int(9) NOT NULL DEFAULT '0' COMMENT 'ID tabela prod_produtos',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ultima_atualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sCodigoBarra` varchar(20) NOT NULL,
  `dtIndexado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sSKU` varchar(35) NOT NULL,
  `dtLancamento` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Produto` (`IDE_Produto`),
  KEY `IDE_ecom_Categoria` (`IDE_ecom_Categoria`),
  KEY `iDestaque` (`iDestaque`),
  KEY `dtDescItemFim` (`dtDescItemFim`),
  KEY `dtDescItemInicio_2` (`dtDescItemInicio`,`dtDescItemFim`),
  KEY `dDescontoItem` (`dDescontoItem`),
  KEY `IDE_ProdutoPai` (`IDE_ProdutoPai`),
  KEY `IDE_User_3` (`IDE_User`,`status`,`IDE_ProdutoPai`),
  KEY `iNivelAgrupamento` (`iNivelAgrupamento`),
  KEY `iTipoProduto` (`iTipoProduto`),
  KEY `iQuantTotal` (`iQuantTotal`),
  KEY `IDE_Limite` (`IDE_Limite`),
  KEY `IDE_EstoquePosicao` (`IDE_EstoquePosicao`),
  KEY `sNomeProd` (`sNomeProd`),
  KEY `IDE_prod_Produto` (`IDE_prod_Produto`),
  KEY `iQuant` (`iQuant`),
  KEY `dtCriacao` (`dtCriacao`),
  KEY `whereindex_3` (`status`,`iTipoProduto`,`iNivelAgrupamento`,`dtDescItemFim`,`dtDescItemInicio`,`IDE_ProdutoPai`,`dDescontoItem`) USING BTREE,
  KEY `ultima_atualizacao` (`ultima_atualizacao`) USING BTREE,
  KEY `sCodigoBarra` (`sCodigoBarra`) USING BTREE,
  KEY `dtIndexado` (`dtIndexado`),
  KEY `idx_status_prod` (`status`,`IDE_prod_Produto`) USING BTREE,
  KEY `idx_associa` (`IDE_User`,`IDE_Produto`,`status`,`iQuant`,`IDE_ProdutoPai`) USING BTREE,
  KEY `sNomeProdEN` (`sNomeProdEN`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_produtos_images`
--

DROP TABLE IF EXISTS `_ecom_cad_produtos_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_produtos_images` (
  `ID_File` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Produto` int(9) NOT NULL,
  `sFilePath` varchar(120) NOT NULL,
  `dtUpload` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_File`),
  KEY `IDE_Produto` (`IDE_Produto`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_produtos_sugestoes`
--

DROP TABLE IF EXISTS `_ecom_cad_produtos_sugestoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_produtos_sugestoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(11) NOT NULL,
  `IDE_Categoria` int(11) NOT NULL,
  `IDE_ecom_Produto` int(11) NOT NULL,
  `dDesconto` decimal(5,2) NOT NULL,
  `dtSugestaoInicio` date NOT NULL,
  `dtSugestaoFim` date NOT NULL,
  `dCompraValorMin` decimal(10,2) NOT NULL,
  `dCompraValorMax` decimal(10,2) NOT NULL,
  `iEspecificoMagic` int(1) NOT NULL,
  `iEspecificoBattleScenes` int(1) NOT NULL,
  `iEspecificoPokemon` int(1) NOT NULL,
  `iEspecificoStarWars` int(1) NOT NULL,
  `iEspecificoVanguard` int(1) NOT NULL,
  `iEspecificoYugioh` int(1) NOT NULL,
  `iEspecificoDragonBall` int(1) NOT NULL,
  `iEspecificoProduto` int(1) NOT NULL,
  `iEspecificoIngresso` int(1) NOT NULL,
  `iStatus` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `iEspecificoMagic` (`iEspecificoMagic`),
  KEY `iEspecificoBattleScenes` (`iEspecificoBattleScenes`),
  KEY `iEspecificoPokemon` (`iEspecificoPokemon`),
  KEY `iEspecificoStarWars` (`iEspecificoStarWars`),
  KEY `iEspecificoVanguard` (`iEspecificoVanguard`),
  KEY `iEspecificoYugioh` (`iEspecificoYugioh`),
  KEY `iEspecificoProduto` (`iEspecificoProduto`),
  KEY `iEspecificoIngresso` (`iEspecificoIngresso`),
  KEY `IDE_Categoria` (`IDE_Categoria`),
  KEY `IDE_Produto` (`IDE_ecom_Produto`),
  KEY `iStatus` (`iStatus`),
  KEY `dtSugestaoInicio` (`dtSugestaoInicio`),
  KEY `dtSugestaoFim` (`dtSugestaoFim`),
  KEY `dCompraValorMin` (`dCompraValorMin`),
  KEY `dCompraValorMax` (`dCompraValorMax`),
  KEY `whereindex_1` (`IDE_User`,`IDE_ecom_Produto`,`dtSugestaoInicio`,`dtSugestaoFim`,`dCompraValorMin`,`dCompraValorMax`,`iStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_produtos_tags`
--

DROP TABLE IF EXISTS `_ecom_cad_produtos_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_produtos_tags` (
  `IDE_Tag` int(9) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  `IDE_LojaEcom` int(9) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_Tag` (`IDE_Tag`,`IDE_Produto`,`IDE_LojaEcom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_questionario`
--

DROP TABLE IF EXISTS `_ecom_cad_questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_questionario` (
  `ID_Questionario` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_LojaEcom` int(9) NOT NULL,
  `sPergunta` varchar(150) NOT NULL,
  `iTipoPergunta` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Radio / 2 = Checkbox',
  `iOrdem` int(4) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Questionario`),
  KEY `IDE_LojaEcom` (`IDE_LojaEcom`),
  KEY `iStatus` (`iStatus`),
  KEY `iOrdem` (`iOrdem`),
  KEY `iTipoPergunta` (`iTipoPergunta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_questionario_respostas`
--

DROP TABLE IF EXISTS `_ecom_cad_questionario_respostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_questionario_respostas` (
  `ID_Resposta` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Questionario` int(9) NOT NULL,
  `sResposta` varchar(150) NOT NULL,
  `sRespostaDescricao` text NOT NULL,
  `iAcrescentarDias` int(4) NOT NULL DEFAULT '0',
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Resposta`),
  KEY `IDE_Questionario` (`IDE_Questionario`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_ranking`
--

DROP TABLE IF EXISTS `_ecom_cad_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_ranking` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_LojaEcom` int(9) NOT NULL,
  `IDE_LojaTorneios` int(9) NOT NULL,
  `sRanking` varchar(40) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iExibe` smallint(1) NOT NULL DEFAULT '0',
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`id`),
  KEY `IDE_LojaEcom` (`IDE_LojaEcom`),
  KEY `IDE_LojaTorneios` (`IDE_LojaTorneios`),
  KEY `iStatus` (`iStatus`),
  KEY `iExibe` (`iExibe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_ranking_calculado`
--

DROP TABLE IF EXISTS `_ecom_cad_ranking_calculado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_ranking_calculado` (
  `IDE_Ranking` int(9) NOT NULL,
  `iDCI` varchar(20) NOT NULL,
  `sNome` varchar(40) NOT NULL,
  `iPontos` int(4) NOT NULL,
  KEY `IDE_Ranking` (`IDE_Ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_ranking_torneios`
--

DROP TABLE IF EXISTS `_ecom_cad_ranking_torneios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_ranking_torneios` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Ranking` int(9) NOT NULL DEFAULT '0',
  `IDE_Torneio` int(9) NOT NULL,
  `iPontosParticipacao` int(2) NOT NULL,
  `iMultiplicador` int(2) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`id`),
  KEY `IDE_Ranking` (`IDE_Ranking`),
  KEY `IDE_Torneio` (`IDE_Torneio`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_regra_item`
--

DROP TABLE IF EXISTS `_ecom_cad_regra_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_regra_item` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_Item` int(9) NOT NULL,
  `iTipo` smallint(2) NOT NULL,
  `iNaoElegivelCompraCupom` smallint(1) NOT NULL,
  KEY `iNaoElegivelCompraCupom` (`iNaoElegivelCompraCupom`),
  KEY `joinIndex_1` (`IDE_UserLoja`,`IDE_Item`,`iTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_responsavel`
--

DROP TABLE IF EXISTS `_ecom_cad_responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_responsavel` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sNome` varchar(50) NOT NULL,
  `dDataNascimento` date NOT NULL DEFAULT '0000-00-00',
  `sCPF` varchar(16) NOT NULL,
  `sRG` varchar(25) NOT NULL,
  `IDE_Endereco` int(9) NOT NULL,
  `iTel_DDD` int(3) NOT NULL,
  `iTelefone` int(15) NOT NULL,
  `iCel_DDD` int(3) NOT NULL,
  `iCelular` int(15) NOT NULL,
  `sEmail` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDE_User_2` (`IDE_User`),
  KEY `IDE_Endereco` (`IDE_Endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_status`
--

DROP TABLE IF EXISTS `_ecom_cad_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_status` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sNome` varchar(60) NOT NULL,
  `sEmailAviso` varchar(255) NOT NULL,
  `iEnviaEmail` smallint(1) NOT NULL,
  `sEmailTitulo` varchar(100) NOT NULL,
  `sEmailCorpo` text NOT NULL,
  `iFlagInicial` smallint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo',
  `iFlagPendente` smallint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo',
  `iFlagRastreio` smallint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo',
  `iFlagCancelado` smallint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo',
  `iFlagBalcao` smallint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo',
  `status` int(11) NOT NULL COMMENT '0 = Deletado / 1 = Ativo',
  `iFlagBalcaoPendente` smallint(1) NOT NULL,
  `iFlagLeilaoReservado` smallint(1) NOT NULL,
  `iFlagLeilaoAguardPagam` smallint(1) NOT NULL,
  `iFlagLeilaoAguardEnvio` smallint(1) NOT NULL,
  `iFinancFlagEntradaDinheiro` smallint(1) NOT NULL DEFAULT '0',
  `iIgnoraIntegracao` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não; 1 = Sim',
  `iIntegPreOrder` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Status para pedido sem pre order / 1 = Status para pedidos com Pre Order',
  `iIntegIngresso` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`),
  KEY `status` (`status`),
  KEY `iFlagInicial` (`iFlagInicial`),
  KEY `iFlagPendente` (`iFlagPendente`),
  KEY `iFlagRastreio` (`iFlagRastreio`),
  KEY `iFlagCancelado` (`iFlagCancelado`),
  KEY `iFlagBalcao` (`iFlagBalcao`),
  KEY `iFlagBalcaoPendente` (`iFlagBalcaoPendente`),
  KEY `sEmailAviso` (`sEmailAviso`),
  KEY `iFlagLeilaoReservado` (`iFlagLeilaoReservado`),
  KEY `iFlagLeilaoAguardPagam` (`iFlagLeilaoAguardPagam`),
  KEY `iFlagLeilaoAguardEnvio` (`iFlagLeilaoAguardEnvio`),
  KEY `iFinancFlagEntradaDinheiro` (`iFinancFlagEntradaDinheiro`),
  KEY `iIntegPreOrder` (`iIntegPreOrder`),
  KEY `iIntegIngresso` (`iIntegIngresso`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_tags`
--

DROP TABLE IF EXISTS `_ecom_cad_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_tags` (
  `ID_Tag` int(9) NOT NULL AUTO_INCREMENT,
  `sTag` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Tag`),
  UNIQUE KEY `sTag` (`sTag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_termos_condicoes`
--

DROP TABLE IF EXISTS `_ecom_cad_termos_condicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_termos_condicoes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sTermos` text NOT NULL,
  `iExibir` smallint(1) NOT NULL,
  `iValorPadrao` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Vazio; 1 = Selecionado',
  `iVersao` int(2) NOT NULL DEFAULT '1',
  `dtEdicao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cad_whitelist`
--

DROP TABLE IF EXISTS `_ecom_cad_whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cad_whitelist` (
  `ID_WhiteList` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserCliente` int(9) NOT NULL,
  `IDE_UserAdicionou` int(9) NOT NULL,
  `dtDataAdicionou` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`ID_WhiteList`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `IDE_UserCliente` (`IDE_UserCliente`),
  KEY `IDE_UserAdicionou` (`IDE_UserAdicionou`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_carrinho`
--

DROP TABLE IF EXISTS `_ecom_carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_carrinho` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `sCodigoCarrinho` varchar(255) NOT NULL,
  `dDataAdicionado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iTipo` smallint(2) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `IDE_Item` int(9) NOT NULL,
  `IDE_ProdutoSugestao` int(11) NOT NULL,
  `status` smallint(1) NOT NULL COMMENT '0 = Deletado / 1 = Ativo',
  `iNotifCart` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `IDE_UserLogado` (`IDE_UserLogado`),
  KEY `sIP` (`sIP`),
  KEY `IDE_Item` (`IDE_Item`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cielo_cardtoken`
--

DROP TABLE IF EXISTS `_ecom_cielo_cardtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cielo_cardtoken` (
  `ID_CardToken` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Loja` int(11) NOT NULL,
  `IDE_User` int(11) NOT NULL,
  `sCardNumber` varchar(30) NOT NULL,
  `sBrand` varchar(12) NOT NULL,
  `iCvv` int(4) NOT NULL,
  `sValidade` varchar(10) NOT NULL,
  `sToken` varchar(255) NOT NULL,
  `dtTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_CardToken`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_cliente_notafiscal`
--

DROP TABLE IF EXISTS `_ecom_cliente_notafiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_cliente_notafiscal` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserCliente` int(9) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `iTipoNF` tinyint(1) NOT NULL DEFAULT '0',
  `sCPF` varchar(15) NOT NULL,
  `sNomeCompleto` varchar(255) NOT NULL,
  `sCNPJ` varchar(25) NOT NULL,
  `sRazaoSocial` varchar(255) NOT NULL,
  `sInscricaoEstadual` varchar(20) NOT NULL,
  `iIEIsento` tinyint(1) NOT NULL DEFAULT '0',
  `sEmail` varchar(255) NOT NULL,
  `iPais` int(7) NOT NULL,
  `sEstado` varchar(2) NOT NULL,
  `iCidade` int(7) NOT NULL,
  `sBairro` varchar(255) NOT NULL,
  `sEndereco` varchar(255) NOT NULL,
  `sNumero` varchar(20) NOT NULL,
  `sComplemento` varchar(255) NOT NULL,
  `sCEP` varchar(12) NOT NULL,
  `dtUltimaAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDE_UserLojaUltimaAlt` int(9) NOT NULL,
  UNIQUE KEY `idx_ideusercliente_ideuserloja` (`IDE_UserLoja`,`IDE_UserCliente`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_contrato`
--

DROP TABLE IF EXISTS `_ecom_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_contrato` (
  `ID_Contrato` int(9) NOT NULL AUTO_INCREMENT,
  `sNome` varchar(255) NOT NULL,
  `sContrato` text NOT NULL,
  `dtInicioVigenciaAviso` date NOT NULL,
  `dtTerminoVigenciaAviso` date NOT NULL,
  `iDesativarLojas` tinyint(1) NOT NULL DEFAULT '0',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_UserCadastro` int(9) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Contrato`),
  KEY `idx_sts_dtini` (`iStatus`,`dtInicioVigenciaAviso`) USING BTREE,
  KEY `idx_dttrm` (`dtTerminoVigenciaAviso`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_contrato_aceite`
--

DROP TABLE IF EXISTS `_ecom_contrato_aceite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_contrato_aceite` (
  `IDE_Contrato` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `dtAceite` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  UNIQUE KEY `IDE_Contrato` (`IDE_Contrato`,`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_contrato_desligar`
--

DROP TABLE IF EXISTS `_ecom_contrato_desligar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_contrato_desligar` (
  `IDE_Contrato` int(9) NOT NULL,
  `IDE_UserLoja` int(9) NOT NULL,
  `dtDesligado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iEnvioEmail` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_con_usr` (`IDE_Contrato`,`IDE_UserLoja`) USING BTREE,
  KEY `idx_env` (`iEnvioEmail`) USING BTREE,
  KEY `idx_usr` (`IDE_UserLoja`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_correios_access_data`
--

DROP TABLE IF EXISTS `_ecom_correios_access_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_correios_access_data` (
  `ID_AccessData` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(11) NOT NULL,
  `sUsuario` varchar(30) NOT NULL,
  `sSenha` varchar(30) NOT NULL,
  `sCodAdministrativo` varchar(30) NOT NULL,
  `sNumeroContrato` varchar(30) NOT NULL,
  `sCartaoPostagem` varchar(30) NOT NULL,
  `sCnpjEmpresa` varchar(15) NOT NULL,
  `iDiretoria` smallint(2) NOT NULL,
  `sPathLogo` varchar(60) NOT NULL,
  PRIMARY KEY (`ID_AccessData`),
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_correios_embalagens`
--

DROP TABLE IF EXISTS `_ecom_correios_embalagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_correios_embalagens` (
  `ID_Embalagem` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(11) NOT NULL,
  `sNome` varchar(20) NOT NULL,
  `sTipo` varchar(3) NOT NULL,
  `iAltura` smallint(3) NOT NULL,
  `iLargura` smallint(3) NOT NULL,
  `iComprimento` smallint(3) NOT NULL,
  `iDiametro` smallint(3) NOT NULL,
  PRIMARY KEY (`ID_Embalagem`),
  KEY `idx_where_1` (`IDE_User`,`ID_Embalagem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_correios_etiquetas`
--

DROP TABLE IF EXISTS `_ecom_correios_etiquetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_correios_etiquetas` (
  `ID_Etiqueta` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(11) NOT NULL,
  `IDE_Venda` int(11) NOT NULL,
  `IDE_Plp` int(11) NOT NULL DEFAULT '0',
  `IDE_Embalagem` int(11) NOT NULL,
  `sNF` varchar(7) NOT NULL,
  `sEtiquetaSemDv` varchar(15) NOT NULL,
  `sEtiquetaComDv` varchar(15) NOT NULL,
  `iFormaEnvio` varchar(5) NOT NULL,
  `iAR` smallint(1) NOT NULL,
  `iMP` smallint(1) NOT NULL,
  `iVD` smallint(1) NOT NULL,
  `dValorDeclarado` decimal(10,2) DEFAULT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Etiqueta`),
  UNIQUE KEY `IDE_Venda` (`IDE_Venda`),
  KEY `IDE_Plp` (`IDE_Plp`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_correios_plp`
--

DROP TABLE IF EXISTS `_ecom_correios_plp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_correios_plp` (
  `ID_Plp` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(11) NOT NULL,
  `dtFechamento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sCodigoPlp` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_Plp`),
  KEY `idx_where_1` (`IDE_User`,`ID_Plp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_correios_servicos_postagem`
--

DROP TABLE IF EXISTS `_ecom_correios_servicos_postagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_correios_servicos_postagem` (
  `ID_Servico` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(11) NOT NULL,
  `sCodigo` varchar(5) NOT NULL,
  `sDescricao` varchar(30) NOT NULL,
  `sID` varchar(6) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  PRIMARY KEY (`ID_Servico`),
  KEY `whereindex_1` (`IDE_User`,`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_frete_correios`
--

DROP TABLE IF EXISTS `_ecom_frete_correios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_frete_correios` (
  `IDE_UserLoja` int(9) NOT NULL,
  `CEP` varchar(10) NOT NULL,
  `sCookieCarrinho` varchar(75) NOT NULL,
  `sTokenFrete` varchar(75) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtGerado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `sCodigoEmpresaECT` varchar(75) NOT NULL,
  `sSenhaECT` varchar(75) NOT NULL,
  `id` int(9) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `nomeEnvio` varchar(50) NOT NULL,
  `descricao` text NOT NULL,
  `seguro` decimal(10,2) NOT NULL,
  `taxa` decimal(10,2) NOT NULL,
  `iConDescPag` tinyint(4) NOT NULL,
  `dPrecoMin` decimal(10,2) NOT NULL,
  `dPrecoMax` decimal(10,2) NOT NULL,
  `iRequisitoData` tinyint(1) NOT NULL,
  `iPrazoRetirar` tinyint(2) NOT NULL,
  `iInformarPrazoEntrega` tinyint(1) NOT NULL,
  `iSomarDiasPrazoEntrega` tinyint(2) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `PrazoEntrega` varchar(10) NOT NULL,
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `sCookieCarrinho` (`sCookieCarrinho`),
  KEY `sTokenFrete` (`sTokenFrete`),
  KEY `iStatus` (`iStatus`),
  KEY `id` (`id`),
  KEY `valor` (`valor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_func_acessos`
--

DROP TABLE IF EXISTS `_ecom_func_acessos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_func_acessos` (
  `ID_Acesso` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `sAcessoKey` varchar(40) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Acesso`),
  KEY `idx_loj_usr_sts_key` (`IDE_Loja`,`IDE_User`,`iStatus`,`sAcessoKey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_itens_agrupados`
--

DROP TABLE IF EXISTS `_ecom_itens_agrupados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_itens_agrupados` (
  `ID_Agrupamento` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `sNome` varchar(255) NOT NULL,
  `iProdutos` tinyint(1) NOT NULL DEFAULT '0',
  `iEdicoes` tinyint(1) NOT NULL DEFAULT '0',
  `iCards` tinyint(1) NOT NULL DEFAULT '0',
  `iOrdenacao` tinyint(1) NOT NULL DEFAULT '1',
  `iPrioridadeProd` tinyint(1) NOT NULL DEFAULT '1',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Agrupamento`),
  KEY `idx_usr_sts_nme` (`IDE_UserLoja`,`iStatus`,`sNome`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_itens_agrupados_cards`
--

DROP TABLE IF EXISTS `_ecom_itens_agrupados_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_itens_agrupados_cards` (
  `IDE_Agrupamento` int(9) NOT NULL,
  `iTCG` tinyint(2) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_unique` (`IDE_Agrupamento`,`iTCG`,`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `idx_tcg_crd_edc_num` (`iTCG`,`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_itens_agrupados_edicoes`
--

DROP TABLE IF EXISTS `_ecom_itens_agrupados_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_itens_agrupados_edicoes` (
  `IDE_Agrupamento` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  UNIQUE KEY `idx_unique` (`IDE_Agrupamento`,`iTCG`,`IDE_Edicao`) USING BTREE,
  KEY `idx_tcg_edc` (`iTCG`,`IDE_Edicao`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_itens_agrupados_produtos`
--

DROP TABLE IF EXISTS `_ecom_itens_agrupados_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_itens_agrupados_produtos` (
  `IDE_Agrupamento` int(9) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  UNIQUE KEY `idx_unique` (`IDE_Agrupamento`,`IDE_Produto`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_itens_associados`
--

DROP TABLE IF EXISTS `_ecom_itens_associados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_itens_associados` (
  `ID_Associacao` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(11) NOT NULL,
  `iTCG` smallint(1) NOT NULL,
  `IDE_Contem` int(11) NOT NULL,
  `IDE_EdicaoContem` int(11) NOT NULL DEFAULT '0' COMMENT 'IDE_Edicao (Tcgs), IDE_ecom_Categoria (Produtos)',
  `sNumberContem` varchar(15) DEFAULT NULL,
  `IDE_Contido` int(11) NOT NULL,
  `IDE_EdicaoContido` int(11) NOT NULL DEFAULT '0' COMMENT 'IDE_Edicao (Tcgs), IDE_ecom_Categoria (Produtos)',
  `sNumberContido` varchar(15) DEFAULT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Associacao`),
  UNIQUE KEY `idx_unique` (`IDE_User`,`iTCG`,`IDE_Contem`,`IDE_EdicaoContem`,`sNumberContem`,`IDE_Contido`,`IDE_EdicaoContido`,`sNumberContido`),
  KEY `idx_join_1` (`IDE_User`,`iTCG`,`IDE_Contem`,`IDE_Contido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_log`
--

DROP TABLE IF EXISTS `_ecom_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_log` (
  `iTCG` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Item` int(9) NOT NULL DEFAULT '0',
  `IDE_User` int(9) NOT NULL,
  `dData` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iQuant_antes` int(4) NOT NULL,
  `iQuant_depois` int(4) NOT NULL,
  `dPreco_antes` decimal(10,2) NOT NULL,
  `dPreco_depois` decimal(10,2) NOT NULL,
  `iQualidade_antes` tinyint(1) NOT NULL,
  `iQualidade_depois` tinyint(1) NOT NULL,
  `iIdioma_antes` tinyint(1) NOT NULL,
  `iIdioma_depois` tinyint(1) NOT NULL,
  `status_antes` tinyint(1) NOT NULL,
  `status_depois` tinyint(1) NOT NULL,
  `dDescontoItem_antes` decimal(4,2) NOT NULL,
  `dDescontoItem_depois` decimal(4,2) NOT NULL,
  `dtDescItemInicio_antes` date NOT NULL DEFAULT '0000-00-00',
  `dtDescItemInicio_depois` date NOT NULL DEFAULT '0000-00-00',
  `dtDescItemFim_antes` date NOT NULL DEFAULT '0000-00-00',
  `dtDescItemFim_depois` date NOT NULL DEFAULT '0000-00-00',
  `IDE_EstoquePosicao_antes` int(5) NOT NULL DEFAULT '0',
  `IDE_EstoquePosicao_depois` int(5) NOT NULL DEFAULT '0',
  `iExtras_antes` int(10) NOT NULL DEFAULT '0',
  `iExtras_depois` int(10) NOT NULL DEFAULT '0',
  KEY `dData` (`dData`),
  KEY `idx_itcg_ideuser_ddata` (`iTCG`,`IDE_User`,`dData`) USING BTREE,
  KEY `IDE_User` (`IDE_User`),
  KEY `idx_itcg_itm_dt` (`iTCG`,`IDE_Item`,`dData`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_log_integracao`
--

DROP TABLE IF EXISTS `_ecom_log_integracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_log_integracao` (
  `ID_LI` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Venda` int(11) NOT NULL,
  `IDE_Sistema_Pagamentos` int(11) NOT NULL,
  `sCodigoTransacao` varchar(30) NOT NULL,
  `dtDataRecebida` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sLog` varchar(300) NOT NULL,
  `sApi` varchar(20) NOT NULL COMMENT '1 = Paypal; 2 = PagSeguro; 3 = MercadoPago ; 4 = TrayCheckout ; 5 = Cielo',
  PRIMARY KEY (`ID_LI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_multiloja_acessos`
--

DROP TABLE IF EXISTS `_ecom_multiloja_acessos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_multiloja_acessos` (
  `ID_Acesso` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserFunc` int(9) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_UserAdicionou` int(9) NOT NULL,
  `sIPAdicionou` varchar(15) NOT NULL,
  `dtAdicionou` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_UserRemoveu` varchar(15) NOT NULL,
  `dtRemoveu` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Acesso`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_UserFunc` (`IDE_UserFunc`),
  KEY `idx_lj_sts_func` (`IDE_UserLoja`,`iStatus`,`IDE_UserFunc`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_newsletter`
--

DROP TABLE IF EXISTS `_ecom_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_newsletter` (
  `IDE_UserLoja` int(9) NOT NULL,
  `sNome` varchar(60) NOT NULL,
  `sEmail` varchar(50) NOT NULL,
  `dtDataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`sEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_notificacao`
--

DROP TABLE IF EXISTS `_ecom_notificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_notificacao` (
  `ID_Notificacao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserPost` int(9) NOT NULL,
  `dtPost` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIPPost` varchar(15) NOT NULL,
  `sTitulo` varchar(255) NOT NULL,
  `sMensagem` text NOT NULL,
  PRIMARY KEY (`ID_Notificacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_notificacao_destinatarios`
--

DROP TABLE IF EXISTS `_ecom_notificacao_destinatarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_notificacao_destinatarios` (
  `IDE_Notificacao` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Nao Lida / 2 = Lida / 0 = Removida',
  UNIQUE KEY `idx_fullindex` (`IDE_User`,`iStatus`,`IDE_Notificacao`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_pagamento_cartoes`
--

DROP TABLE IF EXISTS `_ecom_pagamento_cartoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_pagamento_cartoes` (
  `ID_CardToken` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(11) NOT NULL,
  `IDE_UserLoja` int(11) NOT NULL,
  `iPlataforma` smallint(1) NOT NULL,
  `sCardNumber` varchar(30) NOT NULL,
  `sBrand` varchar(12) NOT NULL,
  `iCvv` varchar(4) NOT NULL,
  `sValidade` varchar(10) NOT NULL,
  `dtValidade` date NOT NULL,
  `sToken` varchar(255) NOT NULL,
  `dtTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iNotifExpira` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_CardToken`),
  KEY `IDE_User` (`IDE_User`),
  KEY `sCardNumber` (`sCardNumber`),
  KEY `dtValidade` (`dtValidade`),
  KEY `iNotifExpira` (`iNotifExpira`),
  KEY `iPlataforma` (`iPlataforma`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_plugins_assinatura`
--

DROP TABLE IF EXISTS `_ecom_plugins_assinatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_plugins_assinatura` (
  `ID_PluginAssinatura` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `sPluginKey` varchar(40) NOT NULL,
  `dtEfetuouAssinatura` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtVencimento` date NOT NULL DEFAULT '0000-00-00',
  `dtProximaCobranca` date NOT NULL DEFAULT '0000-00-00',
  `iTentativasCobranca` int(2) NOT NULL DEFAULT '0',
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iEmailSemCC` smallint(1) NOT NULL DEFAULT '0',
  `iNovoDiaVencimento` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_PluginAssinatura`),
  KEY `dtVencimento` (`dtVencimento`),
  KEY `dtProximaCobranca` (`dtProximaCobranca`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_UserLoja_2` (`IDE_UserLoja`,`dtVencimento`,`iStatus`),
  KEY `sPluginKey` (`sPluginKey`),
  KEY `iTentativasCobranca` (`iTentativasCobranca`),
  KEY `iEmailSemCC` (`iEmailSemCC`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_regras_precos`
--

DROP TABLE IF EXISTS `_ecom_regras_precos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_regras_precos` (
  `ID_Regra` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserCriador` int(9) NOT NULL,
  `sNome` varchar(60) NOT NULL,
  `iPrecoDefinicao` tinyint(1) NOT NULL,
  `iPrecoFormaCalculo` tinyint(1) NOT NULL,
  `dPrecoValor` decimal(10,2) NOT NULL,
  `dPrecoMinimo` decimal(10,2) NOT NULL,
  `dPrecoMaximo` decimal(10,2) NOT NULL,
  `iAplicQuantDefinicao` tinyint(1) NOT NULL,
  `iAplicQuantValor` int(4) NOT NULL,
  `iAplicPrecoDefinicao` tinyint(1) NOT NULL,
  `dAplicPrecoValor` decimal(10,2) NOT NULL,
  `sAplicRaridade` varchar(150) NOT NULL,
  `sAplicIdioma` varchar(50) NOT NULL,
  `sAplicQualidade` varchar(50) NOT NULL,
  `iTipoCard` tinyint(1) NOT NULL DEFAULT '1',
  `sAplicExtras` varchar(150) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtAlteracao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Regra`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_UserCriador` (`IDE_UserCriador`),
  KEY `whereindex_2` (`ID_Regra`,`IDE_UserLoja`,`iStatus`) USING BTREE,
  KEY `whereindex_1` (`IDE_UserLoja`,`iStatus`,`iTCG`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_relatorio_estoque_hist`
--

DROP TABLE IF EXISTS `_ecom_relatorio_estoque_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_relatorio_estoque_hist` (
  `IDE_UserLoja` int(9) NOT NULL,
  `dtData` date NOT NULL DEFAULT '0000-00-00',
  `iTCG` tinyint(2) NOT NULL,
  `iQuant` int(9) NOT NULL,
  `dValor` decimal(14,2) NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`dtData`,`iTCG`),
  KEY `dtData` (`dtData`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_relatorio_estoque_sumario`
--

DROP TABLE IF EXISTS `_ecom_relatorio_estoque_sumario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_relatorio_estoque_sumario` (
  `IDE_UserLoja` int(9) NOT NULL,
  `dValor_1` decimal(12,2) NOT NULL,
  `dValor_2` decimal(12,2) NOT NULL,
  `dValor_3` decimal(12,2) NOT NULL,
  `dValor_4` decimal(12,2) NOT NULL,
  `dValor_5` decimal(12,2) NOT NULL,
  `dValor_6` decimal(12,2) NOT NULL,
  `dValor_7` decimal(12,2) NOT NULL,
  `dValor_90` decimal(12,2) NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_relatorio_financeiro`
--

DROP TABLE IF EXISTS `_ecom_relatorio_financeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_relatorio_financeiro` (
  `IDE_UserLoja` int(9) NOT NULL,
  `iChave` int(3) NOT NULL,
  `iAno` int(4) NOT NULL,
  `iMes` int(2) NOT NULL,
  `iTotal` int(7) NOT NULL,
  `dValor` decimal(10,2) NOT NULL,
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `iChave` (`iChave`),
  KEY `iAno` (`iAno`),
  KEY `iMes` (`iMes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_relatorio_financeiro_sumario`
--

DROP TABLE IF EXISTS `_ecom_relatorio_financeiro_sumario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_relatorio_financeiro_sumario` (
  `IDE_UserLoja` int(9) NOT NULL,
  `dMesAtual` decimal(10,2) NOT NULL,
  `dMesAnterior` decimal(10,2) NOT NULL,
  `dUltimosTresMeses` decimal(10,2) NOT NULL,
  `dUltimoSeisMeses` decimal(10,2) NOT NULL,
  `dAnoAtual` decimal(10,2) NOT NULL,
  `dAnoAnterior` decimal(10,2) NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `dMesAtual` (`dMesAtual`),
  KEY `dMesAnterior` (`dMesAnterior`),
  KEY `dUltimosTresMeses` (`dUltimosTresMeses`),
  KEY `dUltimoSeisMeses` (`dUltimoSeisMeses`),
  KEY `dAnoAtual` (`dAnoAtual`),
  KEY `dAnoAnterior` (`dAnoAnterior`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_relatorio_status`
--

DROP TABLE IF EXISTS `_ecom_relatorio_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_relatorio_status` (
  `IDE_UserLoja` int(9) NOT NULL,
  `dtRelatorioFinanceiro` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtHistoricoEstoque` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `dtRelatorioFinanceiro` (`dtRelatorioFinanceiro`),
  KEY `dtHistoricoEstoque` (`dtHistoricoEstoque`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_restock_alert`
--

DROP TABLE IF EXISTS `_ecom_restock_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_restock_alert` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserAlertar` int(9) NOT NULL,
  `iTipo` smallint(2) NOT NULL,
  `iTipoAntigo` smallint(2) NOT NULL DEFAULT '0',
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  `dtReqAlerta` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtAlertaEnviado` datetime NOT NULL,
  `status` smallint(1) NOT NULL COMMENT '1 = Aguardando Alerta / 2 = Item adicionado, Aguardando envio de alerta / 0 = Alerta enviado',
  `iFlagExportado` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_loj_crd_tpo_sts_ed_usr` (`IDE_UserLoja`,`IDE_CartaPrincipal`,`iTipo`,`status`,`IDE_Edicao`,`IDE_UserAlertar`) USING BTREE,
  KEY `idx_loj_prod_tpo_sts_usr` (`IDE_UserLoja`,`IDE_Produto`,`iTipo`,`status`,`IDE_UserAlertar`) USING BTREE,
  KEY `idx_sts_loj_usral_tpo` (`status`,`IDE_UserLoja`,`IDE_UserAlertar`,`iTipo`) USING BTREE,
  KEY `idx_tpo_ed_crd` (`iTipo`,`IDE_Edicao`,`IDE_CartaPrincipal`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_sys_categorias`
--

DROP TABLE IF EXISTS `_ecom_sys_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_sys_categorias` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `sNome` varchar(100) NOT NULL,
  `ID_CategoriaPai` int(9) NOT NULL,
  `iPosicao` int(6) NOT NULL DEFAULT '0',
  `iExibeCartasAvulsas` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Produto / 1 = Magic / 2 = Todas edições de Magic / 3 = Pokemon / 4 = Todas edições de Pokemon',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `dtGeracaoAssociados` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iPlataformas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `iPosicao` (`iPosicao`),
  KEY `dtGeracaoAssociados` (`dtGeracaoAssociados`),
  KEY `iPlataformas` (`iPlataformas`),
  KEY `ID_CategoriaPai` (`ID_CategoriaPai`,`status`,`iPlataformas`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_sys_produtos`
--

DROP TABLE IF EXISTS `_ecom_sys_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_sys_produtos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_sys_Categoria` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL COMMENT 'Preenchido quando nao e o admin da Ligamagic. Apenas informativo, nao deve ser usado como chave.',
  `sNomeProd` varchar(255) NOT NULL,
  `sNomeProdEN` varchar(255) NOT NULL,
  `sFabricante` varchar(60) NOT NULL,
  `sNCM` varchar(10) NOT NULL,
  `sICMSOrigem` varchar(1) NOT NULL,
  `sICMSST` varchar(3) NOT NULL,
  `sPISST` varchar(2) NOT NULL,
  `sCOFINSST` varchar(2) NOT NULL,
  `sDesc` text NOT NULL,
  `iPeso` int(6) NOT NULL,
  `iVolComp` decimal(4,2) NOT NULL,
  `iVollargura` decimal(4,2) NOT NULL,
  `iVolAltura` decimal(4,2) NOT NULL,
  `iFlagCartaReg` tinyint(1) NOT NULL,
  `iFlagPublic` tinyint(1) NOT NULL COMMENT '0 = Nao / 1 = Sim / -1 = Aguardando Aprovacao',
  `sImagem` varchar(120) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = Inativo / 1 = Ativo',
  `iTipoExibicao` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Quantidade / 2 = Peso',
  `sInfoAuxiliar` varchar(80) NOT NULL,
  `IDE_Produto` int(9) NOT NULL DEFAULT '0' COMMENT 'ID tabela prod_produtos',
  `dtCriacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de criacao, preenchido após 26/06/18',
  `dtLancamento` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_sys_Categoria` (`IDE_sys_Categoria`),
  KEY `IDE_User` (`IDE_User`),
  KEY `status` (`status`),
  KEY `iFlagPublic` (`iFlagPublic`),
  KEY `sNomeProd` (`sNomeProd`),
  KEY `dtCriacao` (`dtCriacao`),
  KEY `sNomeProdEN` (`sNomeProdEN`),
  KEY `IDE_Produto` (`IDE_Produto`,`status`,`iFlagPublic`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_tcgs`
--

DROP TABLE IF EXISTS `_ecom_tcgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_tcgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Nick` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(8) NOT NULL,
  `IDE_Limite` int(8) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuant` int(4) NOT NULL,
  `iQuantTotal` int(4) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `dDescontoItem` decimal(4,2) NOT NULL DEFAULT '0.00',
  `iQualidade` tinyint(1) NOT NULL,
  `iIdioma` tinyint(2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `iDestaque` tinyint(1) NOT NULL,
  `ultima_atualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtDescItemInicio` date NOT NULL DEFAULT '0000-00-00',
  `dtDescItemFim` date NOT NULL DEFAULT '0000-00-00',
  `iPossuiFoto` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_EstoquePosicao` int(6) NOT NULL,
  `IDE_RegraDesconto` int(9) NOT NULL,
  `iExtras` int(10) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iDestaque` (`iDestaque`),
  KEY `ultima_atualizacao` (`ultima_atualizacao`),
  KEY `dtDescItemInicio` (`dtDescItemInicio`),
  KEY `dtDescItemFim` (`dtDescItemFim`),
  KEY `sNumber` (`sNumber`),
  KEY `iQuant` (`iQuant`),
  KEY `iQualidade` (`iQualidade`),
  KEY `iIdioma` (`iIdioma`),
  KEY `dDescontoItem` (`dDescontoItem`),
  KEY `IDE_RegraDesconto` (`IDE_RegraDesconto`),
  KEY `iExtras` (`iExtras`),
  KEY `iQuantTotal` (`iQuantTotal`),
  KEY `iPossuiFoto` (`iPossuiFoto`),
  KEY `IDE_EstoquePosicao` (`IDE_EstoquePosicao`),
  KEY `where_desconto_1` (`iTCG`,`IDE_Nick`,`iQuant`,`dPreco`,`status`,`dDescontoItem`,`dtDescItemInicio`,`dtDescItemFim`) USING BTREE,
  KEY `where_desconto_2` (`iTCG`,`IDE_Nick`,`iQuant`,`dPreco`,`status`,`IDE_CartaUnica`,`dDescontoItem`,`dtDescItemInicio`,`dtDescItemFim`) USING BTREE,
  KEY `whereindex_3` (`status`,`iTCG`,`iQuant`,`IDE_Nick`,`IDE_Edicao`,`dPreco`) USING BTREE,
  KEY `home_2` (`IDE_Nick`,`iTCG`,`status`,`iQuant`,`IDE_Edicao`) USING BTREE,
  KEY `home_3` (`IDE_Nick`,`iTCG`,`status`,`iQuant`,`iExtras`) USING BTREE,
  KEY `home_4` (`IDE_Nick`,`iTCG`,`status`,`iQuant`,`iDestaque`,`iExtras`) USING BTREE,
  KEY `idx_associa` (`IDE_Nick`,`IDE_CartaUnica`,`IDE_Edicao`,`iTCG`,`sNumber`,`status`,`iQuant`,`IDE_EstoquePosicao`) USING BTREE,
  KEY `idx_usr_sts` (`IDE_Nick`,`status`) USING BTREE,
  KEY `idx_ext_tcg_sts_qnt_prc_crd` (`iExtras`,`iTCG`,`status`,`iQuant`,`dPreco`,`IDE_CartaUnica`) USING BTREE,
  KEY `idx_crd_tcg_sts_qnt_prc_ext` (`IDE_CartaUnica`,`iTCG`,`status`,`iQuant`,`dPreco`,`iExtras`) USING BTREE,
  KEY `IDE_CartaUnica` (`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`,`iQuant`,`dPreco`,`iTCG`,`status`) USING BTREE,
  KEY `IDE_Limite` (`IDE_Limite`,`status`,`iQuantTotal`,`iQuant`) USING BTREE,
  KEY `idx_orcamento` (`IDE_CartaUnica`,`IDE_Edicao`,`iTCG`,`status`,`iQuant`,`dPreco`,`iQualidade`,`iExtras`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1108 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_tcgs_editions_alias`
--

DROP TABLE IF EXISTS `_ecom_tcgs_editions_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_tcgs_editions_alias` (
  `IDE_UserLoja` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sAlias` varchar(9) NOT NULL,
  UNIQUE KEY `idx_usr_tcg_ed` (`IDE_UserLoja`,`iTCG`,`IDE_Edicao`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_tcgs_fotos`
--

DROP TABLE IF EXISTS `_ecom_tcgs_fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_tcgs_fotos` (
  `ID_TCG_Foto` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserUpload` int(9) NOT NULL,
  `iTCG` tinyint(2) NOT NULL,
  `IDE_Ecom_TCG` int(11) NOT NULL,
  `sFile` varchar(50) NOT NULL,
  `dtData` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  PRIMARY KEY (`ID_TCG_Foto`),
  KEY `IDE_Ecom_TCG` (`IDE_Ecom_TCG`),
  KEY `idx_lja_tcg_idecom_sts` (`IDE_UserLoja`,`iTCG`,`IDE_Ecom_TCG`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_tentativas_cupom`
--

DROP TABLE IF EXISTS `_ecom_tentativas_cupom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_tentativas_cupom` (
  `sIP` varchar(45) NOT NULL,
  `dtTentativa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `sIP` (`sIP`,`dtTentativa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda`
--

DROP TABLE IF EXISTS `_ecom_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserCompra` int(9) NOT NULL,
  `IDE_NotaFiscal` int(13) NOT NULL,
  `IDE_NotaFiscalDevolucao` int(13) NOT NULL,
  `IDE_End` int(9) NOT NULL,
  `IDE_Envio` int(9) NOT NULL,
  `sEnvioLabel` varchar(50) NOT NULL,
  `dEnvioPreco` decimal(10,2) NOT NULL,
  `IDE_Pagamento` int(9) NOT NULL,
  `sPagamentoLabel` varchar(150) NOT NULL,
  `sPagamentoInfo` text NOT NULL,
  `sPagamentoURL` varchar(255) NOT NULL,
  `iPagamentoDesconto` int(2) NOT NULL,
  `dPagamentoDescontoValor` decimal(10,2) NOT NULL,
  `dCompraValor` decimal(10,2) NOT NULL,
  `sInfoAdicional` text NOT NULL,
  `dDataCompra` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dDataUltimaAcao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sCodigoRastreio` varchar(16) NOT NULL,
  `iBloqueiaStatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Aceita alteração de status / 1 = Não altera mais',
  `iConfirmouPagamento` smallint(1) NOT NULL COMMENT '0 = Nao confirmou pagamento / 1 = Confirmou pagamento',
  `status` int(1) NOT NULL,
  `dPreOrder` date NOT NULL DEFAULT '0000-00-00',
  `dPagamentoTaxaConv` decimal(10,2) NOT NULL,
  `dPagamentoTaxaConvValor` decimal(10,2) NOT NULL,
  `iNumParcelas` int(2) NOT NULL DEFAULT '0',
  `dJurosPorc` decimal(5,2) NOT NULL DEFAULT '0.00',
  `dJurosValor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iRetirarBalcao` smallint(1) NOT NULL,
  `dValorReal` decimal(10,2) NOT NULL,
  `dPagamentoCredito` decimal(10,2) NOT NULL DEFAULT '0.00',
  `IDE_Cupom` int(9) NOT NULL DEFAULT '0',
  `dDescontoCupom` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sVolumeItens` varchar(64) NOT NULL COMMENT 'height x width x length (centimeters)',
  `iPeso` int(8) NOT NULL COMMENT 'weight (grams)',
  `iLeilao` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Venda aberta automaticamente via Leilao',
  `iEmailPagamento` tinyint(2) NOT NULL COMMENT '0 - Não enviou Email; 1 - Enviou email Aguardando Pagamento; 2 - Enviou Email Cancelando o pedido; 3 - Não vai enviar e-mail',
  `iFlagSeparado` smallint(1) NOT NULL DEFAULT '0',
  `iFlagMarketPlace` smallint(1) NOT NULL DEFAULT '0',
  `iIngresso` smallint(1) NOT NULL DEFAULT '0',
  `dtPrevRetBalcao` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `IDE_UserCompra` (`IDE_UserCompra`),
  KEY `IDE_End` (`IDE_End`),
  KEY `IDE_Envio` (`IDE_Envio`),
  KEY `IDE_Pagamento` (`IDE_Pagamento`),
  KEY `IDE_Cupom` (`IDE_Cupom`),
  KEY `dValorReal` (`dValorReal`),
  KEY `iEmailPagamento` (`iEmailPagamento`),
  KEY `iFlagSeparado` (`iFlagSeparado`),
  KEY `dDataCompra` (`dDataCompra`),
  KEY `iIngresso` (`iIngresso`),
  KEY `IDE_NotaFiscal` (`IDE_NotaFiscal`),
  KEY `IDE_UserLoja_2` (`IDE_UserLoja`,`IDE_UserCompra`),
  KEY `sCodigoRastreio` (`sCodigoRastreio`),
  KEY `idx_loja_status` (`IDE_UserLoja`,`status`,`dDataCompra`) USING BTREE,
  KEY `idx_sts_preo` (`status`,`dPreOrder`) USING BTREE,
  KEY `IDE_NotaFiscalDevolucao` (`IDE_NotaFiscalDevolucao`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_boletos`
--

DROP TABLE IF EXISTS `_ecom_venda_boletos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_boletos` (
  `ID_Boleto` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Pagamento` int(11) NOT NULL,
  `sUrlBoleto` varchar(255) NOT NULL,
  `iStatus` int(11) NOT NULL DEFAULT '1',
  `dtDueDate` date NOT NULL,
  PRIMARY KEY (`ID_Boleto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_cielo`
--

DROP TABLE IF EXISTS `_ecom_venda_cielo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_cielo` (
  `ID_VendaCielo` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Venda` int(11) NOT NULL,
  `sTipoPagamento` varchar(30) NOT NULL COMMENT 'Transferencia Eletronica, CreditCard, DebitCard, Boleto',
  `sPaymentId` varchar(255) NOT NULL COMMENT 'ID usado para retirar informações sobre o pagamento',
  `dtTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_VendaCielo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_comentarios`
--

DROP TABLE IF EXISTS `_ecom_venda_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_comentarios` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Venda` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `sComentario` text NOT NULL,
  `dData` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iNotifica` smallint(1) NOT NULL,
  `status` smallint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Venda` (`IDE_Venda`),
  KEY `IDE_User` (`IDE_User`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_itens`
--

DROP TABLE IF EXISTS `_ecom_venda_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_itens` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Venda` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Ecom_Item` int(9) NOT NULL,
  `IDE_Item_Unico` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuant` int(4) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `dDesconto` decimal(4,2) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL,
  `IDE_EstoquePosicao` int(6) NOT NULL DEFAULT '0',
  `iFlagSeparado` tinyint(1) NOT NULL DEFAULT '0',
  `iExtras` int(10) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `iTCG` (`iTCG`),
  KEY `IDE_Ecom_Item` (`IDE_Ecom_Item`),
  KEY `IDE_Item_Unico` (`IDE_Item_Unico`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `sNumber` (`sNumber`),
  KEY `dPreco` (`dPreco`),
  KEY `IDE_EstoquePosicao` (`IDE_EstoquePosicao`),
  KEY `iExtras` (`iExtras`),
  KEY `idx_vnd_tcg_itm_edc_num` (`IDE_Venda`,`iTCG`,`IDE_Item_Unico`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `idx_vnd_tcg_edc_ext_estq` (`IDE_Venda`,`iTCG`,`IDE_Edicao`,`iExtras`,`IDE_EstoquePosicao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_itens_ingressos`
--

DROP TABLE IF EXISTS `_ecom_venda_itens_ingressos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_itens_ingressos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Venda` int(9) NOT NULL,
  `IDE_Item` int(9) NOT NULL,
  `IDE_Ingresso` int(9) NOT NULL,
  `sNome` varchar(70) NOT NULL,
  `sDCI` varchar(30) NOT NULL,
  `sPopID` varchar(30) NOT NULL,
  `sDataNascimento` varchar(10) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_Deck` int(9) NOT NULL,
  `sCossy` varchar(30) NOT NULL,
  `sWizardsAccount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Venda` (`IDE_Venda`),
  KEY `IDE_Item` (`IDE_Item`),
  KEY `IDE_Ingresso` (`IDE_Ingresso`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Deck` (`IDE_Deck`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_leiloes`
--

DROP TABLE IF EXISTS `_ecom_venda_leiloes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_leiloes` (
  `IDE_Venda` int(9) NOT NULL,
  `IDE_Leilao` int(9) NOT NULL,
  UNIQUE KEY `IDE_Venda` (`IDE_Venda`,`IDE_Leilao`),
  KEY `IDE_Leilao` (`IDE_Leilao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_ligasegura`
--

DROP TABLE IF EXISTS `_ecom_venda_ligasegura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_ligasegura` (
  `IDE_Venda` int(9) NOT NULL,
  `IDE_FormaPag` int(9) NOT NULL,
  `ID_MetodoLigaSegura` tinyint(2) NOT NULL,
  UNIQUE KEY `IDE_Venda` (`IDE_Venda`),
  KEY `IDE_FormaPag` (`IDE_FormaPag`),
  KEY `ID_MetodoLigaSegura` (`ID_MetodoLigaSegura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_log`
--

DROP TABLE IF EXISTS `_ecom_venda_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_log` (
  `IDE_Venda` int(9) NOT NULL,
  `iTipoLog` tinyint(2) NOT NULL COMMENT '1 = Comprou ; 2 = Compra Cancelada; 3 = Compra Refeita',
  `IDE_User` int(11) NOT NULL,
  `dTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_Venda` (`IDE_Venda`),
  KEY `iTipoLog` (`iTipoLog`),
  KEY `IDE_User` (`IDE_User`),
  KEY `dTimeStamp` (`dTimeStamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_mercadopago`
--

DROP TABLE IF EXISTS `_ecom_venda_mercadopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_mercadopago` (
  `ID_VendaMP` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Venda` int(11) NOT NULL,
  `sTipoPagamento` varchar(30) NOT NULL COMMENT 'Cartão de Crédito ou Boleto',
  `dtTime` datetime NOT NULL,
  PRIMARY KEY (`ID_VendaMP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_pagamento`
--

DROP TABLE IF EXISTS `_ecom_venda_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_pagamento` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Venda` int(9) NOT NULL,
  `iTipoConfPag` smallint(1) NOT NULL COMMENT '(1 = Comprovante | 2 = Informações | 3 = Automático)',
  `sArquivo` varchar(150) NOT NULL,
  `iTipoPag` smallint(1) NOT NULL COMMENT '1 = Depósito Caixa Eletrônico\r\n2 = Depósito Caixa Banco (Atendente)\r\n3 = Transferência Eletrônica\r\n4 = Integração Automatica\r\n5 = Pagamento Integral com Crédito',
  `dtDataPag` date NOT NULL DEFAULT '0000-00-00',
  `dValorPag` decimal(10,2) NOT NULL,
  `sComentario` text NOT NULL,
  `dtAdicionado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iAnexoRemovido` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_Venda` (`IDE_Venda`),
  KEY `iAnexoRemovido` (`iAnexoRemovido`),
  KEY `dtAdicionado` (`dtAdicionado`),
  KEY `iTipoConfPag` (`iTipoConfPag`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_pagamentos_parcelas`
--

DROP TABLE IF EXISTS `_ecom_venda_pagamentos_parcelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_pagamentos_parcelas` (
  `ID_Parcela` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_FormaPag` int(11) NOT NULL,
  `iNumParcela` int(2) NOT NULL,
  `dJuros` decimal(5,2) NOT NULL,
  `iStatus` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Parcela`),
  KEY `IDE_FormaPag` (`IDE_FormaPag`),
  KEY `iNumParcela` (`iNumParcela`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_pagseguro`
--

DROP TABLE IF EXISTS `_ecom_venda_pagseguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_pagseguro` (
  `ID_VendaPagSeguro` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Venda` int(11) NOT NULL COMMENT 'id que vem da tabel de _ecom_venda',
  `iTipoPagamento` tinyint(1) NOT NULL COMMENT '3- Débito Online;  2 - Boleto; 1 - Cartão de Crédito',
  `iCodigoPagamento` smallint(2) NOT NULL COMMENT 'Este código secundario esta associado ao banco escolhido ou a bandeira do cartao de crédito escolhido',
  `sPaymentLink` text NOT NULL COMMENT 'link para pagar o boleto',
  `dtTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_VendaPagSeguro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_questionario`
--

DROP TABLE IF EXISTS `_ecom_venda_questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_questionario` (
  `IDE_Venda` int(9) NOT NULL,
  `IDE_Questionario` int(9) NOT NULL,
  `IDE_Resposta` int(9) NOT NULL,
  UNIQUE KEY `IDE_Venda` (`IDE_Venda`,`IDE_Questionario`,`IDE_Resposta`),
  KEY `IDE_Questionario` (`IDE_Questionario`),
  KEY `IDE_Resposta` (`IDE_Resposta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_status_log`
--

DROP TABLE IF EXISTS `_ecom_venda_status_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_status_log` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_Venda` int(9) NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `IDE_StatusNovo` int(9) NOT NULL,
  `dDataAlteracao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sTexto` text NOT NULL,
  `sTextoAux` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `IDE_UserLogado` (`IDE_UserLogado`),
  KEY `IDE_StatusNovo` (`IDE_StatusNovo`),
  KEY `IDE_Venda` (`IDE_Venda`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_sync_sistemapagamento`
--

DROP TABLE IF EXISTS `_ecom_venda_sync_sistemapagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_sync_sistemapagamento` (
  `IDE_Venda` int(11) NOT NULL,
  `IDE_SistemaPagamento` int(11) NOT NULL,
  KEY `IDE_Venda` (`IDE_Venda`),
  KEY `IDE_SistemaPagamento` (`IDE_SistemaPagamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ecom_venda_termos_condicoes`
--

DROP TABLE IF EXISTS `_ecom_venda_termos_condicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ecom_venda_termos_condicoes` (
  `ID_VendaTermos` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Venda` int(11) NOT NULL,
  `IDE_Termos` int(11) NOT NULL,
  `iVersao` int(2) NOT NULL,
  PRIMARY KEY (`ID_VendaTermos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_badwords`
--

DROP TABLE IF EXISTS `_forum_badwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_badwords` (
  `ID_Badword` int(9) NOT NULL AUTO_INCREMENT,
  `sPalavra` varchar(255) NOT NULL,
  `iStatus` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Inativo, 1 = Ativo',
  PRIMARY KEY (`ID_Badword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_banidos`
--

DROP TABLE IF EXISTS `_forum_banidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_banidos` (
  `ID_Banido` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Secao` int(9) NOT NULL DEFAULT '0',
  `moderadorID` int(13) NOT NULL,
  `nickBanidoID` int(13) NOT NULL,
  `DataExpira` date NOT NULL DEFAULT '0000-00-00',
  KEY `ID_Banido` (`ID_Banido`),
  KEY `IDE_Secao` (`IDE_Secao`),
  KEY `moderadorID` (`moderadorID`),
  KEY `nickBanidoID` (`nickBanidoID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_divisoes`
--

DROP TABLE IF EXISTS `_forum_divisoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_divisoes` (
  `ID_Divisao` int(9) NOT NULL AUTO_INCREMENT,
  `sNome` varchar(200) NOT NULL DEFAULT '',
  `iOrdem` int(9) NOT NULL DEFAULT '0',
  `sPais` char(3) NOT NULL DEFAULT '',
  `isAtivo` int(1) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  KEY `ID_Divisao` (`ID_Divisao`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_dono_secao`
--

DROP TABLE IF EXISTS `_forum_dono_secao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_dono_secao` (
  `ID_Dono_Secao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Secao` int(9) NOT NULL DEFAULT '0',
  `IDE_Perfil` int(13) NOT NULL,
  KEY `ID_Dono_Secao` (`ID_Dono_Secao`),
  KEY `IDE_Secao` (`IDE_Secao`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_enquete_principal`
--

DROP TABLE IF EXISTS `_forum_enquete_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_enquete_principal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic` int(9) NOT NULL DEFAULT '0',
  `escolha` int(2) NOT NULL DEFAULT '0',
  `campo` varchar(90) DEFAULT NULL,
  `votos` int(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_filtros`
--

DROP TABLE IF EXISTS `_forum_filtros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_filtros` (
  `ID_Filtro` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Secao` int(9) NOT NULL DEFAULT '0',
  `sTexto` varchar(200) NOT NULL DEFAULT '',
  `iOrdem` int(9) NOT NULL DEFAULT '0',
  `sPais` char(3) NOT NULL DEFAULT '',
  `isAtivo` int(1) NOT NULL DEFAULT '0',
  KEY `ID_Filtro` (`ID_Filtro`),
  KEY `IDE_Secao` (`IDE_Secao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_lista_acesso`
--

DROP TABLE IF EXISTS `_forum_lista_acesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_lista_acesso` (
  `ID_Lista_Acesso` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Secao` int(9) NOT NULL DEFAULT '0',
  `IDE_Perfil` int(13) NOT NULL,
  `isPendente` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Ativo; 1 = Pendente',
  KEY `ID_Lista_Acesso` (`ID_Lista_Acesso`),
  KEY `IDE_Secao` (`IDE_Secao`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_mensagens`
--

DROP TABLE IF EXISTS `_forum_mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_mensagens` (
  `ID_Mensagem` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Topico` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `IDE_Perfil` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(45) NOT NULL DEFAULT '',
  `Data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sMensagem` mediumtext NOT NULL,
  `isAtivo` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Mensagem`),
  KEY `ID_Mensagem` (`ID_Mensagem`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `isAtivo` (`isAtivo`),
  KEY `IDE_Topico_2` (`IDE_Topico`,`isAtivo`),
  KEY `Data` (`Data`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_moderador`
--

DROP TABLE IF EXISTS `_forum_moderador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_moderador` (
  `ID_Moderador` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Secao` int(9) NOT NULL DEFAULT '0',
  `IDE_Perfil` int(13) NOT NULL,
  KEY `ID_Moderador` (`ID_Moderador`),
  KEY `IDE_Secao` (`IDE_Secao`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_regras`
--

DROP TABLE IF EXISTS `_forum_regras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_regras` (
  `ID_Regra` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Secao` int(9) NOT NULL DEFAULT '0',
  `sRegra` text NOT NULL,
  KEY `ID_Regra` (`ID_Regra`),
  KEY `IDE_Secao` (`IDE_Secao`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_secoes`
--

DROP TABLE IF EXISTS `_forum_secoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_secoes` (
  `ID_Secao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Divisao` int(9) NOT NULL DEFAULT '0',
  `sNome` varchar(200) NOT NULL DEFAULT '',
  `sDescricao` text NOT NULL,
  `totalTopicos` int(9) NOT NULL DEFAULT '0',
  `totalMensagens` int(9) NOT NULL DEFAULT '0',
  `tipoSecao` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `iOrdem` int(9) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '',
  `sPais` char(3) NOT NULL DEFAULT '',
  `isAtivo` int(1) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  `hasRestricoes` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Sem Restrições; 1 = Precisa estar na lista de acesso',
  `isListada` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Não listada; 1 = Listada',
  KEY `ID_Secao` (`ID_Secao`),
  KEY `IDE_Divisao` (`IDE_Divisao`),
  KEY `isListada` (`isListada`),
  KEY `hasRestricoes` (`hasRestricoes`),
  KEY `visible` (`visible`),
  KEY `isAtivo` (`isAtivo`),
  KEY `sPais` (`sPais`),
  KEY `status` (`status`),
  KEY `iOrdem` (`iOrdem`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_secoes_favoritas`
--

DROP TABLE IF EXISTS `_forum_secoes_favoritas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_secoes_favoritas` (
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_Secao` int(9) NOT NULL,
  `dtFavorito` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `IDE_Secao` (`IDE_Secao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_topicos`
--

DROP TABLE IF EXISTS `_forum_topicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_topicos` (
  `ID_Topico` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `IDE_Secao` smallint(2) unsigned NOT NULL DEFAULT '0',
  `sTitulo` varchar(200) NOT NULL DEFAULT '',
  `criadorID` int(13) NOT NULL,
  `dtCriacao` int(20) NOT NULL DEFAULT '0',
  `Hits` int(9) NOT NULL DEFAULT '0',
  `HitsDia` int(9) NOT NULL DEFAULT '0',
  `HitsSemana` int(9) NOT NULL DEFAULT '0',
  `HitsMes` int(9) NOT NULL DEFAULT '0',
  `Respostas` int(5) NOT NULL DEFAULT '0',
  `RespostasRemovidas` int(5) NOT NULL DEFAULT '0',
  `isFixo` tinyint(4) NOT NULL DEFAULT '0',
  `inTwitter` int(1) NOT NULL DEFAULT '0',
  `ultimoPostNickID` int(13) NOT NULL,
  `ultimoPostData` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 = Normal; 1 = Bloqueado; 2 = Boato; 3 = Cobertura; 4 = Deletado; 5 = Torneio; 6 = Torneios CLM',
  `IDE_UltimaMensagem` int(9) NOT NULL DEFAULT '0',
  `IDE_SecaoAntiga` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Topico`),
  KEY `ID_Topico` (`ID_Topico`),
  KEY `HitsDia` (`HitsDia`),
  KEY `HitsSemana` (`HitsSemana`),
  KEY `HitsMes` (`HitsMes`),
  KEY `isFixo` (`isFixo`),
  KEY `criadorID` (`criadorID`),
  KEY `ultimoPostNickID` (`ultimoPostNickID`),
  KEY `iStatus` (`status`),
  KEY `SecaoStatus` (`IDE_Secao`,`status`),
  KEY `ultimoPostData` (`ultimoPostData`),
  KEY `IDE_Secao_2` (`IDE_Secao`,`ultimoPostData`,`status`),
  KEY `IDE_UltimaMensagem` (`IDE_UltimaMensagem`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_topicos_cartas`
--

DROP TABLE IF EXISTS `_forum_topicos_cartas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_topicos_cartas` (
  `IDE_Topico` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Perfil` int(9) NOT NULL,
  KEY `IDE_Topico` (`IDE_Topico`,`IDE_CartaPrincipal`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_topicos_favoritos`
--

DROP TABLE IF EXISTS `_forum_topicos_favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_topicos_favoritos` (
  `IDE_Nick` int(13) NOT NULL,
  `IDE_Topico` int(13) NOT NULL,
  `dtFavorito` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_Nick` (`IDE_Nick`,`IDE_Topico`),
  KEY `IDE_Topico` (`IDE_Topico`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_topicos_primeiro_conteudo`
--

DROP TABLE IF EXISTS `_forum_topicos_primeiro_conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_topicos_primeiro_conteudo` (
  `IDE_Topico` mediumint(9) unsigned NOT NULL,
  `Data` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sMensagem` text NOT NULL,
  KEY `IDE_Topico` (`IDE_Topico`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_forum_topicos_visualizados`
--

DROP TABLE IF EXISTS `_forum_topicos_visualizados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_forum_topicos_visualizados` (
  `IDE_Topico` int(9) NOT NULL,
  `IDE_Perfil` int(13) NOT NULL,
  `dtVisualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `Topico_Perfil` (`IDE_Topico`,`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_inscricao_clm`
--

DROP TABLE IF EXISTS `_inscricao_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_inscricao_clm` (
  `ID_Compra` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_Pagamento` int(13) NOT NULL,
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_NotaFiscal` int(13) NOT NULL,
  `IP` varchar(45) NOT NULL,
  `dtCompra` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sNomeServico` varchar(255) NOT NULL,
  `fValor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fTaxas` decimal(10,2) NOT NULL DEFAULT '0.00',
  `apiLocal` int(1) NOT NULL COMMENT '1 = pagSeguro / 2 = paypal / 4 = trayCheckout / 5 = Banco do Brasil / 6 = Caixa Economica / 7 = Itau',
  `codigoAPI` varchar(255) NOT NULL,
  `nome` varchar(72) NOT NULL,
  `cpf` varchar(25) NOT NULL,
  `dci` varchar(25) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` varchar(25) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Cancelado; 1 = Aguardando; 9 = Ativo',
  PRIMARY KEY (`ID_Compra`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `status` (`status`),
  KEY `IDE_Pagamento` (`IDE_Pagamento`),
  KEY `IDE_NotaFiscal` (`IDE_NotaFiscal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lista_cartas_deletadas`
--

DROP TABLE IF EXISTS `_lista_cartas_deletadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lista_cartas_deletadas` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `dData` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sNomeInglesSA` varchar(100) NOT NULL,
  `sNomePortuguesSA` varchar(100) NOT NULL,
  `sNomeIngles` varchar(150) NOT NULL,
  `sNomePortugues` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`,`IDE_Edicao`)
) ENGINE=MyISAM AUTO_INCREMENT=1822 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lista_cartas_edicoes`
--

DROP TABLE IF EXISTS `_lista_cartas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lista_cartas_edicoes` (
  `ID_Edicao` int(5) NOT NULL AUTO_INCREMENT,
  `sNomeOficial` varchar(100) NOT NULL,
  `sNomeOficialSA` varchar(100) NOT NULL,
  `sNomePortugues` varchar(150) NOT NULL,
  `sNomePortuguesSA` varchar(150) NOT NULL,
  `sSigla` varchar(10) NOT NULL,
  `sSiglaMWS` varchar(10) NOT NULL,
  `dtRelease` date NOT NULL,
  `iTotalCartasEdicao` int(4) NOT NULL,
  `dPrecoMedioAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dPrecoHistoricoAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dPrecoSemanaAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dPrecoMesAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtExibeApp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iFlagPrioridadeOrderBy` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Edição normal / 2 = Listar edição por ultimo (usado em edições online ou especiais com baixa procura)',
  `iMagicArena` tinyint(1) NOT NULL DEFAULT '0',
  `iUsarImagemCards` tinyint(1) NOT NULL DEFAULT '0',
  `iUsarCalcPreco` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_EdicaoAgrupada` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Edicao`),
  UNIQUE KEY `sSigla` (`sSigla`),
  KEY `sNomeOficialSA` (`sNomeOficialSA`),
  KEY `sNomePortuguesSA` (`sNomePortuguesSA`),
  KEY `sNomePortugues` (`sNomePortugues`),
  KEY `sNomeOficial` (`sNomeOficial`),
  KEY `dtExibeApp` (`dtExibeApp`),
  KEY `iFlagPrioridadeOrderBy` (`iFlagPrioridadeOrderBy`),
  KEY `iMagicArena` (`iMagicArena`),
  KEY `iUsarImagemCards` (`iUsarImagemCards`),
  KEY `idx_idedicao_iusarcalcpreco` (`ID_Edicao`,`iUsarCalcPreco`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=479869 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lista_cartas_edicoes_precos`
--

DROP TABLE IF EXISTS `_lista_cartas_edicoes_precos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lista_cartas_edicoes_precos` (
  `IDE_Edicao` int(9) NOT NULL,
  `wiki_iTotalCards` int(5) NOT NULL,
  `wiki_iTotalComum` int(4) NOT NULL,
  `wiki_iTotalIncomum` int(4) NOT NULL,
  `wiki_iTotalRara` int(4) NOT NULL,
  `wiki_iTotalMitica` int(4) NOT NULL,
  `iTotalCardsPreco` int(5) NOT NULL,
  `iFoilTotalCardsPreco` int(5) NOT NULL,
  `dMenorPreco` decimal(10,2) NOT NULL,
  `dMedioPreco` decimal(10,2) NOT NULL,
  `dMaiorPreco` decimal(10,2) NOT NULL,
  `dFoilMenorPreco` decimal(10,2) NOT NULL,
  `dFoilMedioPreco` decimal(10,2) NOT NULL,
  `dFoilMaiorPreco` decimal(10,2) NOT NULL,
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iTotalCards` int(5) NOT NULL,
  `iTotalComum` int(4) NOT NULL,
  `iTotalIncomum` int(3) NOT NULL,
  `iTotalRara` int(3) NOT NULL,
  `iTotalMitica` int(3) NOT NULL,
  `iTotalOutros` int(3) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `dtUltimaAtualizacao` (`dtUltimaAtualizacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lista_cartas_unicas`
--

DROP TABLE IF EXISTS `_lista_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lista_cartas_unicas` (
  `IDE_CartaPrincipal` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_CartaPrincipal_Flip` int(9) NOT NULL,
  `iFlagCartaSecundaria` smallint(1) NOT NULL,
  `IDE_Formatos` bigint(20) NOT NULL DEFAULT '1' COMMENT 'ID_Formato',
  `IDE_Banidas` bigint(20) NOT NULL DEFAULT '1' COMMENT 'ID_Formato',
  `IDE_Restritas` bigint(20) NOT NULL DEFAULT '1' COMMENT 'ID_Formato',
  `IDE_DecksFormatos` bigint(20) NOT NULL DEFAULT '1',
  `sNomeInglesSA` varchar(150) NOT NULL,
  `sNomePortuguesSA` varchar(150) NOT NULL,
  `sNomeIngles` varchar(150) NOT NULL,
  `sNomePortugues` varchar(150) NOT NULL,
  `sPoder` varchar(15) NOT NULL,
  `sApenasPoder` varchar(4) NOT NULL DEFAULT '0',
  `sApenasResist` varchar(4) NOT NULL DEFAULT '0',
  `iCor` smallint(2) NOT NULL,
  `sCusto` varchar(50) NOT NULL,
  `sImagem` varchar(15) NOT NULL,
  `IDE_NickAlterou` int(9) NOT NULL,
  `iTipoCard` int(5) NOT NULL DEFAULT '0' COMMENT '(CardsMagic::getMTGCardTypes)',
  `iCustoManaConv` int(4) DEFAULT NULL,
  `iPauper` smallint(1) NOT NULL DEFAULT '0',
  `sNomeOrderBy` varchar(50) NOT NULL,
  `iLoyalty` char(2) NOT NULL,
  `sType` varchar(60) NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `iReservedList` tinyint(1) NOT NULL DEFAULT '0',
  `iBasicLand` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IDE_CartaPrincipal`),
  UNIQUE KEY `sNomeInglesSA` (`sNomeInglesSA`),
  KEY `sNomePortuguesSA` (`sNomePortuguesSA`),
  KEY `sNomeIngles` (`sNomeIngles`),
  KEY `sNomePortugues` (`sNomePortugues`),
  KEY `iCor` (`iCor`),
  KEY `IDE_Formatos` (`IDE_Formatos`),
  KEY `IDE_Banidas` (`IDE_Banidas`),
  KEY `IDE_Restritas` (`IDE_Restritas`),
  KEY `IDE_DecksFormatos` (`IDE_DecksFormatos`),
  KEY `iTipoCard` (`iTipoCard`),
  KEY `iCustoManaConv` (`iCustoManaConv`),
  KEY `iPauper` (`iPauper`),
  KEY `sImagem` (`sImagem`),
  KEY `sNomeOrderBy` (`sNomeOrderBy`),
  KEY `iLoyalty` (`iLoyalty`),
  KEY `sCusto` (`sCusto`),
  KEY `sPoder` (`sPoder`),
  KEY `sApenasPoder` (`sApenasPoder`),
  KEY `sApenasResist` (`sApenasResist`),
  KEY `iFlagCartaSecundaria` (`iFlagCartaSecundaria`),
  KEY `iReservedList` (`iReservedList`),
  KEY `iBasicLand` (`iBasicLand`),
  KEY `IDE_CartaPrincipal_Flip` (`IDE_CartaPrincipal_Flip`)
) ENGINE=InnoDB AUTO_INCREMENT=61120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lista_cartas_unicas_edicoes`
--

DROP TABLE IF EXISTS `_lista_cartas_unicas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lista_cartas_unicas_edicoes` (
  `IDE_CartaPrincipal` int(11) NOT NULL,
  `IDE_Edicao` int(5) NOT NULL,
  `iRaridade` smallint(1) NOT NULL COMMENT 'Sem raridade = 0 / Comum = 1 / Incomum = 2 / Rara = 3 / Mitica = 4 / Special = 5',
  `iID_Site` varchar(10) NOT NULL,
  `sNumberOrderBy` varchar(15) NOT NULL,
  `IDE_Artista` int(9) NOT NULL DEFAULT '0',
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iOnlyFoil` smallint(1) NOT NULL DEFAULT '0',
  `sPathImage` varchar(255) NOT NULL,
  UNIQUE KEY `IDE_CartaPrincipal_2` (`IDE_CartaPrincipal`,`IDE_Edicao`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iRaridade` (`iRaridade`),
  KEY `iOnlyFoil` (`iOnlyFoil`),
  KEY `idx_sys_raridade` (`IDE_CartaPrincipal`,`IDE_Edicao`,`iRaridade`) USING BTREE,
  KEY `IDE_Artista` (`IDE_Artista`),
  KEY `idx_iraridade_ideedicao` (`iRaridade`,`IDE_Edicao`) USING BTREE,
  KEY `sNumberOrderBy` (`sNumberOrderBy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lista_cartas_unicas_hits`
--

DROP TABLE IF EXISTS `_lista_cartas_unicas_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lista_cartas_unicas_hits` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `Hits` int(7) NOT NULL,
  `HitsDia` int(7) NOT NULL,
  `HitsSemana` int(7) NOT NULL,
  `HitsMes` int(7) NOT NULL,
  PRIMARY KEY (`IDE_CartaPrincipal`),
  KEY `Hits` (`Hits`),
  KEY `HitsDia` (`HitsDia`),
  KEY `HitsSemana` (`HitsSemana`),
  KEY `HitsMes` (`HitsMes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lista_cartas_unicas_hits_ips`
--

DROP TABLE IF EXISTS `_lista_cartas_unicas_hits_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lista_cartas_unicas_hits_ips` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtDataAcesso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `sIP` (`sIP`),
  KEY `dtDataAcesso` (`dtDataAcesso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lista_cartas_unicas_raridade_menor`
--

DROP TABLE IF EXISTS `_lista_cartas_unicas_raridade_menor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lista_cartas_unicas_raridade_menor` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_EdicaoMaior` int(9) NOT NULL,
  `IDE_EdicaoMaiorMagicArena` int(9) NOT NULL,
  `IDE_EdicaoUsarImagem` int(9) NOT NULL DEFAULT '0',
  `iMenorRaridade` tinyint(1) NOT NULL DEFAULT '0',
  `iMenorRaridadeMagicArena` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `iMenorRaridade` (`iMenorRaridade`),
  KEY `IDE_EdicaoMaior` (`IDE_EdicaoMaior`),
  KEY `IDE_EdicaoMaiorMagicArena` (`IDE_EdicaoMaiorMagicArena`),
  KEY `IDE_EdicaoUsarImagem` (`IDE_EdicaoUsarImagem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lista_idiomas`
--

DROP TABLE IF EXISTS `_lista_idiomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lista_idiomas` (
  `ID_Idioma` int(5) NOT NULL AUTO_INCREMENT,
  `sPais` varchar(5) NOT NULL,
  `sLabel` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Idioma`),
  UNIQUE KEY `sPais` (`sPais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_log_ips_bloqueados`
--

DROP TABLE IF EXISTS `_log_ips_bloqueados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_log_ips_bloqueados` (
  `IP` varchar(45) NOT NULL,
  `sAgente` varchar(255) NOT NULL,
  `dtBloqueio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isAtivo` int(1) NOT NULL DEFAULT '1',
  KEY `isAtivo` (`isAtivo`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_log_visitas`
--

DROP TABLE IF EXISTS `_log_visitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_log_visitas` (
  `IP` varchar(45) NOT NULL,
  `sAgente` varchar(255) NOT NULL,
  `dtVisita` date NOT NULL,
  `iContador` int(5) DEFAULT '1',
  PRIMARY KEY (`IP`,`dtVisita`),
  KEY `dtVisita` (`dtVisita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_agendamento`
--

DROP TABLE IF EXISTS `_lojas_agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_agendamento` (
  `ID_Agendamento` int(13) NOT NULL AUTO_INCREMENT,
  `iTCG` tinyint(2) NOT NULL DEFAULT '1',
  `IDE_Loja` int(9) NOT NULL,
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_Endereco` int(9) NOT NULL DEFAULT '0',
  `IDE_Topico` int(9) NOT NULL,
  `IDE_Facebook` varchar(255) NOT NULL,
  `sGoogleCalendar` varchar(255) NOT NULL,
  `sSanctioningNumber` varchar(80) NOT NULL,
  `sNomeTorneio` varchar(255) NOT NULL,
  `dtTorneio` datetime NOT NULL,
  `iTipo` int(2) NOT NULL DEFAULT '1' COMMENT 'Se normal, FNM, PTQ, GP ...',
  `iMultiplicador` int(1) NOT NULL DEFAULT '1',
  `iTipoTorneio` int(2) NOT NULL COMMENT 'Se Standard, Draft ...',
  `iGrupo` int(2) NOT NULL DEFAULT '0',
  `fInscricao` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iLimiteVagas` int(5) NOT NULL DEFAULT '0',
  `sDescricao` text NOT NULL,
  `sMotivoCancelamento` text NOT NULL,
  `iComentarios` int(9) NOT NULL DEFAULT '0',
  `iTotalInscritos` int(3) NOT NULL DEFAULT '0',
  `iHits` int(8) NOT NULL DEFAULT '0',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtCobranca` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iCadastraDeck` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Lojista; 1 = Jogador; 2 = Cadastrado',
  `iNecessitaLive` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Precisa; 1 = Precisa',
  `iSobInvestigacao` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não; 1 = Sim',
  `sLinkLive` varchar(255) NOT NULL,
  `isAvisado` int(1) NOT NULL DEFAULT '0',
  `iFlagCircuito` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Não é do Circuito, 1 = Etapa Regular, 2 = Etapa Top8, 3 = Aberto TopLojas, 4 = Aberto Diamante, 5 = Final',
  `iMarketing` tinyint(1) NOT NULL DEFAULT '0',
  `isAtivo` int(1) NOT NULL DEFAULT '1' COMMENT '1 = Ativo, 2 = Cancelado, 3 = Finalizado Sem Resultado, 4 = Finalizado com Resultado. 5 = Processado no Circuito, 6 = Torneio do Sistema de Decks, 7 = Sem Pendências Financeiras',
  `iDecksCadastrados` int(6) NOT NULL DEFAULT '0',
  `iDecksChecados` smallint(1) NOT NULL DEFAULT '0',
  `iMigrou` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Agendamento`),
  KEY `IDE_Endereco` (`IDE_Endereco`),
  KEY `isAvisado` (`isAvisado`),
  KEY `iTipo` (`iTipo`),
  KEY `dtCriacao` (`dtCriacao`),
  KEY `isAtivo` (`isAtivo`),
  KEY `IDE_Circuito` (`IDE_Circuito`),
  KEY `dtTorneio` (`dtTorneio`),
  KEY `iTipo_2` (`iTipo`,`isAtivo`),
  KEY `iMarketing` (`iMarketing`),
  KEY `iFlagCircuito` (`iFlagCircuito`),
  KEY `iTipoTorneio` (`iTipoTorneio`),
  KEY `iDecksCadastrados` (`iDecksCadastrados`),
  KEY `iDecksChecados` (`iDecksChecados`),
  KEY `iTCG` (`iTCG`),
  KEY `IDE_Loja_2` (`IDE_Loja`,`iTipoTorneio`),
  KEY `IDE_Loja_3` (`IDE_Loja`,`IDE_Circuito`,`iTipoTorneio`),
  KEY `iSobInvestigacao` (`iSobInvestigacao`),
  KEY `iMigrou` (`iMigrou`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_agendamento_pre_inscritos`
--

DROP TABLE IF EXISTS `_lojas_agendamento_pre_inscritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_agendamento_pre_inscritos` (
  `ID_PreInscrito` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Agendamento` int(9) NOT NULL,
  `IDE_Perfil` int(9) NOT NULL,
  `dtPreInscricao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 = Pendente, 2 = Confirmado, 3 = Cancelado',
  PRIMARY KEY (`ID_PreInscrito`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `IDE_Agendamento` (`IDE_Agendamento`),
  KEY `dtPreInscricao` (`dtPreInscricao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_agendamento_resultado`
--

DROP TABLE IF EXISTS `_lojas_agendamento_resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_agendamento_resultado` (
  `ID_Resultado` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Agendamento` int(9) NOT NULL,
  `iRodadaCircuito` int(2) NOT NULL DEFAULT '0',
  `iQtdJogadores` int(5) NOT NULL,
  `dtEnvioResultado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sNomeVencedor` varchar(255) NOT NULL,
  `dciVencedor` varchar(25) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 = Sem Pagamento, 2 = Pagamento Enviado, 3 = Pagamento Realizado, 4 = Processado no Circuito',
  PRIMARY KEY (`ID_Resultado`),
  KEY `dciVencedor` (`dciVencedor`),
  KEY `IDE_Agendamento` (`IDE_Agendamento`),
  KEY `status` (`status`),
  KEY `iRodadaCircuito` (`iRodadaCircuito`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_agendamento_resultado_jogadores`
--

DROP TABLE IF EXISTS `_lojas_agendamento_resultado_jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_agendamento_resultado_jogadores` (
  `IDE_Resultado` int(9) NOT NULL,
  `sNomeJogador` varchar(255) NOT NULL,
  `sDCI` varchar(25) NOT NULL,
  `iPosicao` int(5) NOT NULL,
  `sStand` varchar(25) NOT NULL,
  KEY `IDE_Resultado` (`IDE_Resultado`),
  KEY `sDCI` (`sDCI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_agendamento_wer`
--

DROP TABLE IF EXISTS `_lojas_agendamento_wer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_agendamento_wer` (
  `ID_WER` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Agendamento` int(9) NOT NULL,
  `sConteudo` longtext NOT NULL,
  PRIMARY KEY (`ID_WER`),
  KEY `IDE_Loja` (`IDE_Agendamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuito_classificacao`
--

DROP TABLE IF EXISTS `_lojas_circuito_classificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuito_classificacao` (
  `ID_Classificacao` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Agendamento` int(11) NOT NULL,
  `IDE_Jogador` int(11) NOT NULL,
  `iPosicao` int(5) NOT NULL,
  `iJogou` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Classificacao`),
  KEY `IDE_Agendamento` (`IDE_Agendamento`),
  KEY `IDE_Jogador` (`IDE_Jogador`),
  KEY `iJogou` (`iJogou`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuito_grupos`
--

DROP TABLE IF EXISTS `_lojas_circuito_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuito_grupos` (
  `ID_Grupo` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `IDE_Jogador` int(11) NOT NULL,
  `iGrupo` int(2) NOT NULL,
  PRIMARY KEY (`ID_Grupo`),
  KEY `IDE_Circuito` (`IDE_Circuito`,`IDE_Loja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuito_inscritos`
--

DROP TABLE IF EXISTS `_lojas_circuito_inscritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuito_inscritos` (
  `ID_Inscrito` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Jogador` int(9) NOT NULL,
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_Deck` int(9) NOT NULL,
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_Agendamento` int(13) NOT NULL,
  `IDE_ContaBancaria` int(9) NOT NULL,
  `sTamanhoCamiseta` varchar(2) NOT NULL,
  `dtInscricao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Inscrito`),
  KEY `IDE_Jogador` (`IDE_Jogador`),
  KEY `IDE_ContaBancaria` (`IDE_ContaBancaria`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `whereIndex_1` (`IDE_Agendamento`,`IDE_Perfil`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuito_jogadores`
--

DROP TABLE IF EXISTS `_lojas_circuito_jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuito_jogadores` (
  `ID_Jogador` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `iFormato` int(2) NOT NULL COMMENT '1 = Standard, 3 = Modern',
  `IDE_Perfil` int(13) NOT NULL,
  `sNome` varchar(255) NOT NULL,
  `sDCI` varchar(25) NOT NULL,
  `fRanking` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iVaiJogarTop8` tinyint(1) NOT NULL DEFAULT '1',
  `iClassificado` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Classificado; 1 = Classificado Top8 - Vencedor; 2 = Classificado Top8 - Vice; 3 = Classificado Aberto; 4 = Classificado LCQ; 5 = Classificado Regular Acima de 32; 8 = Jogador Desistiu; 9 = Lojista com Pendencias',
  `iByes` int(1) NOT NULL DEFAULT '0',
  `IDE_AgendamentoClassificado` int(13) NOT NULL,
  `IDE_AgendamentoBye` int(13) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Jogador`),
  KEY `IDE_Loja` (`IDE_Loja`),
  KEY `IDE_ChaveComposta` (`IDE_Circuito`,`IDE_Loja`,`sNome`,`sDCI`),
  KEY `fRanking` (`fRanking`),
  KEY `iClassificado` (`iClassificado`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `iVaiJogarTop8` (`iVaiJogarTop8`),
  KEY `iByes` (`iByes`),
  KEY `IDE_AgendamentoClassificado` (`IDE_AgendamentoClassificado`),
  KEY `IDE_AgendamentoBye` (`IDE_AgendamentoBye`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuito_marketing`
--

DROP TABLE IF EXISTS `_lojas_circuito_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuito_marketing` (
  `ID_Marketing` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `dtMarketing` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Marketing`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuito_noticias`
--

DROP TABLE IF EXISTS `_lojas_circuito_noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuito_noticias` (
  `ID_Noticia` int(9) NOT NULL AUTO_INCREMENT,
  `iTipoNoticia` int(2) NOT NULL COMMENT '1 = LigaMagic, 2 = Anunciante, 3 = Normal',
  `IDE_Perfil` int(9) NOT NULL,
  `sURL` varchar(255) NOT NULL,
  `sImagem` varchar(50) NOT NULL,
  `dtDivulgacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iDuracao` int(3) NOT NULL,
  `iStatus` int(2) NOT NULL COMMENT '1 = Ativo, 2 = Aguardando, 3 = Normal, 4 = Removida',
  PRIMARY KEY (`ID_Noticia`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `iTipoNoticia` (`iTipoNoticia`),
  KEY `dtDivulgacao` (`dtDivulgacao`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuito_pontuacao`
--

DROP TABLE IF EXISTS `_lojas_circuito_pontuacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuito_pontuacao` (
  `ID_Pontuacao` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Classificacao` int(11) NOT NULL,
  `fPontuacao` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID_Pontuacao`),
  KEY `IDE_Classificacao` (`IDE_Classificacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuito_top8_jogos`
--

DROP TABLE IF EXISTS `_lojas_circuito_top8_jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuito_top8_jogos` (
  `ID_Top8_Jogos` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `iFormato` int(2) NOT NULL,
  `iJogo` int(1) NOT NULL,
  `sDCIVencedor` varchar(25) NOT NULL,
  `isAtivo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Torneio em Andamento; 1 = Torneio Finalizado',
  PRIMARY KEY (`ID_Top8_Jogos`),
  KEY `IDE_Circuito` (`IDE_Circuito`,`IDE_Loja`,`iFormato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuito_top8_players`
--

DROP TABLE IF EXISTS `_lojas_circuito_top8_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuito_top8_players` (
  `ID_Top8_Players` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `iFormato` int(2) NOT NULL,
  `IDE_Jogador` int(11) NOT NULL,
  `iPosicao_Top8` int(1) NOT NULL,
  PRIMARY KEY (`ID_Top8_Players`),
  KEY `IDE_Circuito` (`IDE_Circuito`,`IDE_Loja`,`iFormato`),
  KEY `iPosicao_Top8` (`iPosicao_Top8`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_circuitos_cidades`
--

DROP TABLE IF EXISTS `_lojas_circuitos_cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_circuitos_cidades` (
  `IDE_Loja` int(9) NOT NULL,
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_Pais` int(9) NOT NULL,
  `sEstado` varchar(10) NOT NULL,
  `IDE_Cidade` int(9) NOT NULL,
  KEY `IDE_Loja` (`IDE_Loja`),
  KEY `IDE_Circuito` (`IDE_Circuito`),
  KEY `IDE_Pais` (`IDE_Pais`),
  KEY `sEstado` (`sEstado`),
  KEY `IDE_Cidade` (`IDE_Cidade`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_favoritas`
--

DROP TABLE IF EXISTS `_lojas_favoritas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_favoritas` (
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `dtFavorito` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `IDE_Loja` (`IDE_Loja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_plano_adesao`
--

DROP TABLE IF EXISTS `_lojas_plano_adesao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_plano_adesao` (
  `ID_PlanoAdesao` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Loja` int(9) NOT NULL,
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_LojasInscritas` int(9) NOT NULL,
  `IDE_Pagamento` int(13) NOT NULL,
  `IDE_NotaFiscal` int(13) NOT NULL,
  `IP` varchar(45) NOT NULL,
  `dtPagamento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fValor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fTaxas` decimal(10,2) NOT NULL DEFAULT '0.00',
  `apiLocal` int(1) NOT NULL COMMENT '0 = creditoVip, 1 = pagSeguro, 2 = payPal, 5 = Banco do Brasil, 6 = Caixa Economica, 7 = Itau',
  `codigoAPI` varchar(255) NOT NULL,
  `nome` varchar(72) NOT NULL,
  `cpf` varchar(25) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '2' COMMENT '1 = Ativo, 2 = Pendente, 3 = Cancelado',
  PRIMARY KEY (`ID_PlanoAdesao`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `status` (`status`),
  KEY `IDE_Agendamento` (`IDE_LojasInscritas`),
  KEY `IDE_Pagamento` (`IDE_Pagamento`),
  KEY `IDE_NotaFiscal` (`IDE_NotaFiscal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_lojas_repasse_valor`
--

DROP TABLE IF EXISTS `_lojas_repasse_valor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_lojas_repasse_valor` (
  `ID_Repasse` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Loja` int(9) NOT NULL,
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_Agendamento` int(9) NOT NULL,
  `IDE_Pagamento` int(13) NOT NULL,
  `IDE_NotaFiscal` int(13) NOT NULL,
  `IP` varchar(45) NOT NULL,
  `dtRepasse` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fValor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fTaxas` decimal(10,2) NOT NULL DEFAULT '0.00',
  `apiLocal` int(1) NOT NULL COMMENT '0 = creditoVip, 1 = pagSeguro, 2 = payPal, 5 = Banco do Brasil, 6 = Caixa Economica, 7 = Itau',
  `codigoAPI` varchar(255) NOT NULL,
  `nome` varchar(72) NOT NULL,
  `cpf` varchar(25) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '2' COMMENT '1 = Ativo, 2 = Pendente, 3 = Cancelado',
  PRIMARY KEY (`ID_Repasse`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `status` (`status`),
  KEY `IDE_Agendamento` (`IDE_Agendamento`),
  KEY `IDE_Pagamento` (`IDE_Pagamento`),
  KEY `IDE_NotaFiscal` (`IDE_NotaFiscal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ls_log_cc`
--

DROP TABLE IF EXISTS `_ls_log_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_ls_log_cc` (
  `IDE_Transacao` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `sCreditCard` varchar(5) NOT NULL,
  `sCardName` varchar(50) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtDataPagamento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `idx_usr_dt` (`IDE_User`,`dtDataPagamento`) USING BTREE,
  KEY `IDE_Transacao` (`IDE_Transacao`),
  KEY `sCreditCard` (`sCreditCard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_orcamento_busca`
--

DROP TABLE IF EXISTS `_orcamento_busca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_orcamento_busca` (
  `ID_Busca` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(11) NOT NULL,
  `iTipoBusca` smallint(1) NOT NULL,
  `sIdiomas` varchar(30) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  `dtBusca` datetime DEFAULT CURRENT_TIMESTAMP,
  `dtUltimaChecagemFila` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sIP` varchar(45) NOT NULL,
  `iAvalMedia` tinyint(1) NOT NULL DEFAULT '0',
  `iAvalEnvio` tinyint(1) NOT NULL DEFAULT '0',
  `sCidades` text NOT NULL,
  `iLojasFavoritas` tinyint(1) NOT NULL DEFAULT '0',
  `sLojasFavoritas` text NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `iQtdLojas` tinyint(3) unsigned DEFAULT NULL COMMENT '0 = Sem limite de lojas',
  PRIMARY KEY (`ID_Busca`),
  KEY `idx_status` (`iStatus`),
  KEY `IDE_User` (`IDE_User`),
  KEY `iTipoBusca` (`iTipoBusca`),
  KEY `dtBusca` (`dtBusca`),
  KEY `idx_busca_status` (`ID_Busca`,`iStatus`) USING BTREE,
  KEY `sIP` (`sIP`),
  KEY `idx_busca_user_status` (`ID_Busca`,`IDE_User`,`iStatus`) USING BTREE,
  KEY `dtUltimaChecagemFila` (`dtUltimaChecagemFila`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_orcamento_busca_detalhada_cartas`
--

DROP TABLE IF EXISTS `_orcamento_busca_detalhada_cartas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_orcamento_busca_detalhada_cartas` (
  `ID_BuscaDetalhada` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Busca` int(11) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_CartaUnica` int(11) NOT NULL,
  `IDE_Edicao` int(11) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iQuantidade` smallint(3) NOT NULL,
  `iExtras` int(11) NOT NULL,
  `iIdioma` smallint(1) NOT NULL,
  `iQualidade` smallint(1) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_BuscaDetalhada`),
  KEY `IDE_Busca` (`IDE_Busca`),
  KEY `IDE_CartaUnica` (`IDE_CartaUnica`),
  KEY `IDE_Edicao` (`IDE_Edicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_orcamento_busca_erros`
--

DROP TABLE IF EXISTS `_orcamento_busca_erros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_orcamento_busca_erros` (
  `ID_BuscaErro` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Busca` int(11) NOT NULL,
  `sErros` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_BuscaErro`),
  KEY `IDE_Busca` (`IDE_Busca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_orcamento_busca_resultado`
--

DROP TABLE IF EXISTS `_orcamento_busca_resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_orcamento_busca_resultado` (
  `ID_BuscaResultado` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Busca` int(11) NOT NULL,
  `IDE_Loja` int(11) NOT NULL,
  `IDE_CartaEcom` int(11) NOT NULL,
  `dtResultado` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_BuscaResultado`),
  KEY `IDE_Loja` (`IDE_Loja`),
  KEY `IDE_CartaEcom` (`IDE_CartaEcom`),
  KEY `idx_bsc_lja` (`IDE_Busca`,`IDE_Loja`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_orcamento_venda_busca`
--

DROP TABLE IF EXISTS `_orcamento_venda_busca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_orcamento_venda_busca` (
  `ID_Orcamento` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iType` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Key` int(9) NOT NULL,
  `dtBusca` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtBuscaValidade` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sPublicKey` varchar(50) NOT NULL,
  `iCardsTotal` int(6) NOT NULL DEFAULT '0',
  `iCardsAptos` int(6) NOT NULL DEFAULT '0',
  `sIP` varchar(45) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Orcamento`),
  KEY `dtBusca` (`dtBusca`),
  KEY `IDE_User` (`IDE_User`),
  KEY `dtBuscaValidade` (`dtBuscaValidade`),
  KEY `idx_key_type_dtv_usr` (`IDE_Key`,`iType`,`dtBuscaValidade`,`IDE_User`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_orcamento_venda_busca_resultado`
--

DROP TABLE IF EXISTS `_orcamento_venda_busca_resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_orcamento_venda_busca_resultado` (
  `IDE_Orcamento` int(9) NOT NULL,
  `IDE_UserLoja` int(9) NOT NULL,
  `iTotalCardsDif` int(6) NOT NULL,
  `iTotalCardsQuant` int(6) NOT NULL,
  `dTotalPreco` decimal(12,2) NOT NULL,
  KEY `iTotalCardsDif` (`iTotalCardsDif`),
  KEY `iTotalCardsQuant` (`iTotalCardsQuant`),
  KEY `dTotalPreco` (`dTotalPreco`),
  KEY `idx_orc_usr` (`IDE_Orcamento`,`IDE_UserLoja`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_anunciantes`
--

DROP TABLE IF EXISTS `admin_anunciantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_anunciantes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `site` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `contato` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `dataVencimento` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dataVencimentoLimite` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dataTerminoContrato` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `textoNotif` text NOT NULL,
  `status` smallint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `dataVencimento` (`dataVencimento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_anunciantes_banner`
--

DROP TABLE IF EXISTS `admin_anunciantes_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_anunciantes_banner` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Anunciante` int(9) NOT NULL,
  `banner` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Anunciante` (`IDE_Anunciante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_banners`
--

DROP TABLE IF EXISTS `admin_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_banners` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Anunciante` int(9) NOT NULL,
  `bannerNum` int(9) NOT NULL,
  `bannerPath` varchar(100) NOT NULL,
  `url` varchar(500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `dataCadastro` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(9) NOT NULL,
  `status` smallint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bannerNum` (`bannerNum`),
  KEY `status` (`status`),
  KEY `IDE_Anunciante` (`IDE_Anunciante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_grana`
--

DROP TABLE IF EXISTS `admin_grana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_grana` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data` varchar(10) DEFAULT NULL,
  `hora` varchar(8) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `IDE_Perfil` int(13) NOT NULL,
  `opcao` char(1) NOT NULL DEFAULT '',
  `oque` varchar(200) DEFAULT NULL,
  `valor` varchar(10) DEFAULT NULL,
  `level` char(1) DEFAULT NULL,
  `retirada` int(1) NOT NULL DEFAULT '0',
  `circuito` int(1) NOT NULL DEFAULT '0',
  `tags` text NOT NULL COMMENT 'tags separadas por vírgulas',
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `circuito` (`circuito`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_paises`
--

DROP TABLE IF EXISTS `admin_paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_paises` (
  `ID_Pais` int(9) NOT NULL AUTO_INCREMENT,
  `sPais` varchar(200) NOT NULL DEFAULT '',
  `sSigla` char(3) NOT NULL DEFAULT '',
  KEY `ID_Pais` (`ID_Pais`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_parametros`
--

DROP TABLE IF EXISTS `admin_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_parametros` (
  `ID_Parametro` int(9) NOT NULL AUTO_INCREMENT,
  `sParametro` varchar(50) NOT NULL,
  `sValor` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Parametro`),
  KEY `sParametro` (`sParametro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aniversario_quiz`
--

DROP TABLE IF EXISTS `aniversario_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aniversario_quiz` (
  `ID_Quiz` int(9) NOT NULL AUTO_INCREMENT,
  `hrProximo` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iUtilizado` int(1) NOT NULL DEFAULT '0',
  `sPergunta` text NOT NULL,
  KEY `ID_Quiz` (`ID_Quiz`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `archive_leilao_contabancaria`
--

DROP TABLE IF EXISTS `archive_leilao_contabancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_leilao_contabancaria` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `IDE_Conta` int(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Leilao` (`IDE_Leilao`),
  KEY `IDE_Conta` (`IDE_Conta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `archive_leilao_lances`
--

DROP TABLE IF EXISTS `archive_leilao_lances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_leilao_lances` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `IDE_Nick` int(9) NOT NULL,
  `dataLance` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `precoLance` decimal(10,2) NOT NULL,
  `tipo_negociacao` char(2) NOT NULL,
  `produtos_total` int(4) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `status` smallint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Leilao` (`IDE_Leilao`),
  KEY `IDE_Nick` (`IDE_Nick`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `archive_leilao_perguntas`
--

DROP TABLE IF EXISTS `archive_leilao_perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_leilao_perguntas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(10) DEFAULT NULL,
  `id_pergunta` int(10) DEFAULT NULL,
  `nick_pergunta` int(13) NOT NULL,
  `msg_pergunta` text,
  `ctime_pergunta` int(12) DEFAULT NULL,
  `ip_pergunta` varchar(16) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Leilao` (`IDE_Leilao`),
  KEY `nick_pergunta` (`nick_pergunta`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `archive_leilao_principal`
--

DROP TABLE IF EXISTS `archive_leilao_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_leilao_principal` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `id_nick` int(9) NOT NULL,
  `dataAbertura` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dataInicio` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dataTermino` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(100) NOT NULL,
  `info_destaque` text NOT NULL,
  `preco_inicial` decimal(10,2) NOT NULL,
  `preco_atual` decimal(10,2) NOT NULL,
  `preco_fixo` decimal(10,2) NOT NULL,
  `preco_incremento` decimal(10,2) NOT NULL,
  `preco_frete` decimal(10,2) NOT NULL,
  `recad_auto` int(2) NOT NULL,
  `min_ref` int(3) NOT NULL,
  `faz_parte_primeiro` smallint(2) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `status` smallint(2) NOT NULL,
  `lances` int(6) NOT NULL,
  `reserva_preco` decimal(10,2) NOT NULL,
  `reserva_id_nick` int(9) NOT NULL,
  `perguntas_comprador` int(6) NOT NULL,
  `respostas_vendedor` int(6) NOT NULL,
  `hits` int(7) NOT NULL,
  `vencedor_id_nick` int(9) NOT NULL,
  `tipo_negociacao` char(2) NOT NULL,
  `imagem_upload` smallint(1) NOT NULL,
  `sFreteCEP` varchar(9) NOT NULL,
  `dFreteSeguro` decimal(10,2) NOT NULL,
  `dFreteTaxaExtra` decimal(10,2) NOT NULL,
  `iFreteTipoCartaReg` smallint(1) NOT NULL,
  `iFreteTipoPAC` smallint(1) NOT NULL,
  `iFreteTipoSEDEX` smallint(1) NOT NULL,
  `iFreteTipoGratis` smallint(1) NOT NULL,
  `dFreteValorCartaReg` decimal(10,2) NOT NULL,
  `iIniciaUmReal` smallint(1) NOT NULL,
  `iDiasFazerSuaParte` int(2) NOT NULL,
  `IDE_UserMaiorLance` int(9) NOT NULL,
  `iSistemaNovo` smallint(1) NOT NULL,
  `abrir_neg_auto` smallint(1) NOT NULL,
  `iNotifPrimeiroLance` smallint(1) NOT NULL DEFAULT '0',
  `iAceitaLigaSegura` smallint(1) NOT NULL,
  `iFinalizadoPrecoFixo` smallint(1) NOT NULL,
  `iEcom` smallint(1) NOT NULL DEFAULT '0' COMMENT '1 = Criado via ECOM',
  `iCalculaDifPreco` smallint(1) NOT NULL DEFAULT '0',
  `dtUltimoCalcDifPreco` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dDifPrecoAtual` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dDifPrecoFixo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sEcomImage` varchar(255) DEFAULT NULL,
  `iImgChecadaNuvem` smallint(1) NOT NULL DEFAULT '0',
  `iConfigFreteNova` smallint(1) NOT NULL DEFAULT '0',
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `iImgChecked` smallint(1) NOT NULL DEFAULT '0',
  `sPathImagemCapa` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_UserMaiorLance` (`IDE_UserMaiorLance`),
  KEY `iCalculaDifPreco` (`iCalculaDifPreco`),
  KEY `dDifPrecoAtual` (`dDifPrecoAtual`),
  KEY `dDifPrecoFixo` (`dDifPrecoFixo`),
  KEY `idx_sts_tcg` (`status`,`iTCG`) USING BTREE,
  KEY `idx_dtmn_sts_tcg` (`dataTermino`,`status`,`iTCG`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `archive_leilao_principal_cartas`
--

DROP TABLE IF EXISTS `archive_leilao_principal_cartas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_leilao_principal_cartas` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iRaridade` smallint(1) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidade` smallint(1) NOT NULL,
  `iQuantidade` int(6) NOT NULL,
  `iExtras` int(10) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `iTCG` (`iTCG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `archive_leilao_principal_produtos`
--

DROP TABLE IF EXISTS `archive_leilao_principal_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_leilao_principal_produtos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `IDE_ecom_Produto` int(7) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `iCondicao` smallint(1) NOT NULL,
  `iQuantidade` int(6) NOT NULL,
  `sProduto` varchar(150) NOT NULL,
  `iPeso` int(7) NOT NULL,
  `iVolComp` decimal(10,2) NOT NULL,
  `iVolLargura` decimal(10,2) NOT NULL,
  `iVolAltura` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `artigos_artigo`
--

DROP TABLE IF EXISTS `artigos_artigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artigos_artigo` (
  `ID_Artigo` int(9) NOT NULL AUTO_INCREMENT,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `iTipoPost` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Artigo / 2 = Noticia',
  `sTitulo` varchar(70) NOT NULL,
  `sDescricao` text NOT NULL,
  `sTituloSA` varchar(100) NOT NULL,
  `sDescricaoSA` text NOT NULL,
  `sPostAntigo` text NOT NULL,
  `IDE_Post` int(9) NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `IDE_UserAutor` int(9) NOT NULL,
  `dDataPostagem` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data em que o Admin postou o Artigo no sistema.',
  `dDataAgendamento` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dDataPublicado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sImgCabecalho` varchar(100) NOT NULL,
  `sImgNoticia` varchar(100) NOT NULL,
  `sImgArtigos` varchar(100) NOT NULL,
  `sImgApp` varchar(100) NOT NULL,
  `iComentarios` int(5) NOT NULL,
  `iHits` int(7) NOT NULL,
  `iHitsDia` int(6) NOT NULL,
  `iHitsSemana` int(7) NOT NULL,
  `iHitsMes` int(9) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '2' COMMENT '0 = Deletado / 1 = Ativo / 2 = Agendado',
  `inTwitter` smallint(1) NOT NULL DEFAULT '0',
  `sTags` varchar(300) NOT NULL,
  `iPostadoHome` smallint(1) NOT NULL DEFAULT '0',
  `IDE_ArtigoAntigo` int(9) NOT NULL,
  `IDE_UserUltimoComent` int(9) NOT NULL,
  `dtUltimoComent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iTxtCreated` smallint(1) NOT NULL DEFAULT '0',
  `sImgNovaHome` varchar(100) NOT NULL,
  `sHomeTitulo` varchar(100) NOT NULL,
  `sHomeSubTitulo` varchar(100) NOT NULL,
  `IDE_UltimoComent` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Artigo`),
  KEY `IDE_UserAutor` (`IDE_UserAutor`),
  KEY `IDE_UserLogado` (`IDE_UserLogado`),
  KEY `IDE_Post` (`IDE_Post`),
  KEY `iStatus` (`iStatus`),
  KEY `sTituloSA` (`sTituloSA`),
  KEY `sTitulo` (`sTitulo`),
  KEY `dDataAgendamento` (`dDataAgendamento`),
  KEY `iComentarios` (`iComentarios`),
  KEY `iHits` (`iHits`),
  KEY `IDE_ArtigoAntigo` (`IDE_ArtigoAntigo`),
  KEY `dtUltimoComent` (`dtUltimoComent`),
  KEY `IDE_UserUltimoComent` (`IDE_UserUltimoComent`),
  KEY `iTipoPost` (`iTipoPost`),
  KEY `iTxtCreated` (`iTxtCreated`),
  KEY `IDE_UltimoComent` (`IDE_UltimoComent`),
  KEY `idx_tcg_sts_tpo` (`iTCG`,`iStatus`,`iTipoPost`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `artigos_artigo_comentarios`
--

DROP TABLE IF EXISTS `artigos_artigo_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artigos_artigo_comentarios` (
  `ID_Comentario` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Artigo` int(9) NOT NULL,
  `IDE_Nick` int(9) NOT NULL,
  `dData` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sComentario` text NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  PRIMARY KEY (`ID_Comentario`),
  KEY `IDE_Artigo` (`IDE_Artigo`),
  KEY `IDE_Nick` (`IDE_Nick`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Artigo_2` (`IDE_Artigo`,`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `artigos_artigo_favoritos`
--

DROP TABLE IF EXISTS `artigos_artigo_favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artigos_artigo_favoritos` (
  `IDE_Artigo` int(9) NOT NULL,
  `IDE_Nick` int(9) NOT NULL,
  `dFavorito` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_Artigo` (`IDE_Artigo`,`IDE_Nick`),
  KEY `IDE_Nick` (`IDE_Nick`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `artigos_artigo_tags`
--

DROP TABLE IF EXISTS `artigos_artigo_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artigos_artigo_tags` (
  `IDE_Tag` int(9) NOT NULL,
  `IDE_Artigo` int(9) NOT NULL,
  UNIQUE KEY `IDE_Tag` (`IDE_Tag`,`IDE_Artigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `artigos_cad_redatores`
--

DROP TABLE IF EXISTS `artigos_cad_redatores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artigos_cad_redatores` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_Nick` int(9) NOT NULL,
  `sNome` varchar(30) NOT NULL,
  `sFoto` varchar(60) NOT NULL,
  `sAssinatura` text NOT NULL,
  `sFacebook` varchar(100) NOT NULL,
  `sInstagram` varchar(100) NOT NULL,
  `sTwitter` varchar(100) NOT NULL,
  `IDE_NickCadastrou` int(9) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  `dDataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sYoutube` varchar(100) NOT NULL,
  `sTwitch` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Nick` (`IDE_Nick`),
  KEY `idx_tcg_sts` (`iTCG`,`iStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `artigos_tags`
--

DROP TABLE IF EXISTS `artigos_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artigos_tags` (
  `ID_Tag` int(9) NOT NULL AUTO_INCREMENT,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `sTag` varchar(60) NOT NULL,
  PRIMARY KEY (`ID_Tag`),
  UNIQUE KEY `ID_Tag` (`ID_Tag`,`sTag`),
  KEY `idx_tcg` (`iTCG`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `battlescenes_cartas_unicas`
--

DROP TABLE IF EXISTS `battlescenes_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battlescenes_cartas_unicas` (
  `ID_CartaUnica` int(9) NOT NULL AUTO_INCREMENT,
  `sNomePortugues` varchar(255) NOT NULL,
  `sNomePortuguesSA` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_CartaUnica`)
) ENGINE=InnoDB AUTO_INCREMENT=1276 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `battlescenes_cartas_unicas_edicoes`
--

DROP TABLE IF EXISTS `battlescenes_cartas_unicas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battlescenes_cartas_unicas_edicoes` (
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(11) NOT NULL,
  `sNumber` varchar(80) NOT NULL,
  `iRaridade` int(2) NOT NULL COMMENT '1 = Comum, 2 = Incomum, 3 = Raro, 4 = Super Raro, 5 = Ultra Raro, 6 = Promo',
  `sRaridade` varchar(80) NOT NULL,
  `sTipo` varchar(255) NOT NULL,
  `sPoder` varchar(255) NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `sLinkDownloadImage` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'incompleto, faltaImagem, semImagem, completo, erro',
  PRIMARY KEY (`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`),
  KEY `IDE_Edicao` (`IDE_Edicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `battlescenes_edicao`
--

DROP TABLE IF EXISTS `battlescenes_edicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battlescenes_edicao` (
  `ID_Edicao` int(9) NOT NULL AUTO_INCREMENT,
  `sPais` varchar(5) NOT NULL,
  `sSigla` varchar(20) NOT NULL,
  `sNome` varchar(255) NOT NULL,
  `sNomeSA` varchar(255) NOT NULL,
  `sImagePath` varchar(255) NOT NULL,
  `sLinkDownload` varchar(255) NOT NULL,
  `dtRelease` date NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'manual, pendente, processando, finalizado',
  `IDE_EdicaoAgrupada` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Edicao`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog_autores`
--

DROP TABLE IF EXISTS `blog_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_autores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nick_id` int(9) NOT NULL DEFAULT '0',
  `blog_principal_id` int(9) NOT NULL DEFAULT '0',
  `ctime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `nick_id_2` (`nick_id`),
  KEY `blog_principal_id` (`blog_principal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog_favoritos`
--

DROP TABLE IF EXISTS `blog_favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_favoritos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `blog_id` int(9) NOT NULL DEFAULT '0',
  `nick_id` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`),
  KEY `nick_id` (`nick_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog_mensagem`
--

DROP TABLE IF EXISTS `blog_mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_mensagem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_post` int(10) NOT NULL DEFAULT '0',
  `nick_id` int(9) NOT NULL DEFAULT '0',
  `ctime` int(10) NOT NULL DEFAULT '0',
  `mensagem` text NOT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `status` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_post` (`id_post`),
  KEY `nick_id` (`nick_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `IDE_Post` int(9) NOT NULL,
  `id_post` varchar(34) NOT NULL DEFAULT '',
  `nick_id` int(9) NOT NULL DEFAULT '0',
  `nickPost_id` int(9) NOT NULL,
  `titulo_blog` varchar(80) NOT NULL DEFAULT '',
  `tags_blog` varchar(80) NOT NULL DEFAULT '',
  `resume_blog` text NOT NULL,
  `sImagem` varchar(255) NOT NULL DEFAULT '',
  `post_blog` mediumtext NOT NULL,
  `ctime_post` varchar(10) NOT NULL DEFAULT '',
  `isPMSG` int(11) NOT NULL DEFAULT '0',
  `isControlReply` int(11) NOT NULL DEFAULT '0',
  `hits` int(9) NOT NULL DEFAULT '0',
  `HitsDia` int(9) NOT NULL DEFAULT '0',
  `HitsSemana` int(9) NOT NULL DEFAULT '0',
  `HitsMes` int(9) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT '' COMMENT '1 = Ativo; 2 = Inativo',
  `inTwitter` int(1) NOT NULL DEFAULT '0',
  `Respostas` int(5) NOT NULL DEFAULT '0',
  `RespostasRemovidas` int(5) NOT NULL DEFAULT '0',
  `ultimoPostNickID` int(13) NOT NULL,
  `ultimoPostData` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_blog` int(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nick_id` (`nick_id`),
  KEY `ultimoPostNickID` (`ultimoPostNickID`),
  KEY `id_blog` (`id_blog`),
  KEY `nickPost_id` (`nickPost_id`),
  KEY `ultimoPostData` (`ultimoPostData`),
  KEY `status_2` (`status`,`ultimoPostData`),
  KEY `IDE_Post` (`IDE_Post`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog_post_favorito`
--

DROP TABLE IF EXISTS `blog_post_favorito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post_favorito` (
  `IDE_Nick` int(13) NOT NULL,
  `IDE_Post` int(13) NOT NULL,
  `dtFavorito` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_Nick` (`IDE_Nick`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blog_principal`
--

DROP TABLE IF EXISTS `blog_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_principal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `IDE_Loja` int(9) NOT NULL,
  `nick_id` int(9) NOT NULL DEFAULT '0',
  `titulo_blog` varchar(250) NOT NULL DEFAULT '',
  `url_blog` varchar(250) NOT NULL DEFAULT '',
  `ctime_criado` int(10) NOT NULL DEFAULT '0',
  `lastpost_id` varchar(34) NOT NULL DEFAULT '0',
  `lastpost_ctime` int(10) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT '',
  `showHome` int(1) NOT NULL DEFAULT '1',
  `sSigla` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `sSigla` (`sSigla`),
  KEY `status` (`status`),
  KEY `nick_id` (`nick_id`),
  KEY `showHome` (`showHome`),
  KEY `IDE_Loja` (`IDE_Loja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_access_control`
--

DROP TABLE IF EXISTS `buylist_access_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_access_control` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserFuncionario` int(9) NOT NULL,
  `iRole` int(3) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`IDE_UserFuncionario`,`iRole`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_address`
--

DROP TABLE IF EXISTS `buylist_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_address` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_Address` int(9) NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`IDE_Address`),
  KEY `idx_primary` (`IDE_UserLoja`) USING BTREE,
  KEY `IDE_Address` (`IDE_Address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_address_balcao`
--

DROP TABLE IF EXISTS `buylist_address_balcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_address_balcao` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_Address` int(9) NOT NULL,
  `sInformacao` text NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`IDE_Address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_bulk`
--

DROP TABLE IF EXISTS `buylist_bulk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_bulk` (
  `ID_Buylist` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_Bulk` int(9) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Buylist`),
  KEY `idx_fullindex` (`IDE_UserLoja`,`IDE_Bulk`,`iStatus`) USING BTREE,
  KEY `IDE_Bulk` (`IDE_Bulk`),
  KEY `dPreco` (`dPreco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_bulk_itens`
--

DROP TABLE IF EXISTS `buylist_bulk_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_bulk_itens` (
  `ID_Bulk` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `sNome` varchar(80) NOT NULL,
  `iTipo` tinyint(1) NOT NULL DEFAULT '1',
  `iTipoMultiplo` int(7) NOT NULL,
  `sDescricao` text NOT NULL,
  `sImgPath` varchar(40) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Bulk`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `iStatus` (`iStatus`),
  KEY `sNome` (`sNome`),
  KEY `idx_ideuserloja_itcg_istatus` (`IDE_UserLoja`,`iTCG`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_cad_massa`
--

DROP TABLE IF EXISTS `buylist_cad_massa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_cad_massa` (
  `ID_CadMassa` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iTCG` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_CadMassa`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_cards`
--

DROP TABLE IF EXISTS `buylist_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_cards` (
  `ID_Buylist` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iExtras` tinyint(1) NOT NULL DEFAULT '1',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_CadMassa` int(9) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Buylist`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iExtras` (`iExtras`),
  KEY `IDE_CartaUnica` (`IDE_CartaUnica`),
  KEY `idx_fullindex` (`IDE_UserLoja`,`iTCG`,`IDE_Edicao`,`IDE_CartaUnica`,`sNumber`,`iExtras`,`iStatus`) USING BTREE,
  KEY `IDE_CadMassa` (`IDE_CadMassa`),
  KEY `idx_crd_sts_tcg` (`IDE_CartaUnica`,`iTCG`,`iStatus`) USING BTREE,
  KEY `idx_tcg_sts_ext` (`iTCG`,`iStatus`,`iExtras`) USING BTREE,
  KEY `idx_tcg_ed_crd_sts_ext_numb` (`iTCG`,`IDE_Edicao`,`IDE_CartaUnica`,`iStatus`,`iExtras`,`sNumber`) USING BTREE,
  KEY `idx_usr_tcg_sts` (`IDE_UserLoja`,`iTCG`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_cart`
--

DROP TABLE IF EXISTS `buylist_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_cart` (
  `ID_Cart` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_Buylist` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidade` tinyint(1) NOT NULL DEFAULT '0',
  `iQuant` int(6) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Cart`),
  KEY `idx_fullindex` (`IDE_User`,`IDE_UserLoja`,`IDE_Buylist`,`iTCG`,`iStatus`,`iIdioma`,`iQualidade`) USING BTREE,
  KEY `idx_user_loja_status` (`IDE_User`,`IDE_UserLoja`,`iStatus`) USING BTREE,
  KEY `idx_user_loja_tcg_status` (`IDE_User`,`IDE_UserLoja`,`iTCG`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_cart_users`
--

DROP TABLE IF EXISTS `buylist_cart_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_cart_users` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserVenda` int(9) NOT NULL,
  `dtUltimaAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`IDE_UserVenda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_config`
--

DROP TABLE IF EXISTS `buylist_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_config` (
  `ID_Config` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `iTCG` tinyint(2) NOT NULL,
  `iTipoPrecificacao` tinyint(1) NOT NULL DEFAULT '1',
  `iPrecoBase` smallint(1) NOT NULL DEFAULT '0',
  `iQualidMNM` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidSP` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidMP` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidHP` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidD` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidPrimo` int(5) NOT NULL,
  `dQualidAutoMNM` tinyint(1) NOT NULL DEFAULT '0',
  `dQualidAutoSP` tinyint(1) NOT NULL DEFAULT '0',
  `dQualidAutoMP` tinyint(1) NOT NULL DEFAULT '0',
  `dQualidAutoHP` tinyint(1) NOT NULL DEFAULT '0',
  `dQualidAutoD` tinyint(1) NOT NULL DEFAULT '0',
  `dQualidManualSP` tinyint(1) NOT NULL DEFAULT '0',
  `dQualidManualMP` tinyint(1) NOT NULL DEFAULT '0',
  `dQualidManualHP` tinyint(1) NOT NULL DEFAULT '0',
  `dQualidManualD` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaDE` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaEN` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaES` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaFR` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaIT` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaJP` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaKO` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaPT` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaRU` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaTW` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaEE` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaAE` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaPrimo` bigint(12) NOT NULL,
  `dIdiomaAutoDE` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaAutoES` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaAutoFR` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaAutoIT` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaAutoJP` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaAutoKO` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaAutoRU` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaAutoTW` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaManualDE` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaManualES` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaManualFR` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaManualIT` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaManualJP` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaManualKO` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaManualRU` tinyint(1) NOT NULL DEFAULT '0',
  `dIdiomaManualTW` tinyint(1) NOT NULL DEFAULT '0',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Config`),
  KEY `idx_loja_itcg_status` (`IDE_UserLoja`,`iTCG`,`iStatus`) USING BTREE,
  KEY `idx_usrlj_qualid_tcg_sts_idm` (`IDE_UserLoja`,`iQualidPrimo`,`iTCG`,`iStatus`,`iIdiomaPrimo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_config_param`
--

DROP TABLE IF EXISTS `buylist_config_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_config_param` (
  `IDE_UserLoja` int(9) NOT NULL,
  `iMarketplace` tinyint(1) NOT NULL DEFAULT '1',
  `iAprovacaoAuto` tinyint(1) NOT NULL DEFAULT '0',
  `iValorMin` tinyint(1) NOT NULL DEFAULT '0',
  `dValorMin` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iValorMax` tinyint(1) NOT NULL DEFAULT '0',
  `dValorMax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iPublica` tinyint(1) NOT NULL DEFAULT '0',
  `iIdiomaPTEN` tinyint(1) NOT NULL DEFAULT '0',
  `iEmailPedidoNovo` tinyint(1) NOT NULL DEFAULT '0',
  `sEmailPedidoNovo` varchar(50) NOT NULL,
  `iExibeBuylistItens` tinyint(1) NOT NULL DEFAULT '1',
  `iVendaBalcao` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `iMarketplace` (`iMarketplace`),
  KEY `idx_usr_mkp_pbc` (`IDE_UserLoja`,`iMarketplace`,`iPublica`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_created`
--

DROP TABLE IF EXISTS `buylist_created`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_created` (
  `IDE_UserLoja` int(9) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIPCriacao` varchar(15) NOT NULL,
  `iEndereco` tinyint(1) NOT NULL DEFAULT '0',
  `iFormaPag` tinyint(1) NOT NULL DEFAULT '0',
  `iConfig` tinyint(1) NOT NULL DEFAULT '0',
  `iTermos` tinyint(1) NOT NULL DEFAULT '0',
  `iRegrasCards` tinyint(1) NOT NULL DEFAULT '0',
  `iPublica` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_ecom_precos`
--

DROP TABLE IF EXISTS `buylist_ecom_precos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_ecom_precos` (
  `IDE_UserLoja` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iTipoCard` tinyint(1) NOT NULL,
  `iEstoque` int(6) NOT NULL,
  `dPrecoMaior` decimal(10,2) NOT NULL,
  `dPrecoMedio` decimal(10,2) NOT NULL,
  `dPrecoMenor` decimal(10,2) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_unique` (`IDE_UserLoja`,`iTCG`,`IDE_Edicao`,`IDE_CartaUnica`,`iTipoCard`,`sNumber`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order`
--

DROP TABLE IF EXISTS `buylist_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order` (
  `ID_Order` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserVenda` int(9) NOT NULL,
  `IDE_EnderecoUserLoja` int(9) NOT NULL DEFAULT '0',
  `IDE_EnderecoUserVenda` int(9) NOT NULL,
  `IDE_Payment` int(9) NOT NULL,
  `IDE_ContaBancaria` int(9) NOT NULL,
  `IDE_Banco` int(6) NOT NULL DEFAULT '0',
  `iStatus` tinyint(2) NOT NULL,
  `iVersaoAtual` int(4) NOT NULL DEFAULT '1',
  `iItensAddEstoque` tinyint(1) NOT NULL DEFAULT '0',
  `dtDataVenda` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIPUserVenda` varchar(15) NOT NULL,
  `iFlagMarketPlace` tinyint(1) NOT NULL DEFAULT '0',
  `iFormaEnvio` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Order`),
  KEY `idx_ideuserloja_istatus` (`IDE_UserLoja`,`iStatus`) USING BTREE,
  KEY `idx_usrloja_flagmp` (`IDE_UserLoja`,`iFlagMarketPlace`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_attachment`
--

DROP TABLE IF EXISTS `buylist_order_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_attachment` (
  `ID_Attachment` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Order` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `sFilePath` varchar(125) NOT NULL,
  `sDescription` text NOT NULL,
  `dtCriado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Ativo / 0 = Removido',
  PRIMARY KEY (`ID_Attachment`),
  KEY `IDE_Order` (`IDE_Order`,`iStatus`),
  KEY `dtCriado` (`dtCriado`,`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_history`
--

DROP TABLE IF EXISTS `buylist_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_history` (
  `IDE_Order` int(9) NOT NULL,
  `dtHistorico` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_User` int(9) NOT NULL,
  `sHistorico` text NOT NULL,
  `sComentario` text NOT NULL,
  KEY `dtHistorico` (`dtHistorico`),
  KEY `IDE_Order` (`IDE_Order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_itens`
--

DROP TABLE IF EXISTS `buylist_order_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_itens` (
  `ID_OrderItem` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Order` int(9) NOT NULL,
  `IDE_Buylist` int(9) NOT NULL COMMENT 'ID da tabela buylist_bulk / buylist_cards / buylist_products',
  `IDE_OrderItem` int(9) NOT NULL,
  `iTCG` tinyint(2) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iQuant` int(5) NOT NULL,
  `IDE_Item_Unico` int(9) NOT NULL COMMENT 'IDE_CartaUnica para TCG / IDE_Produto para Produtos / IDE_Bulk para Bulk',
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iExtras` tinyint(1) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL,
  `IDE_Config` int(9) NOT NULL,
  `dPrecoBase` decimal(10,2) NOT NULL,
  `iVersao` int(4) NOT NULL DEFAULT '1',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_OrderItem`),
  KEY `idx_ord_vrs_tcg` (`IDE_Order`,`iVersao`,`iTCG`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_itens_addstock`
--

DROP TABLE IF EXISTS `buylist_order_itens_addstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_itens_addstock` (
  `IDE_OrderItem` int(9) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_OrderItem` (`IDE_OrderItem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_itens_types`
--

DROP TABLE IF EXISTS `buylist_order_itens_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_itens_types` (
  `IDE_Order` int(9) NOT NULL,
  `iMagic` tinyint(1) NOT NULL DEFAULT '0',
  `iPokemon` tinyint(1) NOT NULL DEFAULT '0',
  `iYugioh` tinyint(1) NOT NULL DEFAULT '0',
  `iBS` tinyint(1) NOT NULL DEFAULT '0',
  `iVanguard` tinyint(1) NOT NULL DEFAULT '0',
  `iStarWars` tinyint(1) NOT NULL DEFAULT '0',
  `iDragonBall` tinyint(1) NOT NULL DEFAULT '0',
  `iProduto` tinyint(1) NOT NULL DEFAULT '0',
  `iBulk` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Order` (`IDE_Order`),
  KEY `iMagic` (`iMagic`),
  KEY `iPokemon` (`iPokemon`),
  KEY `iYugioh` (`iYugioh`),
  KEY `iBS` (`iBS`),
  KEY `iVanguard` (`iVanguard`),
  KEY `iStarWars` (`iStarWars`),
  KEY `iDragonBall` (`iDragonBall`),
  KEY `iProduto` (`iProduto`),
  KEY `iBulk` (`iBulk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_ligasegura`
--

DROP TABLE IF EXISTS `buylist_order_ligasegura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_ligasegura` (
  `IDE_Order` int(9) NOT NULL,
  `iMeioDePagamento` tinyint(1) NOT NULL,
  `IDE_Transacao_A` int(9) NOT NULL,
  `IDE_Transacao_B` int(9) NOT NULL,
  `IDE_Neg` int(9) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_Order` (`IDE_Order`),
  KEY `IDE_Transacao_A` (`IDE_Transacao_A`),
  KEY `IDE_Neg` (`IDE_Neg`),
  KEY `IDE_Transacao_B` (`IDE_Transacao_B`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_status`
--

DROP TABLE IF EXISTS `buylist_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_status` (
  `IDE_Order` int(9) NOT NULL,
  `iStatus` tinyint(2) NOT NULL,
  `dtStatus` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_Order` (`IDE_Order`,`iStatus`),
  KEY `dtStatus` (`dtStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_tracking`
--

DROP TABLE IF EXISTS `buylist_order_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_tracking` (
  `IDE_Order` int(9) NOT NULL,
  `sTracking` varchar(70) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `dtPostado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_Order` (`IDE_Order`),
  KEY `dtPostado` (`dtPostado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_values`
--

DROP TABLE IF EXISTS `buylist_order_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_values` (
  `IDE_Order` int(9) NOT NULL,
  `iVersao` int(4) NOT NULL DEFAULT '1',
  `dValorPedido` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorBonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorTaxa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorTotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iTotalItens` int(6) NOT NULL DEFAULT '0',
  `iTotalItensDif` int(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Order` (`IDE_Order`,`iVersao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_order_versions`
--

DROP TABLE IF EXISTS `buylist_order_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_order_versions` (
  `IDE_Order` int(9) NOT NULL,
  `iVersao` int(4) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `dtVersaoCriada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_Order` (`IDE_Order`,`iVersao`),
  KEY `iVersao` (`iVersao`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_payment`
--

DROP TABLE IF EXISTS `buylist_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_payment` (
  `ID_Payment` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `iTipo` tinyint(1) NOT NULL DEFAULT '1',
  `iBancosAptos` tinyint(1) NOT NULL DEFAULT '1',
  `dAcrescimo` decimal(10,2) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Payment`),
  KEY `iTipo` (`iTipo`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`,`iStatus`,`iTipo`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_payment_banks`
--

DROP TABLE IF EXISTS `buylist_payment_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_payment_banks` (
  `IDE_Payment` int(9) NOT NULL,
  `IDE_Banco` int(6) NOT NULL,
  UNIQUE KEY `IDE_Payment` (`IDE_Payment`,`IDE_Banco`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_payment_summary`
--

DROP TABLE IF EXISTS `buylist_payment_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_payment_summary` (
  `IDE_UserLoja` int(9) NOT NULL,
  `iCredito` tinyint(1) DEFAULT '0',
  `iLigaSegura` tinyint(1) NOT NULL DEFAULT '0',
  `iBancos` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `iCredito` (`iCredito`),
  KEY `iLigaSegura` (`iLigaSegura`),
  KEY `iBancos` (`iBancos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_products`
--

DROP TABLE IF EXISTS `buylist_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_products` (
  `ID_Buylist` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Buylist`),
  KEY `IDE_Produto` (`IDE_Produto`),
  KEY `idx_fullindex` (`IDE_UserLoja`,`IDE_Produto`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buylist_terms`
--

DROP TABLE IF EXISTS `buylist_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buylist_terms` (
  `ID_Terms` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `iTipo` tinyint(1) NOT NULL,
  `sTopico` varchar(80) NOT NULL,
  `iOrdenacao` int(5) NOT NULL DEFAULT '1',
  `IDE_Post` int(9) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtCriado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dtAtualizado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Terms`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`,`iStatus`),
  KEY `iTipo` (`iTipo`),
  KEY `sTopico` (`sTopico`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_cards_have`
--

DROP TABLE IF EXISTS `bzr_cards_have`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_cards_have` (
  `ID_BazarCarta` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTCG` smallint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iQualidade` smallint(1) NOT NULL,
  `iIdioma` smallint(2) NOT NULL,
  `sComentario` text NOT NULL,
  `iExtras` int(10) NOT NULL DEFAULT '0',
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iFavorita` smallint(1) NOT NULL,
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_BazarCarta`),
  KEY `iTCG` (`iTCG`),
  KEY `iStatus` (`iStatus`),
  KEY `iFavorita` (`iFavorita`),
  KEY `iQualidade` (`iQualidade`),
  KEY `iExtras` (`iExtras`),
  KEY `iQuant` (`iQuant`),
  KEY `dPreco` (`dPreco`),
  KEY `idx_crd_tcg_usr_edc_num` (`IDE_CartaPrincipal`,`iTCG`,`IDE_User`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `idx_usr_tcg_sts_qnt` (`IDE_User`,`iTCG`,`iStatus`,`iQuant`) USING BTREE,
  KEY `idx_edc_crd_tcg_num_sts` (`IDE_Edicao`,`IDE_CartaPrincipal`,`iTCG`,`sNumber`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_cards_have_backup`
--

DROP TABLE IF EXISTS `bzr_cards_have_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_cards_have_backup` (
  `ID_BazarCarta` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTCG` smallint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iQualidade` smallint(1) NOT NULL,
  `iIdioma` smallint(2) NOT NULL,
  `sComentario` text NOT NULL,
  `iAssinada` smallint(1) NOT NULL,
  `iBuyABox` smallint(1) NOT NULL,
  `iFNM` smallint(1) NOT NULL,
  `iFoil` smallint(1) NOT NULL,
  `iPromo` smallint(1) NOT NULL,
  `iTextless` smallint(1) NOT NULL,
  `iAlterada` smallint(1) NOT NULL,
  `iOverSize` smallint(1) NOT NULL,
  `iDCI` smallint(1) NOT NULL,
  `iPreRelease` smallint(1) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iFavorita` smallint(1) NOT NULL,
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iReverseFoil` smallint(1) NOT NULL,
  `iEditionOne` smallint(1) NOT NULL,
  `iShadowless` smallint(1) NOT NULL,
  `iStaff` smallint(1) NOT NULL,
  PRIMARY KEY (`ID_BazarCarta`),
  KEY `IDE_User` (`IDE_User`),
  KEY `iTCG` (`iTCG`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iStatus` (`iStatus`),
  KEY `iFavorita` (`iFavorita`),
  KEY `iQualidade` (`iQualidade`),
  KEY `iIdioma` (`iIdioma`),
  KEY `iAssinada` (`iAssinada`),
  KEY `iBuyABox` (`iBuyABox`),
  KEY `iFNM` (`iFNM`),
  KEY `iFoil` (`iFoil`),
  KEY `iPromo` (`iPromo`),
  KEY `iTextless` (`iTextless`),
  KEY `iAlterada` (`iAlterada`),
  KEY `iOverSize` (`iOverSize`),
  KEY `iDCI` (`iDCI`),
  KEY `iPreRelease` (`iPreRelease`),
  KEY `iReverseFoil` (`iReverseFoil`),
  KEY `iEditionOne` (`iEditionOne`),
  KEY `iShadowless` (`iShadowless`),
  KEY `iQuant` (`iQuant`),
  KEY `dPreco` (`dPreco`),
  KEY `IDE_User_2` (`IDE_User`,`iTCG`,`iStatus`),
  KEY `iStaff` (`iStaff`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_cards_want`
--

DROP TABLE IF EXISTS `bzr_cards_want`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_cards_want` (
  `ID_BazarCarta` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTCG` smallint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iQualidade` smallint(1) NOT NULL,
  `iIdioma` smallint(2) NOT NULL,
  `sComentario` text NOT NULL,
  `iExtras` int(10) NOT NULL DEFAULT '0',
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iFavorita` smallint(1) NOT NULL,
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_BazarCarta`),
  KEY `iTCG` (`iTCG`),
  KEY `iStatus` (`iStatus`),
  KEY `iFavorita` (`iFavorita`),
  KEY `iQualidade` (`iQualidade`),
  KEY `iExtras` (`iExtras`),
  KEY `iQuant` (`iQuant`),
  KEY `dPreco` (`dPreco`),
  KEY `idx_crd_tcg_usr_edc_num` (`IDE_CartaPrincipal`,`iTCG`,`IDE_User`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `idx_usr_tcg_sts_qnt` (`IDE_User`,`iTCG`,`iStatus`,`iQuant`) USING BTREE,
  KEY `idx_edc_crd_tcg_num_sts` (`IDE_Edicao`,`IDE_CartaPrincipal`,`iTCG`,`sNumber`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_cards_want_backup`
--

DROP TABLE IF EXISTS `bzr_cards_want_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_cards_want_backup` (
  `ID_BazarCarta` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTCG` smallint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iQualidade` smallint(1) NOT NULL,
  `iIdioma` smallint(2) NOT NULL,
  `sComentario` text NOT NULL,
  `iAssinada` smallint(1) NOT NULL,
  `iBuyABox` smallint(1) NOT NULL,
  `iFNM` smallint(1) NOT NULL,
  `iFoil` smallint(1) NOT NULL,
  `iPromo` smallint(1) NOT NULL,
  `iTextless` smallint(1) NOT NULL,
  `iAlterada` smallint(1) NOT NULL,
  `iOverSize` smallint(1) NOT NULL,
  `iDCI` smallint(1) NOT NULL,
  `iPreRelease` smallint(1) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iFavorita` smallint(1) NOT NULL,
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iReverseFoil` smallint(1) NOT NULL,
  `iEditionOne` smallint(1) NOT NULL,
  `iShadowless` smallint(1) NOT NULL,
  `iStaff` smallint(1) NOT NULL,
  PRIMARY KEY (`ID_BazarCarta`),
  KEY `IDE_User` (`IDE_User`),
  KEY `iTCG` (`iTCG`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iStatus` (`iStatus`),
  KEY `iFavorita` (`iFavorita`),
  KEY `iQualidade` (`iQualidade`),
  KEY `iIdioma` (`iIdioma`),
  KEY `iAssinada` (`iAssinada`),
  KEY `iBuyABox` (`iBuyABox`),
  KEY `iFNM` (`iFNM`),
  KEY `iFoil` (`iFoil`),
  KEY `iPromo` (`iPromo`),
  KEY `iTextless` (`iTextless`),
  KEY `iAlterada` (`iAlterada`),
  KEY `iOverSize` (`iOverSize`),
  KEY `iDCI` (`iDCI`),
  KEY `iPreRelease` (`iPreRelease`),
  KEY `iReverseFoil` (`iReverseFoil`),
  KEY `iEditionOne` (`iEditionOne`),
  KEY `iShadowless` (`iShadowless`),
  KEY `IDE_User_2` (`IDE_User`,`iTCG`,`IDE_Edicao`,`IDE_CartaPrincipal`,`iStatus`),
  KEY `iQuant` (`iQuant`),
  KEY `dPreco` (`dPreco`),
  KEY `IDE_User_3` (`IDE_User`,`iTCG`,`iStatus`),
  KEY `iStaff` (`iStaff`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_carrinho`
--

DROP TABLE IF EXISTS `bzr_carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_carrinho` (
  `ID_BazarCarrinho` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserBazar` int(9) NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `IDE_BazarCarta` int(9) NOT NULL,
  `iLista` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Want List / 2 = Have List',
  `iTCG` smallint(1) NOT NULL DEFAULT '1',
  `iQuantidade` int(6) NOT NULL,
  `sCodigoCarrinho` varchar(70) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Deletado / 1 = Ativo',
  PRIMARY KEY (`ID_BazarCarrinho`),
  KEY `IDE_UserBazar` (`IDE_UserBazar`),
  KEY `IDE_UserLogado` (`IDE_UserLogado`),
  KEY `IDE_BazarCarta` (`IDE_BazarCarta`),
  KEY `iLista` (`iLista`),
  KEY `sCodigoCarrinho` (`sCodigoCarrinho`),
  KEY `iStatus` (`iStatus`),
  KEY `dtAdicionado` (`dtAdicionado`),
  KEY `iTCG` (`iTCG`),
  KEY `idx_sCodigoCarrinho_iStatus` (`sCodigoCarrinho`,`iStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_neg_controls`
--

DROP TABLE IF EXISTS `bzr_neg_controls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_neg_controls` (
  `IDE_User` int(9) NOT NULL,
  `dtUltimaNegociacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtUltimaEdicao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `IDE_User` (`IDE_User`),
  KEY `dtUltimaNegociacao` (`dtUltimaNegociacao`),
  KEY `dtUltimaEdicao` (`dtUltimaEdicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_principal`
--

DROP TABLE IF EXISTS `bzr_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_principal` (
  `IDE_User` int(9) NOT NULL,
  `iTCG` smallint(1) NOT NULL,
  `dtDataCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIPCriacao` varchar(15) NOT NULL,
  `dtUltModifWant` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtUltModifHave` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iPrecoWantList` smallint(1) NOT NULL DEFAULT '2',
  `iPrecoHaveList` smallint(1) NOT NULL DEFAULT '2',
  `iDescontoWantList` int(3) NOT NULL DEFAULT '0',
  `iDescontoHaveList` int(3) NOT NULL DEFAULT '0',
  `iCardsEnviados` int(9) NOT NULL DEFAULT '0',
  `iCardsRecebidos` int(9) NOT NULL DEFAULT '0',
  `iNegManual` smallint(1) NOT NULL DEFAULT '0',
  `iPrivacidade` smallint(1) NOT NULL DEFAULT '0',
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Deletado / 1 = Ativo / 2 = Inativo',
  `dtSugestaoVenda` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `IDE_User` (`IDE_User`,`iTCG`),
  KEY `iPrivacidade` (`iPrivacidade`),
  KEY `idx_tcg_dtsg` (`iTCG`,`dtSugestaoVenda`) USING BTREE,
  KEY `idx_sts_tcg` (`iStatus`,`iTCG`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_principal_blacklist`
--

DROP TABLE IF EXISTS `bzr_principal_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_principal_blacklist` (
  `IDE_User` int(9) NOT NULL,
  `IDE_UserAdicionado` int(9) NOT NULL,
  UNIQUE KEY `IDE_User` (`IDE_User`,`IDE_UserAdicionado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_principal_config`
--

DROP TABLE IF EXISTS `bzr_principal_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_principal_config` (
  `IDE_User` int(9) NOT NULL,
  `iNegAceiteAutoVenda` smallint(1) NOT NULL DEFAULT '1',
  `iNegRefMin` smallint(1) NOT NULL DEFAULT '0',
  `iNegRefMinNum` int(6) NOT NULL,
  `iRemoverCardsLista` smallint(1) NOT NULL DEFAULT '0',
  `iNegCompraOuVenda` smallint(1) NOT NULL DEFAULT '0',
  `iNegLimiteMin` smallint(1) NOT NULL DEFAULT '0',
  `dNegLimiteMin` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iNegLimiteMax` smallint(1) NOT NULL DEFAULT '0',
  `dNegLimiteMax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_User` (`IDE_User`),
  KEY `iRemoverCardsLista` (`iRemoverCardsLista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_principal_hits`
--

DROP TABLE IF EXISTS `bzr_principal_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_principal_hits` (
  `IDE_User` int(9) NOT NULL,
  `iTCG` smallint(1) NOT NULL DEFAULT '1',
  `iHits` int(8) NOT NULL DEFAULT '0',
  `iHitsDia` int(8) NOT NULL DEFAULT '0',
  `iHitsSemana` int(8) NOT NULL DEFAULT '0',
  `iHitsMes` int(8) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_User` (`IDE_User`,`iTCG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_principal_strikes`
--

DROP TABLE IF EXISTS `bzr_principal_strikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_principal_strikes` (
  `IDE_User` int(9) NOT NULL,
  `iStrikes` int(6) NOT NULL,
  `dtBazarOfflineUntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iBazarOffline` smallint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_User` (`IDE_User`),
  KEY `iStrikes` (`iStrikes`),
  KEY `dtBazarOfflineUntil` (`dtBazarOfflineUntil`),
  KEY `iBazarOffline` (`iBazarOffline`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_strikes`
--

DROP TABLE IF EXISTS `bzr_strikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_strikes` (
  `ID_Strike` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_Negociacao` int(9) NOT NULL,
  `dtDataStrike` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sDescricao` text NOT NULL,
  PRIMARY KEY (`ID_Strike`),
  KEY `IDE_User` (`IDE_User`),
  KEY `IDE_Negociacao` (`IDE_Negociacao`),
  KEY `dtDataStrike` (`dtDataStrike`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_temp_frete`
--

DROP TABLE IF EXISTS `bzr_temp_frete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_temp_frete` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserBazar` int(9) NOT NULL,
  `sChaveFrete` varchar(20) NOT NULL,
  `dValorFrete` decimal(10,2) NOT NULL,
  `iCEP` int(9) NOT NULL,
  `sCodigoCarrinho` varchar(255) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iTotalItens` int(9) NOT NULL DEFAULT '0',
  `dPrecoPedido` decimal(10,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `id_2` (`id`),
  KEY `iFrete` (`sChaveFrete`),
  KEY `dtAdicionado` (`dtAdicionado`),
  KEY `iStatus` (`iStatus`),
  KEY `sCodigoCarrinho` (`sCodigoCarrinho`),
  KEY `IDE_UserBazar` (`IDE_UserBazar`),
  KEY `iTotalItens` (`iTotalItens`),
  KEY `dPrecoPedido` (`dPrecoPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bzr_temp_home`
--

DROP TABLE IF EXISTS `bzr_temp_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bzr_temp_home` (
  `IDE_User` int(9) NOT NULL,
  `sHTML` blob NOT NULL,
  `dtDataSalvo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iTipo` smallint(1) NOT NULL DEFAULT '0',
  KEY `IDE_User` (`IDE_User`),
  KEY `dtDataSalvo` (`dtDataSalvo`),
  KEY `iTipo` (`iTipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cadastro_edicoes`
--

DROP TABLE IF EXISTS `cadastro_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_edicoes` (
  `ID_Edicao` int(9) NOT NULL AUTO_INCREMENT,
  `nomeEdicao` varchar(255) NOT NULL DEFAULT '',
  `siglaMWS` varchar(10) NOT NULL DEFAULT '',
  `siglaAPP` varchar(10) NOT NULL DEFAULT '',
  `cartasTotal` int(3) NOT NULL DEFAULT '0',
  `cartasProcessadas` int(3) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Edicao`),
  KEY `nomeEdicao_2` (`nomeEdicao`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `original_name` varchar(255) NOT NULL DEFAULT '',
  `friendly_url` varchar(255) NOT NULL DEFAULT '',
  `card_type_id` int(11) NOT NULL,
  `power` char(5) DEFAULT '',
  `thoughness` char(5) DEFAULT NULL,
  `text` text,
  `original_text` text,
  `flavor_text` text,
  `original_flavor_text` text,
  `mana_cost` varchar(255) DEFAULT '',
  `converted_mana_cost` tinyint(2) DEFAULT NULL,
  `designer` varchar(255) DEFAULT NULL,
  `edition_id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL DEFAULT '',
  `is_foil` tinyint(2) NOT NULL DEFAULT '0',
  `is_active` tinyint(2) DEFAULT NULL,
  `is_highlighted` tinyint(2) NOT NULL DEFAULT '0',
  `buy_price` decimal(6,2) NOT NULL,
  `sell_price` decimal(6,2) NOT NULL,
  `want_price` decimal(6,2) DEFAULT NULL,
  `rarity_type_id` varchar(255) NOT NULL DEFAULT '',
  `card_game_id` int(11) NOT NULL,
  `weight` decimal(6,3) NOT NULL DEFAULT '0.003',
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `card` (`original_name`,`edition_id`),
  KEY `idx_1` (`edition_id`,`friendly_url`,`is_active`),
  KEY `idx_2` (`card_game_id`,`is_active`,`is_highlighted`),
  KEY `idx_3` (`rarity_type_id`),
  KEY `idx_4` (`card_game_id`,`edition_id`,`id`,`is_active`,`name`,`sell_price`),
  KEY `idx_5` (`color`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cartas_favoritas`
--

DROP TABLE IF EXISTS `cartas_favoritas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartas_favoritas` (
  `IDE_Nick` int(13) NOT NULL,
  `IDE_CartaPrincipal` int(13) NOT NULL,
  `dtFavorito` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iTCG` smallint(1) NOT NULL DEFAULT '1',
  `IDE_Edicao` int(9) NOT NULL DEFAULT '0',
  `sNumber` varchar(8) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_usr_tcg_crd_ed_num` (`IDE_Nick`,`iTCG`,`IDE_CartaPrincipal`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cod_edition` varchar(10) DEFAULT NULL,
  `ordem` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category_description`
--

DROP TABLE IF EXISTS `category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdn_purge`
--

DROP TABLE IF EXISTS `cdn_purge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdn_purge` (
  `ID_Purge` int(9) NOT NULL AUTO_INCREMENT,
  `sFilepath` text NOT NULL,
  `dtPurge` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Purge`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `cod_cidade` int(11) NOT NULL,
  `cod_estado` smallint(6) NOT NULL,
  `nom_cidade` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`cod_cidade`),
  KEY `fk_cod_estado_cidade` (`cod_estado`),
  CONSTRAINT `fk_cod_estado_cidade` FOREIGN KEY (`cod_estado`) REFERENCES `estado` (`cod_estado`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` bigint(100) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(200) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `dataCadastro` varchar(14) NOT NULL,
  `cnpj` varchar(30) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `ie` varchar(20) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `enderecoe` varchar(100) NOT NULL,
  `numeroe` varchar(30) NOT NULL,
  `complementoe` varchar(50) NOT NULL,
  `bairroe` varchar(50) NOT NULL,
  `cidadee` varchar(50) NOT NULL,
  `estadoe` varchar(50) NOT NULL,
  `cepe` varchar(20) NOT NULL,
  `tel1` varchar(20) DEFAULT NULL,
  `tel2` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `cel` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nascimento` varchar(20) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `razao_social` varchar(50) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `Entrega_dif` int(11) NOT NULL DEFAULT '0',
  `creditos` decimal(20,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_canalustream`
--

DROP TABLE IF EXISTS `cobertura_canalustream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_canalustream` (
  `ID_CanalUStream` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cobertura` int(9) NOT NULL DEFAULT '0',
  `canalUstream` text NOT NULL,
  PRIMARY KEY (`ID_CanalUStream`),
  KEY `IDE_Cobertura` (`IDE_Cobertura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_evento`
--

DROP TABLE IF EXISTS `cobertura_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_evento` (
  `ID_Evento` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cobertura` int(9) NOT NULL DEFAULT '0',
  `IDE_Post` int(9) NOT NULL,
  `sTipo` varchar(255) NOT NULL DEFAULT '',
  `sTitulo` varchar(255) NOT NULL DEFAULT '',
  `sSubTitulo` varchar(255) NOT NULL DEFAULT '',
  `sMensagem` text NOT NULL,
  `sMensagemHTML` text NOT NULL,
  `iTipoTexto` int(1) NOT NULL DEFAULT '1' COMMENT '1 = Texto; 2 = HTML',
  `sNome` varchar(255) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '0',
  `dDataPost` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Evento`),
  KEY `IDE_Post` (`IDE_Post`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_foto`
--

DROP TABLE IF EXISTS `cobertura_foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_foto` (
  `ID_Foto` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cobertura` int(9) NOT NULL DEFAULT '0',
  `isParceiro` int(1) NOT NULL DEFAULT '0',
  `IDE_Imagem` varchar(255) NOT NULL DEFAULT '',
  `fImagem` blob NOT NULL,
  `iWidth` int(4) NOT NULL DEFAULT '0',
  `iHeight` int(4) NOT NULL DEFAULT '0',
  `sTipo` varchar(255) NOT NULL DEFAULT '',
  `sTexto` text NOT NULL,
  `sCategoria` varchar(255) NOT NULL,
  `dtDataAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Foto`),
  KEY `IDE_Cobertura` (`IDE_Cobertura`),
  KEY `sCategoria` (`sCategoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_freelancer`
--

DROP TABLE IF EXISTS `cobertura_freelancer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_freelancer` (
  `ID_Freelancer` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Loja` int(9) NOT NULL DEFAULT '0',
  `nickID` int(9) NOT NULL DEFAULT '0',
  `sAtivo` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Freelancer`),
  KEY `nickID_2` (`nickID`),
  KEY `sAtivo` (`sAtivo`),
  KEY `IDE_Loja` (`IDE_Loja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_geral`
--

DROP TABLE IF EXISTS `cobertura_geral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_geral` (
  `ID_CoberturaGeral` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Loja` int(9) NOT NULL DEFAULT '0',
  `IDE_Agendamento` int(11) NOT NULL,
  `IDE_Topico` int(11) NOT NULL,
  `IDE_Freelancer` int(9) NOT NULL DEFAULT '0',
  `sTitulo` varchar(255) NOT NULL DEFAULT '',
  `sMensagem` text NOT NULL,
  `iTipoTexto` int(1) NOT NULL DEFAULT '1' COMMENT '1 = Texto; 2 = HTML',
  `iUtilizarWER` int(1) NOT NULL DEFAULT '0',
  `sWER` longtext NOT NULL,
  `ustreamChannel` text NOT NULL,
  `twitchChannel` text NOT NULL,
  `youtubeChannel` text NOT NULL,
  `dtCobertura` date NOT NULL DEFAULT '0000-00-00',
  `ctimeUltimaAtualizacao` varchar(20) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_CoberturaGeral`),
  KEY `iUtilizarWER` (`iUtilizarWER`),
  KEY `IDE_Loja_2` (`IDE_Loja`),
  KEY `IDE_Freelancer` (`IDE_Freelancer`),
  KEY `IDE_Agendamento` (`IDE_Agendamento`),
  KEY `IDE_Topico` (`IDE_Topico`),
  KEY `status` (`status`),
  KEY `ID_CoberturaGeral` (`ID_CoberturaGeral`,`IDE_Loja`,`IDE_Agendamento`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_info_torneio`
--

DROP TABLE IF EXISTS `cobertura_info_torneio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_info_torneio` (
  `ID_InfoTorneio` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cobertura` int(9) NOT NULL DEFAULT '0',
  `sTipo` varchar(255) NOT NULL DEFAULT '',
  `iRodada` int(2) NOT NULL DEFAULT '0',
  `sLista` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_InfoTorneio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_participantes`
--

DROP TABLE IF EXISTS `cobertura_participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_participantes` (
  `ID_Participantes` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cobertura` int(9) NOT NULL DEFAULT '0',
  `sLista` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Participantes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_videotwitch`
--

DROP TABLE IF EXISTS `cobertura_videotwitch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_videotwitch` (
  `ID_VideoTwitch` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cobertura` int(9) NOT NULL DEFAULT '0',
  `videoTwitch` text NOT NULL,
  PRIMARY KEY (`ID_VideoTwitch`),
  KEY `IDE_Cobertura` (`IDE_Cobertura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_videoustream`
--

DROP TABLE IF EXISTS `cobertura_videoustream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_videoustream` (
  `ID_VideoUStream` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cobertura` int(9) NOT NULL DEFAULT '0',
  `videoUstream` text NOT NULL,
  PRIMARY KEY (`ID_VideoUStream`),
  KEY `IDE_Cobertura` (`IDE_Cobertura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cobertura_videoyoutube`
--

DROP TABLE IF EXISTS `cobertura_videoyoutube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cobertura_videoyoutube` (
  `ID_VideoYouTube` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cobertura` int(9) NOT NULL DEFAULT '0',
  `videoYouTube` text NOT NULL,
  PRIMARY KEY (`ID_VideoYouTube`),
  KEY `IDE_Cobertura` (`IDE_Cobertura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colecao_cards`
--

DROP TABLE IF EXISTS `colecao_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colecao_cards` (
  `ID_CartaColecao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Colecao` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL,
  `iExtras` int(10) NOT NULL DEFAULT '0',
  `sComentario` varchar(155) NOT NULL,
  `iStatus` tinyint(1) NOT NULL,
  `iFavorita` tinyint(1) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_CartaColecao`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iStatus` (`iStatus`),
  KEY `iFavorita` (`iFavorita`),
  KEY `iQualidade` (`iQualidade`),
  KEY `iIdioma` (`iIdioma`),
  KEY `iExtras` (`iExtras`),
  KEY `idx_idcol_sts_ext` (`IDE_Colecao`,`iStatus`,`iExtras`) USING BTREE,
  KEY `idx_idcol_qld_idm_sts` (`IDE_Colecao`,`iQualidade`,`iIdioma`,`iStatus`) USING BTREE,
  KEY `idx_icol_tcg_sts_crd_ed_num_ext` (`IDE_Colecao`,`iTCG`,`iStatus`,`IDE_CartaPrincipal`,`IDE_Edicao`,`sNumber`,`iExtras`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colecao_cards_bkp`
--

DROP TABLE IF EXISTS `colecao_cards_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colecao_cards_bkp` (
  `ID_CartaColecao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Colecao` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL,
  `iExtras` int(10) NOT NULL DEFAULT '0',
  `sComentario` varchar(155) NOT NULL,
  `iStatus` tinyint(1) NOT NULL,
  `iFavorita` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_CartaColecao`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iStatus` (`iStatus`),
  KEY `iFavorita` (`iFavorita`),
  KEY `iQualidade` (`iQualidade`),
  KEY `iIdioma` (`iIdioma`),
  KEY `iExtras` (`iExtras`),
  KEY `idx_idcol_sts_ext` (`IDE_Colecao`,`iStatus`,`iExtras`) USING BTREE,
  KEY `idx_idcol_qld_idm_sts` (`IDE_Colecao`,`iQualidade`,`iIdioma`,`iStatus`) USING BTREE,
  KEY `idx_idcol_card_ed_sts_ext` (`IDE_Colecao`,`iTCG`,`iStatus`,`IDE_CartaPrincipal`,`IDE_Edicao`,`sNumber`,`iExtras`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colecao_compartilhada`
--

DROP TABLE IF EXISTS `colecao_compartilhada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colecao_compartilhada` (
  `IDE_Colecao` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  UNIQUE KEY `IDE_Colecao` (`IDE_Colecao`,`IDE_User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colecao_historico`
--

DROP TABLE IF EXISTS `colecao_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colecao_historico` (
  `IDE_Colecao` int(11) NOT NULL,
  `dData` date NOT NULL DEFAULT '0000-00-00',
  `precoMaior` decimal(12,2) NOT NULL,
  `precoMedio` decimal(12,2) NOT NULL,
  `precoMenor` decimal(12,2) NOT NULL,
  `precoMaiorBuylist` decimal(12,2) NOT NULL DEFAULT '0.00',
  `precoMedioBuylist` decimal(12,2) NOT NULL DEFAULT '0.00',
  `precoMenorBuylist` decimal(12,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `IDE_Colecao` (`IDE_Colecao`,`dData`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colecao_principal`
--

DROP TABLE IF EXISTS `colecao_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colecao_principal` (
  `ID_Colecao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTCG` tinyint(2) NOT NULL DEFAULT '0',
  `sNome` varchar(70) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  `iPrivacidade` smallint(1) NOT NULL COMMENT '1 = Privada / 2 = Publica / 3 = Compartilhada',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iTotalCards` int(9) NOT NULL,
  `precoMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `precoMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `precoMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dtUltimaAtualizacaoPreco` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Data de Ultima Atualizacao de cards na Colecao',
  `dtUltimaAtualizacaoHistorico` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sPathImage` varchar(255) NOT NULL,
  `iCapa` smallint(1) NOT NULL DEFAULT '1',
  `sCapaFilePath` varchar(255) DEFAULT NULL,
  `IDE_Carta_Capa` int(9) NOT NULL DEFAULT '0',
  `precoMenorBuylist` decimal(10,2) NOT NULL DEFAULT '0.00',
  `precoMedioBuylist` decimal(10,2) NOT NULL DEFAULT '0.00',
  `precoMaiorBuylist` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID_Colecao`),
  KEY `iStatus` (`iStatus`),
  KEY `iPublica` (`iPrivacidade`),
  KEY `dtUltimaAtualizacaoHistorico` (`dtUltimaAtualizacaoHistorico`),
  KEY `iTCG` (`iTCG`),
  KEY `idx_usr_tcg_sts` (`IDE_User`,`iTCG`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `correios_ping`
--

DROP TABLE IF EXISTS `correios_ping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correios_ping` (
  `ID_Ping` int(9) NOT NULL AUTO_INCREMENT,
  `dtEnvio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtRetorno` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Inicial / 2 = Sucesso-Online / 3 = Erro na conexão / 4 = Erro no retorno',
  `xmlRetorno` text NOT NULL,
  PRIMARY KEY (`ID_Ping`),
  KEY `iStatus` (`iStatus`),
  KEY `dtEnvio` (`dtEnvio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `correios_tracking`
--

DROP TABLE IF EXISTS `correios_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correios_tracking` (
  `ID_Track` int(9) NOT NULL AUTO_INCREMENT,
  `sTracking` varchar(15) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtUltimaBusca` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iFlagPostado` smallint(1) NOT NULL,
  `iFlagTransito` smallint(1) NOT NULL DEFAULT '0',
  `iFlagAguardRetDest` smallint(1) NOT NULL DEFAULT '0',
  `iFlagAguardRetRemet` smallint(1) NOT NULL DEFAULT '0',
  `iFlagSaiuParaEntrega` smallint(1) NOT NULL,
  `iFlagEntregue` smallint(1) NOT NULL,
  `iFlagDevolvido` smallint(1) NOT NULL,
  `iFlagPerdido` smallint(1) NOT NULL,
  `iTentativas` int(2) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  `dtEventoPostado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtEventoTransito` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtEventoAguardRetDest` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtEventoAguardRetRemet` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtEventoSaiuParaEntrega` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtEventoEntregue` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtEventoDevolvido` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtEventoPerdido` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Track`),
  UNIQUE KEY `sTracking` (`sTracking`),
  KEY `iFlagPerdido` (`iFlagPerdido`),
  KEY `iFlagDevolvido` (`iFlagDevolvido`),
  KEY `iFlagEntregue` (`iFlagEntregue`),
  KEY `iFlagSaiuParaEntrega` (`iFlagSaiuParaEntrega`),
  KEY `iFlagPostado` (`iFlagPostado`),
  KEY `iStatus` (`iStatus`),
  KEY `iFlagTransito` (`iFlagTransito`),
  KEY `iFlagAguardRetDest` (`iFlagAguardRetDest`),
  KEY `iFlagAguardRetRemet` (`iFlagAguardRetRemet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crontab`
--

DROP TABLE IF EXISTS `crontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crontab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `processo` varchar(250) NOT NULL,
  `ctime` int(10) NOT NULL,
  `dataRun` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `codeRun` varchar(250) NOT NULL,
  `stopRun` smallint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crontab_log`
--

DROP TABLE IF EXISTS `crontab_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crontab_log` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `sFile` varchar(500) NOT NULL,
  `dDataInicio` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dDataFim` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `sFile` (`sFile`),
  KEY `dDataInicio` (`dDataInicio`),
  KEY `dDataFim` (`dDataFim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `decks_busca_decks`
--

DROP TABLE IF EXISTS `decks_busca_decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `decks_busca_decks` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `site` varchar(50) NOT NULL,
  `url` varchar(150) NOT NULL,
  `pagina` int(9) NOT NULL,
  `total_decks` int(9) NOT NULL,
  `total_decks_download` int(9) NOT NULL,
  `run_ultimo` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `run_proximo` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` smallint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dominio_ecom`
--

DROP TABLE IF EXISTS `dominio_ecom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dominio_ecom` (
  `IDE_UserLoja` int(9) NOT NULL,
  `sGoogleAnalytics` varchar(150) NOT NULL,
  `sGoogleKey` varchar(255) NOT NULL,
  `sGoogleSecret` varchar(255) NOT NULL,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dominio_ecom_urls`
--

DROP TABLE IF EXISTS `dominio_ecom_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dominio_ecom_urls` (
  `IDE_UserLoja` int(9) NOT NULL,
  `sDominio` varchar(70) NOT NULL,
  UNIQUE KEY `sDominio` (`sDominio`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dragonball_cartas_unicas`
--

DROP TABLE IF EXISTS `dragonball_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dragonball_cartas_unicas` (
  `ID_CartaUnica` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeIngles` varchar(255) NOT NULL,
  `sNomeInglesSA` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_CartaUnica`)
) ENGINE=InnoDB AUTO_INCREMENT=3185 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dragonball_cartas_unicas_edicoes`
--

DROP TABLE IF EXISTS `dragonball_cartas_unicas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dragonball_cartas_unicas_edicoes` (
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(11) NOT NULL,
  `iNumber` int(5) NOT NULL DEFAULT '0',
  `sNumber` varchar(80) NOT NULL,
  `iRaridade` int(2) NOT NULL COMMENT '1 = Common[C], 2 = Uncommon[UC], 3 = Rare[R], 4 = Super Rare[SR], 5 = Special Rare[SPR], 6 = Starter Rare[ST], 7 = Secret Rare[SCR], 8 = Expansion Rare[EX], 9 = Promotion[PR]',
  `sRaridade` varchar(80) NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `sTipo` varchar(255) NOT NULL,
  `sColor` varchar(80) NOT NULL,
  `cColor` char(1) NOT NULL,
  `sEnergyCost` varchar(80) NOT NULL,
  `iPower` int(5) NOT NULL,
  `iComboEnergy` smallint(2) NOT NULL,
  `iComboPower` int(5) NOT NULL,
  `sCharacter` varchar(255) NOT NULL,
  `sTrait` varchar(255) NOT NULL,
  `sEra` varchar(255) NOT NULL,
  `sSkill` text NOT NULL,
  `cLado` char(1) NOT NULL DEFAULT 'a' COMMENT 'a = Frente; b = Costas',
  `sLinkDownloadImage` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'incompleto, faltaImagem, semImagem, completo, erro',
  PRIMARY KEY (`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iLado` (`cLado`),
  KEY `sNumber` (`sNumber`),
  KEY `iNumber` (`iNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dragonball_edicao`
--

DROP TABLE IF EXISTS `dragonball_edicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dragonball_edicao` (
  `ID_Edicao` int(9) NOT NULL AUTO_INCREMENT,
  `sPais` varchar(5) NOT NULL,
  `sSigla` varchar(20) NOT NULL,
  `sNome` varchar(255) NOT NULL,
  `sNomeSA` varchar(255) NOT NULL,
  `sImagePath` varchar(255) NOT NULL,
  `sLinkDownload` varchar(255) NOT NULL,
  `sLinkDownloadImagem` varchar(255) NOT NULL,
  `dtRelease` date NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'manual, pendente, processando, finalizado',
  `IDE_EdicaoAgrupada` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Edicao`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecom_cad_limite_cards`
--

DROP TABLE IF EXISTS `ecom_cad_limite_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecom_cad_limite_cards` (
  `ID_Limite` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Nick` int(9) NOT NULL,
  `iTipo` smallint(2) NOT NULL,
  `iOrdem` smallint(2) NOT NULL COMMENT 'Menor ordem é mais específico e leva prioridade sobre maiores ordens',
  `IDE_Carta` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `iRaridade` smallint(2) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  `IDE_Categoria` int(9) NOT NULL,
  `sNumber` varchar(8) NOT NULL,
  `iQuant` int(4) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Limite`),
  KEY `iTipo` (`iTipo`),
  KEY `IDE_Carta` (`IDE_Carta`),
  KEY `IDE_Produto` (`IDE_Produto`),
  KEY `IDE_Categoria` (`IDE_Categoria`),
  KEY `sNumber` (`sNumber`),
  KEY `IDE_Nick_5` (`IDE_Nick`,`iTipo`,`IDE_Produto`,`IDE_Categoria`),
  KEY `IDE_Nick_6` (`IDE_Nick`,`iTipo`,`IDE_Carta`,`IDE_Edicao`,`sNumber`),
  KEY `IDE_Edicao_2` (`IDE_Edicao`,`iRaridade`),
  KEY `iRaridade` (`iRaridade`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `editions`
--

DROP TABLE IF EXISTS `editions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `original_name` varchar(255) NOT NULL DEFAULT '',
  `acronism` char(5) NOT NULL DEFAULT '',
  `friendly_url` varchar(255) NOT NULL DEFAULT '',
  `is_promo` tinyint(2) DEFAULT NULL,
  `is_foil` tinyint(2) DEFAULT NULL,
  `is_active` tinyint(2) DEFAULT NULL,
  `is_tournament_valid` tinyint(2) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`acronism`),
  KEY `idx_1` (`friendly_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `editor_backup`
--

DROP TABLE IF EXISTS `editor_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editor_backup` (
  `ID_Backup` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Nick` int(9) NOT NULL,
  `sUrl` varchar(255) NOT NULL,
  `sConteudo` longtext NOT NULL,
  PRIMARY KEY (`ID_Backup`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `editor_post`
--

DROP TABLE IF EXISTS `editor_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editor_post` (
  `ID_Post` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Nick` int(9) NOT NULL,
  `IP` varchar(45) NOT NULL,
  `dtPost` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sConteudo` longtext NOT NULL,
  PRIMARY KEY (`ID_Post`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `cod_estado` smallint(6) NOT NULL,
  `cod_pais` smallint(6) NOT NULL,
  `sgl_estado` char(2) CHARACTER SET latin1 NOT NULL,
  `nom_estado` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`cod_estado`),
  KEY `fk_cod_pais_estado` (`cod_pais`),
  CONSTRAINT `fk_cod_pais_estado` FOREIGN KEY (`cod_pais`) REFERENCES `pais` (`cod_pais`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_access_control`
--

DROP TABLE IF EXISTS `events_access_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_access_control` (
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserFuncionario` int(9) NOT NULL,
  `iRole` int(3) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`,`IDE_UserFuncionario`,`iRole`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_coins`
--

DROP TABLE IF EXISTS `events_coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_coins` (
  `IDE_UserLoja` int(9) NOT NULL DEFAULT '0',
  `IDE_UserRegister` int(9) NOT NULL DEFAULT '0',
  `IDE_Event` int(9) NOT NULL DEFAULT '0',
  `IDE_UserAdicionou` int(9) NOT NULL DEFAULT '0',
  `dValor` int(9) NOT NULL,
  `sTexto` text NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_UserLoja` (`IDE_UserLoja`,`IDE_UserRegister`),
  KEY `dtAdicionado` (`dtAdicionado`),
  KEY `IDE_Event` (`IDE_Event`),
  KEY `IDE_UserAdicionou` (`IDE_UserAdicionou`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_config`
--

DROP TABLE IF EXISTS `events_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_config` (
  `IDE_UserLoja` int(9) NOT NULL,
  `sNomeMoeda` varchar(40) NOT NULL,
  `sNomeOrganizador` varchar(80) NOT NULL,
  `sNCM` varchar(10) NOT NULL,
  `sICMSOrigem` varchar(1) NOT NULL,
  `sICMSST` varchar(3) NOT NULL,
  `sPISST` varchar(2) NOT NULL,
  `sCOFINSST` varchar(2) NOT NULL,
  `iDiscord` tinyint(1) NOT NULL DEFAULT '0',
  `sDiscordServerID` varchar(25) NOT NULL,
  `sDiscordLabel` varchar(120) NOT NULL,
  `iTwitch` tinyint(1) NOT NULL DEFAULT '0',
  `sTwitchCanal` varchar(20) NOT NULL,
  `sTwitchLabel` varchar(120) NOT NULL,
  `sEmailContado` varchar(50) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '0',
  `iCarrossel` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event`
--

DROP TABLE IF EXISTS `events_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event` (
  `ID_Event` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserCriador` int(9) NOT NULL,
  `iTipoEvento` tinyint(1) NOT NULL,
  `IDE_Event_Final` int(9) NOT NULL DEFAULT '0',
  `sNomeEvento` varchar(100) NOT NULL,
  `IDE_Game` int(9) NOT NULL,
  `iFormatoMTG` int(3) NOT NULL,
  `sDescricao` text NOT NULL,
  `iModeloRank` tinyint(1) NOT NULL DEFAULT '0',
  `iModeloMoedaVitoria` tinyint(1) NOT NULL DEFAULT '0',
  `iModeloAcumulaPoteFinal` tinyint(1) NOT NULL DEFAULT '0',
  `iMoedaPorVitoria` int(5) NOT NULL DEFAULT '0',
  `iModeloUmRegularGratis` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Rank` int(9) NOT NULL DEFAULT '0',
  `iMultiplicador` int(4) NOT NULL DEFAULT '0',
  `iCobrarInscricao` tinyint(1) NOT NULL,
  `dValorInscricao` decimal(10,2) NOT NULL,
  `iAceitarCredito` tinyint(1) NOT NULL DEFAULT '0',
  `dMoedaInscricao` int(4) NOT NULL DEFAULT '0',
  `iCupons` tinyint(1) NOT NULL DEFAULT '0',
  `iCuponsGerados` int(3) NOT NULL DEFAULT '0',
  `IDE_Pote` int(9) NOT NULL,
  `dComissaoPote` decimal(10,2) NOT NULL,
  `dTaxaCartaoCreditoPote` decimal(10,2) NOT NULL,
  `dtEvento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dtInicioInsc` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtTerminoInsc` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iNumeroLimiteInsc` int(6) NOT NULL,
  `iPreencherDeckMTG` tinyint(1) NOT NULL DEFAULT '0',
  `iPreencherUserArena` tinyint(1) NOT NULL DEFAULT '0',
  `iPreencherUserDiscord` tinyint(1) NOT NULL DEFAULT '0',
  `iPreencherUserTwitch` tinyint(1) NOT NULL DEFAULT '0',
  `iPreencherDCI` tinyint(1) NOT NULL DEFAULT '0',
  `iPreencherPOPID` tinyint(1) NOT NULL DEFAULT '0',
  `iMinJogadoresInscritos` int(3) NOT NULL DEFAULT '0',
  `iTipoTorneio` tinyint(1) NOT NULL DEFAULT '2',
  `iNumeroRodadas` int(3) NOT NULL DEFAULT '0',
  `iRankPlayoff` tinyint(1) NOT NULL DEFAULT '0',
  `iHasPlayoff` tinyint(1) NOT NULL DEFAULT '0',
  `iAutomatizacao` tinyint(1) NOT NULL DEFAULT '0',
  `iChatSuporte` tinyint(1) NOT NULL DEFAULT '0',
  `iChatJogadores` tinyint(1) NOT NULL DEFAULT '1',
  `iUtilizarCheckin` tinyint(1) NOT NULL DEFAULT '1',
  `iUtilizarRelogio` tinyint(1) NOT NULL DEFAULT '1',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtCriado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iPreencherMTGO` tinyint(1) NOT NULL DEFAULT '0',
  `iPreencherPKM` tinyint(1) NOT NULL DEFAULT '0',
  `iPreencherYUG` tinyint(1) NOT NULL DEFAULT '0',
  `iPossuiModerador` tinyint(1) NOT NULL DEFAULT '0',
  `iPreencherWizAccount` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Event`),
  KEY `idx_ideuserloja_istatus` (`IDE_UserLoja`,`iStatus`) USING BTREE,
  KEY `IDE_Game` (`IDE_Game`),
  KEY `sNomeEvento` (`sNomeEvento`),
  KEY `IDE_Rank` (`IDE_Rank`),
  KEY `dtInicioInsc` (`dtInicioInsc`),
  KEY `dtTerminoInsc` (`dtTerminoInsc`),
  KEY `dtEvento` (`dtEvento`),
  KEY `iTipoEvento` (`iTipoEvento`),
  KEY `idx_evt_usrlj_sts` (`ID_Event`,`IDE_UserLoja`,`iStatus`) USING BTREE,
  KEY `idx_evt_sts` (`ID_Event`,`iStatus`) USING BTREE,
  KEY `iAutomatizacao` (`iAutomatizacao`),
  KEY `IDE_Pote` (`IDE_Pote`),
  KEY `IDE_Event_Final` (`IDE_Event_Final`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_banned`
--

DROP TABLE IF EXISTS `events_event_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_banned` (
  `ID_Event_Banned` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Player` int(9) NOT NULL,
  `IDE_Event` int(9) NOT NULL,
  `iExecutarEstorno` tinyint(1) NOT NULL DEFAULT '1',
  `dtBanimentoInicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtBanimentoFinaliza` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iDias` smallint(3) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1 = Ativo ; 2 = Cancelado ; 3 = Já cumpriu o banimento',
  PRIMARY KEY (`ID_Event_Banned`),
  UNIQUE KEY `IDE_Player_2` (`IDE_Player`,`IDE_Event`),
  KEY `IDE_Player` (`IDE_Player`),
  KEY `IDE_Rank` (`IDE_Event`),
  KEY `dtBanimentoFinaliza` (`dtBanimentoFinaliza`),
  KEY `idx_sts_dfim` (`status`,`dtBanimentoFinaliza`) USING BTREE,
  KEY `dtBanimentoInicio` (`dtBanimentoInicio`),
  KEY `IDE_Player_3` (`IDE_Player`,`status`),
  KEY `idx_evt_plr_sts` (`IDE_Event`,`IDE_Player`,`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_cupons`
--

DROP TABLE IF EXISTS `events_event_cupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_cupons` (
  `IDE_Event` int(9) NOT NULL,
  `sCupom` varchar(10) NOT NULL,
  `iUtilizado` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Event` (`IDE_Event`,`sCupom`),
  KEY `iUtilizado` (`iUtilizado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_log`
--

DROP TABLE IF EXISTS `events_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_log` (
  `ID_Event_Log` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Event` int(9) NOT NULL,
  `sTexto` text NOT NULL,
  `dtLog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Event_Log`),
  KEY `IDE_Event` (`IDE_Event`),
  KEY `dtLog` (`dtLog`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_moderators`
--

DROP TABLE IF EXISTS `events_event_moderators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_moderators` (
  `IDE_Event` int(9) NOT NULL,
  `IDE_UserModerator` int(9) NOT NULL,
  UNIQUE KEY `IDE_Event` (`IDE_Event`,`IDE_UserModerator`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_notificacao`
--

DROP TABLE IF EXISTS `events_event_notificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_notificacao` (
  `IDE_Event` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `dtNotificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sMensagem` text NOT NULL,
  KEY `IDE_Event` (`IDE_Event`,`IDE_User`),
  KEY `dtNotificacao` (`dtNotificacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_pote`
--

DROP TABLE IF EXISTS `events_event_pote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_pote` (
  `ID_Event_Pote` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Event` int(9) NOT NULL,
  `IDE_Pote` int(9) NOT NULL,
  `iQtdInscricoes` int(4) NOT NULL DEFAULT '0',
  `dValorPote` decimal(10,2) NOT NULL,
  `dtLog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Event_Pote`),
  KEY `IDE_Event` (`IDE_Event`),
  KEY `dtLog` (`dtLog`),
  KEY `IDE_Pote` (`IDE_Pote`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_rank`
--

DROP TABLE IF EXISTS `events_event_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_rank` (
  `ID_Event_Rank` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Player` int(9) NOT NULL,
  `IDE_Rank` int(9) NOT NULL,
  `fRank` float NOT NULL,
  PRIMARY KEY (`ID_Event_Rank`),
  UNIQUE KEY `IDE_Player_2` (`IDE_Player`,`IDE_Rank`),
  KEY `IDE_Player` (`IDE_Player`),
  KEY `IDE_Rank` (`IDE_Rank`),
  KEY `fRank` (`fRank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_register`
--

DROP TABLE IF EXISTS `events_event_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_register` (
  `ID_Register` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Event` int(9) NOT NULL,
  `IDE_UserRegister` int(9) NOT NULL,
  `IDE_Venda` int(9) NOT NULL,
  `IDE_Deck` int(11) NOT NULL,
  `sUsernameArena` varchar(80) NOT NULL,
  `sUsernameDiscord` varchar(80) NOT NULL,
  `sUsernameTwitch` varchar(80) NOT NULL,
  `sNomeCompleto` varchar(80) NOT NULL,
  `sDCI` varchar(20) NOT NULL,
  `sPOPID` varchar(20) NOT NULL,
  `dtInscricao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  `iUltimaAtualizacao` int(10) NOT NULL DEFAULT '0',
  `iFormaPagamento` tinyint(1) NOT NULL DEFAULT '0',
  `iDrop` tinyint(1) NOT NULL DEFAULT '0',
  `iStatus` tinyint(1) DEFAULT '1',
  `iCheckin` tinyint(1) NOT NULL DEFAULT '0',
  `dtCheckin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sDeckMain` text NOT NULL,
  `sDeckSideboard` text NOT NULL,
  `sRegiao` varchar(45) NOT NULL,
  `sCupom` varchar(10) NOT NULL,
  `sUsernameMTGO` varchar(40) NOT NULL,
  `sUsernamePKM` varchar(40) NOT NULL,
  `sUsernameYUG` varchar(40) NOT NULL,
  `sWIZACCOUNT` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Register`),
  UNIQUE KEY `IDE_Event` (`IDE_Event`,`IDE_UserRegister`),
  KEY `IDE_Venda` (`IDE_Venda`),
  KEY `iStatus` (`iStatus`),
  KEY `idx_usr_drp_sts` (`IDE_UserRegister`,`iDrop`,`iStatus`) USING BTREE,
  KEY `idx_evt_sts_drp` (`IDE_Event`,`iStatus`,`iDrop`) USING BTREE,
  KEY `idx_evt_usr_sts_drp` (`IDE_Event`,`IDE_UserRegister`,`iStatus`,`iDrop`,`iCheckin`) USING BTREE,
  KEY `iCheckin` (`iCheckin`),
  KEY `idx_usr_deck` (`IDE_UserRegister`,`IDE_Deck`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_rounds`
--

DROP TABLE IF EXISTS `events_event_rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_rounds` (
  `ID_Round` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Event` int(9) NOT NULL,
  `iRound` int(4) NOT NULL,
  `dtRodadaLancada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtRodadaCheckinFinaliza` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtRodadaCheckinConfirma` datetime NOT NULL,
  `dtRodadaTempoNormalFinaliza` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtRodadaExtraTimeFinaliza` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtRodadaFinaliza` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iGerarRodada` tinyint(1) NOT NULL DEFAULT '0',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Round`),
  KEY `dtRodadaLancada` (`dtRodadaLancada`),
  KEY `IDE_Event` (`IDE_Event`),
  KEY `idx_evnt_rnd_sts` (`IDE_Event`,`iRound`,`iStatus`) USING BTREE,
  KEY `idx_sts_rndfim` (`iStatus`,`dtRodadaFinaliza`) USING BTREE,
  KEY `idx_sts_cknconf` (`dtRodadaCheckinConfirma`,`iStatus`) USING BTREE,
  KEY `iGerarRodada` (`iGerarRodada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_rounds_pairing`
--

DROP TABLE IF EXISTS `events_event_rounds_pairing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_rounds_pairing` (
  `ID_Pairing` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Round` int(9) NOT NULL,
  `IDE_UserPlayerA` int(9) NOT NULL,
  `IDE_UserPlayerB` int(9) NOT NULL,
  `iResultInvalido` tinyint(1) NOT NULL DEFAULT '0',
  `iResultAutomatico` tinyint(1) NOT NULL DEFAULT '0',
  `iResultModerador` tinyint(1) NOT NULL DEFAULT '0',
  `iResultFinalVitPlayerA` tinyint(1) NOT NULL DEFAULT '0',
  `iResultFinalVitPlayerB` tinyint(1) NOT NULL DEFAULT '0',
  `iResultFinalVitEmpate` tinyint(1) NOT NULL DEFAULT '0',
  `iResultPreenchido` tinyint(1) NOT NULL DEFAULT '0',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `iCheckinPlayerA` tinyint(1) NOT NULL,
  `dtCheckinPlayerA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iCheckinPlayerB` tinyint(1) NOT NULL,
  `dtCheckinPlayerB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fRankPlayerA` float NOT NULL,
  `fRankPlayerB` float NOT NULL,
  PRIMARY KEY (`ID_Pairing`),
  KEY `IDE_UserPlayerA` (`IDE_UserPlayerA`),
  KEY `IDE_UserPlayerB` (`IDE_UserPlayerB`),
  KEY `IDE_Round` (`IDE_Round`),
  KEY `idx_rnd_sts_plra` (`IDE_Round`,`iStatus`,`IDE_UserPlayerA`) USING BTREE,
  KEY `idx_rnd_sts_plrb` (`IDE_Round`,`iStatus`,`IDE_UserPlayerB`) USING BTREE,
  KEY `iCheckinPlayerA` (`iCheckinPlayerA`),
  KEY `iCheckinPlayerB` (`iCheckinPlayerB`),
  KEY `idx_idrnd_rst_sts` (`IDE_Round`,`iResultPreenchido`,`iStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_rounds_pairing_results`
--

DROP TABLE IF EXISTS `events_event_rounds_pairing_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_rounds_pairing_results` (
  `ID_Result` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Pairing` int(9) NOT NULL,
  `IDE_UserPlayer` int(9) NOT NULL,
  `iPlayerType` tinyint(1) NOT NULL COMMENT '(1=A / 2=B)',
  `iResultadoInformado` tinyint(1) NOT NULL DEFAULT '0',
  `iVitoriaPartida1` tinyint(9) NOT NULL DEFAULT '0',
  `iVitoriaPartida2` tinyint(9) NOT NULL DEFAULT '0',
  `iVitoriaPartida3` tinyint(9) NOT NULL DEFAULT '0',
  `iEmpate` tinyint(1) NOT NULL DEFAULT '0',
  `iDrop` tinyint(1) NOT NULL DEFAULT '0',
  `dtPostagem` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `sIPPostagem` varchar(15) NOT NULL,
  `sFileUpload` varchar(75) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Result`),
  KEY `IDE_Pairing` (`IDE_Pairing`,`IDE_UserPlayer`,`iStatus`),
  KEY `idx_prg_sts` (`IDE_Pairing`,`iStatus`) USING BTREE,
  KEY `iPlayerType` (`iPlayerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_rounds_standings`
--

DROP TABLE IF EXISTS `events_event_rounds_standings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_rounds_standings` (
  `ID_Standings` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Round` int(9) NOT NULL,
  `IDE_UserPlayer` int(9) NOT NULL,
  `iPoints` tinyint(2) NOT NULL,
  `iJogosVencidos` tinyint(1) NOT NULL,
  `iJogosPerdidos` tinyint(1) NOT NULL,
  `iJogosEmpatados` tinyint(1) NOT NULL,
  `fOMW` float NOT NULL,
  `fPGW` float NOT NULL,
  `fOGW` float NOT NULL,
  PRIMARY KEY (`ID_Standings`),
  KEY `IDE_Round` (`IDE_Round`),
  KEY `IDE_UserPlayer` (`IDE_UserPlayer`),
  KEY `idx_rnd_usr` (`IDE_Round`,`IDE_UserPlayer`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_stands_final`
--

DROP TABLE IF EXISTS `events_event_stands_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_stands_final` (
  `IDE_Event` int(9) NOT NULL,
  `IDE_UserPlayer` int(9) NOT NULL,
  `iClassification` int(4) NOT NULL,
  `iPoints` tinyint(2) NOT NULL,
  `iJogosVencidos` tinyint(1) NOT NULL,
  `iJogosPerdidos` tinyint(1) NOT NULL,
  `iJogosEmpatados` tinyint(1) NOT NULL,
  UNIQUE KEY `idx_unique` (`IDE_Event`,`IDE_UserPlayer`) USING BTREE,
  KEY `idx_idev_cln` (`IDE_Event`,`iClassification`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_temporary`
--

DROP TABLE IF EXISTS `events_event_temporary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_temporary` (
  `ID_Event_Temporary` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Event` int(9) NOT NULL,
  `jogadorID` int(9) NOT NULL,
  `oponenteID` int(9) NOT NULL,
  `iByes` tinyint(1) NOT NULL DEFAULT '0',
  `iRodada` tinyint(1) NOT NULL,
  `iResultado` tinyint(1) NOT NULL COMMENT '1 = jogador Venceu; 2 = Empate; 3 = oponente venceu; 4 = problema no resultado',
  `iGamesWin` tinyint(1) NOT NULL,
  `iGamesTotal` tinyint(1) NOT NULL,
  `iPontos` tinyint(1) NOT NULL,
  `sStand` varchar(12) NOT NULL DEFAULT '',
  `iDrop` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Event_Temporary`),
  KEY `jogadorID` (`jogadorID`),
  KEY `oponenteID` (`oponenteID`),
  KEY `IDE_Torneio` (`IDE_Event`),
  KEY `iRodada` (`iRodada`),
  KEY `idx_evt_drp_bye_rdd` (`IDE_Event`,`iRodada`,`iByes`,`iDrop`) USING BTREE,
  KEY `iDrop` (`iDrop`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_event_tournament`
--

DROP TABLE IF EXISTS `events_event_tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_event_tournament` (
  `IDE_Event` int(9) NOT NULL,
  `iInscricaoAberta` tinyint(1) NOT NULL DEFAULT '0',
  `iInscricaoEncerrada` tinyint(1) NOT NULL DEFAULT '0',
  `iTorneioInicia` tinyint(1) NOT NULL DEFAULT '0',
  `iTorneioEncerra` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Ingresso` int(9) NOT NULL,
  `iRodadaAtual` tinyint(2) NOT NULL DEFAULT '0',
  `iRodadaTotal` tinyint(1) NOT NULL DEFAULT '0',
  `iRodadaExtra` tinyint(2) NOT NULL DEFAULT '0',
  `iError` int(3) NOT NULL DEFAULT '0',
  `iTotalJogadores` int(3) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Event` (`IDE_Event`),
  KEY `iInscricaoAberta` (`iInscricaoAberta`),
  KEY `iInscricaoEncerrada` (`iInscricaoEncerrada`),
  KEY `IDE_Ingresso` (`IDE_Ingresso`),
  KEY `iTorneioInicia` (`iTorneioInicia`),
  KEY `iTorneioEncerra` (`iTorneioEncerra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_games`
--

DROP TABLE IF EXISTS `events_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_games` (
  `ID_Game` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL DEFAULT '0',
  `sNomeJogo` varchar(80) NOT NULL,
  PRIMARY KEY (`ID_Game`),
  UNIQUE KEY `IDE_UserLoja_2` (`IDE_UserLoja`,`sNomeJogo`),
  KEY `IDE_UserLoja` (`IDE_UserLoja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_pote`
--

DROP TABLE IF EXISTS `events_pote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_pote` (
  `ID_Pote` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `sNomePote` varchar(80) NOT NULL,
  `sInformacoes` text NOT NULL,
  `dValorAcumulado` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtCriado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_UserCriador` int(9) NOT NULL,
  PRIMARY KEY (`ID_Pote`),
  KEY `idx_usrlj_dtterm_sts` (`IDE_UserLoja`,`iStatus`) USING BTREE,
  KEY `sNomePote` (`sNomePote`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_rank`
--

DROP TABLE IF EXISTS `events_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_rank` (
  `ID_Rank` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `sNomeRank` varchar(80) NOT NULL,
  `iTipoRank` tinyint(1) NOT NULL,
  `dtInicioRank` date NOT NULL,
  `dtTerminoRank` date NOT NULL,
  `sInformacoes` text NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtCriado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_UserCriador` int(9) NOT NULL,
  PRIMARY KEY (`ID_Rank`),
  KEY `sNomeRank` (`sNomeRank`),
  KEY `idx_usrlj_dtterm_sts` (`IDE_UserLoja`,`dtTerminoRank`,`iStatus`) USING BTREE,
  KEY `iTipoRank` (`iTipoRank`),
  KEY `dtInicioRank` (`dtInicioRank`),
  KEY `dtTerminoRank` (`dtTerminoRank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_user_lastdataused`
--

DROP TABLE IF EXISTS `events_user_lastdataused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_user_lastdataused` (
  `IDE_User` int(9) NOT NULL,
  `IDE_Deck` int(9) NOT NULL,
  `sUsernameArena` varchar(80) NOT NULL,
  `sUsernameDiscord` varchar(80) NOT NULL,
  `sUsernameTwitch` varchar(80) NOT NULL,
  `sNomeCompleto` varchar(80) NOT NULL,
  `sDCI` varchar(20) NOT NULL,
  `sPOPID` varchar(20) NOT NULL,
  `dtUltimaModif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sUsernameMTGO` varchar(40) NOT NULL,
  `sUsernamePKM` varchar(40) NOT NULL,
  `sUsernameYUG` varchar(40) NOT NULL,
  `sWIZACCOUNT` varchar(100) NOT NULL,
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `favoritos_principal`
--

DROP TABLE IF EXISTS `favoritos_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favoritos_principal` (
  `IDE_Module` int(4) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `IDE_Chave` int(9) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `idx_chave` (`IDE_Module`,`IDE_User`,`IDE_Chave`) USING BTREE,
  KEY `IDE_User` (`IDE_User`),
  KEY `IDE_Chave` (`IDE_Chave`),
  KEY `dtAdicionado` (`dtAdicionado`),
  KEY `idx_idemodule_idechave` (`IDE_Module`,`IDE_Chave`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `favoritos_principal_titulo`
--

DROP TABLE IF EXISTS `favoritos_principal_titulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favoritos_principal_titulo` (
  `IDE_Module` int(4) NOT NULL,
  `IDE_Chave` int(9) NOT NULL,
  `sTituloAuxiliar` varchar(60) NOT NULL,
  UNIQUE KEY `IDE_Module` (`IDE_Module`,`IDE_Chave`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formatos`
--

DROP TABLE IF EXISTS `formatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formatos` (
  `ID_Formato` int(8) NOT NULL,
  `sNomeEN` varchar(255) NOT NULL,
  `sURL` varchar(255) NOT NULL,
  `dtUltimaVerificacao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtAtualizacao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `ID_Formato_2` (`ID_Formato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formatos_cards_especificos`
--

DROP TABLE IF EXISTS `formatos_cards_especificos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formatos_cards_especificos` (
  `IDE_Formato` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  UNIQUE KEY `IDE_Formato` (`IDE_Formato`,`IDE_CartaPrincipal`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formatos_edicoes`
--

DROP TABLE IF EXISTS `formatos_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formatos_edicoes` (
  `IDE_Formato` int(8) NOT NULL COMMENT 'formatos',
  `IDE_Edicao` int(5) NOT NULL COMMENT '_lista_cartas_edicoes',
  PRIMARY KEY (`IDE_Formato`,`IDE_Edicao`),
  KEY `IDE_Edicao` (`IDE_Edicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frenet_logs`
--

DROP TABLE IF EXISTS `frenet_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frenet_logs` (
  `IDE_UserLoja` int(9) NOT NULL,
  `dtCotacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_UserLoja` (`IDE_UserLoja`),
  KEY `dtCotacao` (`dtCotacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frete_cep_informacoes`
--

DROP TABLE IF EXISTS `frete_cep_informacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frete_cep_informacoes` (
  `iCEP` int(11) NOT NULL,
  `fAltitude` float NOT NULL,
  `fLatitude` float NOT NULL,
  `fLongitude` float NOT NULL,
  `sEstado` varchar(3) NOT NULL,
  `sCidade` varchar(150) NOT NULL,
  `sLogradouro` varchar(250) NOT NULL,
  `sBairro` varchar(150) NOT NULL,
  `iDDD` int(3) NOT NULL,
  `iIBGE` int(9) NOT NULL,
  UNIQUE KEY `iCEP` (`iCEP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frete_cidades_cep`
--

DROP TABLE IF EXISTS `frete_cidades_cep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frete_cidades_cep` (
  `IDE_Cidade` int(9) NOT NULL,
  `iCEP` int(9) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iContador` int(5) NOT NULL,
  UNIQUE KEY `IDE_Cidade` (`IDE_Cidade`,`iCEP`,`iContador`),
  KEY `iCEP` (`iCEP`),
  KEY `iContador` (`iContador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frete_config`
--

DROP TABLE IF EXISTS `frete_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frete_config` (
  `IDE_User` int(9) NOT NULL,
  `sCEP` varchar(10) NOT NULL,
  `dSeguro` decimal(4,2) NOT NULL,
  `iCartaRegist` smallint(1) NOT NULL,
  `iCartaRegistAceitaAR` smallint(1) NOT NULL,
  `iCartaRegistAceitaMP` smallint(1) NOT NULL,
  `iCartaRegistPesoExtra` int(3) NOT NULL,
  `iCartaRegistLimiteCards` int(3) NOT NULL,
  `dCartaRegistLimitePreco` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iPac` smallint(1) NOT NULL,
  `iPacPesoExtra` int(3) NOT NULL,
  `dPacTaxaExtra` decimal(4,2) NOT NULL,
  `iSedex` smallint(1) NOT NULL,
  `iSedexPesoExtra` int(3) NOT NULL,
  `dSedexTaxaExtra` decimal(4,2) NOT NULL,
  `iFreteGratisValor` smallint(1) NOT NULL,
  `dFreteGratisValor` decimal(10,2) NOT NULL,
  `iFreteGratisNick` smallint(1) NOT NULL,
  `dtUltimaModificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frete_config_gratis_users`
--

DROP TABLE IF EXISTS `frete_config_gratis_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frete_config_gratis_users` (
  `IDE_User` int(9) NOT NULL,
  `IDE_UserAdicionado` int(9) NOT NULL,
  UNIQUE KEY `IDE_User` (`IDE_User`,`IDE_UserAdicionado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frete_config_taxa_extra`
--

DROP TABLE IF EXISTS `frete_config_taxa_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frete_config_taxa_extra` (
  `ID_TaxaExtra` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_Estado` int(9) NOT NULL,
  `IDE_Cidade` int(9) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_TaxaExtra`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Estado` (`IDE_Estado`,`IDE_Cidade`),
  KEY `IDE_User_2` (`IDE_User`,`IDE_Estado`,`IDE_Cidade`,`iStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frete_precos`
--

DROP TABLE IF EXISTS `frete_precos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frete_precos` (
  `ID_Preco` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cidade_Origem` int(9) NOT NULL,
  `IDE_Cidade_Destino` int(9) NOT NULL,
  `iPeso` smallint(1) NOT NULL,
  `dPrecoPAC` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dPrecoSEDEX` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Preco`),
  UNIQUE KEY `IDE_Cidade_Origem_2` (`IDE_Cidade_Origem`,`IDE_Cidade_Destino`,`iPeso`),
  KEY `dPrecoSEDEX` (`dPrecoSEDEX`),
  KEY `IDE_Cidade_Destino` (`IDE_Cidade_Destino`),
  KEY `iPeso` (`iPeso`),
  KEY `dtUltimaAtualizacao` (`dtUltimaAtualizacao`),
  KEY `dPrecoPAC_2` (`dPrecoPAC`,`dPrecoSEDEX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funko_item`
--

DROP TABLE IF EXISTS `funko_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funko_item` (
  `ID_Item` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Hobbydb` bigint(11) NOT NULL,
  `IDE_Type` int(9) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  `sDescricao` text NOT NULL,
  `sNome` varchar(200) NOT NULL,
  `sNomeAlt` varchar(200) NOT NULL,
  `sNomePT` varchar(200) NOT NULL,
  `sNomeAltPT` varchar(200) NOT NULL,
  `sNomeSA` varchar(200) NOT NULL,
  `sNomeAltSA` varchar(200) NOT NULL,
  `sNomePTSA` varchar(200) NOT NULL,
  `sNomeAltPTSA` varchar(200) NOT NULL,
  `sRefNumber` varchar(10) NOT NULL,
  `sScale` varchar(10) NOT NULL,
  `IDE_Variant` int(9) NOT NULL,
  `sVariantDetails` varchar(200) NOT NULL,
  `IDE_ImagemPrincipal` int(9) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0=Removido / 1=Ativo e publicado / 2 =Aguard. Publicacao / 3 = Ignorado mas nao removido',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sProductionStatus` varchar(100) NOT NULL,
  `sMaterial` varchar(50) NOT NULL,
  `sGender` varchar(50) NOT NULL,
  `sColor` varchar(150) NOT NULL,
  `iPointsArticulation` int(3) NOT NULL,
  `sPackaging` varchar(10) NOT NULL,
  `sBlindPackaging` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_Item`),
  KEY `idx_prod_sts` (`IDE_Produto`,`iStatus`) USING BTREE,
  KEY `idx_typ_sts` (`IDE_Type`,`iStatus`) USING BTREE,
  KEY `idx_hby` (`IDE_Hobbydb`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funko_item_hobbydb`
--

DROP TABLE IF EXISTS `funko_item_hobbydb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funko_item_hobbydb` (
  `ID_Hobbydb` bigint(11) NOT NULL,
  `ID_Hobbydb_Type` int(11) NOT NULL,
  `sTypeName` varchar(150) NOT NULL,
  `sNome` varchar(200) NOT NULL,
  `sNomeAlt` varchar(200) NOT NULL,
  `sDescricao` text NOT NULL,
  `sRefNumber` varchar(10) NOT NULL,
  `sScale` varchar(10) NOT NULL,
  `sSlug` varchar(150) NOT NULL,
  `IDE_Variant_Hobbydb` bigint(11) NOT NULL,
  `sVariantDefinition` varchar(200) NOT NULL,
  `sDateFrom` varchar(25) NOT NULL,
  `sImg_default_url` varchar(255) NOT NULL,
  `sImg_main_photo_url` varchar(255) NOT NULL,
  `sImg_search_url` varchar(255) NOT NULL,
  `sProductionStatus` varchar(100) NOT NULL,
  `sUrlCatalog` varchar(255) NOT NULL,
  `sUrlShow` varchar(255) NOT NULL,
  `iImgDownload` tinyint(1) NOT NULL DEFAULT '0',
  `sMaterial` varchar(50) NOT NULL,
  `sGender` varchar(50) NOT NULL,
  `sColor` varchar(150) NOT NULL,
  `iPointsArticulation` int(3) NOT NULL,
  `sPackaging` varchar(10) NOT NULL,
  `sBlindPackaging` varchar(10) NOT NULL,
  `sPackageLang` varchar(50) NOT NULL,
  `sFigHeight` varchar(10) NOT NULL,
  `sBoxHeight` varchar(10) NOT NULL,
  `sBoxDepth` varchar(10) NOT NULL,
  `sBoxWidth` varchar(10) NOT NULL,
  `sUPC` varchar(15) NOT NULL,
  `sManufacturerID` varchar(16) NOT NULL,
  `iDownloadDados` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `ID_Hobbydb` (`ID_Hobbydb`),
  KEY `iDownloadDados` (`iDownloadDados`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funko_item_hobbydb_images`
--

DROP TABLE IF EXISTS `funko_item_hobbydb_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funko_item_hobbydb_images` (
  `ID_Imagem` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Item` int(9) NOT NULL,
  `sFilepath` varchar(80) NOT NULL,
  `sFilepath_thumbnail` varchar(80) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Imagem`),
  KEY `idx_itm_sts` (`IDE_Item`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funko_item_series`
--

DROP TABLE IF EXISTS `funko_item_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funko_item_series` (
  `IDE_Item` int(9) NOT NULL,
  `IDE_Series` int(9) NOT NULL,
  UNIQUE KEY `IDE_Item` (`IDE_Item`,`IDE_Series`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funko_item_type`
--

DROP TABLE IF EXISTS `funko_item_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funko_item_type` (
  `ID_Type` int(9) NOT NULL AUTO_INCREMENT,
  `ID_Hobbydb_Type` int(9) NOT NULL,
  `sNome` varchar(50) NOT NULL,
  `sNomePT` varchar(50) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Type`),
  KEY `ID_Hobbydb_Type` (`ID_Hobbydb_Type`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funko_item_variants`
--

DROP TABLE IF EXISTS `funko_item_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funko_item_variants` (
  `ID_Variant` int(9) NOT NULL AUTO_INCREMENT,
  `ID_Variant_Hobbydb` bigint(11) NOT NULL,
  PRIMARY KEY (`ID_Variant`),
  UNIQUE KEY `ID_Variant_Hobbydb` (`ID_Variant_Hobbydb`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `funko_series`
--

DROP TABLE IF EXISTS `funko_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funko_series` (
  `ID_Series` int(9) NOT NULL,
  `sNomeHobbydb` varchar(100) NOT NULL,
  `sHobbydbUrl` varchar(120) NOT NULL,
  `sNome` varchar(150) NOT NULL,
  `sNomePT` varchar(150) NOT NULL,
  `iStatus` tinyint(4) NOT NULL DEFAULT '1',
  `IDE_Prod_SubCategoria` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Series`),
  UNIQUE KEY `sHobbydbUrl` (`sHobbydbUrl`),
  KEY `IDE_Prod_SubCategoria` (`IDE_Prod_SubCategoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gerencia_box`
--

DROP TABLE IF EXISTS `gerencia_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerencia_box` (
  `usuario` int(11) NOT NULL,
  `tabela` varchar(50) DEFAULT NULL,
  `nomebox` varchar(150) DEFAULT NULL,
  `coluna` int(11) DEFAULT NULL,
  `posicao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gpsp2015`
--

DROP TABLE IF EXISTS `gpsp2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpsp2015` (
  `ID_Compra` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_Pagamento` int(13) NOT NULL,
  `IP` varchar(15) NOT NULL,
  `dtCompra` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sNomeServico` varchar(255) NOT NULL,
  `fValor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fTaxas` decimal(10,2) NOT NULL DEFAULT '0.00',
  `apiLocal` int(1) NOT NULL COMMENT '1 = pagSeguro / 2 = paypal / 4 = trayCheckout / 5 = Banco do Brasil / 6 = Caixa Economica / 7 = Itau',
  `codigoAPI` varchar(255) NOT NULL,
  `nome` varchar(72) NOT NULL,
  `cpf` varchar(25) NOT NULL,
  `dci` varchar(25) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` varchar(25) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Cancelado; 1 = Aguardando; 9 = Ativo',
  PRIMARY KEY (`ID_Compra`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `status` (`status`),
  KEY `IDE_Pagamento` (`IDE_Pagamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historico_login`
--

DROP TABLE IF EXISTS `historico_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `ctime` int(15) DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `horario_torneios`
--

DROP TABLE IF EXISTS `horario_torneios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario_torneios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dia` int(2) DEFAULT NULL,
  `juizID` int(13) NOT NULL,
  `formato` varchar(50) DEFAULT NULL,
  `formatot` int(2) NOT NULL DEFAULT '0',
  `Equipe` int(1) NOT NULL DEFAULT '0',
  `k` int(2) NOT NULL DEFAULT '0',
  `horario` varchar(5) DEFAULT NULL,
  `sDiaSemana` varchar(15) NOT NULL DEFAULT '',
  `iDiaSemana` int(1) NOT NULL DEFAULT '0',
  `dtTorneio` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rodada` int(2) NOT NULL DEFAULT '0',
  `status` char(2) NOT NULL DEFAULT '',
  `iCancelado` int(11) NOT NULL DEFAULT '0',
  `champ` int(12) NOT NULL DEFAULT '0',
  `ctime` int(12) NOT NULL DEFAULT '0',
  `sSigla` char(3) NOT NULL DEFAULT '',
  `juizOficialID` int(13) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `juizID` (`juizID`),
  KEY `juizOficialID` (`juizOficialID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `card_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `is_thumbnail` tinyint(2) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_id` (`card_id`,`image_path`),
  KEY `product_id` (`product_id`,`image_path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `liga_banidos`
--

DROP TABLE IF EXISTS `liga_banidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liga_banidos` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `nickID_banido` int(13) NOT NULL,
  `nickID_moderador` int(13) NOT NULL,
  `ctime_ban` int(11) DEFAULT NULL,
  KEY `id` (`id`),
  KEY `nickID_banido` (`nickID_banido`),
  KEY `nickID_moderador` (`nickID_moderador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ligae`
--

DROP TABLE IF EXISTS `ligae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ligae` (
  `sURL` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `sCode` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `iViews` int(7) NOT NULL,
  `IP` varchar(45) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sCode`),
  UNIQUE KEY `sURL` (`sURL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lista_jogadores_dci`
--

DROP TABLE IF EXISTS `lista_jogadores_dci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_jogadores_dci` (
  `dci` int(30) NOT NULL DEFAULT '0',
  `sNome` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`dci`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logs_2fa_error`
--

DROP TABLE IF EXISTS `logs_2fa_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_2fa_error` (
  `IDE_User` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtTentativa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `idx_usr_dt` (`IDE_User`,`dtTentativa`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logs_2fa_session`
--

DROP TABLE IF EXISTS `logs_2fa_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_2fa_session` (
  `IDE_User` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtAutenticado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtVencimento` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `idx_usr_ip_venc` (`IDE_User`,`sIP`,`dtVencimento`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logs_acoes`
--

DROP TABLE IF EXISTS `logs_acoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_acoes` (
  `dtAcao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_User` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `iModulo` int(3) NOT NULL,
  `iFuncao` int(3) NOT NULL,
  `sDescricao` text NOT NULL,
  `IDE_Chave_A` int(9) NOT NULL,
  `IDE_Chave_B` int(9) NOT NULL,
  `IDE_Chave_C` int(9) NOT NULL,
  `IDE_ChaveText_D` varchar(50) NOT NULL,
  KEY `dtAcao` (`dtAcao`),
  KEY `IDE_User` (`IDE_User`),
  KEY `idx_mod_dt` (`iModulo`,`dtAcao`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logs_sistema_pagamento`
--

DROP TABLE IF EXISTS `logs_sistema_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs_sistema_pagamento` (
  `ID_Log` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `dtLog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  `sURL` text NOT NULL,
  `sConteudo` text NOT NULL,
  PRIMARY KEY (`ID_Log`),
  KEY `IDE_User` (`IDE_User`),
  KEY `dtLog` (`dtLog`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lojas_circuitos`
--

DROP TABLE IF EXISTS `lojas_circuitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_circuitos` (
  `ID_Circuito` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Loja` int(11) NOT NULL DEFAULT '0',
  `IDE_LojaFinal` int(11) NOT NULL,
  `dtInicio` date NOT NULL DEFAULT '0000-00-00',
  `dtFim` date NOT NULL DEFAULT '0000-00-00',
  `sNome` varchar(100) NOT NULL DEFAULT '',
  `sRegras` text NOT NULL,
  `iStatus` int(1) NOT NULL DEFAULT '1' COMMENT '1 = Ativo, 2 = Cancelado, 3 = Finalizado',
  PRIMARY KEY (`ID_Circuito`),
  KEY `IDE_LojaFinal` (`IDE_LojaFinal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lojas_circuitos_bolao`
--

DROP TABLE IF EXISTS `lojas_circuitos_bolao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_circuitos_bolao` (
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_Jogador` int(11) NOT NULL,
  `sDCI` varchar(25) NOT NULL,
  `dtParticipacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_Circuito` (`IDE_Circuito`,`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lojas_circuitos_inscricao_respostas`
--

DROP TABLE IF EXISTS `lojas_circuitos_inscricao_respostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_circuitos_inscricao_respostas` (
  `ID_Respostas` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Loja` int(9) NOT NULL,
  `IDE_Circuito` int(9) NOT NULL,
  `campoPergunta` varchar(255) NOT NULL,
  `sReposta` text NOT NULL,
  `dtResposta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isAtivo` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Respostas`),
  KEY `IDE_Loja` (`IDE_Loja`),
  KEY `IDE_Circuito` (`IDE_Circuito`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lojas_circuitos_inscritas`
--

DROP TABLE IF EXISTS `lojas_circuitos_inscritas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_circuitos_inscritas` (
  `ID_LojasInscritas` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Circuito` int(11) NOT NULL,
  `IDE_Loja` int(11) NOT NULL,
  `IDE_TorneioOpen` int(13) NOT NULL,
  `iFormato` int(2) NOT NULL COMMENT '1 = Standard, 3 = Modern, 5 = Legacy, 12 = Limited',
  `sPlanoAdesao` varchar(50) NOT NULL,
  `IDE_EnderecoEnvio` int(12) NOT NULL,
  `iFormaEnvio` int(6) NOT NULL,
  `iTrofeu` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Não está com o troféu; 1 = Está com o troféu',
  `dEnvioPreco` decimal(10,2) NOT NULL,
  `iMaxJogadores` int(4) NOT NULL,
  `hasDivisaoGrupo` int(1) NOT NULL DEFAULT '0' COMMENT '1 = Dividido em Grupos, 0 = Não é Dividido em Grupos',
  `iTamanhoGrupo` int(2) NOT NULL DEFAULT '0',
  `iRodadaAtual` int(2) NOT NULL DEFAULT '0',
  `fMediaJogadores` decimal(10,2) NOT NULL,
  `fMediaUtilizadaTop` decimal(10,2) NOT NULL,
  `iTop` smallint(1) NOT NULL DEFAULT '0',
  `observacaoAdmin` text NOT NULL,
  `dtObservacao` int(10) NOT NULL,
  `iFotoTop8` tinyint(1) NOT NULL DEFAULT '0',
  `isAtivo` int(1) NOT NULL DEFAULT '4' COMMENT '1 = Ativo, 2 = Inativo, 3 = Pendente, 4 = Aguardando Pagamento de Plano',
  `iMarketing` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Marketing NÃ£o Enviado; 1 = Marketing Enviado',
  PRIMARY KEY (`ID_LojasInscritas`),
  KEY `IDE_Circuito` (`IDE_Circuito`,`isAtivo`),
  KEY `iRodadaAtual` (`iRodadaAtual`),
  KEY `IDE_TorneioOpen` (`IDE_TorneioOpen`),
  KEY `iFotoTop8` (`iFotoTop8`),
  KEY `iTop` (`iTop`),
  KEY `fMediaUtilizadaTop` (`fMediaUtilizadaTop`),
  KEY `IDE_EnderecoEnvio` (`IDE_EnderecoEnvio`),
  KEY `iTrofeu` (`iTrofeu`),
  KEY `IDE_Loja_2` (`IDE_Loja`,`iFormato`),
  KEY `IDE_Circuito_2` (`IDE_Circuito`,`IDE_Loja`,`iFormato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lojas_circuitos_inscritas_extras`
--

DROP TABLE IF EXISTS `lojas_circuitos_inscritas_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_circuitos_inscritas_extras` (
  `IDE_LojasInscritas` int(11) NOT NULL,
  `iQtdKits` smallint(2) NOT NULL,
  `iQtdPlaymats` smallint(2) NOT NULL,
  `iQtdCamisetas` smallint(2) NOT NULL,
  `iQtdTokens` smallint(2) NOT NULL,
  KEY `IDE_LojasInscritas` (`IDE_LojasInscritas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lojas_circuitos_respostas_questionario`
--

DROP TABLE IF EXISTS `lojas_circuitos_respostas_questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_circuitos_respostas_questionario` (
  `ID_Resposta` int(13) NOT NULL AUTO_INCREMENT,
  `iTipoQuestionario` smallint(1) NOT NULL COMMENT '1 = Inscrição Final; 2 = Inscrição Loja; 3 = Recebimento de Material',
  `IDE_Circuito` int(9) NOT NULL,
  `IDE_Perfil` int(13) NOT NULL,
  `sChave` varchar(255) NOT NULL,
  `sResposta` text NOT NULL,
  `dtResposta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Resposta`),
  KEY `IDE_Circuito` (`IDE_Circuito`,`sChave`),
  KEY `iTipoQuestionario` (`iTipoQuestionario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lojas_dados`
--

DROP TABLE IF EXISTS `lojas_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_dados` (
  `ID_Loja` int(11) NOT NULL AUTO_INCREMENT,
  `sEmail` varchar(100) NOT NULL DEFAULT '',
  `sNome` varchar(150) NOT NULL DEFAULT '',
  `sEndereco` text NOT NULL,
  `sTel` varchar(20) NOT NULL DEFAULT '',
  `sCidade` varchar(150) NOT NULL DEFAULT '',
  `sEstado` varchar(150) NOT NULL DEFAULT '',
  `dtCadastro` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sPrivilegios` varchar(30) NOT NULL DEFAULT '',
  `iAtivo` int(1) NOT NULL DEFAULT '0',
  `sPais` varchar(150) NOT NULL DEFAULT '',
  KEY `ID_Loja` (`ID_Loja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lojas_historico_torneios`
--

DROP TABLE IF EXISTS `lojas_historico_torneios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_historico_torneios` (
  `ID_Historico` int(12) NOT NULL AUTO_INCREMENT,
  `jogador` int(30) NOT NULL DEFAULT '0',
  `oponente` int(30) NOT NULL DEFAULT '0',
  `rodada` int(2) NOT NULL DEFAULT '0',
  `resultado` int(1) NOT NULL DEFAULT '0',
  `IDE_Loja` int(9) NOT NULL DEFAULT '0',
  `IDE_Torneio` int(12) NOT NULL DEFAULT '0',
  KEY `id` (`ID_Historico`),
  KEY `jogador` (`jogador`),
  KEY `IDE_Torneio` (`IDE_Torneio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lojas_torneios`
--

DROP TABLE IF EXISTS `lojas_torneios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas_torneios` (
  `ID_Torneios` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Cadastro` int(11) NOT NULL DEFAULT '0',
  `IDE_Loja` int(11) NOT NULL DEFAULT '0',
  `sNome` varchar(150) NOT NULL DEFAULT '',
  `sCidade` varchar(255) NOT NULL DEFAULT '',
  `sEstado` varchar(255) NOT NULL DEFAULT '',
  `sNomeTorneio` varchar(255) NOT NULL DEFAULT '',
  `sFormato` varchar(100) NOT NULL DEFAULT '',
  `sTipoTorneio` varchar(50) NOT NULL DEFAULT '',
  `sObs` text NOT NULL,
  `dtTorneio` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IDE_Circuito` int(11) NOT NULL DEFAULT '0',
  `iVagas` int(5) NOT NULL DEFAULT '0',
  `dtEnvio` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iQtdJogadores` int(5) NOT NULL DEFAULT '0',
  `sNomeFile` varchar(150) NOT NULL DEFAULT '',
  `sWERFile` longtext NOT NULL,
  `sDownload` int(1) NOT NULL DEFAULT '0',
  `iCancelado` int(1) NOT NULL DEFAULT '0',
  `iTopico` int(12) NOT NULL DEFAULT '0',
  KEY `ID_Torneios` (`ID_Torneios`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_bancos`
--

DROP TABLE IF EXISTS `ls_bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_bancos` (
  `ID_Banco` int(9) NOT NULL AUTO_INCREMENT,
  `iCodigo` int(11) NOT NULL,
  `sNome` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_Banco`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_cartao_ban`
--

DROP TABLE IF EXISTS `ls_cartao_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_cartao_ban` (
  `ID_Ban` int(9) NOT NULL AUTO_INCREMENT,
  `iTipoCadastro` int(3) NOT NULL,
  `sChave` varchar(35) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_UserCadastro` int(9) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `iExpiraBan` tinyint(1) NOT NULL DEFAULT '0',
  `dtExpiraBan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Ban`),
  KEY `iStatus` (`iStatus`),
  KEY `idx_exp_edt_sts` (`iExpiraBan`,`dtExpiraBan`,`iStatus`) USING BTREE,
  KEY `idx_usr_sts` (`IDE_UserCadastro`,`iStatus`) USING BTREE,
  KEY `iTipoCadastro` (`iTipoCadastro`,`sChave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_checkout_notif_log`
--

DROP TABLE IF EXISTS `ls_checkout_notif_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_checkout_notif_log` (
  `iOrigem` tinyint(1) NOT NULL COMMENT '7 = PagHiper',
  `apiKey` varchar(150) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `notification_id` varchar(255) NOT NULL,
  `dtNotification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(30) NOT NULL,
  `sPayload` text NOT NULL,
  KEY `transaction_id` (`transaction_id`),
  KEY `iOrigem` (`iOrigem`),
  KEY `dtNotification` (`dtNotification`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_cobranca`
--

DROP TABLE IF EXISTS `ls_cobranca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_cobranca` (
  `ID_Cobranca` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `sEmail` varchar(100) NOT NULL,
  `sNome` varchar(100) NOT NULL,
  `IDE_Perfil` int(9) NOT NULL DEFAULT '0',
  `sMensagem` text NOT NULL,
  `iFrete` smallint(2) NOT NULL DEFAULT '0',
  `sFrete` varchar(50) NOT NULL,
  `dFreteValor` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID_Cobranca`),
  KEY `IDE_Transacao` (`IDE_Transacao`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_cobranca_itens`
--

DROP TABLE IF EXISTS `ls_cobranca_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_cobranca_itens` (
  `ID_Item` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Cobranca` int(9) NOT NULL,
  `sItem` varchar(100) NOT NULL,
  `dValor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iQuantidade` int(6) NOT NULL,
  `sCodigo` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Item`),
  KEY `IDE_Cobranca` (`IDE_Cobranca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_config_contas_bancarias`
--

DROP TABLE IF EXISTS `ls_config_contas_bancarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_config_contas_bancarias` (
  `ID_ContaBancaria` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` varchar(7) NOT NULL,
  `IDE_Banco` int(9) NOT NULL,
  `IDE_Dependente` int(9) NOT NULL,
  `iTipoConta` smallint(1) NOT NULL DEFAULT '0',
  `sAgencia` varchar(12) NOT NULL,
  `sContaBancaria` varchar(20) NOT NULL,
  `dVA` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dVB` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iTentativas` smallint(1) NOT NULL DEFAULT '0',
  `iStatus` smallint(1) NOT NULL COMMENT '4 = Bloqueada - Maximo de Tentativas / 3 = Aguard Deposito Admin / 2 = Aguard Ativacao Usuario / 1 = Ativo / 0 = Deletada',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sTitular` varchar(40) NOT NULL,
  `sCPF` varchar(20) NOT NULL,
  `sCNPJ` varchar(20) NOT NULL,
  `iCobrarTransf` tinyint(1) NOT NULL DEFAULT '0',
  `dValorCobranca` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iEstorno` tinyint(1) NOT NULL DEFAULT '0',
  `sChavePIX` varchar(255) NOT NULL,
  `iContaValidadaAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `sIP` varchar(45) NOT NULL,
  `iSaquesAprovados` int(6) NOT NULL,
  PRIMARY KEY (`ID_ContaBancaria`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `IDE_Banco` (`IDE_Banco`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Dependente` (`IDE_Dependente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_config_contas_bancarias_log_admin`
--

DROP TABLE IF EXISTS `ls_config_contas_bancarias_log_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_config_contas_bancarias_log_admin` (
  `IDE_ContaBancaria` int(9) NOT NULL,
  `IDE_Usuario` int(9) NOT NULL,
  `iNovoStatus` tinyint(1) NOT NULL,
  `dtAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  KEY `IDE_ContaBancaria` (`IDE_ContaBancaria`),
  KEY `IDE_Usuario` (`IDE_Usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_config_dependente`
--

DROP TABLE IF EXISTS `ls_config_dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_config_dependente` (
  `ID_Dependente` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(9) NOT NULL,
  `sNome` varchar(50) NOT NULL,
  `sCPF` varchar(15) NOT NULL,
  `sRG` varchar(15) NOT NULL,
  `iTelDDD` int(3) NOT NULL,
  `sTelefone` varchar(16) NOT NULL,
  `iCelDDD` int(3) NOT NULL,
  `sCelular` varchar(16) NOT NULL,
  `sLSFilesPath` varchar(35) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dDataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dDataAprovacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iStatus` smallint(1) NOT NULL COMMENT '0 = Deletada | 1 = Aprovada | 2 = Aguardando Aprovação | 3 = Negada',
  PRIMARY KEY (`ID_Dependente`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_config_meio_pagamento`
--

DROP TABLE IF EXISTS `ls_config_meio_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_config_meio_pagamento` (
  `ID_MeioPagamento` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Banco` int(9) NOT NULL,
  `iTipoConta` smallint(1) NOT NULL DEFAULT '0',
  `sAgencia` varchar(12) NOT NULL,
  `sContaBancaria` varchar(20) NOT NULL,
  `sTitular` varchar(80) NOT NULL,
  `sOperacao` varchar(15) NOT NULL,
  `sCNPJ` varchar(20) NOT NULL,
  `dTaxaAdministrativa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sEmail` varchar(150) NOT NULL,
  `sToken` varchar(150) NOT NULL,
  `sNomeUsuario` varchar(150) NOT NULL,
  `sPassPayPal` varchar(150) NOT NULL,
  `sAssinatura` varchar(150) NOT NULL,
  `sMerchantId` varchar(150) NOT NULL,
  `iType` smallint(2) NOT NULL COMMENT '1: Deposito; 2:Cielo; 3:PayPal; 4: PagSeguro',
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Ativo / 0 = Inativo',
  `sPIXKey` text NOT NULL,
  `sPIXKeyPath` text NOT NULL,
  `sPIXPem` text NOT NULL,
  `sPIXPemPath` text NOT NULL,
  `sPIXTokenBearer` text NOT NULL,
  `dtPIXTokenBearerExpire` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtPIXTokenBearerCreated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sPIXClientID` varchar(255) NOT NULL,
  `sPIXClientSecret` varchar(255) NOT NULL,
  `sApiKey` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_MeioPagamento`),
  KEY `iStatus` (`iStatus`),
  KEY `iType` (`iType`),
  KEY `IDE_Banco` (`IDE_Banco`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_convidados`
--

DROP TABLE IF EXISTS `ls_convidados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_convidados` (
  `ID_Convite` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(9) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Convite`),
  UNIQUE KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_cupom_extrato`
--

DROP TABLE IF EXISTS `ls_cupom_extrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_cupom_extrato` (
  `IDE_Transacao` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `iModulo` tinyint(1) NOT NULL COMMENT '1 = Buylist / 2 = Negociacoes',
  `dtValidade` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `IDE_Transacao` (`IDE_Transacao`),
  KEY `idx_usr_sts_mod` (`IDE_User`,`iStatus`,`iModulo`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_denuncias`
--

DROP TABLE IF EXISTS `ls_denuncias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_denuncias` (
  `ID_Denuncia` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtDataDenuncia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Denuncia`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Transacao` (`IDE_Transacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_depositos_bancarios`
--

DROP TABLE IF EXISTS `ls_depositos_bancarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_depositos_bancarios` (
  `ID_COMPROVANTE` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Codigo_Transacao` varchar(25) NOT NULL,
  `sTextoLivre` varchar(255) NOT NULL,
  `sCaminhoImagem` varchar(35) NOT NULL,
  `IDE_Perfil` int(11) NOT NULL,
  PRIMARY KEY (`ID_COMPROVANTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_ecom_crontab`
--

DROP TABLE IF EXISTS `ls_ecom_crontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_ecom_crontab` (
  `ID_Crontab` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `sFuncao` varchar(100) NOT NULL,
  `sInfoExtra` varchar(100) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtExecucao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Crontab`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_estorno_notificacao`
--

DROP TABLE IF EXISTS `ls_estorno_notificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_estorno_notificacao` (
  `IDE_Transacao` int(9) NOT NULL,
  `dtUltimaNotificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_Transacao` (`IDE_Transacao`),
  KEY `dtUltimaNotificacao` (`dtUltimaNotificacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_juros_ecom`
--

DROP TABLE IF EXISTS `ls_juros_ecom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_juros_ecom` (
  `IDE_User` int(9) NOT NULL,
  `iParcelasNum` tinyint(1) NOT NULL DEFAULT '1',
  `iJurosCobrarPerfil` tinyint(1) NOT NULL DEFAULT '1',
  `dTaxaJuros2` decimal(10,2) NOT NULL,
  `dTaxaJuros3` decimal(10,2) NOT NULL,
  `dTaxaJuros4` decimal(10,2) NOT NULL,
  `dTaxaJuros5` decimal(10,2) NOT NULL,
  `dTaxaJuros6` decimal(10,2) NOT NULL,
  `dTaxaJuros7` decimal(10,2) NOT NULL,
  `dTaxaJuros8` decimal(10,2) NOT NULL,
  `dTaxaJuros9` decimal(10,2) NOT NULL,
  `dTaxaJuros10` decimal(10,2) NOT NULL,
  `dTaxaJuros11` decimal(10,2) NOT NULL,
  `dTaxaJuros12` decimal(10,2) NOT NULL,
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_juros_ecom_log`
--

DROP TABLE IF EXISTS `ls_juros_ecom_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_juros_ecom_log` (
  `dtAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_UserLogado` int(9) NOT NULL,
  `sIPUserLogado` varchar(15) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `iParcelasNum` tinyint(1) NOT NULL DEFAULT '1',
  `iJurosCobrarPerfil` tinyint(1) NOT NULL DEFAULT '1',
  `dTaxaJuros2` decimal(10,2) NOT NULL,
  `dTaxaJuros3` decimal(10,2) NOT NULL,
  `dTaxaJuros4` decimal(10,2) NOT NULL,
  `dTaxaJuros5` decimal(10,2) NOT NULL,
  `dTaxaJuros6` decimal(10,2) NOT NULL,
  `dTaxaJuros7` decimal(10,2) NOT NULL,
  `dTaxaJuros8` decimal(10,2) NOT NULL,
  `dTaxaJuros9` decimal(10,2) NOT NULL,
  `dTaxaJuros10` decimal(10,2) NOT NULL,
  `dTaxaJuros11` decimal(10,2) NOT NULL,
  `dTaxaJuros12` decimal(10,2) NOT NULL,
  KEY `dtAlteracao` (`dtAlteracao`),
  KEY `IDE_UserLogado` (`IDE_UserLogado`),
  KEY `sIPUserLogado` (`sIPUserLogado`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_lista_espera`
--

DROP TABLE IF EXISTS `ls_lista_espera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_lista_espera` (
  `ID_Espera` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(9) NOT NULL,
  `dtCadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Espera`),
  UNIQUE KEY `IDE_Perfil_2` (`IDE_Perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_notificacao_automatica`
--

DROP TABLE IF EXISTS `ls_notificacao_automatica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_notificacao_automatica` (
  `IDE_Transacao` int(9) NOT NULL,
  `iTipoNotificacao` int(2) NOT NULL,
  `dtNotificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sCodigo` char(30) NOT NULL,
  UNIQUE KEY `IDE_Transacao` (`IDE_Transacao`,`iTipoNotificacao`),
  KEY `sCodigo` (`sCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_safelist`
--

DROP TABLE IF EXISTS `ls_safelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_safelist` (
  `ID_SafeList` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `dMaxValue` decimal(10,2) NOT NULL,
  `IDE_UserRegister` int(9) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtRegistration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_SafeList`),
  KEY `idx_usr_val_sts` (`IDE_User`,`dMaxValue`,`iStatus`) USING BTREE,
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_saldo`
--

DROP TABLE IF EXISTS `ls_saldo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_saldo` (
  `ID_Saldo` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Vendedor` int(9) NOT NULL,
  `IDE_Transacao` int(9) NOT NULL DEFAULT '0',
  `dValorLiquido` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorTaxasLM` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iProveniente` smallint(1) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  `IDE_Saldo_Referencia` int(9) NOT NULL DEFAULT '0',
  `dtSaldo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Saldo`),
  KEY `IDE_Vendedor` (`IDE_Vendedor`),
  KEY `iProveniente` (`iProveniente`,`iStatus`),
  KEY `IDE_Saldo_Referencia` (`IDE_Saldo_Referencia`),
  KEY `idx_keys_1` (`IDE_Transacao`,`iProveniente`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_taxas_ecom`
--

DROP TABLE IF EXISTS `ls_taxas_ecom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_taxas_ecom` (
  `IDE_User` int(9) NOT NULL,
  `dTaxaCartaoCredito` decimal(4,2) NOT NULL,
  `dTaxaCreditoLigaSegura` decimal(4,2) NOT NULL,
  `dTaxaBancoBrasil` decimal(4,2) NOT NULL,
  `dTaxaBradesco` decimal(4,2) NOT NULL,
  `dTaxaCaixaEconomica` decimal(4,2) NOT NULL,
  `dTaxaItau` decimal(4,2) NOT NULL,
  `dTaxaSantander` decimal(4,2) NOT NULL,
  `dTaxaInter` decimal(4,2) NOT NULL,
  `iDiasCartaoCredito` tinyint(3) NOT NULL,
  `iDiasTaxaLigaSegura` tinyint(3) NOT NULL,
  `iDiasTaxaBancoBrasil` tinyint(3) NOT NULL,
  `iDiasTaxaBradesco` tinyint(3) NOT NULL,
  `iDiasTaxaCaixaEconomica` tinyint(3) NOT NULL,
  `iDiasTaxaItau` tinyint(3) NOT NULL,
  `iDiasTaxaSantander` tinyint(3) NOT NULL,
  `iDiasTaxaInter` tinyint(3) NOT NULL,
  `iTipoCobrancaJuros` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Cliente / 2 = Loja',
  `dTaxaCCJurosLoja1` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja2` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja3` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja4` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja5` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja6` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja7` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja8` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja9` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja10` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja11` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja12` decimal(10,2) NOT NULL,
  `iDiasCCJurosLoja1` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja2` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja3` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja4` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja5` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja6` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja7` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja8` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja9` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja10` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja11` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja12` tinyint(3) NOT NULL DEFAULT '0',
  `dTaxaBoleto` decimal(4,2) NOT NULL,
  `iDiasTaxaBoleto` tinyint(3) NOT NULL,
  `dValorMinJurosLoja` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dTaxaPIX` decimal(4,2) NOT NULL,
  `iDiasTaxaPIX` tinyint(3) NOT NULL,
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_taxas_ecom_log`
--

DROP TABLE IF EXISTS `ls_taxas_ecom_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_taxas_ecom_log` (
  `dtAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_UserLogado` int(9) NOT NULL,
  `sIPUserLogado` varchar(15) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `dTaxaCartaoCredito` decimal(4,2) NOT NULL,
  `dTaxaCreditoLigaSegura` decimal(4,2) NOT NULL,
  `dTaxaBancoBrasil` decimal(4,2) NOT NULL,
  `dTaxaBradesco` decimal(4,2) NOT NULL,
  `dTaxaCaixaEconomica` decimal(4,2) NOT NULL,
  `dTaxaItau` decimal(4,2) NOT NULL,
  `dTaxaSantander` decimal(4,2) NOT NULL,
  `dTaxaInter` decimal(4,2) NOT NULL,
  `iDiasCartaoCredito` tinyint(3) NOT NULL,
  `iDiasTaxaLigaSegura` tinyint(3) NOT NULL,
  `iDiasTaxaBancoBrasil` tinyint(3) NOT NULL,
  `iDiasTaxaBradesco` tinyint(3) NOT NULL,
  `iDiasTaxaCaixaEconomica` tinyint(3) NOT NULL,
  `iDiasTaxaItau` tinyint(3) NOT NULL,
  `iDiasTaxaSantander` tinyint(3) NOT NULL,
  `iDiasTaxaInter` tinyint(3) NOT NULL,
  `iTipoCobrancaJuros` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Cliente / 2 = Loja',
  `dTaxaCCJurosLoja1` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja2` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja3` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja4` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja5` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja6` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja7` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja8` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja9` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja10` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja11` decimal(10,2) NOT NULL,
  `dTaxaCCJurosLoja12` decimal(10,2) NOT NULL,
  `iDiasCCJurosLoja1` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja2` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja3` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja4` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja5` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja6` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja7` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja8` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja9` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja10` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja11` tinyint(3) NOT NULL DEFAULT '0',
  `iDiasCCJurosLoja12` tinyint(3) NOT NULL DEFAULT '0',
  `dTaxaBoleto` decimal(4,2) NOT NULL,
  `iDiasTaxaBoleto` tinyint(3) NOT NULL,
  `dValorMinJurosLoja` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dTaxaPIX` decimal(4,2) NOT NULL,
  `iDiasTaxaPIX` tinyint(3) NOT NULL,
  KEY `dtAlteracao` (`dtAlteracao`),
  KEY `IDE_UserLogado` (`IDE_UserLogado`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_taxas_negociacao`
--

DROP TABLE IF EXISTS `ls_taxas_negociacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_taxas_negociacao` (
  `IDE_User` int(9) NOT NULL,
  `dTaxa` decimal(8,2) NOT NULL,
  `IDE_UserCadastro` int(9) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtUltimaAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes`
--

DROP TABLE IF EXISTS `ls_transacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes` (
  `ID_Transacao` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Negociacao` int(9) NOT NULL,
  `IDE_MP_Compra` int(9) NOT NULL,
  `IDE_Ecom_Venda` int(9) NOT NULL,
  `IDE_Vendedor` int(9) NOT NULL,
  `IDE_Comprador` int(9) NOT NULL,
  `IDE_Saldo_Referencia` int(9) NOT NULL DEFAULT '0',
  `IDE_ContaBancaria_Saque` int(9) NOT NULL,
  `IDE_ContaBancaria_Pagamento` int(9) NOT NULL DEFAULT '0',
  `iTipoTransacao` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Pagamento / 2 = Saque / 3 = Cobranca',
  `iDePara` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = De / 2 = Para',
  `dtAberturaTransacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dValorBruto` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorTaxas` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorTaxasLM` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorTaxasSpread` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorLiquido` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorTaxasLMPagamento` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Utilizado somente para pagamento utilizando Saldo Disponivel',
  `dValorJuros` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorTaxaCielo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iNumeroParcelas` int(2) NOT NULL DEFAULT '1',
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iStatusSaldo` smallint(1) NOT NULL DEFAULT '0',
  `iMeioDePagamento` smallint(1) NOT NULL COMMENT '1 = Saldo Disponivel (Creditos) / 2 = Deposito Bancario / 3 = Cielo / 4 = PayPal / 5 = PagSeguro / 6 = LigaSegura MP / 7 = Boleto / 8 = PIX',
  `iLSPrazo` smallint(1) NOT NULL DEFAULT '0',
  `dtLSLiberaSaldo` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iNaoLidaVendedor` smallint(1) NOT NULL DEFAULT '0',
  `iNaoLidaComprador` smallint(1) NOT NULL DEFAULT '0',
  `iRefPostada` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Referência postada por quem efetuou o pagamento',
  `iTransacaoAuxiliar` smallint(1) NOT NULL DEFAULT '0',
  `iFlagDenuncia` smallint(1) NOT NULL DEFAULT '0',
  `iFlagLiberaComentarios` smallint(1) NOT NULL DEFAULT '0',
  `iMPComprovEnviado` smallint(1) NOT NULL DEFAULT '0',
  `iEmailLembrete` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Email de lembrete nao enviado / 1 = Enviado',
  `dtAprovada` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iAdminComprovEnviado` smallint(1) NOT NULL DEFAULT '0',
  `iFlagProgramada` tinyint(1) NOT NULL DEFAULT '0',
  `iLSEcomComprovEnviado` tinyint(1) NOT NULL DEFAULT '0',
  `iNotifOcorreuTudoBem` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Transacao`),
  KEY `IDE_Vendedor` (`IDE_Vendedor`),
  KEY `IDE_Comprador` (`IDE_Comprador`),
  KEY `iStatus` (`iStatus`,`iStatusSaldo`),
  KEY `IDE_Saldo_Referencia` (`IDE_Saldo_Referencia`),
  KEY `IDE_ContaBancaria_Saque` (`IDE_ContaBancaria_Saque`),
  KEY `IDE_MP_Compra` (`IDE_MP_Compra`),
  KEY `IDE_Ecom_Venda` (`IDE_Ecom_Venda`),
  KEY `iTransacaoAuxiliar` (`iTransacaoAuxiliar`),
  KEY `iEmailLembrete` (`iEmailLembrete`),
  KEY `iMPComprovEnviado` (`iMPComprovEnviado`),
  KEY `dtAprovada` (`dtAprovada`),
  KEY `iAdminComprovEnviado` (`iAdminComprovEnviado`),
  KEY `iTipoTransacao` (`iTipoTransacao`),
  KEY `dtAberturaTransacao` (`dtAberturaTransacao`),
  KEY `iMeioDePagamento` (`iMeioDePagamento`),
  KEY `whereindex_1` (`IDE_MP_Compra`,`iTipoTransacao`,`dtAberturaTransacao`,`iStatus`,`iMeioDePagamento`,`iTransacaoAuxiliar`),
  KEY `whereindex_2` (`iMPComprovEnviado`,`iTransacaoAuxiliar`,`iStatus`,`iTipoTransacao`,`IDE_Negociacao`,`dtAberturaTransacao`) USING BTREE,
  KEY `idx_idempcompra_itransacaoauxiliar` (`IDE_MP_Compra`,`iTransacaoAuxiliar`) USING BTREE,
  KEY `idx_istatus_saldo_transaux` (`iStatus`,`iStatusSaldo`,`iTransacaoAuxiliar`) USING BTREE,
  KEY `iFlagProgramada` (`iFlagProgramada`),
  KEY `idx_sem_comprovante_notif` (`iStatus`,`iLSEcomComprovEnviado`,`iAdminComprovEnviado`,`IDE_MP_Compra`,`iTipoTransacao`,`IDE_Ecom_Venda`,`iMeioDePagamento`,`iTransacaoAuxiliar`,`iEmailLembrete`,`dtAberturaTransacao`) USING BTREE,
  KEY `iNotifOcorreuTudoBem` (`iNotifOcorreuTudoBem`),
  KEY `idx_notif_ocorreutudobem` (`iNotifOcorreuTudoBem`,`iTransacaoAuxiliar`,`IDE_MP_Compra`,`IDE_Ecom_Venda`,`dtAprovada`) USING BTREE,
  KEY `iLSEcomComprovEnviado` (`iLSEcomComprovEnviado`),
  KEY `idx_sem_comprovante` (`iStatus`,`iStatusSaldo`,`iTransacaoAuxiliar`,`iMPComprovEnviado`,`iAdminComprovEnviado`,`iLSEcomComprovEnviado`) USING BTREE,
  KEY `idx_comp_aux_sts_dtaprov` (`IDE_Comprador`,`iStatus`,`iTransacaoAuxiliar`,`dtAprovada`) USING BTREE,
  KEY `idx_neg_tpo_sts_sld_den_lib` (`IDE_Negociacao`,`iTipoTransacao`,`iStatus`,`iStatusSaldo`,`iFlagDenuncia`,`dtLSLiberaSaldo`) USING BTREE,
  KEY `iFlagDenuncia` (`iFlagDenuncia`,`IDE_Vendedor`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_adiantamento`
--

DROP TABLE IF EXISTS `ls_transacoes_adiantamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_adiantamento` (
  `ID_Adiantamento` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Vendedor` int(9) NOT NULL,
  `IDE_Moderador` int(9) NOT NULL,
  `IDE_TransacaoSaque` int(9) NOT NULL,
  `dTaxa` decimal(10,2) NOT NULL,
  `dValor` decimal(10,2) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtAdiantamento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Adiantamento`),
  KEY `IDE_Vendedor` (`IDE_Vendedor`),
  KEY `IDE_Moderador` (`IDE_Moderador`),
  KEY `iStatus` (`iStatus`),
  KEY `dtAdiantamento` (`dtAdiantamento`),
  KEY `dtAdiantamento_2` (`dtAdiantamento`),
  KEY `dtAdiantamento_3` (`dtAdiantamento`),
  KEY `dtAdiantamento_4` (`dtAdiantamento`),
  KEY `dtAdiantamento_5` (`dtAdiantamento`),
  KEY `dtAdiantamento_6` (`dtAdiantamento`),
  KEY `dtAdiantamento_7` (`dtAdiantamento`),
  KEY `dtAdiantamento_8` (`dtAdiantamento`),
  KEY `dtAdiantamento_9` (`dtAdiantamento`),
  KEY `dtAdiantamento_10` (`dtAdiantamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_adiantamento_historico`
--

DROP TABLE IF EXISTS `ls_transacoes_adiantamento_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_adiantamento_historico` (
  `IDE_Adiantamento` int(9) NOT NULL,
  `IDE_Transacao` int(9) NOT NULL,
  UNIQUE KEY `IDE_Adiantamento` (`IDE_Adiantamento`,`IDE_Transacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_boletos`
--

DROP TABLE IF EXISTS `ls_transacoes_boletos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_boletos` (
  `ID_Boleto` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `transaction_id` varchar(25) NOT NULL,
  `value_cents` int(9) NOT NULL,
  `status` varchar(25) NOT NULL,
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `digitable_line` varchar(100) NOT NULL,
  `url_slip` text NOT NULL,
  `url_slip_pdf` text NOT NULL,
  `bar_code_number_to_image` varchar(100) NOT NULL,
  `dtCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Removido / 1 = Ativo / 2 = Aprovado',
  `dtStatusChanged` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Boleto`),
  KEY `transaction_id` (`transaction_id`),
  KEY `idx_trs_sts` (`IDE_Transacao`,`iStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_comentarios`
--

DROP TABLE IF EXISTS `ls_transacoes_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_comentarios` (
  `ID_Comentario` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `IDE_Denuncia` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `sComentario` text NOT NULL,
  `sFilePath` varchar(150) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtDataComentario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Comentario`),
  KEY `IDE_Denuncia` (`IDE_Denuncia`),
  KEY `IDE_User` (`IDE_User`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Transacao_2` (`IDE_Transacao`,`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_comprovantes`
--

DROP TABLE IF EXISTS `ls_transacoes_comprovantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_comprovantes` (
  `ID_Comprovante` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `sFilePath` varchar(100) NOT NULL,
  `sComentario` text NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtUpload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Comprovante`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Compra_2` (`IDE_Transacao`,`iStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_data_origem`
--

DROP TABLE IF EXISTS `ls_transacoes_data_origem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_data_origem` (
  `IDE_Transacao` int(9) NOT NULL,
  `iPlataforma` int(3) NOT NULL DEFAULT '0',
  `iDispositivo` int(3) NOT NULL DEFAULT '0',
  `iOrigem` int(3) NOT NULL DEFAULT '0',
  `iMPPrincipal` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Transacao` (`IDE_Transacao`),
  KEY `iMPPrincipal` (`iMPPrincipal`),
  KEY `iPlataforma` (`iPlataforma`),
  KEY `iOrigem` (`iOrigem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_data_valores`
--

DROP TABLE IF EXISTS `ls_transacoes_data_valores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_data_valores` (
  `IDE_Transacao` int(9) NOT NULL,
  `iTCG` tinyint(3) NOT NULL,
  `dValor` decimal(10,2) NOT NULL,
  UNIQUE KEY `IDE_Transacao` (`IDE_Transacao`,`iTCG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_ecom_comprovantes`
--

DROP TABLE IF EXISTS `ls_transacoes_ecom_comprovantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_ecom_comprovantes` (
  `ID_Comprovante` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `sFilePath` varchar(100) NOT NULL,
  `sComentario` text NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtUpload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iAnexoRemovido` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Comprovante`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Transacao_2` (`IDE_Transacao`,`iStatus`),
  KEY `iAnexoRemovido` (`iAnexoRemovido`),
  KEY `dtUpload` (`dtUpload`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_historico`
--

DROP TABLE IF EXISTS `ls_transacoes_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_historico` (
  `ID_Historico` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `dtHistorico` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sHistorico` text NOT NULL,
  `sComentario` text NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Historico`),
  KEY `IDE_Transacao` (`IDE_Transacao`),
  KEY `IDE_Transacao_2` (`IDE_Transacao`),
  KEY `IDE_Transacao_3` (`IDE_Transacao`),
  KEY `IDE_Transacao_4` (`IDE_Transacao`),
  KEY `IDE_Transacao_5` (`IDE_Transacao`),
  KEY `IDE_Transacao_6` (`IDE_Transacao`),
  KEY `IDE_Transacao_7` (`IDE_Transacao`),
  KEY `IDE_Transacao_8` (`IDE_Transacao`),
  KEY `IDE_Transacao_9` (`IDE_Transacao`),
  KEY `IDE_Transacao_10` (`IDE_Transacao`),
  KEY `IDE_Transacao_11` (`IDE_Transacao`),
  KEY `IDE_Transacao_12` (`IDE_Transacao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_historico_ccban`
--

DROP TABLE IF EXISTS `ls_transacoes_historico_ccban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_historico_ccban` (
  `IDE_Transacao` int(9) NOT NULL,
  `iCodigo` int(3) NOT NULL,
  `sInformacao` text NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_Transacao` (`IDE_Transacao`),
  KEY `dtAdicionado` (`dtAdicionado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_integ_cartao`
--

DROP TABLE IF EXISTS `ls_transacoes_integ_cartao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_integ_cartao` (
  `ID_Integ` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `iTipoTransacao` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Momento de Aprovacao / 2 = Momento de Reprovacao',
  `iPlataforma` tinyint(1) NOT NULL COMMENT '1 = Cielo / 2 = PagSeguro / 3 = MercadoPago',
  `dtNotificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_Integ_Notificacao` varchar(255) NOT NULL,
  `sLog` text NOT NULL,
  PRIMARY KEY (`ID_Integ`),
  KEY `ID_Integ_Notificacao` (`ID_Integ_Notificacao`),
  KEY `idx_trs_tpo_plt` (`IDE_Transacao`,`iTipoTransacao`,`iPlataforma`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_log_aprovacao`
--

DROP TABLE IF EXISTS `ls_transacoes_log_aprovacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_log_aprovacao` (
  `IDE_Transacao` int(11) NOT NULL,
  `IDE_UserAprovou` int(11) NOT NULL,
  `dtDataAprovacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  `iBanco` int(5) NOT NULL,
  `sFilePath` varchar(90) NOT NULL,
  `iFileLine` int(5) NOT NULL,
  `sFileInfoData` varchar(25) NOT NULL,
  `sFileInfoValor` decimal(10,2) NOT NULL,
  `sFileInfoTipo` varchar(15) NOT NULL,
  `sFileInfoTID` varchar(100) NOT NULL,
  `sFileInfoTRefAux` varchar(100) NOT NULL,
  `sFileInfoTExtra` varchar(100) NOT NULL,
  PRIMARY KEY (`IDE_Transacao`),
  KEY `IDE_User` (`IDE_UserAprovou`),
  KEY `dtDataAprovacao` (`dtDataAprovacao`),
  KEY `sFileInfoValor` (`sFileInfoValor`),
  KEY `sFileInfoTipo` (`sFileInfoTipo`),
  KEY `sFileInfoTID` (`sFileInfoTID`),
  KEY `sFileInfoTRefAux` (`sFileInfoTRefAux`),
  KEY `sFileInfoTExtra` (`sFileInfoTExtra`),
  KEY `sFileInfoData` (`sFileInfoData`),
  KEY `joinindex_1` (`iBanco`,`sFileInfoData`,`sFileInfoValor`,`sFileInfoTID`,`sFileInfoTRefAux`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_nf`
--

DROP TABLE IF EXISTS `ls_transacoes_nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_nf` (
  `IDE_Transacao` int(9) NOT NULL,
  `iStatus` smallint(1) NOT NULL COMMENT '1 = Aguard. Gerar NF / 2 = NF Gerada',
  `dtPendenciaGerada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sNotaFiscal` varchar(20) NOT NULL,
  `IDE_NotaFiscal` int(13) NOT NULL,
  `dtNotaFiscalGerada` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `IDE_Transacao` (`IDE_Transacao`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Transacao_2` (`IDE_Transacao`,`iStatus`),
  KEY `IDE_NotaFiscal` (`IDE_NotaFiscal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_pagamentos`
--

DROP TABLE IF EXISTS `ls_transacoes_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_pagamentos` (
  `IDE_Transacao` int(9) NOT NULL,
  `IDE_Pagamento` int(13) NOT NULL,
  `IDE_Perfil` int(9) NOT NULL,
  `IP` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Cancelado; 1 = Aguardando; 9 = Ativo',
  KEY `idx_pag_trs` (`IDE_Pagamento`,`IDE_Transacao`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_transacoes_pix`
--

DROP TABLE IF EXISTS `ls_transacoes_pix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_transacoes_pix` (
  `ID_PIX` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Transacao` int(9) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `value_cents` int(9) NOT NULL,
  `status` varchar(25) NOT NULL,
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `qrcode_base64` text NOT NULL,
  `qrcode_image_url` text NOT NULL,
  `emv` text NOT NULL,
  `bacen_url` text NOT NULL,
  `dtCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Removido / 1 = Ativo / 2 = Aprovado ',
  `dtStatusChanged` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iEmpresa` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=paghiper/2=pagseguro',
  PRIMARY KEY (`ID_PIX`),
  KEY `transaction_id` (`transaction_id`),
  KEY `idx_trs_sts` (`IDE_Transacao`,`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ls_user_arquivos`
--

DROP TABLE IF EXISTS `ls_user_arquivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ls_user_arquivos` (
  `ID_Arquivo` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_Dependente` int(9) NOT NULL DEFAULT '0',
  `sFilepath` varchar(200) NOT NULL,
  `sTipoArquivo` varchar(30) NOT NULL,
  `sChave` varchar(50) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Online/2=Offline',
  PRIMARY KEY (`ID_Arquivo`),
  KEY `idx_usr_sts` (`IDE_User`,`iStatus`) USING BTREE,
  KEY `idx_usr_dep_tpo_chv_sts` (`IDE_User`,`IDE_Dependente`,`sTipoArquivo`,`sChave`,`iStatus`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_artistas`
--

DROP TABLE IF EXISTS `magic_cartas_artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_artistas` (
  `ID_Artista` int(9) NOT NULL AUTO_INCREMENT,
  `sArtista` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Artista`),
  UNIQUE KEY `sArtista` (`sArtista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_edicoes`
--

DROP TABLE IF EXISTS `magic_cartas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_edicoes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Edicao` int(9) NOT NULL,
  `sSigla_EdicaoScryfall` varchar(8) NOT NULL,
  `sNomeScryfall` varchar(150) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `sNomeScryfall` (`sNomeScryfall`),
  KEY `sSigla_EdicaoScryfall` (`sSigla_EdicaoScryfall`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_layout`
--

DROP TABLE IF EXISTS `magic_cartas_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_layout` (
  `ID_Layout` int(9) NOT NULL AUTO_INCREMENT,
  `sLayout` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Layout`),
  UNIQUE KEY `sLayout` (`sLayout`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_scryfall_url`
--

DROP TABLE IF EXISTS `magic_cartas_scryfall_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_scryfall_url` (
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `sURL` varchar(150) NOT NULL,
  UNIQUE KEY `IDE_Edicao` (`IDE_Edicao`,`IDE_CartaPrincipal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_tipos`
--

DROP TABLE IF EXISTS `magic_cartas_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_tipos` (
  `ID_Tipo` int(9) NOT NULL AUTO_INCREMENT,
  `sTipo` varchar(50) NOT NULL,
  `sTipoPT` varchar(50) NOT NULL,
  `iGrupo` tinyint(2) NOT NULL DEFAULT '0',
  `sTipoOrderBy` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Tipo`),
  UNIQUE KEY `sTipo` (`sTipo`),
  KEY `iGrupo` (`iGrupo`),
  KEY `sTipoPT` (`sTipoPT`),
  KEY `sTipoOrderBy` (`sTipoOrderBy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_unicas`
--

DROP TABLE IF EXISTS `magic_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_unicas` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Layout` int(9) NOT NULL,
  `sCustoMana` varchar(50) NOT NULL,
  `iCMC` smallint(2) NOT NULL,
  `iCor` tinyint(1) NOT NULL,
  `sPoder` varchar(5) NOT NULL,
  `sResistencia` varchar(5) NOT NULL,
  `iLealdade` char(2) NOT NULL,
  `iCorPreto` tinyint(1) NOT NULL DEFAULT '0',
  `iCorVerde` tinyint(1) NOT NULL DEFAULT '0',
  `iCorVermelho` tinyint(1) NOT NULL DEFAULT '0',
  `iCorAzul` tinyint(1) NOT NULL DEFAULT '0',
  `iCorBranco` tinyint(1) NOT NULL DEFAULT '0',
  `iCorIncolor` tinyint(1) NOT NULL DEFAULT '0',
  `sTipo` varchar(90) NOT NULL,
  `iForceRefresh` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_unicas_edicoes`
--

DROP TABLE IF EXISTS `magic_cartas_unicas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_unicas_edicoes` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_Artista` int(5) NOT NULL,
  `iRaridade` tinyint(1) NOT NULL DEFAULT '1',
  `iCollector` varchar(5) NOT NULL,
  `iOrigemDados` tinyint(1) NOT NULL DEFAULT '0',
  `iForceRefresh` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`,`IDE_Edicao`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `IDE_Artista` (`IDE_Artista`),
  KEY `iRaridade` (`iRaridade`),
  KEY `iCollector` (`iCollector`),
  KEY `iOrigemDados` (`iOrigemDados`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_unicas_edicoes_error`
--

DROP TABLE IF EXISTS `magic_cartas_unicas_edicoes_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_unicas_edicoes_error` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sDetalhes` text NOT NULL,
  `sURL` text NOT NULL,
  `iTentativaTratamento` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`,`IDE_Edicao`),
  KEY `iTentativaTratamento` (`iTentativaTratamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_unicas_edicoes_flavor`
--

DROP TABLE IF EXISTS `magic_cartas_unicas_edicoes_flavor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_unicas_edicoes_flavor` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sFlavor` text NOT NULL,
  UNIQUE KEY `idx_IDE_CartaPrincipal_IDE_Edicao` (`IDE_CartaPrincipal`,`IDE_Edicao`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_unicas_oracle`
--

DROP TABLE IF EXISTS `magic_cartas_unicas_oracle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_unicas_oracle` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `sText` text NOT NULL,
  UNIQUE KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `magic_cartas_unicas_tipos`
--

DROP TABLE IF EXISTS `magic_cartas_unicas_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic_cartas_unicas_tipos` (
  `ID_CartaTipo` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Tipo` int(7) NOT NULL,
  PRIMARY KEY (`ID_CartaTipo`),
  UNIQUE KEY `idx_crd_tpo` (`IDE_CartaPrincipal`,`IDE_Tipo`) USING BTREE,
  KEY `idx_tpo` (`IDE_Tipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mailing`
--

DROP TABLE IF EXISTS `mailing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mailing` (
  `sNome` varchar(255) NOT NULL,
  `sEmail` varchar(255) NOT NULL DEFAULT '',
  `sTipoMensagem` varchar(255) NOT NULL,
  `sTituloEmail` varchar(255) NOT NULL,
  `sConteudoEmail` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Enviado, 1 = Enviado',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `status` (`status`),
  KEY `Email_2` (`sEmail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_alertas`
--

DROP TABLE IF EXISTS `marketplace_alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_alertas` (
  `ID_Alerta` int(9) NOT NULL AUTO_INCREMENT,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_User` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iQuant` tinyint(1) NOT NULL DEFAULT '1',
  `iExtras` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidade` tinyint(1) NOT NULL DEFAULT '0',
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `dtCadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '(1 = Alerta Ativo / 0 = Alerta Removido / 2 = Alerta Enviado)',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Alerta`),
  UNIQUE KEY `idx_crd_ed_tcg_sts_prc_qnt_qld_idm_ext_num_usr` (`IDE_CartaPrincipal`,`IDE_Edicao`,`iTCG`,`iStatus`,`dPreco`,`iQuant`,`iQualidade`,`iIdioma`,`iExtras`,`sNumber`,`IDE_User`) USING BTREE,
  KEY `idx_crd_tcg_usr_edc_num` (`IDE_CartaPrincipal`,`iTCG`,`IDE_User`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `idx_usr_sts_tcg` (`IDE_User`,`iStatus`,`iTCG`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_alertas_produtos`
--

DROP TABLE IF EXISTS `marketplace_alertas_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_alertas_produtos` (
  `ID_Alerta` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iQuant` smallint(1) NOT NULL,
  `iQualidade` smallint(1) NOT NULL,
  `iIdioma` smallint(1) NOT NULL,
  `dtCadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '(1 = Alerta Ativo / 0 = Alerta Removido / 2 = Alerta Enviado)',
  PRIMARY KEY (`ID_Alerta`),
  UNIQUE KEY `idx_prd_sts_prc_qnt_qld_idm_usr` (`IDE_Produto`,`iStatus`,`dPreco`,`iQuant`,`iQualidade`,`iIdioma`,`IDE_User`) USING BTREE,
  KEY `idx_usr_sts` (`IDE_User`,`iStatus`) USING BTREE,
  KEY `idx_sts_prod_usr` (`iStatus`,`IDE_Produto`,`IDE_User`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_cad_cupons`
--

DROP TABLE IF EXISTS `marketplace_cad_cupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_cad_cupons` (
  `ID_Cupom` int(9) NOT NULL AUTO_INCREMENT,
  `sCupom` varchar(50) NOT NULL,
  `dtValidadeInicio` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtValidadeFim` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_UserCadastro` int(9) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Cupom`),
  KEY `idx_cpm_sts_vini_vfim` (`sCupom`,`iStatus`,`dtValidadeInicio`,`dtValidadeFim`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_carrinho`
--

DROP TABLE IF EXISTS `marketplace_carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_carrinho` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `IDE_Item` int(9) NOT NULL,
  `iTipo` smallint(2) NOT NULL,
  `iQuantidade` int(6) NOT NULL,
  `sCodigoCarrinho` varchar(50) NOT NULL,
  `IDE_CarrinhoAux` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Deletado / 1 = Ativo',
  PRIMARY KEY (`id`),
  KEY `idx_usr_cod_sts_tpo_qnt_caux` (`IDE_UserLogado`,`sCodigoCarrinho`,`status`,`iTipo`,`iQuantidade`,`IDE_CarrinhoAux`) USING BTREE,
  KEY `idx_loj_cod_sts_qnt_itm_tpo` (`IDE_UserLoja`,`sCodigoCarrinho`,`status`,`iQuantidade`,`IDE_Item`,`iTipo`) USING BTREE,
  KEY `idx_caux_cod` (`IDE_CarrinhoAux`,`sCodigoCarrinho`) USING BTREE,
  KEY `dtAdicionado` (`dtAdicionado`),
  KEY `idx_itm_sts_cod` (`IDE_Item`,`status`,`sCodigoCarrinho`) USING BTREE,
  KEY `status` (`status`),
  KEY `idx_cod_tpo_qnt_caux` (`sCodigoCarrinho`,`status`,`iTipo`,`iQuantidade`,`IDE_CarrinhoAux`) USING BTREE,
  KEY `sIP` (`sIP`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_carrinho_aux`
--

DROP TABLE IF EXISTS `marketplace_carrinho_aux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_carrinho_aux` (
  `ID_CarrinhoAux` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `dtCriacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_CarrinhoAux`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_carrinho_buylist`
--

DROP TABLE IF EXISTS `marketplace_carrinho_buylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_carrinho_buylist` (
  `ID_Cart` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `IDE_Buylist` int(9) NOT NULL,
  `iTCG` smallint(2) NOT NULL,
  `iQuantidade` int(6) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidade` tinyint(1) NOT NULL DEFAULT '0',
  `sCodigoCarrinho` varchar(50) NOT NULL,
  `IDE_CarrinhoAux` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Cart`),
  KEY `idx_full` (`sCodigoCarrinho`,`IDE_Buylist`,`IDE_UserLoja`,`iTCG`,`iStatus`,`iIdioma`,`iQualidade`) USING BTREE,
  KEY `idx_cod_sts` (`sCodigoCarrinho`,`iStatus`,`iTCG`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra`
--

DROP TABLE IF EXISTS `marketplace_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra` (
  `ID_Compra` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_UserCompra` int(9) NOT NULL,
  `IDE_End` int(9) NOT NULL,
  `iNumLojas` int(5) NOT NULL,
  `iNumItens` int(7) NOT NULL,
  `dValorItens` decimal(10,2) NOT NULL,
  `dValorFrete` decimal(10,2) NOT NULL,
  `dValorCreditos` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dValorDesconto` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dtDataCompra` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtUltimaAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iDispositivo` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = Desktop / 2 = Mobile',
  `iNotifOcorreuTudoBem` smallint(1) NOT NULL DEFAULT '0',
  `iCompraPorLista` tinyint(1) NOT NULL DEFAULT '0',
  `iAceitaAvaliacao` tinyint(1) NOT NULL DEFAULT '2',
  `dtUltimaChecagemAvaliacao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iTipoPedido` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=MP/2=BL',
  `iPlataforma` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Compra`),
  KEY `IDE_UserCompra` (`IDE_UserCompra`),
  KEY `IDE_End` (`IDE_End`),
  KEY `iStatus` (`iStatus`),
  KEY `iDispositivo` (`iDispositivo`),
  KEY `iNotifOcorreuTudoBem` (`iNotifOcorreuTudoBem`),
  KEY `iCompraPorLista` (`iCompraPorLista`),
  KEY `iAceitaAvaliacao` (`iAceitaAvaliacao`),
  KEY `dtUltimaChecagemAvaliacao` (`dtUltimaChecagemAvaliacao`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra_buylist`
--

DROP TABLE IF EXISTS `marketplace_compra_buylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra_buylist` (
  `IDE_Compra` int(9) NOT NULL,
  `IDE_Order` int(9) NOT NULL,
  UNIQUE KEY `IDE_Compra` (`IDE_Compra`,`IDE_Order`),
  KEY `IDE_Order` (`IDE_Order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra_comprovantes`
--

DROP TABLE IF EXISTS `marketplace_compra_comprovantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra_comprovantes` (
  `ID_Comprovante` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Compra` int(9) NOT NULL,
  `sFilePath` varchar(100) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtUpload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `iAnexoRemovido` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Comprovante`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Compra_2` (`IDE_Compra`,`iStatus`),
  KEY `iAnexoRemovido` (`iAnexoRemovido`),
  KEY `dtUpload` (`dtUpload`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra_cupom`
--

DROP TABLE IF EXISTS `marketplace_compra_cupom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra_cupom` (
  `IDE_Compra` int(9) NOT NULL,
  `IDE_Cupom` int(9) NOT NULL,
  UNIQUE KEY `IDE_Compra` (`IDE_Compra`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra_ref`
--

DROP TABLE IF EXISTS `marketplace_compra_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra_ref` (
  `ID_Notas` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_RefCompra` int(9) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `IDE_Ecom_Venda` int(9) NOT NULL,
  `IDE_UserCompra` int(9) NOT NULL,
  `iEnvio` tinyint(1) NOT NULL DEFAULT '0',
  `iProtegido` tinyint(1) NOT NULL DEFAULT '0',
  `iEntrega` tinyint(1) NOT NULL DEFAULT '0',
  `dNotaAprovPedido` decimal(6,2) NOT NULL DEFAULT '0.00',
  `dNotaCodRastreio` decimal(6,2) NOT NULL DEFAULT '0.00',
  `dNotaEnvioCalculado` decimal(4,2) NOT NULL,
  `dDiasPostarRastreio` int(4) NOT NULL DEFAULT '0',
  `sDetalhes` text NOT NULL,
  `dataPostagem` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  `iCalcularNotas` tinyint(1) NOT NULL DEFAULT '2',
  `dMedia` decimal(4,2) NOT NULL,
  `iRevisaoStatus` tinyint(1) NOT NULL DEFAULT '0',
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Resposta` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Notas`),
  UNIQUE KEY `IDE_Ecom_Venda` (`IDE_Ecom_Venda`),
  KEY `IDE_RefCompra` (`IDE_RefCompra`),
  KEY `IDE_UserCompra` (`IDE_UserCompra`),
  KEY `iCalcularNotas` (`iCalcularNotas`),
  KEY `iEnvio` (`iEnvio`),
  KEY `iProtegido` (`iProtegido`),
  KEY `iEntrega` (`iEntrega`),
  KEY `dNotaAprovPedido` (`dNotaAprovPedido`),
  KEY `dNotaCodRastreio` (`dNotaCodRastreio`),
  KEY `dNotaEnvioCalculado` (`dNotaEnvioCalculado`),
  KEY `dMedia` (`dMedia`),
  KEY `iRevisaoStatus` (`iRevisaoStatus`),
  KEY `iRevisaoStatus_2` (`iRevisaoStatus`),
  KEY `iRevisaoStatus_3` (`iRevisaoStatus`),
  KEY `IDE_Resposta` (`IDE_Resposta`),
  KEY `idx_loj_pbc_med` (`IDE_Loja`,`isPublic`,`dMedia`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra_ref_logs`
--

DROP TABLE IF EXISTS `marketplace_compra_ref_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra_ref_logs` (
  `ID_Notas` int(9) NOT NULL,
  `IDE_RefCompra` int(9) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `IDE_Ecom_Venda` int(9) NOT NULL,
  `IDE_UserCompra` int(9) NOT NULL,
  `iEnvio` tinyint(1) NOT NULL DEFAULT '0',
  `iProtegido` tinyint(1) NOT NULL DEFAULT '0',
  `iEntrega` tinyint(1) NOT NULL DEFAULT '0',
  `dNotaAprovPedido` decimal(6,2) NOT NULL DEFAULT '0.00',
  `dNotaCodRastreio` decimal(6,2) NOT NULL DEFAULT '0.00',
  `dNotaEnvioCalculado` decimal(4,2) NOT NULL,
  `dDiasPostarRastreio` int(4) NOT NULL DEFAULT '0',
  `sDetalhes` text NOT NULL,
  `dataPostagem` timestamp NULL DEFAULT NULL,
  `sIP` varchar(45) NOT NULL,
  `iCalcularNotas` tinyint(1) DEFAULT NULL,
  `dMedia` decimal(4,2) NOT NULL,
  `iRevisaoStatus` tinyint(1) NOT NULL DEFAULT '0',
  `dtLog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `ID_Notas` (`ID_Notas`),
  KEY `IDE_Ecom_Venda` (`IDE_Ecom_Venda`),
  KEY `IDE_Loja` (`IDE_Loja`),
  KEY `dtLog` (`dtLog`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra_ref_resposta`
--

DROP TABLE IF EXISTS `marketplace_compra_ref_resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra_ref_resposta` (
  `ID_Resposta` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Nota` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtResposta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sResposta` text NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtRespostaRemovida` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IDE_UserRemoveu` int(9) NOT NULL,
  PRIMARY KEY (`ID_Resposta`),
  KEY `IDE_Nota` (`IDE_Nota`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra_ref_revisao`
--

DROP TABLE IF EXISTS `marketplace_compra_ref_revisao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra_ref_revisao` (
  `IDE_Ecom_Venda` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `dtPostagem` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sTexto` text NOT NULL,
  `iPerfil` tinyint(1) NOT NULL DEFAULT '1',
  KEY `IDE_Ecom_Venda` (`IDE_Ecom_Venda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra_ref_token`
--

DROP TABLE IF EXISTS `marketplace_compra_ref_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra_ref_token` (
  `ID_RefCompra` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Compra` int(9) NOT NULL,
  `sToken` varchar(50) NOT NULL,
  `dtGeracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_RefCompra`),
  UNIQUE KEY `IDE_Compra` (`IDE_Compra`),
  KEY `sToken` (`sToken`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_compra_vendas`
--

DROP TABLE IF EXISTS `marketplace_compra_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_compra_vendas` (
  `IDE_Compra` int(9) NOT NULL,
  `IDE_Ecom_Venda` int(9) NOT NULL,
  UNIQUE KEY `IDE_Compra` (`IDE_Compra`,`IDE_Ecom_Venda`),
  KEY `IDE_Ecom_Venda` (`IDE_Ecom_Venda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_crontab`
--

DROP TABLE IF EXISTS `marketplace_crontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_crontab` (
  `ID_Crontab` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Compra` int(9) NOT NULL,
  `sFuncao` varchar(100) NOT NULL,
  `sInfoExtra` varchar(100) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtExecucao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Crontab`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_crontab_buylist`
--

DROP TABLE IF EXISTS `marketplace_crontab_buylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_crontab_buylist` (
  `ID_Crontab` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Order` int(9) NOT NULL,
  `sFuncao` varchar(100) NOT NULL,
  `sInfoExtra` varchar(100) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtExecucao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Crontab`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_cupons`
--

DROP TABLE IF EXISTS `marketplace_cupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_cupons` (
  `ID_Cupom` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sCodigoPromocao` varchar(25) NOT NULL,
  `sCupom` varchar(25) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtPeriodo` varchar(7) NOT NULL,
  PRIMARY KEY (`ID_Cupom`),
  KEY `idx_usr_dtp` (`IDE_User`,`dtPeriodo`) USING BTREE,
  KEY `idx_dtp_sts` (`dtPeriodo`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_cupons_email`
--

DROP TABLE IF EXISTS `marketplace_cupons_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_cupons_email` (
  `IDE_Promocao` int(9) NOT NULL,
  `sPeriodo` varchar(7) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `iMailSent` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Promocao` (`IDE_Promocao`,`sPeriodo`,`IDE_User`),
  KEY `iMailSent` (`iMailSent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_promocao`
--

DROP TABLE IF EXISTS `marketplace_promocao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_promocao` (
  `ID_Promocao` int(9) NOT NULL AUTO_INCREMENT,
  `sPeriodo` varchar(7) NOT NULL,
  `sNomePromocao` varchar(255) NOT NULL,
  `sUrlPromocao` varchar(255) NOT NULL,
  `dValorGeracaoCupons` decimal(9,2) NOT NULL,
  `dtGeracaoCupons` date NOT NULL,
  `dtValidadeInicio` date NOT NULL,
  `dtValidadeFim` date NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Ativa / 2 = Ativa e cupons gerados',
  PRIMARY KEY (`ID_Promocao`),
  UNIQUE KEY `idx_periodo` (`sPeriodo`) USING BTREE,
  KEY `idx_dtgc_sts` (`dtGeracaoCupons`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_recomenda`
--

DROP TABLE IF EXISTS `marketplace_recomenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_recomenda` (
  `ID_Recomenda` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Compra` int(9) NOT NULL,
  `iAvaliacao` int(2) NOT NULL,
  PRIMARY KEY (`ID_Recomenda`),
  UNIQUE KEY `cons_marketplace_recomenda` (`IDE_Compra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_ref_medias`
--

DROP TABLE IF EXISTS `marketplace_ref_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_ref_medias` (
  `IDE_Loja` int(11) NOT NULL,
  `iQtdRef` int(4) NOT NULL,
  `iQtdRefPrivada` int(7) NOT NULL DEFAULT '0',
  `dtUltimaReferencia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dEnvio` decimal(3,2) NOT NULL COMMENT 'Média da Eficiência no envio',
  `dProtegido` decimal(3,2) NOT NULL COMMENT 'Média do Seu produto chegou bem protegido',
  `dEntrega` decimal(3,2) NOT NULL COMMENT 'Média do Os produtos chegaram conforme o combinado?',
  `dEnvioCalculado` decimal(3,2) NOT NULL,
  `dMediaGeral` decimal(3,2) NOT NULL,
  `dMediaDiasPostarRastreio` decimal(10,4) NOT NULL,
  UNIQUE KEY `IDE_Loja` (`IDE_Loja`),
  KEY `dMediaGeral` (`dMediaGeral`),
  KEY `dEnvioCalculado` (`dEnvioCalculado`),
  KEY `iQtdRef` (`iQtdRef`),
  KEY `dMediaDiasPostarRastreio` (`dMediaDiasPostarRastreio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_temp_frete`
--

DROP TABLE IF EXISTS `marketplace_temp_frete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_temp_frete` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Frete` int(9) NOT NULL,
  `dValorFrete` decimal(10,2) NOT NULL,
  `iCEP` int(9) NOT NULL,
  `sCodigoCarrinho` varchar(255) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `IDE_UserLoja` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `id_2` (`id`),
  KEY `IDE_Frete` (`IDE_Frete`),
  KEY `dtAdicionado` (`dtAdicionado`),
  KEY `iStatus` (`iStatus`),
  KEY `sCodigoCarrinho` (`sCodigoCarrinho`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marketplace_user_ecom`
--

DROP TABLE IF EXISTS `marketplace_user_ecom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplace_user_ecom` (
  `IDE_User` int(9) NOT NULL,
  `IDE_Loja` int(9) NOT NULL,
  `iFavorita` tinyint(1) NOT NULL DEFAULT '0',
  `iBloqueadaCompra` tinyint(1) NOT NULL DEFAULT '0',
  `iBloqueadaVenda` tinyint(1) NOT NULL DEFAULT '0',
  `dtAlteracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_User` (`IDE_User`,`IDE_Loja`),
  KEY `iFavorita` (`iFavorita`),
  KEY `iBloqueadaCompra` (`iBloqueadaCompra`),
  KEY `iBloqueadaVenda` (`iBloqueadaVenda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migracao_playground`
--

DROP TABLE IF EXISTS `migracao_playground`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migracao_playground` (
  `IDProdutoSP` int(9) NOT NULL,
  `IDProdutoSalvador` int(9) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iTipo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Novo / 2 = Update',
  UNIQUE KEY `IDProdutoSP` (`IDProdutoSP`),
  KEY `IDProdutoSalvador` (`IDProdutoSalvador`),
  KEY `dtCriacao` (`dtCriacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mobile_cookie`
--

DROP TABLE IF EXISTS `mobile_cookie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobile_cookie` (
  `IDE_User` int(9) NOT NULL,
  `sCookie` varchar(250) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtDataLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  KEY `IDE_User` (`IDE_User`),
  KEY `iStatus` (`iStatus`),
  KEY `sCookie_2` (`sCookie`,`iStatus`),
  KEY `dtDataLogin` (`dtDataLogin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mobile_tentativas_login`
--

DROP TABLE IF EXISTS `mobile_tentativas_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobile_tentativas_login` (
  `sIP` varchar(45) NOT NULL,
  `sUser` varchar(40) NOT NULL,
  `sDataTentativa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `sIP_2` (`sIP`,`sDataTentativa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks`
--

DROP TABLE IF EXISTS `mtg_decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks` (
  `ID_Deck` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_Evento` int(9) NOT NULL,
  `IDE_EventoJogador` int(9) NOT NULL,
  `sNome` varchar(150) NOT NULL,
  `unixDtCriacao` int(10) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Deletado, 1 = Ativo e privado, 2 = Ativo e publico, 3 = Deletado pois gerou nova versao, 4 = Bot baixou info, 5 = Erro cards no bot, 9 = Versionado aguardando deletes',
  `iFormato` int(2) NOT NULL,
  `iBestOfOne` tinyint(1) NOT NULL DEFAULT '0',
  `iCorBranco` tinyint(1) NOT NULL DEFAULT '0',
  `iCorAzul` tinyint(1) NOT NULL DEFAULT '0',
  `iCorPreto` tinyint(1) NOT NULL DEFAULT '0',
  `iCorVermelho` tinyint(1) NOT NULL DEFAULT '0',
  `iCorVerde` tinyint(1) NOT NULL DEFAULT '0',
  `iCorIncolor` tinyint(1) NOT NULL DEFAULT '0',
  `sCores` varchar(5) NOT NULL,
  `iFlagCardsEspecifico` tinyint(1) NOT NULL DEFAULT '0',
  `sEventoRank` varchar(7) NOT NULL,
  `IDE_Arquetipo` int(6) NOT NULL,
  `IDE_CartaUnicaMaiorPreco` int(9) NOT NULL,
  `iCapaDeck` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:Maior Preço || 2:Card Selecionado',
  PRIMARY KEY (`ID_Deck`),
  KEY `IDE_User` (`IDE_User`),
  KEY `iStatus` (`iStatus`),
  KEY `iFormato` (`iFormato`),
  KEY `IDE_Evento` (`IDE_Evento`),
  KEY `IDE_EventoJogador` (`IDE_EventoJogador`),
  KEY `iBestOfOne` (`iBestOfOne`),
  KEY `sNome` (`sNome`),
  KEY `idx_status_ideeventojogador` (`IDE_EventoJogador`,`iStatus`) USING BTREE,
  KEY `idx_status_iflagcardsespecifico` (`iStatus`,`iFlagCardsEspecifico`) USING BTREE,
  KEY `idx_status_ideevento` (`IDE_Evento`,`iStatus`) USING BTREE,
  KEY `idx_status_idedeck` (`ID_Deck`,`iStatus`) USING BTREE,
  KEY `sEventoRank` (`sEventoRank`),
  KEY `idx_istatus_iformato_scores_ibestofone_ideuser` (`iStatus`,`iFormato`,`sCores`,`iBestOfOne`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_iformato_scores_ibestofone` (`iStatus`,`iFormato`,`sCores`,`iBestOfOne`) USING BTREE,
  KEY `idx_istatus_iformato_scores_ideuser` (`iStatus`,`iFormato`,`sCores`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_iformato_ibestofone_ideuser` (`iStatus`,`iFormato`,`iBestOfOne`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_scores_ibestofone_ideuser` (`iStatus`,`sCores`,`iBestOfOne`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_iformato_scores` (`iStatus`,`iFormato`,`sCores`) USING BTREE,
  KEY `idx_istatus_iformato_ibestofone` (`iStatus`,`iFormato`,`iBestOfOne`) USING BTREE,
  KEY `idx_istatus_iformato_ideuser` (`iStatus`,`iFormato`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_scores_ibestofone` (`iStatus`,`sCores`,`iBestOfOne`) USING BTREE,
  KEY `idx_istatus_scores_ideuser` (`iStatus`,`sCores`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_ibestofone_ideuser` (`iStatus`,`iBestOfOne`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_iformato` (`iStatus`,`iFormato`) USING BTREE,
  KEY `idx_istatus_scores` (`iStatus`,`sCores`) USING BTREE,
  KEY `idx_istatus_ibestofone` (`iStatus`,`iBestOfOne`) USING BTREE,
  KEY `idx_istatus_ideuser` (`iStatus`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_unixdtcriacao` (`iStatus`,`unixDtCriacao`) USING BTREE,
  KEY `idx_cmp_sts` (`IDE_CartaUnicaMaiorPreco`,`iStatus`) USING BTREE,
  KEY `idx_arq_sts_id` (`IDE_Arquetipo`,`iStatus`,`ID_Deck`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_arquetipos`
--

DROP TABLE IF EXISTS `mtg_decks_arquetipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_arquetipos` (
  `ID_Arquetipo` int(9) NOT NULL AUTO_INCREMENT,
  `sArquetipo` varchar(50) NOT NULL,
  `dtCriado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Publico || 0: Privado',
  PRIMARY KEY (`ID_Arquetipo`),
  UNIQUE KEY `sArquetipo` (`sArquetipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_cards`
--

DROP TABLE IF EXISTS `mtg_decks_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_cards` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `iMainDeck` tinyint(1) NOT NULL DEFAULT '0',
  `iSideboard` tinyint(1) NOT NULL DEFAULT '0',
  `iMaybeboard` tinyint(1) NOT NULL DEFAULT '0',
  `iCommander` tinyint(1) NOT NULL DEFAULT '0',
  `iCompanion` tinyint(1) NOT NULL DEFAULT '0',
  `iLista` int(1) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL,
  UNIQUE KEY `idx_idedeck_idecartaprincipal` (`IDE_Deck`,`IDE_CartaPrincipal`) USING BTREE,
  KEY `IDE_Deck` (`IDE_Deck`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`) USING BTREE,
  KEY `idx_idecartaprincipal_ilista` (`IDE_CartaPrincipal`,`iLista`) USING BTREE,
  KEY `idx_idedeck_idecartaprincipal_ilista` (`IDE_Deck`,`IDE_CartaPrincipal`,`iLista`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_cards_archive`
--

DROP TABLE IF EXISTS `mtg_decks_cards_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_cards_archive` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `iMainDeck` tinyint(1) NOT NULL DEFAULT '0',
  `iSideboard` tinyint(1) NOT NULL DEFAULT '0',
  `iMaybeboard` tinyint(1) NOT NULL DEFAULT '0',
  `iCommander` tinyint(1) NOT NULL DEFAULT '0',
  `iCompanion` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL,
  UNIQUE KEY `idx_idedeck_idecartaprincipal` (`IDE_Deck`,`IDE_CartaPrincipal`) USING BTREE,
  KEY `IDE_Deck` (`IDE_Deck`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_cards_especifico`
--

DROP TABLE IF EXISTS `mtg_decks_cards_especifico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_cards_especifico` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `iLista` tinyint(1) NOT NULL DEFAULT '1',
  `iQuant` tinyint(1) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL DEFAULT '0',
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `sExtras` varchar(30) NOT NULL,
  `iTipoCard` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_Cartas_Migradas` int(9) NOT NULL,
  KEY `IDE_Deck` (`IDE_Deck`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_cards_especifico_archive`
--

DROP TABLE IF EXISTS `mtg_decks_cards_especifico_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_cards_especifico_archive` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `iLista` tinyint(1) NOT NULL DEFAULT '1',
  `iQuant` tinyint(1) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL DEFAULT '0',
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `sExtras` varchar(30) NOT NULL,
  `iTipoCard` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_Cartas_Migradas` int(9) NOT NULL,
  KEY `IDE_Deck` (`IDE_Deck`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_comentarios`
--

DROP TABLE IF EXISTS `mtg_decks_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_comentarios` (
  `ID_Comentario` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Deck` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtComentario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `sMensagem` text NOT NULL,
  PRIMARY KEY (`ID_Comentario`),
  KEY `IDE_Deck` (`IDE_Deck`),
  KEY `IDE_User` (`IDE_User`),
  KEY `iStatus` (`iStatus`),
  KEY `idx_idedeck_istatus` (`IDE_Deck`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_deletados`
--

DROP TABLE IF EXISTS `mtg_decks_deletados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_deletados` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_UserDeletou` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtDeletou` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Aguardando delete fisico / 0 = Efetuou delete fisico',
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `iStatus` (`iStatus`),
  KEY `dtDeletou` (`dtDeletou`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_descricao`
--

DROP TABLE IF EXISTS `mtg_decks_descricao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_descricao` (
  `IDE_Deck` int(9) NOT NULL,
  `sDescricao` text NOT NULL,
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_eventos`
--

DROP TABLE IF EXISTS `mtg_decks_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_eventos` (
  `ID_Evento` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeEvento` varchar(150) NOT NULL,
  `iFormato` tinyint(2) NOT NULL,
  `iJogadores` int(5) NOT NULL,
  `dtEvento` datetime NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Evento`),
  KEY `sNomeEvento` (`sNomeEvento`),
  KEY `dtEvento` (`dtEvento`),
  KEY `iFormato` (`iFormato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_eventos_jogadores`
--

DROP TABLE IF EXISTS `mtg_decks_eventos_jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_eventos_jogadores` (
  `ID_Jogador` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeJogador` varchar(80) NOT NULL,
  PRIMARY KEY (`ID_Jogador`),
  UNIQUE KEY `sNomeJogador` (`sNomeJogador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_historico`
--

DROP TABLE IF EXISTS `mtg_decks_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_historico` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_DeckOriginal` int(9) NOT NULL,
  `IDE_DeckOrigem` int(9) NOT NULL,
  UNIQUE KEY `IDE_Deck_2` (`IDE_Deck`,`IDE_DeckOriginal`),
  KEY `IDE_Deck` (`IDE_Deck`),
  KEY `IDE_DeckOriginal` (`IDE_DeckOriginal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_hits`
--

DROP TABLE IF EXISTS `mtg_decks_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_hits` (
  `IDE_Deck` int(9) NOT NULL,
  `iHits` int(8) NOT NULL DEFAULT '0',
  `iHitsDia` int(4) NOT NULL DEFAULT '0',
  `iHitsSemana` int(5) NOT NULL DEFAULT '0',
  `iHitsMes` int(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `iHits` (`iHits`),
  KEY `iHitsDia` (`iHitsDia`),
  KEY `iHitsSemana` (`iHitsSemana`),
  KEY `iHitsMes` (`iHitsMes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_hits_diario`
--

DROP TABLE IF EXISTS `mtg_decks_hits_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_hits_diario` (
  `IDE_Deck` int(9) NOT NULL,
  `iHits` int(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `iHits` (`iHits`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_mtgtop8`
--

DROP TABLE IF EXISTS `mtg_decks_mtgtop8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_mtgtop8` (
  `IDE_Deck` int(9) NOT NULL,
  `d_link` varchar(400) NOT NULL,
  `id_site` int(9) NOT NULL,
  `pagina` int(5) NOT NULL,
  `isOld` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `d_link` (`d_link`),
  KEY `isOld` (`isOld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_precos`
--

DROP TABLE IF EXISTS `mtg_decks_precos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_precos` (
  `IDE_Deck` int(9) NOT NULL,
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dPrecoMenor` decimal(8,2) NOT NULL,
  `dPrecoMedio` decimal(8,2) NOT NULL,
  `dPrecoMaior` decimal(8,2) NOT NULL,
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `dtAtualizacao` (`dtAtualizacao`),
  KEY `dPrecoMenor` (`dPrecoMenor`),
  KEY `dPrecoMedio` (`dPrecoMedio`),
  KEY `dPrecoMaior` (`dPrecoMaior`),
  KEY `idx_idedeck_dprecomenor` (`IDE_Deck`,`dPrecoMenor`) USING BTREE,
  KEY `idx_idedeck_dprecomedio` (`IDE_Deck`,`dPrecoMedio`) USING BTREE,
  KEY `idx_idedeck_dprecomaior` (`IDE_Deck`,`dPrecoMaior`) USING BTREE,
  KEY `idx_dprecomenor_dprecomedio` (`dPrecoMenor`,`dPrecoMedio`) USING BTREE,
  KEY `idx_dprecomenor_dprecomaior` (`dPrecoMenor`,`dPrecoMaior`) USING BTREE,
  KEY `idx_dprecomedio_dprecomaior` (`dPrecoMedio`,`dPrecoMaior`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_precos_inicial`
--

DROP TABLE IF EXISTS `mtg_decks_precos_inicial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_precos_inicial` (
  `IDE_Deck` int(9) NOT NULL,
  `dPrecoMenor` decimal(8,2) NOT NULL,
  `dPrecoMedio` decimal(8,2) NOT NULL,
  `dPrecoMaior` decimal(8,2) NOT NULL,
  `dPrecoCommanderMenor` decimal(8,2) NOT NULL,
  `dPrecoCommanderMedio` decimal(8,2) NOT NULL,
  `dPrecoCommanderMaior` decimal(8,2) NOT NULL,
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_stats`
--

DROP TABLE IF EXISTS `mtg_decks_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_stats` (
  `IDE_Deck` int(9) NOT NULL,
  `iComentTotal` int(6) NOT NULL DEFAULT '0',
  `IDE_NickUltimoComent` int(9) NOT NULL,
  `dtUltimoComent` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `iComentTotal` (`iComentTotal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtg_decks_visual`
--

DROP TABLE IF EXISTS `mtg_decks_visual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtg_decks_visual` (
  `IDE_Deck` int(9) NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `dtCriado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iModo` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:Paisagem | 2:Retrato | 3:Commander',
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`,`iModo`),
  KEY `dtCriado` (`dtCriado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtgmelee_tournament`
--

DROP TABLE IF EXISTS `mtgmelee_tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtgmelee_tournament` (
  `ID_Tournament` int(9) NOT NULL,
  `IDE_Evento` int(9) NOT NULL,
  `dtCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iDecks` int(6) NOT NULL DEFAULT '0',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ID_Tournament` (`ID_Tournament`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtgmelee_tournament_decks`
--

DROP TABLE IF EXISTS `mtgmelee_tournament_decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtgmelee_tournament_decks` (
  `IDE_Tournament` int(9) NOT NULL,
  `ID_Deck_MtgMelee` int(9) NOT NULL,
  `IDE_Deck` int(9) NOT NULL DEFAULT '0',
  `sName` varchar(150) NOT NULL,
  `sPlayer` varchar(150) NOT NULL,
  `iRank` int(4) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_tont` (`IDE_Tournament`,`ID_Deck_MtgMelee`) USING BTREE,
  KEY `idx_dmle_sts` (`ID_Deck_MtgMelee`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mythicspoiler_crawler`
--

DROP TABLE IF EXISTS `mythicspoiler_crawler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mythicspoiler_crawler` (
  `ID_MythicSpoiler` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Edicao` int(9) NOT NULL,
  `sURLCardInfo` varchar(50) NOT NULL,
  `sPathImage` varchar(50) NOT NULL,
  `sPath` varchar(50) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_MythicSpoiler`),
  UNIQUE KEY `IDE_Edicao` (`IDE_Edicao`,`sURLCardInfo`),
  KEY `iStatus` (`iStatus`),
  KEY `sURLCardInfo` (`sURLCardInfo`),
  KEY `dtCriado` (`dtCriacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_abertura`
--

DROP TABLE IF EXISTS `neg_abertura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_abertura` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nickEu` int(9) NOT NULL DEFAULT '0',
  `nickEle` int(9) NOT NULL DEFAULT '0',
  `partePrim` int(1) NOT NULL DEFAULT '0',
  `tipoNegoc` int(1) NOT NULL DEFAULT '0',
  `dataEu` date NOT NULL DEFAULT '0000-00-00',
  `dataEle` date NOT NULL DEFAULT '0000-00-00',
  `prodOfereceEu` text NOT NULL,
  `prodOfereceEle` text NOT NULL,
  `valorOfereceEu` decimal(10,2) NOT NULL DEFAULT '0.00',
  `valorOfereceEle` decimal(10,2) NOT NULL DEFAULT '0.00',
  `valorTotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ctimeAbertura` int(10) NOT NULL DEFAULT '0',
  `ctimeRecusa` int(10) NOT NULL DEFAULT '0',
  `ctimeAceita` int(10) NOT NULL DEFAULT '0',
  `dataFinaliza` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(2) NOT NULL DEFAULT '0',
  `cancelNeg` char(1) NOT NULL DEFAULT '',
  `negLeilao` int(1) NOT NULL DEFAULT '0',
  `iSistemaLegado` int(1) NOT NULL DEFAULT '0',
  `valorFreteEu` decimal(10,2) NOT NULL DEFAULT '0.00',
  `valorFreteEle` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iNovoSysLeilao` smallint(1) NOT NULL,
  `iFreteTipoSelecionado` smallint(1) NOT NULL,
  `dFreteValorSelecionado` decimal(10,2) NOT NULL,
  `iAceitaLigaSegura` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Nao Aceita / 1 = Aceita',
  `sTokenComunicacaoLS` varchar(50) NOT NULL,
  `iReqLibPagamAntecipada` smallint(1) NOT NULL DEFAULT '0',
  `dtReqLibPagamAntecipada` datetime NOT NULL,
  `iLSSolicitPagamento` smallint(1) NOT NULL DEFAULT '0' COMMENT '1 = Solicite Pagamento dentro da LigaSegura',
  `iEcom` smallint(1) NOT NULL DEFAULT '0',
  `dtUltimaAcao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iNaoLidaEu` smallint(1) NOT NULL DEFAULT '0',
  `iNaoLidaEle` smallint(1) NOT NULL DEFAULT '0',
  `sCepEu` varchar(290) DEFAULT NULL,
  `sCepEle` varchar(290) DEFAULT NULL,
  `iBzr` smallint(1) NOT NULL DEFAULT '0',
  `iFlagRelatComprovLS` smallint(1) NOT NULL DEFAULT '0',
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `nickEu_3` (`nickEu`,`partePrim`,`status`),
  KEY `nickEle_3` (`nickEle`,`partePrim`,`status`),
  KEY `partePrim_2` (`partePrim`,`status`),
  KEY `nickEu_2` (`nickEu`,`status`),
  KEY `nickEle_2` (`nickEle`,`status`),
  KEY `iAceitaLigaSegura` (`iAceitaLigaSegura`),
  KEY `sTokenComunicacaoLS` (`sTokenComunicacaoLS`),
  KEY `dtUltimaAcao` (`dtUltimaAcao`),
  KEY `valorOfereceEu` (`valorOfereceEu`),
  KEY `valorOfereceEle` (`valorOfereceEle`),
  KEY `valorTotal` (`valorTotal`),
  KEY `dFreteValorSelecionado` (`dFreteValorSelecionado`),
  KEY `ctimeAbertura` (`ctimeAbertura`),
  KEY `cancelNeg` (`cancelNeg`),
  KEY `tipoNegoc` (`tipoNegoc`),
  KEY `sCepEu` (`sCepEu`),
  KEY `sCepEle` (`sCepEle`),
  KEY `iFlagRelatComprovLS` (`iFlagRelatComprovLS`),
  KEY `iReqLibPagamAntecipada` (`iReqLibPagamAntecipada`),
  KEY `idx_bzr_sts_cab` (`iBzr`,`status`,`ctimeAbertura`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_abertura_bzr`
--

DROP TABLE IF EXISTS `neg_abertura_bzr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_abertura_bzr` (
  `IDE_Neg` int(9) NOT NULL,
  `sChaveFreteEu` varchar(30) NOT NULL,
  `dValorFreteEu` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sChaveFreteEle` varchar(30) NOT NULL,
  `dValorFreteEle` decimal(10,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `IDE_Neg` (`IDE_Neg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_abertura_bzr_cards`
--

DROP TABLE IF EXISTS `neg_abertura_bzr_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_abertura_bzr_cards` (
  `ID_BazarItem` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Neg` int(9) NOT NULL,
  `IDE_BazarCarta` int(9) NOT NULL,
  `IDE_BazarUser` int(9) NOT NULL,
  `iLista` tinyint(1) NOT NULL,
  `iListaBazarUser` tinyint(1) NOT NULL DEFAULT '0',
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `dPreco` decimal(10,2) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL,
  `sComentario` text NOT NULL,
  `iExtras` int(10) NOT NULL DEFAULT '0',
  `iRemoverCardsLista` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_BazarItem`),
  KEY `IDE_BazarCarta` (`IDE_BazarCarta`),
  KEY `iLista` (`iLista`),
  KEY `iTCG` (`iTCG`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `IDE_Neg_2` (`IDE_Neg`,`iLista`,`iTCG`),
  KEY `IDE_BazarUser` (`IDE_BazarUser`),
  KEY `iListaBazarUser` (`iListaBazarUser`),
  KEY `iRemoverCardsLista` (`iRemoverCardsLista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_abertura_bzr_notificacoes`
--

DROP TABLE IF EXISTS `neg_abertura_bzr_notificacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_abertura_bzr_notificacoes` (
  `IDE_Neg` int(9) NOT NULL,
  `iEmailAguardAceite` smallint(1) NOT NULL DEFAULT '0',
  `dtEmailAguardAceite` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iEmailAguardSuaParte` smallint(1) DEFAULT '0',
  `dtEmailAguardSuaParte` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `IDE_Neg` (`IDE_Neg`),
  KEY `iEmailAguardAceite` (`iEmailAguardAceite`),
  KEY `iEmailAguardSuaParte` (`iEmailAguardSuaParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_abertura_leiloes`
--

DROP TABLE IF EXISTS `neg_abertura_leiloes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_abertura_leiloes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `idNeg` int(9) NOT NULL DEFAULT '0',
  `idLeilao` int(9) NOT NULL DEFAULT '0',
  `tipo_negociacao` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idNeg` (`idNeg`),
  KEY `negLeilao` (`idLeilao`),
  KEY `tipo_negociacao` (`tipo_negociacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_abertura_minhaparte`
--

DROP TABLE IF EXISTS `neg_abertura_minhaparte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_abertura_minhaparte` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `idNeg` int(9) NOT NULL DEFAULT '0',
  `user` int(9) NOT NULL DEFAULT '0',
  `tipoEnvio` int(1) NOT NULL DEFAULT '0',
  `tipoPagam` int(1) NOT NULL DEFAULT '0',
  `infoEnvio` varchar(40) NOT NULL DEFAULT '',
  `infoPagam` text NOT NULL,
  `anexoEnvio` int(1) NOT NULL DEFAULT '0',
  `anexoPagam` int(1) NOT NULL DEFAULT '0',
  `sAnexoEnvio` text NOT NULL,
  `sAnexoPagam` text NOT NULL,
  `dataAcao` int(10) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `dtUtilizadaNotificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iAnexoRemovido` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idNeg` (`idNeg`),
  KEY `user` (`user`),
  KEY `status` (`status`),
  KEY `tipoEnvio` (`tipoEnvio`),
  KEY `tipoPagam` (`tipoPagam`),
  KEY `anexoEnvio` (`anexoEnvio`) USING BTREE,
  KEY `anexoPagam` (`anexoPagam`) USING BTREE,
  KEY `iAnexoRemovido` (`iAnexoRemovido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_balao_baloeiros`
--

DROP TABLE IF EXISTS `neg_balao_baloeiros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_balao_baloeiros` (
  `balaoID` int(9) NOT NULL AUTO_INCREMENT,
  `id_neg` int(9) NOT NULL DEFAULT '0',
  `balaoNick` int(9) NOT NULL DEFAULT '0',
  `balaoNickPostou` int(9) NOT NULL DEFAULT '0',
  `balaoCtime` int(10) NOT NULL DEFAULT '0',
  `balaoStatus` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`balaoID`),
  KEY `balaoIDNeg` (`id_neg`),
  KEY `balaoNick` (`balaoNick`),
  KEY `balaoNickPostou` (`balaoNickPostou`),
  KEY `balaoStatus` (`balaoStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_balao_pmsg`
--

DROP TABLE IF EXISTS `neg_balao_pmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_balao_pmsg` (
  `bpID` int(9) NOT NULL AUTO_INCREMENT,
  `balaoID` int(9) NOT NULL DEFAULT '0',
  `bpDestinatario` int(9) NOT NULL DEFAULT '0',
  `bpRemetente` int(9) NOT NULL DEFAULT '0',
  `bpTitulo` varchar(80) NOT NULL DEFAULT '0',
  `bpMensagem` text NOT NULL,
  `bpCtime` int(11) NOT NULL DEFAULT '0',
  `bpIP` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`bpID`),
  KEY `bpDestinatario` (`bpDestinatario`),
  KEY `balaoID` (`balaoID`),
  KEY `bpRemetente` (`bpRemetente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_comentarios`
--

DROP TABLE IF EXISTS `neg_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_comentarios` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `id_neg` int(9) NOT NULL DEFAULT '0',
  `id_nick` int(9) NOT NULL DEFAULT '0',
  `ctime` int(10) NOT NULL DEFAULT '0',
  `comentario` text NOT NULL,
  `perfil` int(1) NOT NULL DEFAULT '0',
  `id_denuncia` int(9) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_nick` (`id_nick`),
  KEY `status` (`status`),
  KEY `id_neg_2` (`id_neg`),
  KEY `id_denuncia` (`id_denuncia`),
  KEY `perfil` (`perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_contabancaria`
--

DROP TABLE IF EXISTS `neg_contabancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_contabancaria` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `idNeg` int(9) NOT NULL DEFAULT '0',
  `idConta` int(9) NOT NULL DEFAULT '0',
  `perfil` int(1) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idNeg` (`idNeg`,`idConta`),
  KEY `idNeg_2` (`idNeg`),
  KEY `idConta` (`idConta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_crontab`
--

DROP TABLE IF EXISTS `neg_crontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_crontab` (
  `ID_Crontab` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Negociacao` int(9) NOT NULL,
  `sFuncao` varchar(100) NOT NULL,
  `sInfoExtra` varchar(100) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtExecucao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Crontab`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_denuncia`
--

DROP TABLE IF EXISTS `neg_denuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_denuncia` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `id_neg` int(9) NOT NULL DEFAULT '0',
  `denuncia_por` int(9) NOT NULL DEFAULT '0',
  `acao_moderador` int(1) NOT NULL DEFAULT '0',
  `ctime_denuncia` int(10) NOT NULL DEFAULT '0',
  `ctime_ativar` int(10) NOT NULL DEFAULT '0',
  `ctime_moderador` int(10) NOT NULL DEFAULT '0',
  `ctime_removido` int(10) NOT NULL DEFAULT '0',
  `ip_post` varchar(15) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `originouBalao` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_neg` (`id_neg`),
  KEY `denuncia_por` (`denuncia_por`),
  KEY `originouBalao` (`originouBalao`),
  KEY `idx_status_originoubalao` (`status`,`originouBalao`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_endereco`
--

DROP TABLE IF EXISTS `neg_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_endereco` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `idNeg` int(9) NOT NULL DEFAULT '0',
  `idEnd` int(9) NOT NULL DEFAULT '0',
  `perfil` int(1) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idNeg` (`idNeg`),
  KEY `idEnd` (`idEnd`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_leilao`
--

DROP TABLE IF EXISTS `neg_leilao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_leilao` (
  `nlID` int(9) NOT NULL AUTO_INCREMENT,
  `nlIDLeilao` int(9) NOT NULL DEFAULT '0',
  `nlDono` int(9) NOT NULL DEFAULT '0',
  `nlVencedor` int(9) NOT NULL DEFAULT '0',
  `nlTipo` int(1) NOT NULL DEFAULT '0',
  `nlCtime` int(11) NOT NULL DEFAULT '0',
  `nlStatus` int(2) NOT NULL DEFAULT '0',
  `nlIDNeg` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nlID`),
  KEY `nlIDLeilao` (`nlIDLeilao`),
  KEY `nlDono` (`nlDono`),
  KEY `nlVencedor` (`nlVencedor`),
  KEY `nlStatus` (`nlStatus`),
  KEY `nlTipo` (`nlTipo`),
  KEY `nlIDNeg` (`nlIDNeg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_notificacoes`
--

DROP TABLE IF EXISTS `neg_notificacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_notificacoes` (
  `ID_Notificacao` int(12) NOT NULL AUTO_INCREMENT,
  `IDE_Negociacao` int(12) NOT NULL DEFAULT '0',
  `IDE_PainelControle` int(9) NOT NULL DEFAULT '0',
  `nickID` int(9) NOT NULL DEFAULT '0',
  `tipoNotificacao` varchar(255) NOT NULL DEFAULT '',
  `dtNotificacao` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`ID_Notificacao`),
  KEY `nickID` (`nickID`),
  KEY `IDE_Negociacao_2` (`IDE_Negociacao`),
  KEY `IDE_PainelControle` (`IDE_PainelControle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_painel_controle`
--

DROP TABLE IF EXISTS `neg_painel_controle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_painel_controle` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `nickID` int(9) NOT NULL DEFAULT '0',
  `iDiasLembreteEuEnviar` int(2) NOT NULL DEFAULT '3',
  `iDiasLembreteEleEnviar` int(2) NOT NULL DEFAULT '0',
  `iDiasAvisoNaoRecebi` int(2) NOT NULL DEFAULT '0',
  `iDiasAvisoNaoEnviei` int(2) NOT NULL DEFAULT '-1',
  `iLeilaoAutomatico` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `nickID` (`nickID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_referencia`
--

DROP TABLE IF EXISTS `neg_referencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_referencia` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `id_neg` int(9) NOT NULL DEFAULT '0',
  `ref_por` int(9) NOT NULL DEFAULT '0',
  `ref_para` int(9) NOT NULL DEFAULT '0',
  `ref_qualif` char(2) NOT NULL DEFAULT '0',
  `ref_explique` text NOT NULL,
  `detalhe_1` int(1) NOT NULL DEFAULT '0',
  `detalhe_2` int(1) NOT NULL DEFAULT '0',
  `detalhe_3` int(1) NOT NULL DEFAULT '0',
  `ctime_post` int(9) NOT NULL DEFAULT '0',
  `ctime_ativa` int(9) NOT NULL DEFAULT '0',
  `ip_post` varchar(15) NOT NULL DEFAULT '',
  `aguardAlteracao` int(1) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `iMigrou` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_neg` (`id_neg`),
  KEY `ref_por` (`ref_por`),
  KEY `ref_para` (`ref_para`),
  KEY `ref_qualif` (`ref_qualif`),
  KEY `status` (`status`),
  KEY `ctime_post` (`ctime_post`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_referencia_perguntas`
--

DROP TABLE IF EXISTS `neg_referencia_perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_referencia_perguntas` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `sPergunta` text NOT NULL,
  `sPerguntaNotaRuim` text NOT NULL,
  `iTipoResposta` smallint(1) NOT NULL COMMENT '1 = Resposta com Carinhas / 2 = Resposta com Sim-Talvez-Não / 3 = Resposta numerica de 0-10',
  `iRecebeProd` smallint(1) NOT NULL,
  `iRecebePagam` smallint(1) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  `iValorLimiteNao` int(2) NOT NULL,
  `iValorLimiteTalvez` int(2) NOT NULL,
  `iValorLimiteSim` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iStatus` (`iStatus`),
  KEY `iRecebeProd` (`iRecebeProd`),
  KEY `iRecebePagam` (`iRecebePagam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_referencia_principal`
--

DROP TABLE IF EXISTS `neg_referencia_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_referencia_principal` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Negociacao` int(9) NOT NULL,
  `IDE_Nick_Por` int(9) NOT NULL,
  `IDE_Nick_Para` int(9) NOT NULL,
  `sQualificacao` varchar(1) NOT NULL,
  `dtPost` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dtAtivou` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sIP` varchar(45) NOT NULL,
  `iAguardandoAlteracao` smallint(1) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  `iCancelamento` smallint(1) NOT NULL DEFAULT '0' COMMENT '1 = Cancelamento de negociacao proveniente de leilao e postagem de referencia negativa',
  `sCancelamento` text NOT NULL,
  `iRevisaoRequisitada` smallint(1) NOT NULL DEFAULT '0',
  `dtRevisaoRequisitada` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iFlagRefAntiga` smallint(1) NOT NULL DEFAULT '0',
  `sDescricao` text NOT NULL,
  `iEstrela1` smallint(1) NOT NULL,
  `iEstrela2` smallint(1) NOT NULL,
  `iEstrela3` smallint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Negociacao` (`IDE_Negociacao`),
  KEY `IDE_Nick_Por` (`IDE_Nick_Por`),
  KEY `IDE_Nick_Para` (`IDE_Nick_Para`),
  KEY `iStatus` (`iStatus`),
  KEY `iRevisaoRequisitada` (`iRevisaoRequisitada`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_referencia_principal_resp_revisao`
--

DROP TABLE IF EXISTS `neg_referencia_principal_resp_revisao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_referencia_principal_resp_revisao` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Resposta` int(9) NOT NULL,
  `IDE_Nick` int(9) NOT NULL,
  `sExplicacao` text NOT NULL,
  `sAnexoPath` varchar(250) NOT NULL,
  `dtPost` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iStatus` smallint(1) NOT NULL,
  `iModerador` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Moderador / 1 = Moderador',
  `iNotaAntes` int(2) NOT NULL,
  `iNotaDepois` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Resposta` (`IDE_Resposta`),
  KEY `IDE_Nick` (`IDE_Nick`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neg_referencia_principal_respostas`
--

DROP TABLE IF EXISTS `neg_referencia_principal_respostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neg_referencia_principal_respostas` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Referencia` int(9) NOT NULL,
  `IDE_Pergunta` int(9) NOT NULL,
  `iNota` int(2) NOT NULL,
  `sExplicacao` text NOT NULL,
  `sAnexoPath` varchar(300) NOT NULL,
  `iStatus` smallint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Referencia` (`IDE_Referencia`),
  KEY `IDE_Pergunta` (`IDE_Pergunta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_leilao_config`
--

DROP TABLE IF EXISTS `new_leilao_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_leilao_config` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(9) NOT NULL,
  `iFazPartePrimeiro` smallint(1) NOT NULL,
  `iRecadAuto` smallint(1) NOT NULL,
  `iMinRef` int(3) NOT NULL,
  `sFreteCEP` varchar(9) NOT NULL,
  `dFreteSeguro` decimal(10,2) NOT NULL,
  `dFreteTaxaExtra` decimal(10,2) NOT NULL,
  `dFreteValorCartaReg` decimal(10,2) NOT NULL,
  `iFreteTipoCartaReg` smallint(1) NOT NULL,
  `iFreteTipoPAC` smallint(1) NOT NULL,
  `iFreteTipoSEDEX` smallint(1) NOT NULL,
  `iFreteTipoGratis` smallint(1) NOT NULL,
  `iDiasFazerSuaParte` int(2) NOT NULL,
  `dUltimaAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iNotifPrimeiroLance` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_leilao_contabancaria`
--

DROP TABLE IF EXISTS `new_leilao_contabancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_leilao_contabancaria` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `IDE_Conta` int(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Leilao` (`IDE_Leilao`),
  KEY `IDE_Conta` (`IDE_Conta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_leilao_favoritos`
--

DROP TABLE IF EXISTS `new_leilao_favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_leilao_favoritos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `IDE_Nick` int(9) NOT NULL,
  `dtFavorito` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDE_Leilao_2` (`IDE_Leilao`,`IDE_Nick`),
  KEY `IDE_Nick` (`IDE_Nick`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_leilao_lances`
--

DROP TABLE IF EXISTS `new_leilao_lances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_leilao_lances` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `IDE_Nick` int(9) NOT NULL,
  `dataLance` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `precoLance` decimal(10,2) NOT NULL,
  `tipo_negociacao` char(2) NOT NULL,
  `produtos_total` int(4) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `status` smallint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Leilao` (`IDE_Leilao`),
  KEY `IDE_Nick` (`IDE_Nick`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_leilao_perguntas`
--

DROP TABLE IF EXISTS `new_leilao_perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_leilao_perguntas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(10) DEFAULT NULL,
  `id_pergunta` int(10) DEFAULT NULL,
  `nick_pergunta` int(13) NOT NULL,
  `msg_pergunta` text,
  `ctime_pergunta` int(12) DEFAULT NULL,
  `ip_pergunta` varchar(16) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Leilao` (`IDE_Leilao`),
  KEY `nick_pergunta` (`nick_pergunta`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_leilao_principal`
--

DROP TABLE IF EXISTS `new_leilao_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_leilao_principal` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `id_nick` int(9) NOT NULL,
  `dataAbertura` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dataInicio` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dataTermino` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titulo` varchar(100) NOT NULL,
  `info_destaque` text NOT NULL,
  `preco_inicial` decimal(10,2) NOT NULL,
  `preco_atual` decimal(10,2) NOT NULL,
  `preco_fixo` decimal(10,2) NOT NULL,
  `preco_incremento` decimal(10,2) NOT NULL,
  `preco_frete` decimal(10,2) NOT NULL,
  `recad_auto` int(2) NOT NULL,
  `min_ref` int(3) NOT NULL,
  `faz_parte_primeiro` smallint(2) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `status` smallint(2) NOT NULL,
  `lances` int(6) NOT NULL,
  `reserva_preco` decimal(10,2) NOT NULL,
  `reserva_id_nick` int(9) NOT NULL,
  `perguntas_comprador` int(6) NOT NULL,
  `respostas_vendedor` int(6) NOT NULL,
  `hits` int(7) NOT NULL,
  `vencedor_id_nick` int(9) NOT NULL,
  `tipo_negociacao` char(2) NOT NULL,
  `imagem_upload` smallint(1) NOT NULL,
  `sFreteCEP` varchar(9) NOT NULL,
  `dFreteSeguro` decimal(10,2) NOT NULL,
  `dFreteTaxaExtra` decimal(10,2) NOT NULL,
  `iFreteTipoCartaReg` smallint(1) NOT NULL,
  `iFreteTipoPAC` smallint(1) NOT NULL,
  `iFreteTipoSEDEX` smallint(1) NOT NULL,
  `iFreteTipoGratis` smallint(1) NOT NULL,
  `dFreteValorCartaReg` decimal(10,2) NOT NULL,
  `iIniciaUmReal` smallint(1) NOT NULL,
  `iDiasFazerSuaParte` int(2) NOT NULL,
  `IDE_UserMaiorLance` int(9) NOT NULL,
  `iSistemaNovo` smallint(1) NOT NULL,
  `abrir_neg_auto` smallint(1) NOT NULL,
  `iNotifPrimeiroLance` smallint(1) NOT NULL DEFAULT '0',
  `iAceitaLigaSegura` smallint(1) NOT NULL DEFAULT '0',
  `iFinalizadoPrecoFixo` smallint(1) NOT NULL,
  `iImgChecked` smallint(1) NOT NULL DEFAULT '0',
  `iEcom` smallint(1) NOT NULL DEFAULT '0' COMMENT '1 = Criado via ECOM',
  `iCalculaDifPreco` smallint(1) NOT NULL DEFAULT '0',
  `dtUltimoCalcDifPreco` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dDifPrecoAtual` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dDifPrecoFixo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sEcomImage` varchar(255) DEFAULT NULL,
  `iImgChecadaNuvem` smallint(1) NOT NULL DEFAULT '0',
  `iConfigFreteNova` smallint(1) NOT NULL DEFAULT '0',
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `sPathImagemCapa` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_UserMaiorLance` (`IDE_UserMaiorLance`),
  KEY `vencedor_id_nick` (`vencedor_id_nick`),
  KEY `dataAbertura` (`dataAbertura`),
  KEY `id_nick_2` (`id_nick`,`status`),
  KEY `vip_topo_2` (`status`),
  KEY `titulo` (`titulo`),
  KEY `iAceitaLigaSegura` (`iAceitaLigaSegura`),
  KEY `iEcom` (`iEcom`),
  KEY `dDifPrecoAtual` (`dDifPrecoAtual`),
  KEY `dDifPrecoFixo` (`dDifPrecoFixo`),
  KEY `iImgChecadaNuvem` (`iImgChecadaNuvem`),
  KEY `idx_sts_tcg` (`status`,`iTCG`) USING BTREE,
  KEY `idx_dtmn_sts_tcg` (`dataTermino`,`status`,`iTCG`) USING BTREE,
  KEY `idx_cdp_sts_tcg` (`iCalculaDifPreco`,`status`,`iTCG`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_leilao_principal_cartas`
--

DROP TABLE IF EXISTS `new_leilao_principal_cartas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_leilao_principal_cartas` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iRaridade` smallint(1) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `iQualidade` smallint(1) NOT NULL,
  `iQuantidade` int(6) NOT NULL,
  `iExtras` int(10) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iRaridade` (`iRaridade`),
  KEY `iQualidade` (`iQualidade`),
  KEY `iExtras` (`iExtras`),
  KEY `idx_lao_tcg` (`IDE_Leilao`,`iTCG`) USING BTREE,
  KEY `iIdioma` (`iIdioma`),
  KEY `idx_tcg_crd_edc_num` (`iTCG`,`IDE_CartaPrincipal`,`IDE_Edicao`,`sNumber`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_leilao_principal_files`
--

DROP TABLE IF EXISTS `new_leilao_principal_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_leilao_principal_files` (
  `ID_File` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `sFilePath_Original` varchar(150) NOT NULL,
  `sFilePath_Pequeno` varchar(150) NOT NULL,
  `sFilePath_Thumb` varchar(150) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_File`),
  KEY `idx_id_sts` (`IDE_Leilao`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_leilao_principal_produtos`
--

DROP TABLE IF EXISTS `new_leilao_principal_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_leilao_principal_produtos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Leilao` int(9) NOT NULL,
  `IDE_ecom_Produto` int(7) NOT NULL,
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `iCondicao` smallint(1) NOT NULL,
  `iQuantidade` int(6) NOT NULL,
  `sProduto` varchar(150) NOT NULL,
  `iPeso` int(7) NOT NULL,
  `iVolComp` decimal(10,2) NOT NULL,
  `iVolLargura` decimal(10,2) NOT NULL,
  `iVolAltura` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Leilao` (`IDE_Leilao`),
  KEY `IDE_ecom_Produto` (`IDE_ecom_Produto`),
  KEY `sProduto` (`sProduto`),
  KEY `iIdioma` (`iIdioma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_precos_cartas`
--

DROP TABLE IF EXISTS `new_precos_cartas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_precos_cartas` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `iTipoCard` smallint(1) NOT NULL DEFAULT '1',
  `estoque` int(9) NOT NULL DEFAULT '0',
  `precoMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  `precoMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `precoMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bzrPrecoMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bzrPrecoMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bzrPrecoMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`,`IDE_Edicao`,`iTipoCard`),
  KEY `iTipoCard` (`iTipoCard`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `precoMenor` (`precoMenor`),
  KEY `precoMedio` (`precoMedio`),
  KEY `precoMaior` (`precoMaior`),
  KEY `bzrPrecoMaior` (`bzrPrecoMaior`),
  KEY `bzrPrecoMedio` (`bzrPrecoMedio`),
  KEY `bzrPrecoMenor` (`bzrPrecoMenor`),
  KEY `estoque` (`estoque`),
  KEY `joinindex_1` (`IDE_CartaPrincipal`,`iTipoCard`,`estoque`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_precos_cartas_historico`
--

DROP TABLE IF EXISTS `new_precos_cartas_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_precos_cartas_historico` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `dData` date NOT NULL DEFAULT '0000-00-00',
  `iTipoCard` smallint(1) NOT NULL DEFAULT '1',
  `precoMaior` decimal(10,2) NOT NULL,
  `precoMedio` decimal(10,2) NOT NULL,
  `precoMenor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`,`IDE_Edicao`,`dData`,`iTipoCard`),
  KEY `iTipoCard` (`iTipoCard`),
  KEY `IDE_Edicao` (`IDE_Edicao`,`dData`,`iTipoCard`),
  KEY `idx_ddata_itipocard` (`dData`,`iTipoCard`) USING BTREE,
  KEY `dData` (`dData`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_precos_cartas_historico_variancia`
--

DROP TABLE IF EXISTS `new_precos_cartas_historico_variancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_precos_cartas_historico_variancia` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `iTipoCard` smallint(1) NOT NULL DEFAULT '1',
  `diarioMaior` decimal(10,2) NOT NULL,
  `diarioMedio` decimal(10,2) NOT NULL,
  `diarioMenor` decimal(10,2) NOT NULL,
  `semanaMaior` decimal(10,2) NOT NULL,
  `semanaMedio` decimal(10,2) NOT NULL,
  `semanaMenor` decimal(10,2) NOT NULL,
  `mesMaior` decimal(10,2) NOT NULL,
  `mesMedio` decimal(10,2) NOT NULL,
  `mesMenor` decimal(10,2) NOT NULL,
  UNIQUE KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`,`IDE_Edicao`,`iTipoCard`),
  KEY `iTipoCard` (`iTipoCard`),
  KEY `diarioMenor` (`diarioMenor`),
  KEY `semanaMenor` (`semanaMenor`),
  KEY `mesMenor` (`mesMenor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_precos_cartas_qualidade`
--

DROP TABLE IF EXISTS `new_precos_cartas_qualidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_precos_cartas_qualidade` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `iTipoCard` tinyint(1) NOT NULL DEFAULT '1',
  `iQualidade` tinyint(1) NOT NULL DEFAULT '0',
  `estoque` int(6) NOT NULL DEFAULT '0',
  `precoMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  `precoMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `precoMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `precoMaiorBuylist` decimal(10,2) NOT NULL,
  `precoMedioBuylist` decimal(10,2) NOT NULL,
  `precoMenorBuylist` decimal(10,2) NOT NULL,
  UNIQUE KEY `ChaveUnica` (`IDE_CartaPrincipal`,`IDE_Edicao`,`iTipoCard`,`iQualidade`),
  KEY `iTipoCard` (`iTipoCard`),
  KEY `precoMenor` (`precoMenor`),
  KEY `precoMedio` (`precoMedio`),
  KEY `precoMaior` (`precoMaior`),
  KEY `estoque` (`estoque`),
  KEY `idx_edicao_preco` (`IDE_Edicao`,`precoMaior`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_precos_cartas_unicas`
--

DROP TABLE IF EXISTS `new_precos_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_precos_cartas_unicas` (
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `iTipoCard` smallint(1) NOT NULL DEFAULT '1',
  `estoque` int(9) NOT NULL DEFAULT '0',
  `precoMaior` decimal(10,2) NOT NULL,
  `precoMedio` decimal(10,2) NOT NULL,
  `precoMenor` decimal(10,2) NOT NULL,
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bzrPrecoMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bzrPrecoMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bzrPrecoMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`,`iTipoCard`),
  KEY `iTipoCard` (`iTipoCard`),
  KEY `precoMenor` (`precoMenor`),
  KEY `precoMedio` (`precoMedio`),
  KEY `precoMaior` (`precoMaior`),
  KEY `bzrPrecoMaior` (`bzrPrecoMaior`),
  KEY `bzrPrecoMedio` (`bzrPrecoMedio`),
  KEY `bzrPrecoMenor` (`bzrPrecoMenor`),
  KEY `dtAtualizacao` (`dtAtualizacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter` (
  `sNome` varchar(255) NOT NULL,
  `sEmail` varchar(255) NOT NULL DEFAULT '',
  `dtNewsLetter` varchar(7) NOT NULL COMMENT '0000-00',
  `sTituloEmail` varchar(255) NOT NULL,
  `iTipo` tinyint(1) NOT NULL COMMENT '1 = Todos; 2 = Ecom',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Enviado, 1 = Enviado',
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `status` (`status`),
  KEY `Email_2` (`sEmail`),
  KEY `iTipo` (`iTipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter_contador`
--

DROP TABLE IF EXISTS `newsletter_contador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_contador` (
  `sChave` varchar(7) NOT NULL,
  `iCount` int(9) NOT NULL,
  UNIQUE KEY `sChave` (`sChave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notificacao`
--

DROP TABLE IF EXISTS `notificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacao` (
  `ID_Notificacao` int(13) NOT NULL AUTO_INCREMENT,
  `dtNotificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iTipoNotificacao` decimal(7,4) DEFAULT NULL COMMENT 'Ler class TipoNotificacao em Notificacao.php',
  `IDE_UserFrom` int(9) NOT NULL,
  `IDE_UserTo` int(9) NOT NULL,
  `sTabela` varchar(255) NOT NULL,
  `ID_Externo` int(13) NOT NULL,
  `sTextoLivre` text NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Visto; 1 = Visto',
  PRIMARY KEY (`ID_Notificacao`),
  KEY `iTipoNotificacao` (`iTipoNotificacao`),
  KEY `IDE_UserTo` (`IDE_UserTo`,`iStatus`),
  KEY `dtNotificacao_2` (`dtNotificacao`,`iStatus`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notificacao_bloqueada`
--

DROP TABLE IF EXISTS `notificacao_bloqueada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacao_bloqueada` (
  `iTipoNotificacao` decimal(7,4) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `ID_Externo` int(13) NOT NULL DEFAULT '0',
  KEY `iTipoNotificacao` (`iTipoNotificacao`),
  KEY `ID_Externo` (`ID_Externo`),
  KEY `iTipoNotificacao_2` (`iTipoNotificacao`,`IDE_User`),
  KEY `IDE_User_2` (`IDE_User`,`ID_Externo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nuvem_mover`
--

DROP TABLE IF EXISTS `nuvem_mover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nuvem_mover` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `dir` varchar(250) NOT NULL,
  `file` varchar(250) NOT NULL,
  `status` smallint(1) NOT NULL,
  `checked` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dir` (`dir`,`file`),
  KEY `status_2` (`status`,`checked`),
  KEY `checked` (`checked`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pagamentos_checkout_paghiper`
--

DROP TABLE IF EXISTS `pagamentos_checkout_paghiper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos_checkout_paghiper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFormPag` int(11) NOT NULL,
  `sTransaction_id` varchar(100) NOT NULL,
  `sNotification_id` varchar(100) NOT NULL,
  `iProcessado` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `painel_contatos`
--

DROP TABLE IF EXISTS `painel_contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painel_contatos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `contatoID` int(13) NOT NULL,
  `ctime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL DEFAULT '',
  KEY `id` (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `contatoID` (`contatoID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `painel_enviadas`
--

DROP TABLE IF EXISTS `painel_enviadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painel_enviadas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `quemEnviaID` int(13) NOT NULL,
  `quemRecebeID` int(13) NOT NULL,
  `titulo` varchar(80) NOT NULL DEFAULT '',
  `mensagem` text,
  `ctime` int(15) NOT NULL DEFAULT '0',
  UNIQUE KEY `id_2` (`id`),
  KEY `quemEnviaID` (`quemEnviaID`),
  KEY `quemRecebeID` (`quemRecebeID`),
  KEY `ctime` (`ctime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `painel_imagem`
--

DROP TABLE IF EXISTS `painel_imagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painel_imagem` (
  `ID_Imagem` int(9) NOT NULL AUTO_INCREMENT,
  `sNome` varchar(255) NOT NULL DEFAULT '',
  `sTipo` varchar(255) NOT NULL DEFAULT '',
  `fImagem` blob NOT NULL,
  `iTamanho` bigint(20) NOT NULL DEFAULT '0',
  `IDE_Perfil` int(13) NOT NULL,
  PRIMARY KEY (`ID_Imagem`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `painel_mensagem`
--

DROP TABLE IF EXISTS `painel_mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painel_mensagem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `destinatarioID` mediumint(8) unsigned NOT NULL,
  `remetenteID` mediumint(8) unsigned NOT NULL,
  `ctime` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lixo` int(15) NOT NULL DEFAULT '0',
  `ip_envia` varchar(15) NOT NULL DEFAULT '',
  `pasta_pmsg` varchar(30) NOT NULL DEFAULT '',
  `prioridade_pmsg` int(1) NOT NULL DEFAULT '0',
  `aviso_pmsg` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pasta_pmsg` (`pasta_pmsg`),
  KEY `remetenteID` (`remetenteID`),
  KEY `ctime` (`ctime`),
  KEY `status` (`status`),
  KEY `destinatarioID_2` (`destinatarioID`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `painel_mensagem_conteudo`
--

DROP TABLE IF EXISTS `painel_mensagem_conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painel_mensagem_conteudo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(80) NOT NULL DEFAULT '',
  `mensagem` mediumtext,
  PRIMARY KEY (`id`),
  KEY `titulo` (`titulo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `painel_mensagem_log`
--

DROP TABLE IF EXISTS `painel_mensagem_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painel_mensagem_log` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `ctime` varchar(10) NOT NULL DEFAULT '',
  `assunto` varchar(100) NOT NULL DEFAULT '',
  `mensagem` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `painel_pastas`
--

DROP TABLE IF EXISTS `painel_pastas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painel_pastas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `pasta` varchar(15) NOT NULL DEFAULT '',
  `ctime` int(15) NOT NULL DEFAULT '0',
  UNIQUE KEY `id_2` (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `cod_pais` smallint(6) NOT NULL,
  `sgl_pais` char(2) CHARACTER SET latin1 NOT NULL,
  `sgl2_pais` char(3) CHARACTER SET latin1 NOT NULL,
  `nom_pais` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`cod_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` int(13) unsigned NOT NULL AUTO_INCREMENT,
  `nick` varchar(100) DEFAULT NULL,
  `registro` varchar(8) NOT NULL DEFAULT '',
  `vip_dinheiro` varchar(9) NOT NULL DEFAULT '',
  `vip_nivel` bigint(32) NOT NULL DEFAULT '1',
  `status` char(2) NOT NULL DEFAULT '',
  `flag_circuito` smallint(1) NOT NULL,
  `ip_registro` varchar(15) NOT NULL,
  `registroLS` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iLSPreenchido` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Nunca preenchido / 1 = Preenchido',
  `iLSCadastroStatus` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Cadastro nao preenchido ou nao aceito / 1 = Cadastro aguardando validacao',
  `iLSAtivo` smallint(1) NOT NULL DEFAULT '0' COMMENT '1 = Admin ativou cadastro na LigaSegura',
  `iMarketPlaceLS` smallint(1) NOT NULL DEFAULT '0' COMMENT '1 = Ativado pelo MarketPlace e ainda nao criou o cadastro pela LS com aprovacao',
  `iLSTipoNF` smallint(1) NOT NULL DEFAULT '1' COMMENT '1 = PF / 2 = PJ',
  `iAceitouTermosIP` varchar(19) NOT NULL,
  `dtAceitouTermosData` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iSiteCadastro` int(2) NOT NULL DEFAULT '1' COMMENT 'Site da Liga que fez o Cadastro (LigaMagic, CLM, LigaSegura, LigaPokemon)',
  `sDescBloqueioAdmin` varchar(150) NOT NULL,
  `iNovoLayout` tinyint(1) NOT NULL DEFAULT '0',
  `sAvatarPathImagem` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nick` (`nick`(20)),
  KEY `status` (`status`),
  KEY `vip_nivel` (`vip_nivel`),
  KEY `iLSAtivo` (`iLSAtivo`),
  KEY `iLSCadastro` (`iLSCadastroStatus`),
  KEY `iMarketPlaceLS` (`iMarketPlaceLS`)
) ENGINE=MyISAM AUTO_INCREMENT=82844 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_aguard_ativacao_ecom`
--

DROP TABLE IF EXISTS `perfil_aguard_ativacao_ecom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_aguard_ativacao_ecom` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sCodigoAtivacao` varchar(200) NOT NULL,
  `dtEnvioCodigo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_bloqueado_historico`
--

DROP TABLE IF EXISTS `perfil_bloqueado_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_bloqueado_historico` (
  `IDE_UserBloqueado` int(9) NOT NULL,
  `IDE_UserAdmin` int(9) NOT NULL,
  `iAcao` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Bloqueio / 2 = Desbloqueio',
  `sHistorico` text NOT NULL,
  `dtAcao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_UserBloqueado` (`IDE_UserBloqueado`),
  KEY `IDE_UserAdmin` (`IDE_UserAdmin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_cel_validacao`
--

DROP TABLE IF EXISTS `perfil_cel_validacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_cel_validacao` (
  `ID_CelValidacao` int(9) NOT NULL AUTO_INCREMENT,
  `iDDD` smallint(2) NOT NULL,
  `iNumeroCel` bigint(11) NOT NULL,
  `sIPEnvioToken` varchar(45) NOT NULL,
  `dtDataEnvioToken` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iToken` int(6) NOT NULL,
  `sIPAtivaToken` varchar(45) NOT NULL,
  `dtAtivaToken` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iStatusAtivacao` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Aguard Ativacao / 1 = Ativo / 2 = Token Inativo',
  `iStatusUserCadastrado` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Nenhum user se cadastrou com este cel / 1 = User ja se cadastrou',
  `IDE_User` int(9) NOT NULL COMMENT 'ID do usuario que ativou este cel',
  PRIMARY KEY (`ID_CelValidacao`),
  KEY `sIPEnvioToken` (`sIPEnvioToken`),
  KEY `iNumeroCel` (`iNumeroCel`),
  KEY `iStatusAtivacao` (`iStatusAtivacao`),
  KEY `iStatusUserCadastrado` (`iStatusUserCadastrado`),
  KEY `iDDD_2` (`iDDD`,`iNumeroCel`,`sIPEnvioToken`,`iStatusAtivacao`),
  KEY `iDDD_3` (`iDDD`,`iNumeroCel`,`iToken`,`iStatusAtivacao`,`iStatusUserCadastrado`),
  KEY `iDDD_4` (`iDDD`,`iNumeroCel`,`sIPEnvioToken`,`iToken`,`iStatusAtivacao`,`iStatusUserCadastrado`),
  KEY `IDE_User` (`IDE_User`),
  KEY `sIPAtivaToken` (`sIPAtivaToken`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_cel_validacao_tentativas`
--

DROP TABLE IF EXISTS `perfil_cel_validacao_tentativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_cel_validacao_tentativas` (
  `iDDD` int(2) NOT NULL,
  `iNumeroCel` bigint(11) NOT NULL,
  `iToken` int(6) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtTentativa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `sIP` (`sIP`,`dtTentativa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_contabancaria`
--

DROP TABLE IF EXISTS `perfil_contabancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_contabancaria` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `id_perfil` int(9) NOT NULL DEFAULT '0',
  `IDE_Banco` int(9) NOT NULL DEFAULT '0',
  `apelido` varchar(50) NOT NULL DEFAULT '',
  `titular` varchar(80) NOT NULL DEFAULT '',
  `cpf` varchar(50) NOT NULL,
  `bancoNome` varchar(30) NOT NULL DEFAULT '',
  `bancoAgencia` varchar(16) NOT NULL DEFAULT '',
  `bancoConta` varchar(16) NOT NULL DEFAULT '',
  `bancoTipoDeConta` varchar(40) NOT NULL DEFAULT '',
  `bancoOperacao` varchar(16) NOT NULL DEFAULT '',
  `oficial` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `iEstorno` smallint(1) NOT NULL DEFAULT '0',
  `iTipoConta` tinyint(1) NOT NULL DEFAULT '0',
  `dtUltimaModificacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `chavePIX` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_perfil` (`id_perfil`),
  KEY `IDE_Banco` (`IDE_Banco`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_ecom_cadastro`
--

DROP TABLE IF EXISTS `perfil_ecom_cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_ecom_cadastro` (
  `IDE_User` int(9) NOT NULL,
  `IDE_Perfil` int(9) NOT NULL,
  `dtUltimaCompra` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  `IDE_Compra` int(9) NOT NULL,
  UNIQUE KEY `IDE_User_3` (`IDE_User`,`IDE_Perfil`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `dtUltimaCompra` (`dtUltimaCompra`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_efetua_login`
--

DROP TABLE IF EXISTS `perfil_efetua_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_efetua_login` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(9) NOT NULL,
  `sCookie` varchar(100) NOT NULL,
  `sAuth` varchar(100) NOT NULL,
  `dTime` int(10) NOT NULL,
  `iCount` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`,`sAuth`),
  KEY `idx_cnt_dtm` (`iCount`,`dTime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_enderecos`
--

DROP TABLE IF EXISTS `perfil_enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_enderecos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `id_loja` int(9) NOT NULL DEFAULT '0',
  `id_perfil` int(9) NOT NULL DEFAULT '0',
  `apelido` varchar(50) NOT NULL DEFAULT '',
  `pais` int(9) NOT NULL DEFAULT '0',
  `estado` int(9) NOT NULL DEFAULT '0',
  `cidade` int(9) NOT NULL DEFAULT '0',
  `bairro` text NOT NULL,
  `endereco` text NOT NULL,
  `numero` varchar(30) NOT NULL,
  `complemento` text NOT NULL,
  `cep` varchar(15) NOT NULL DEFAULT '',
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `isGoogled` tinyint(1) NOT NULL DEFAULT '1',
  `oficial` int(1) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT '',
  `nomeMorador` varchar(100) NOT NULL DEFAULT '',
  `iCepCalculado` smallint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `id_perfil` (`id_perfil`),
  KEY `status` (`status`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`),
  KEY `isGoogled` (`isGoogled`),
  KEY `iCepCalculado` (`iCepCalculado`),
  KEY `oficial` (`oficial`),
  KEY `pais` (`pais`),
  KEY `estado` (`estado`),
  KEY `cidade` (`cidade`),
  KEY `cep` (`cep`),
  KEY `joinindex_1` (`id_loja`,`id_perfil`,`oficial`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_flags_session`
--

DROP TABLE IF EXISTS `perfil_flags_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_flags_session` (
  `IDE_User` int(9) NOT NULL,
  `iPossuiLojaTorneios` tinyint(1) NOT NULL DEFAULT '0',
  `iPossuiBlog` tinyint(1) NOT NULL DEFAULT '0',
  `iPossuiNiveis` tinyint(1) NOT NULL DEFAULT '0',
  `iPossuiModerador` tinyint(1) NOT NULL DEFAULT '0',
  `iPossuiDonoSecao` tinyint(1) NOT NULL DEFAULT '0',
  `iPossuiPmsgPastas` tinyint(1) NOT NULL DEFAULT '0',
  `iPossuiEcom` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Owner, Responsavel ou Funcionario',
  `iPossui2fa` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_User` (`IDE_User`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_historico_cpf_cnpj`
--

DROP TABLE IF EXISTS `perfil_historico_cpf_cnpj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_historico_cpf_cnpj` (
  `IDE_Perfil` int(13) NOT NULL,
  `cpf_cnpj` varchar(30) NOT NULL,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_info_2fa`
--

DROP TABLE IF EXISTS `perfil_info_2fa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_info_2fa` (
  `IDE_User` int(9) NOT NULL,
  `dtInicioAtivacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtTerminoAtivacao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `sChave` varchar(25) NOT NULL,
  KEY `idx_usr_sts` (`IDE_User`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_info_2fa_sms`
--

DROP TABLE IF EXISTS `perfil_info_2fa_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_info_2fa_sms` (
  `IDE_User` int(9) NOT NULL,
  `dtCadastroAdmin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_UserAdmin` int(9) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Deletado / 1 = Aguard. Ativacao / 2 = Ativo',
  `iDDD` int(3) NOT NULL,
  `iNumeroCel` bigint(11) NOT NULL,
  `dtAtivaToken` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sIPAtivaToken` varchar(45) NOT NULL,
  `IDE_UserDeleted` int(9) NOT NULL,
  `dtDelete` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `idx_usr_sts` (`IDE_User`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_info_juridica`
--

DROP TABLE IF EXISTS `perfil_info_juridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_info_juridica` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sPJRazaoSocial` varchar(50) NOT NULL,
  `sPJNomeFantasia` varchar(50) NOT NULL,
  `sPJCNPJ` varchar(18) NOT NULL,
  `iPJTelDDD` int(3) NOT NULL,
  `iPJTel` int(20) NOT NULL,
  `iPJPais` int(9) NOT NULL,
  `iPJEstado` int(9) NOT NULL,
  `iPJCidade` int(9) NOT NULL,
  `sPJEndereco` varchar(200) NOT NULL,
  `sPJNumero` varchar(30) NOT NULL,
  `sPJComplemento` varchar(30) NOT NULL,
  `sPJBairro` varchar(40) NOT NULL,
  `sPJCEP` varchar(9) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `sLSFilesPath` varchar(255) NOT NULL,
  `dtCadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_info_login`
--

DROP TABLE IF EXISTS `perfil_info_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_info_login` (
  `id` int(13) unsigned NOT NULL AUTO_INCREMENT,
  `cookie` varchar(120) NOT NULL DEFAULT '',
  `lastVisit_br` int(10) NOT NULL DEFAULT '0',
  `lastVisit_pt` int(10) NOT NULL DEFAULT '0',
  `lastVisitForum_br` int(10) NOT NULL DEFAULT '0',
  `lastVisitForum_pt` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cookie` (`cookie`),
  KEY `lastVisit_br` (`lastVisit_br`),
  KEY `lastVisitForum_br` (`lastVisitForum_br`),
  KEY `lastVisitForum_pt` (`lastVisitForum_pt`),
  KEY `lastVisit_pt` (`lastVisit_pt`)
) ENGINE=MyISAM AUTO_INCREMENT=82844 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_info_pessoal`
--

DROP TABLE IF EXISTS `perfil_info_pessoal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_info_pessoal` (
  `id` int(13) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `sendMail` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Não enviar e-mail; 1 = Enviar e-mail',
  `dci` varchar(30) DEFAULT '0',
  `cpf_cnpj` varchar(30) NOT NULL,
  `sInscricaoEstadual` varchar(40) NOT NULL,
  `sInscricaoEstadualEstado` varchar(2) NOT NULL,
  `rg` varchar(25) NOT NULL,
  `data` varchar(14) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `iTelDDD` int(3) NOT NULL,
  `sTelefone` varchar(15) NOT NULL,
  `iCelDDD` int(3) NOT NULL,
  `sCelular` varchar(15) NOT NULL,
  `sPopID` varchar(12) NOT NULL,
  `iTamanhoCamiseta` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dci` (`dci`),
  KEY `email` (`email`),
  KEY `sendMail` (`sendMail`),
  KEY `nome` (`nome`),
  KEY `iTamanhoCamiseta` (`iTamanhoCamiseta`),
  KEY `cpf_cnpj` (`cpf_cnpj`),
  KEY `iCelDDD` (`iCelDDD`,`sCelular`),
  KEY `iTelDDD` (`iTelDDD`,`sTelefone`),
  KEY `iCelDDD_2` (`iCelDDD`,`sCelular`),
  KEY `iTelDDD_2` (`iTelDDD`,`sTelefone`)
) ENGINE=MyISAM AUTO_INCREMENT=82844 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_info_sistema`
--

DROP TABLE IF EXISTS `perfil_info_sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_info_sistema` (
  `id` int(13) unsigned NOT NULL AUTO_INCREMENT,
  `senha` varchar(30) DEFAULT NULL,
  `nivel` varchar(10) DEFAULT NULL,
  `posts` int(6) NOT NULL DEFAULT '0',
  `refPositiva` int(6) NOT NULL DEFAULT '0',
  `refNeutra` int(6) NOT NULL DEFAULT '0',
  `refNegativa` int(6) NOT NULL DEFAULT '0',
  `refPositiva_12meses` int(6) NOT NULL DEFAULT '0',
  `refNeutra_12meses` int(6) NOT NULL DEFAULT '0',
  `refNegativa_12meses` int(6) NOT NULL DEFAULT '0',
  `baloeiro` char(1) NOT NULL DEFAULT '',
  `cartas` int(5) NOT NULL DEFAULT '0',
  `cartas_pais` varchar(2) NOT NULL DEFAULT 'pt' COMMENT 'pt = portugues; en = ingles',
  `infoLojaVirtual` int(1) NOT NULL DEFAULT '1',
  `legenda_forum` int(4) NOT NULL DEFAULT '0',
  `barra_logado` varchar(15) NOT NULL DEFAULT '',
  `top8` char(1) NOT NULL DEFAULT '',
  `loja` int(9) NOT NULL DEFAULT '0',
  `lojas_favoritas` text NOT NULL,
  `assinatura` text NOT NULL,
  `showAvatar` char(1) NOT NULL DEFAULT '',
  `tema` int(9) NOT NULL DEFAULT '0',
  `banCount` int(4) NOT NULL DEFAULT '0',
  `banUntil` int(11) NOT NULL DEFAULT '0',
  `banLeilaoUntil` int(11) NOT NULL DEFAULT '0',
  `id_userConvite` int(9) DEFAULT NULL,
  `antiFurto_wordpass` varchar(200) NOT NULL DEFAULT '',
  `atualizado_wordpass` char(1) NOT NULL DEFAULT '',
  `lost_wordpass` varchar(200) NOT NULL DEFAULT '',
  `ctimeAlertaResultadoCLM` int(12) NOT NULL DEFAULT '0',
  `sLSFilesPath` varchar(40) NOT NULL,
  `iLeilaoSomenteLS` smallint(1) NOT NULL DEFAULT '0',
  `iRequisitarTrocaSenha` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `refPositiva_12meses` (`refPositiva_12meses`),
  KEY `refNeutra_12meses` (`refNeutra_12meses`),
  KEY `refNegativa_12meses` (`refNegativa_12meses`),
  KEY `baloeiro` (`baloeiro`),
  KEY `loja` (`loja`),
  KEY `banCount` (`banCount`),
  KEY `banUntil` (`banUntil`),
  KEY `banLeilaoUntil` (`banLeilaoUntil`),
  KEY `iLeilaoSomenteLS` (`iLeilaoSomenteLS`),
  KEY `lost_wordpass` (`lost_wordpass`),
  KEY `antiFurto_wordpass` (`antiFurto_wordpass`),
  KEY `atualizado_wordpass` (`atualizado_wordpass`),
  KEY `senha` (`senha`)
) ENGINE=MyISAM AUTO_INCREMENT=82844 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_login_cookies`
--

DROP TABLE IF EXISTS `perfil_login_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_login_cookies` (
  `IDE_Perfil` int(13) NOT NULL,
  `sCookie` varchar(50) NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `sCookie` (`sCookie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_loja`
--

DROP TABLE IF EXISTS `perfil_loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_loja` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_perfil` int(9) NOT NULL,
  `loja_tipo` int(1) NOT NULL,
  `loja_nome` varchar(100) NOT NULL,
  `loja_site` varchar(255) NOT NULL,
  `url_circuito` varchar(200) DEFAULT NULL,
  `loja_email` varchar(150) NOT NULL,
  `iExibirEmail` int(3) NOT NULL DEFAULT '101',
  `loja_tel_ddd` varchar(3) NOT NULL,
  `loja_tel` varchar(12) NOT NULL,
  `iExibirTelefone` int(3) NOT NULL DEFAULT '101',
  `hasLogo` tinyint(1) NOT NULL DEFAULT '0',
  `dtModificacao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isAtivo` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_circuito` (`url_circuito`),
  KEY `iExibirEmail` (`iExibirEmail`),
  KEY `iExibirTelefone` (`iExibirTelefone`),
  KEY `id_perfil_2` (`id_perfil`,`isAtivo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_ls_dados_pessoais_historico`
--

DROP TABLE IF EXISTS `perfil_ls_dados_pessoais_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_ls_dados_pessoais_historico` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cpf_cnpj` varchar(30) NOT NULL,
  `rg` varchar(25) NOT NULL,
  `iTelDDD` int(3) NOT NULL,
  `sTelefone` varchar(15) NOT NULL,
  `iCelDDD` int(3) NOT NULL,
  `sCelular` varchar(15) NOT NULL,
  `sLSFilesPath` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_User` (`IDE_User`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_nicks`
--

DROP TABLE IF EXISTS `perfil_nicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_nicks` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `ctime` int(11) NOT NULL DEFAULT '0',
  `id_nick` int(9) NOT NULL DEFAULT '0',
  `nick_antigo` varchar(30) NOT NULL DEFAULT '',
  `nick_novo` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_nant` (`nick_antigo`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_niveis`
--

DROP TABLE IF EXISTS `perfil_niveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_niveis` (
  `ID_Nivel` int(11) NOT NULL AUTO_INCREMENT,
  `sSigla` char(3) NOT NULL DEFAULT '',
  `IDE_Perfil` int(13) NOT NULL,
  `sNivel` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID_Nivel`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_securitycode`
--

DROP TABLE IF EXISTS `perfil_securitycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_securitycode` (
  `IDE_User` int(9) NOT NULL,
  `sTokenA` varchar(30) NOT NULL,
  `sTokenB` varchar(30) NOT NULL,
  `dtCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtExpiration` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sIP` varchar(45) NOT NULL,
  `dtUsed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sIPUsed` varchar(45) NOT NULL,
  KEY `idx_dexp_dus` (`dtExpiration`,`dtUsed`) USING BTREE,
  KEY `idx_toka_tokb_dexp` (`sTokenA`,`sTokenB`,`dtExpiration`) USING BTREE,
  KEY `idx_usr` (`IDE_User`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_sistemas`
--

DROP TABLE IF EXISTS `perfil_sistemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_sistemas` (
  `id_nick` int(13) NOT NULL DEFAULT '0',
  `hasBlog` int(1) NOT NULL DEFAULT '0',
  `hasFlog` int(1) NOT NULL DEFAULT '0',
  `showBlogForum` int(1) NOT NULL DEFAULT '0',
  KEY `id_nick` (`id_nick`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_temporario`
--

DROP TABLE IF EXISTS `perfil_temporario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_temporario` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nick` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `antiFurto_wordpass` varchar(200) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nasc` varchar(10) NOT NULL,
  `sexo` char(1) NOT NULL,
  `dci` varchar(11) NOT NULL,
  `cpf_cnpj` varchar(30) NOT NULL,
  `sInscricaoEstadual` varchar(40) NOT NULL,
  `sInscricaoEstadualEstado` varchar(2) NOT NULL,
  `rg` varchar(25) NOT NULL,
  `pais` int(9) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `cidade` int(9) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `loja_nome` varchar(100) NOT NULL,
  `loja_email` varchar(150) NOT NULL,
  `loja_tel_ddd` varchar(3) NOT NULL,
  `loja_tel` varchar(12) NOT NULL,
  `loja_pais` int(9) NOT NULL,
  `loja_estado` varchar(10) NOT NULL,
  `loja_cidade` int(9) NOT NULL,
  `loja_endereco` varchar(200) NOT NULL,
  `loja_numero` varchar(30) NOT NULL,
  `loja_complemento` varchar(100) NOT NULL,
  `loja_bairro` varchar(100) NOT NULL,
  `loja_cep` varchar(9) NOT NULL,
  `registro` int(10) NOT NULL,
  `codigo_ativacao` varchar(200) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `id_userConvite` int(9) NOT NULL,
  `iTelDDD` int(3) NOT NULL,
  `iTel` int(20) NOT NULL,
  `iCelDDD` int(3) NOT NULL,
  `iCel` int(20) NOT NULL,
  `iPossuiDadosPJ` smallint(1) NOT NULL,
  `sPJRazaoSocial` varchar(50) NOT NULL,
  `sPJNomeFantasia` varchar(50) NOT NULL,
  `sPJCNPJ` varchar(18) NOT NULL,
  `iPJTelDDD` int(3) NOT NULL,
  `iPJTel` int(20) NOT NULL,
  `iPJPais` int(9) NOT NULL,
  `sPJEstado` varchar(10) NOT NULL,
  `iPJCidade` int(9) NOT NULL,
  `sPJEndereco` varchar(200) NOT NULL,
  `sPJNumero` varchar(30) NOT NULL,
  `sPJComplemento` varchar(30) NOT NULL,
  `sPJBairro` varchar(40) NOT NULL,
  `sPJCEP` varchar(9) NOT NULL,
  `sLSFilesPath` varchar(30) NOT NULL,
  `iLigaSegura` smallint(1) NOT NULL,
  `sDataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IDE_CelValidacao` int(9) NOT NULL DEFAULT '0',
  `iSiteCadastro` int(2) NOT NULL,
  `sPopID` varchar(12) DEFAULT NULL,
  `iLSTipoNF` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `codigo_ativacao` (`codigo_ativacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perfil_token_notificacao`
--

DROP TABLE IF EXISTS `perfil_token_notificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_token_notificacao` (
  `ID_Token` int(11) NOT NULL AUTO_INCREMENT,
  `sCodeToken` varchar(255) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `sToken` varchar(255) NOT NULL,
  `dtDateExpire` date NOT NULL,
  `iStatus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Token`),
  KEY `dtDateExpire` (`dtDateExpire`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_User` (`IDE_User`),
  KEY `sCodeToken` (`sCodeToken`),
  KEY `sToken` (`sToken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pkm_bot_decks_eventos`
--

DROP TABLE IF EXISTS `pkm_bot_decks_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm_bot_decks_eventos` (
  `ID_Evento` int(9) NOT NULL AUTO_INCREMENT,
  `sNome` varchar(100) NOT NULL,
  `dData` date NOT NULL,
  `iJogadores` int(4) NOT NULL,
  `iFormato` tinyint(1) NOT NULL DEFAULT '0',
  `sUrl` varchar(150) NOT NULL,
  `dDataAdicionado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Evento_Cadastrado` int(9) NOT NULL,
  PRIMARY KEY (`ID_Evento`),
  KEY `idx_nom_dt` (`sNome`,`dData`) USING BTREE,
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pkm_bot_decks_eventos_decks`
--

DROP TABLE IF EXISTS `pkm_bot_decks_eventos_decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm_bot_decks_eventos_decks` (
  `ID_Deck` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Evento` int(9) NOT NULL,
  `sNome` varchar(100) NOT NULL,
  `sJogador` varchar(100) NOT NULL,
  `iPosicao` int(4) NOT NULL,
  `sUrl` varchar(150) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Deck_Cadastrado` int(9) NOT NULL,
  PRIMARY KEY (`ID_Deck`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Evento` (`IDE_Evento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pkm_decks`
--

DROP TABLE IF EXISTS `pkm_decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm_decks` (
  `ID_Deck` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Evento` int(9) NOT NULL,
  `IDE_Jogador` int(9) NOT NULL,
  `IDE_Nick` int(9) NOT NULL,
  `iFormato` smallint(1) NOT NULL,
  `sNomeDeck` varchar(60) NOT NULL,
  `sDescricaoDeck` text NOT NULL,
  `iPosicaoEvento` int(2) NOT NULL,
  `iVersao` int(3) NOT NULL DEFAULT '0',
  `IDE_DeckOriginal` int(9) NOT NULL DEFAULT '0',
  `iPrivacidade` smallint(1) NOT NULL COMMENT '1 = Privado / 2 = Publico',
  `iStatus` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Deletado / 1 = Ativo / 2 = Versionado',
  `dtCriado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtEditado` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iVisitas` int(7) NOT NULL DEFAULT '1',
  `sPokemons` text NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `dPrecoMenor` decimal(10,2) NOT NULL,
  `dPrecoMedio` decimal(10,2) NOT NULL,
  `dPrecoMaior` decimal(10,2) NOT NULL,
  `dtUltimaAtualizacaoPreco` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Deck`),
  KEY `IDE_Nick` (`IDE_Nick`,`iPrivacidade`,`iStatus`),
  KEY `IDE_Jogador` (`IDE_Jogador`),
  KEY `iFormato` (`iFormato`),
  KEY `dtCriado` (`dtCriado`),
  KEY `IDE_DeckOriginal` (`IDE_DeckOriginal`),
  KEY `IDE_Evento_2` (`IDE_Evento`,`iPrivacidade`,`iStatus`),
  KEY `dtUltimaAtualizacaoPreco` (`dtUltimaAtualizacaoPreco`),
  KEY `dPrecoMaior` (`dPrecoMaior`),
  KEY `dPrecoMedio` (`dPrecoMedio`),
  KEY `dPrecoMenor` (`dPrecoMenor`),
  KEY `iStatus` (`iStatus`,`dtCriado`,`dtUltimaAtualizacaoPreco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pkm_decks_cards`
--

DROP TABLE IF EXISTS `pkm_decks_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm_decks_cards` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_Carta` int(9) NOT NULL,
  `iQuantidade` int(3) NOT NULL,
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`,`IDE_Carta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pkm_decks_download_decks`
--

DROP TABLE IF EXISTS `pkm_decks_download_decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm_decks_download_decks` (
  `ID_Deck` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_DeckOficial` int(9) NOT NULL,
  `IDE_Evento` int(9) NOT NULL,
  `posicao` varchar(100) NOT NULL,
  `deck_nome` varchar(100) NOT NULL,
  `jogador` varchar(100) NOT NULL,
  `url_numero` int(6) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`ID_Deck`),
  UNIQUE KEY `url_numero` (`url_numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pkm_decks_download_eventos`
--

DROP TABLE IF EXISTS `pkm_decks_download_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm_decks_download_eventos` (
  `ID_Evento` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_EventoOficial` int(9) NOT NULL,
  `data` date NOT NULL DEFAULT '0000-00-00',
  `nome` varchar(100) NOT NULL,
  `divisao` smallint(1) NOT NULL COMMENT '1 = Junior / 2 = Senior / 3 = Master',
  `formato` smallint(1) NOT NULL,
  `url_numero` int(6) NOT NULL,
  `status` smallint(2) NOT NULL,
  PRIMARY KEY (`ID_Evento`),
  UNIQUE KEY `url_numero` (`url_numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pkm_decks_evento`
--

DROP TABLE IF EXISTS `pkm_decks_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm_decks_evento` (
  `ID_Evento` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeEvento` varchar(60) NOT NULL,
  `iFormato` smallint(1) NOT NULL,
  `iDivisao` smallint(1) NOT NULL COMMENT '1 = Junior / 2 = Senior / 3 = Master',
  `dtEvento` date NOT NULL DEFAULT '0000-00-00',
  `iStatus` smallint(1) NOT NULL,
  `iNumeroJogadores` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Evento`),
  KEY `iStatus` (`iStatus`),
  KEY `iFormato` (`iFormato`),
  KEY `iDivisao` (`iDivisao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pkm_decks_jogador`
--

DROP TABLE IF EXISTS `pkm_decks_jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkm_decks_jogador` (
  `ID_Jogador` int(9) NOT NULL AUTO_INCREMENT,
  `sJogador` varchar(50) NOT NULL,
  `dtCriado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Jogador`),
  KEY `sJogador` (`sJogador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pokemon_cartas_unicas`
--

DROP TABLE IF EXISTS `pokemon_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_cartas_unicas` (
  `ID_CartaUnica` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeIngles` varchar(255) NOT NULL,
  `sNomeInglesSA` varchar(255) NOT NULL,
  `sNomePortugues` varchar(255) NOT NULL,
  `sNomePortuguesSA` varchar(255) NOT NULL,
  `sNomeJapones` varchar(255) NOT NULL,
  `sNomeJaponesSA` varchar(255) NOT NULL,
  `iTipoCard` int(2) NOT NULL,
  PRIMARY KEY (`ID_CartaUnica`),
  UNIQUE KEY `sNomeIngles` (`sNomeIngles`),
  KEY `iTipoCard` (`iTipoCard`)
) ENGINE=InnoDB AUTO_INCREMENT=5453 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pokemon_cartas_unicas_edicoes`
--

DROP TABLE IF EXISTS `pokemon_cartas_unicas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_cartas_unicas_edicoes` (
  `ID_Carta` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(11) NOT NULL,
  `sNumber` varchar(255) NOT NULL,
  `sCor` varchar(1) NOT NULL,
  `sTipo` varchar(50) NOT NULL,
  `iRaridade` int(2) NOT NULL COMMENT '1 = Common, 2 = Uncommon, 3 = Rare, 4 = Rare Holo, 5 = Rare Holo EX, 6 = Rare Holo Lv.X, 7 = Rare Ultra, 8 = Rare Prime, 9 = Rare ACE, 10 = Legend, 11 = Promo',
  `iHP` int(3) NOT NULL,
  `sRetreatCost` varchar(25) NOT NULL,
  `iRetreatCost` int(2) NOT NULL,
  `sWeakness` varchar(25) NOT NULL,
  `sResistence` varchar(25) NOT NULL,
  `sIlustrador` varchar(255) NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `sLinkDownload` varchar(255) NOT NULL,
  `sText` text NOT NULL,
  `sLinkDownloadImage` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'incompleto, faltaImagem, semImagem, completo, erro',
  `iChaveRelacionamento` int(9) NOT NULL,
  `iComentarios` int(6) NOT NULL,
  `IDE_Perfil_Comentario` int(9) NOT NULL,
  `dtUltimoComentario` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_Carta`),
  UNIQUE KEY `IDE_CartaUnica_2` (`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iNumber` (`sNumber`),
  KEY `iRaridade` (`iRaridade`),
  KEY `sCor` (`sCor`),
  KEY `sIlustrador` (`sIlustrador`),
  KEY `sTipo` (`sTipo`),
  KEY `iChaveRelacionamento` (`iChaveRelacionamento`)
) ENGINE=InnoDB AUTO_INCREMENT=15379 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pokemon_cartas_unicas_edicoes_hits`
--

DROP TABLE IF EXISTS `pokemon_cartas_unicas_edicoes_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_cartas_unicas_edicoes_hits` (
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(8) NOT NULL,
  `Hits` int(7) NOT NULL,
  `HitsDia` int(7) NOT NULL,
  `HitsSemana` int(7) NOT NULL,
  `HitsMes` int(7) NOT NULL,
  UNIQUE KEY `IDE_CartaUnica` (`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `iNumber` (`sNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pokemon_edicao`
--

DROP TABLE IF EXISTS `pokemon_edicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon_edicao` (
  `ID_Edicao` int(9) NOT NULL AUTO_INCREMENT,
  `sPais` varchar(5) NOT NULL,
  `sSigla` varchar(5) NOT NULL,
  `sNome` varchar(255) NOT NULL,
  `sNomeSA` varchar(255) NOT NULL,
  `sNomePortugues` varchar(255) NOT NULL,
  `sNomePortuguesSA` varchar(255) NOT NULL,
  `sImagePath` varchar(255) NOT NULL,
  `sLinkDownload` varchar(255) NOT NULL,
  `dtRelease` date NOT NULL,
  `iNumeroCartas` varchar(10) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL COMMENT 'manual, pendente, processando, finalizado',
  `dPrecoMedioAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dPrecoHistoricoAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dPrecoSemanaAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dPrecoMesAtualizacao` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IDE_EdicaoAgrupada` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Edicao`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_blacklist`
--

DROP TABLE IF EXISTS `principal_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_blacklist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nick` int(13) NOT NULL,
  `bloqueado` int(13) NOT NULL,
  `local` varchar(255) NOT NULL DEFAULT '',
  `ctime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `expira` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `id_2` (`id`),
  KEY `local` (`local`),
  KEY `nick` (`nick`,`bloqueado`,`local`),
  KEY `idx_bloqueado_local` (`bloqueado`,`local`) USING BTREE,
  KEY `idx_nick_bloqueado` (`nick`,`bloqueado`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_cep`
--

DROP TABLE IF EXISTS `principal_cep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_cep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IBGE` int(9) NOT NULL,
  `DDD` tinyint(2) NOT NULL,
  `campo` char(1) NOT NULL DEFAULT '',
  `pais` varchar(20) NOT NULL DEFAULT '',
  `estado` varchar(150) NOT NULL DEFAULT '',
  `cidade` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `campo` (`campo`),
  KEY `pais` (`pais`),
  KEY `estado` (`estado`),
  KEY `cidade` (`cidade`),
  KEY `joinindex_1` (`id`,`campo`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=36279 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_downloads`
--

DROP TABLE IF EXISTS `principal_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` int(2) NOT NULL DEFAULT '0',
  `arquivo` varchar(120) DEFAULT NULL,
  `link` text,
  `link2` text NOT NULL,
  `link3` text NOT NULL,
  `tamanho` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_emails`
--

DROP TABLE IF EXISTS `principal_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_emails` (
  `id` int(13) unsigned NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `code` varchar(80) NOT NULL DEFAULT '',
  `ctime` int(13) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_hora`
--

DROP TABLE IF EXISTS `principal_hora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_hora` (
  `iHora` int(2) NOT NULL DEFAULT '0',
  `iHorarioVerao` int(1) NOT NULL DEFAULT '0',
  `sSiglaPais` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_ip`
--

DROP TABLE IF EXISTS `principal_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_ip` (
  `IDE_User` int(13) NOT NULL,
  `sIP` varchar(50) NOT NULL,
  `data` date NOT NULL,
  UNIQUE KEY `Unique` (`IDE_User`,`sIP`,`data`) USING BTREE,
  KEY `sIP` (`sIP`),
  KEY `data` (`data`),
  KEY `IDE_User` (`IDE_User`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_login`
--

DROP TABLE IF EXISTS `principal_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `ctime` int(15) DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `senha` varchar(30) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ctime` (`ctime`),
  KEY `status` (`status`),
  KEY `ip` (`ip`),
  KEY `idx_ctm_sts_usr_ip` (`ctime`,`status`,`IDE_Perfil`,`ip`) USING BTREE,
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_noticias`
--

DROP TABLE IF EXISTS `principal_noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_noticias` (
  `ID_Noticia` int(9) NOT NULL AUTO_INCREMENT,
  `iTipoNoticia` int(2) NOT NULL COMMENT '1 = LigaMagic, 2 = Anunciante, 3 = Normal',
  `IDE_Perfil` int(9) NOT NULL,
  `sURL` varchar(255) NOT NULL,
  `sTitulo` varchar(255) NOT NULL,
  `sMensagem` varchar(255) NOT NULL,
  `sImagem` varchar(50) NOT NULL,
  `sImagemHomeNova` varchar(250) NOT NULL,
  `dtDivulgacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iDuracao` int(3) NOT NULL,
  `iStatus` int(2) NOT NULL COMMENT '1 = Ativo, 2 = Aguardando, 3 = Normal, 4 = Removida',
  `IDE_Site` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Noticia`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `iTipoNoticia` (`iTipoNoticia`),
  KEY `dtDivulgacao` (`dtDivulgacao`),
  KEY `iStatus` (`iStatus`),
  KEY `IDE_Site` (`IDE_Site`),
  KEY `idx_tcg` (`iTCG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_pageview_moderador`
--

DROP TABLE IF EXISTS `principal_pageview_moderador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_pageview_moderador` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dtClick` date NOT NULL DEFAULT '0000-00-00',
  `secao` char(3) DEFAULT NULL,
  `IDE_Perfil` int(13) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_pageviews`
--

DROP TABLE IF EXISTS `principal_pageviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_pageviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data` varchar(10) DEFAULT NULL,
  `dtData` date NOT NULL DEFAULT '0000-00-00',
  `total` int(10) NOT NULL DEFAULT '0',
  `ips` int(10) NOT NULL DEFAULT '0',
  `pais` varchar(10) NOT NULL DEFAULT '',
  `forum` int(11) NOT NULL DEFAULT '0',
  `leilao` int(11) NOT NULL DEFAULT '0',
  `pmsg_enviada` int(11) NOT NULL DEFAULT '0',
  `pmsg` int(11) NOT NULL DEFAULT '0',
  `painel` int(11) NOT NULL DEFAULT '0',
  `trocas` int(11) NOT NULL DEFAULT '0',
  `cartas` int(11) NOT NULL DEFAULT '0',
  `chat` int(11) NOT NULL DEFAULT '0',
  `referencias` int(11) NOT NULL DEFAULT '0',
  `perfil` int(11) NOT NULL DEFAULT '0',
  `artigos` int(8) NOT NULL DEFAULT '0',
  `baloeiros` int(8) NOT NULL DEFAULT '0',
  `torneios` int(8) NOT NULL DEFAULT '0',
  `decks` int(11) NOT NULL DEFAULT '0',
  `dci` int(8) NOT NULL DEFAULT '0',
  `principal` int(11) NOT NULL DEFAULT '0',
  `procura` int(11) NOT NULL DEFAULT '0',
  `aposta` int(11) NOT NULL DEFAULT '0',
  `nacional` int(11) NOT NULL DEFAULT '0',
  `solidariedade` int(11) NOT NULL DEFAULT '0',
  `fotolog` int(11) NOT NULL DEFAULT '0',
  `blog` int(11) NOT NULL DEFAULT '0',
  `cobertura` int(11) NOT NULL DEFAULT '0',
  `restante` int(11) NOT NULL DEFAULT '0',
  `paginasMortas` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `principal_regras`
--

DROP TABLE IF EXISTS `principal_regras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principal_regras` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_secao` int(3) NOT NULL DEFAULT '0',
  `id_regra` int(3) NOT NULL DEFAULT '0',
  `topico` varchar(100) NOT NULL DEFAULT '',
  `regra` text NOT NULL,
  `sSigla` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_regra` (`id_regra`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_fabricantes`
--

DROP TABLE IF EXISTS `prod_fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_fabricantes` (
  `ID_Fabricante` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeFabricante` varchar(150) NOT NULL,
  `sURLFabricante` varchar(250) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Fabricante`),
  KEY `sNomeFabricante` (`sNomeFabricante`),
  KEY `iStatus` (`iStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_precos`
--

DROP TABLE IF EXISTS `prod_precos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_precos` (
  `IDE_Produto` int(11) NOT NULL,
  `iEstoque` int(9) NOT NULL DEFAULT '0',
  `dPrecoMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dPrecoMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dPrecoMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`),
  KEY `dPrecoMenor` (`dPrecoMenor`),
  KEY `dPrecoMedio` (`dPrecoMedio`),
  KEY `dPrecoMaior` (`dPrecoMaior`),
  KEY `dtAtualizacao` (`dtAtualizacao`),
  KEY `iEstoque` (`iEstoque`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_precos_historico`
--

DROP TABLE IF EXISTS `prod_precos_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_precos_historico` (
  `IDE_Produto` int(11) NOT NULL,
  `dtData` date NOT NULL,
  `dPrecoMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dPrecoMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dPrecoMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`,`dtData`),
  KEY `dtData` (`dtData`),
  KEY `IDE_Produto_2` (`IDE_Produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_precos_historico_variancia`
--

DROP TABLE IF EXISTS `prod_precos_historico_variancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_precos_historico_variancia` (
  `IDE_Produto` int(11) NOT NULL,
  `dDiarioMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dDiarioMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dDiarioMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dSemanaMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dSemanaMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dSemanaMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dMesMaior` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dMesMedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dMesMenor` decimal(10,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`),
  KEY `dDiarioMaior` (`dDiarioMaior`),
  KEY `dDiarioMedio` (`dDiarioMedio`),
  KEY `dDiarioMenor` (`dDiarioMenor`),
  KEY `dMesMenor` (`dMesMenor`),
  KEY `dMesMedio` (`dMesMedio`),
  KEY `dMesMaior` (`dMesMaior`),
  KEY `dSemanaMenor` (`dSemanaMenor`),
  KEY `dSemanaMedio` (`dSemanaMedio`),
  KEY `dSemanaMaior` (`dSemanaMaior`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos`
--

DROP TABLE IF EXISTS `prod_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos` (
  `ID_Produto` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Categoria` int(9) NOT NULL,
  `IDE_Fabricante` int(9) NOT NULL,
  `iTipoProduto` smallint(1) NOT NULL DEFAULT '1',
  `iTCGMagic` smallint(1) NOT NULL DEFAULT '0',
  `iTCGPokemon` smallint(1) NOT NULL DEFAULT '0',
  `iTCGYugioh` smallint(1) NOT NULL DEFAULT '0',
  `iTCGVanguard` smallint(1) NOT NULL DEFAULT '0',
  `iTCGStarWarsDestiny` smallint(1) NOT NULL DEFAULT '0',
  `iTCGBattleScenes` smallint(1) NOT NULL DEFAULT '0',
  `iTCGDragonBall` smallint(1) NOT NULL DEFAULT '0',
  `sNomeProduto` varchar(150) NOT NULL,
  `sNomeProdutoSA` varchar(150) NOT NULL,
  `sNomeProdutoEN` varchar(150) NOT NULL,
  `sNomeProdutoENSA` varchar(150) NOT NULL,
  `sNomeProdBusca` varchar(303) NOT NULL,
  `sDescricaoProduto` text NOT NULL,
  `sImagemPrincipal` varchar(150) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iPossuiDecks` tinyint(1) NOT NULL DEFAULT '0',
  `iPossuiCards` tinyint(1) NOT NULL DEFAULT '0',
  `iTotalComents` int(6) NOT NULL DEFAULT '0',
  `IDE_ProdReferencia` int(9) NOT NULL COMMENT 'ID do produto da tabela de origem (ex: funko_item)',
  PRIMARY KEY (`ID_Produto`),
  KEY `IDE_Categoria` (`IDE_Categoria`),
  KEY `IDE_Fabricante` (`IDE_Fabricante`),
  KEY `iTipoProduto` (`iTipoProduto`),
  KEY `iTCGMagic` (`iTCGMagic`),
  KEY `iTCGPokemon` (`iTCGPokemon`),
  KEY `iTCGStarWarsDestiny` (`iTCGStarWarsDestiny`),
  KEY `iTCGBattleScenes` (`iTCGBattleScenes`),
  KEY `sNomeProduto` (`sNomeProduto`),
  KEY `iTCGYugioh` (`iTCGYugioh`),
  KEY `iTCGVanguard` (`iTCGVanguard`),
  KEY `sNomeProdutoEN` (`sNomeProdutoEN`),
  KEY `iStatus` (`iStatus`),
  KEY `sNomeProdBusca` (`sNomeProdBusca`),
  KEY `iTCGDragonBall` (`iTCGDragonBall`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_associados`
--

DROP TABLE IF EXISTS `prod_produtos_associados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_associados` (
  `IDE_Produto` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_Edicao` int(9) NOT NULL,
  UNIQUE KEY `idx_unique` (`IDE_Produto`,`iTCG`,`IDE_Edicao`) USING BTREE,
  KEY `idx_tcg_edc` (`iTCG`,`IDE_Edicao`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_cards`
--

DROP TABLE IF EXISTS `prod_produtos_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_cards` (
  `IDE_Produto` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuantidade` int(5) NOT NULL,
  `iExtra` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`,`IDE_CartaPrincipal`,`IDE_Edicao`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`),
  KEY `IDE_Edicao` (`IDE_Edicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_comentarios`
--

DROP TABLE IF EXISTS `prod_produtos_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_comentarios` (
  `ID_Comentario` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_Produto` int(9) NOT NULL,
  `IDE_Perfil` int(9) NOT NULL,
  `dData` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(45) NOT NULL,
  `sMensagem` text NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Deleted / 1 = Active',
  PRIMARY KEY (`ID_Comentario`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `IDE_Produto_2` (`IDE_Produto`,`iStatus`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_decks`
--

DROP TABLE IF EXISTS `prod_produtos_decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_decks` (
  `IDE_Produto` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_Deck` int(9) NOT NULL,
  `sNomeDeck` varchar(50) NOT NULL,
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`,`IDE_Deck`),
  KEY `IDE_Deck` (`IDE_Deck`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_favoritos`
--

DROP TABLE IF EXISTS `prod_produtos_favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_favoritos` (
  `IDE_Nick` int(13) NOT NULL,
  `IDE_Produto` int(13) NOT NULL,
  `dtFavorito` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `IDE_NickProdutoUnico` (`IDE_Nick`,`IDE_Produto`),
  KEY `IDE_Produto` (`IDE_Produto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_hits`
--

DROP TABLE IF EXISTS `prod_produtos_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_hits` (
  `IDE_Produto` int(11) NOT NULL,
  `iHitsTotal` int(11) NOT NULL DEFAULT '0',
  `iHitsDia` int(7) NOT NULL DEFAULT '0',
  `iHitsSemana` int(7) NOT NULL DEFAULT '0',
  `iHitsMes` int(7) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`),
  KEY `iHitsMes` (`iHitsMes`),
  KEY `iHitsSemana` (`iHitsSemana`),
  KEY `iHitsDia` (`iHitsDia`),
  KEY `iHitsTotal` (`iHitsTotal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_imagens`
--

DROP TABLE IF EXISTS `prod_produtos_imagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_imagens` (
  `ID_Imagem` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Produto` int(9) NOT NULL,
  `sImagem` varchar(150) NOT NULL,
  `iStatus` smallint(1) NOT NULL DEFAULT '1',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Imagem`),
  KEY `IDE_Produto` (`IDE_Produto`,`iStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_log_index`
--

DROP TABLE IF EXISTS `prod_produtos_log_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_log_index` (
  `IDE_prod_Produto` int(9) NOT NULL,
  `IDE_cad_Produto` int(9) NOT NULL,
  `IDE_UserLoja` int(9) NOT NULL,
  `IDE_UserLogado` int(9) NOT NULL,
  `dtIndice` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sIP` varchar(45) NOT NULL,
  `iAcao` tinyint(1) NOT NULL,
  `iAutoIndex` tinyint(1) NOT NULL DEFAULT '0',
  KEY `dtIndice` (`dtIndice`),
  KEY `IDE_prod_Produto` (`IDE_prod_Produto`),
  KEY `IDE_cad_Produto` (`IDE_cad_Produto`),
  KEY `IDE_UserLogado` (`IDE_UserLogado`),
  KEY `idx_loj_usr` (`IDE_UserLoja`,`IDE_UserLogado`),
  KEY `idx_aca_lja_usr` (`iAcao`,`IDE_UserLoja`,`IDE_UserLogado`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_medidas`
--

DROP TABLE IF EXISTS `prod_produtos_medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_medidas` (
  `IDE_Produto` int(9) NOT NULL,
  `iPeso` int(6) NOT NULL,
  `iVolComp` decimal(5,2) NOT NULL,
  `iVolLargura` decimal(5,2) NOT NULL,
  `iVolAltura` decimal(5,2) NOT NULL,
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_notafiscal`
--

DROP TABLE IF EXISTS `prod_produtos_notafiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_notafiscal` (
  `IDE_Produto` int(9) NOT NULL,
  `sNCM` varchar(10) NOT NULL,
  `sICMSOrigem` varchar(1) NOT NULL,
  `sICMSST` varchar(3) NOT NULL,
  `sPISST` varchar(2) NOT NULL,
  `sCOFINSST` varchar(2) NOT NULL,
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_subcategorias`
--

DROP TABLE IF EXISTS `prod_produtos_subcategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_subcategorias` (
  `IDE_Produto` int(9) NOT NULL,
  `IDE_SubCategoria` int(9) NOT NULL,
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`,`IDE_SubCategoria`),
  KEY `IDE_SubCategoria` (`IDE_SubCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_produtos_vendas`
--

DROP TABLE IF EXISTS `prod_produtos_vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_produtos_vendas` (
  `IDE_Produto` int(9) NOT NULL,
  `iVendasDia` int(9) NOT NULL DEFAULT '0',
  `iVendasSemana` int(9) NOT NULL DEFAULT '0',
  `iVendasMes` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Produto` (`IDE_Produto`),
  KEY `iVendasDia` (`iVendasDia`),
  KEY `iVendasSemana` (`iVendasSemana`),
  KEY `iVendasMes` (`iVendasMes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_subcategorias`
--

DROP TABLE IF EXISTS `prod_subcategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_subcategorias` (
  `ID_SubCategoria` int(9) NOT NULL AUTO_INCREMENT,
  `iTipoProduto` tinyint(2) NOT NULL,
  `sNome` varchar(150) NOT NULL,
  `sNomePT` varchar(150) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_SubCategoria`),
  KEY `idx_tpo_sts` (`iTipoProduto`,`iStatus`) USING BTREE,
  KEY `sNome` (`sNome`),
  KEY `sNomePT` (`sNomePT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_tags`
--

DROP TABLE IF EXISTS `prod_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_tags` (
  `ID_Tag` int(9) NOT NULL AUTO_INCREMENT,
  `sTag` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Tag`),
  KEY `sTag` (`sTag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prod_tags_produtos`
--

DROP TABLE IF EXISTS `prod_tags_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_tags_produtos` (
  `IDE_Tag` int(9) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  UNIQUE KEY `IDE_Tag` (`IDE_Tag`,`IDE_Produto`),
  KEY `IDE_Produto` (`IDE_Produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `numero_edicao` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_option_value`
--

DROP TABLE IF EXISTS `product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_special`
--

DROP TABLE IF EXISTS `product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queue_email`
--

DROP TABLE IF EXISTS `queue_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queue_email` (
  `ID_Queue` int(9) NOT NULL AUTO_INCREMENT,
  `sSendTo` text NOT NULL,
  `sSubject` varchar(150) NOT NULL,
  `sBody` text NOT NULL,
  `sSentFrom` text NOT NULL,
  `sSentFromName` text NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `dtInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtSent` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Queue`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `repositorio_files_delete`
--

DROP TABLE IF EXISTS `repositorio_files_delete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repositorio_files_delete` (
  `ID_DeleteFile` int(9) NOT NULL AUTO_INCREMENT,
  `sFilepath` varchar(255) NOT NULL,
  `dtAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtDeleted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_DeleteFile`),
  KEY `iStatus` (`iStatus`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `robot_schedule`
--

DROP TABLE IF EXISTS `robot_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robot_schedule` (
  `sSite` varchar(50) NOT NULL,
  `ID_LastRun` int(8) NOT NULL,
  `dtLastRun` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `sSite` (`sSite`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sistema_like`
--

DROP TABLE IF EXISTS `sistema_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistema_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tableName` varchar(255) NOT NULL DEFAULT '',
  `rowId` varchar(255) NOT NULL DEFAULT '',
  `nickId` int(9) NOT NULL DEFAULT '0',
  `like` int(1) NOT NULL DEFAULT '0',
  `dtLike` date NOT NULL DEFAULT '0000-00-00',
  KEY `id_2` (`id`),
  KEY `tableName` (`tableName`),
  KEY `rowId` (`rowId`),
  KEY `nickId` (`nickId`),
  KEY `like` (`like`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sistema_notafiscal`
--

DROP TABLE IF EXISTS `sistema_notafiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistema_notafiscal` (
  `ID_NotaFiscal` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Prestador` int(9) NOT NULL,
  `IDE_Cliente` int(9) NOT NULL,
  `dtNotaFiscal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `apiLocal` smallint(1) NOT NULL COMMENT '1 = FocusNFE',
  `iNumero` int(9) NOT NULL,
  `sURL` text NOT NULL,
  `sXML` text NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1 = Processando; 2 = Autorizado; 3 = Erro; 4 = Cancelado',
  `iProcessado` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Processado; 1 = Processando; 2 = Processado; 3 = Desistiu',
  `iStatusPagamentoPlugin` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 = Aguardando Integração (Não Cobrar); 2 = Integrado (Cobrar); 3 = Erro na Integração (Não Cobrar); 4 = Cobrado; 5 = Pago',
  PRIMARY KEY (`ID_NotaFiscal`),
  KEY `iProcessado` (`iProcessado`),
  KEY `status_2` (`status`,`iProcessado`),
  KEY `dtNotaFiscal` (`dtNotaFiscal`),
  KEY `IDE_Prestador` (`IDE_Prestador`,`iStatusPagamentoPlugin`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sistema_pagamentos`
--

DROP TABLE IF EXISTS `sistema_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistema_pagamentos` (
  `ID_Pagamento` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(9) NOT NULL,
  `pagadorID` varchar(255) NOT NULL COMMENT 'Informação do Pagador',
  `dtCompra` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fValor` decimal(10,2) NOT NULL,
  `apiLocal` int(2) NOT NULL DEFAULT '0' COMMENT '1 = Paypal; 2 = PagSeguro; 3 = MercadoPago ; 4 = TrayCheckout ; 5 = Cielo ; 11 = PagHiper',
  `codigoTransacao` varchar(255) NOT NULL,
  `infoTransacao` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1 = Aberto; 2 = Pago; 3 = Cancelado',
  `iProcessado` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Não Processado / 1 = Processado / 2 = Desistiu',
  PRIMARY KEY (`ID_Pagamento`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `dtCompra` (`dtCompra`),
  KEY `apiLocal` (`apiLocal`),
  KEY `status` (`status`),
  KEY `infoTransacao` (`infoTransacao`),
  KEY `codigoTransacao` (`codigoTransacao`),
  KEY `iProcessado` (`iProcessado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sistema_pagamentos_cartoes`
--

DROP TABLE IF EXISTS `sistema_pagamentos_cartoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistema_pagamentos_cartoes` (
  `ID_CardToken` int(11) NOT NULL AUTO_INCREMENT,
  `iContrato` smallint(1) NOT NULL COMMENT '1 = LigaSegura / 2 = LigaMagic',
  `IDE_User` int(11) NOT NULL,
  `iPlataforma` smallint(1) NOT NULL COMMENT '1 = Cielo / 2 = PagSeguro / 3 = MercadoPago',
  `sCardNumber` varchar(30) NOT NULL,
  `sBrand` varchar(12) NOT NULL,
  `iCvv` varchar(4) NOT NULL,
  `sValidade` varchar(10) NOT NULL,
  `dtValidade` date NOT NULL,
  `sToken` varchar(255) NOT NULL,
  `dtTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iNotifExpira` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_CardToken`),
  KEY `IDE_User` (`IDE_User`),
  KEY `sCardNumber` (`sCardNumber`),
  KEY `dtValidade` (`dtValidade`),
  KEY `iNotifExpira` (`iNotifExpira`),
  KEY `iContrato` (`iContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sistema_pagamentos_sync`
--

DROP TABLE IF EXISTS `sistema_pagamentos_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistema_pagamentos_sync` (
  `IDE_Sync` int(9) NOT NULL AUTO_INCREMENT,
  `iTipo` smallint(2) NOT NULL COMMENT '(1 = Transação LigaSegura / outros serão criados no futuro)',
  `IDE_Relacionado` int(9) NOT NULL,
  `IDE_SistemaPagamento` int(9) NOT NULL,
  `sTipoPagamento` varchar(30) NOT NULL,
  `sPaymentId` varchar(255) NOT NULL,
  `dtTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDE_Sync`),
  KEY `iTipo` (`iTipo`),
  KEY `IDE_Relacionado` (`IDE_Relacionado`),
  KEY `IDE_SistemaPagamento` (`IDE_SistemaPagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sistema_reply`
--

DROP TABLE IF EXISTS `sistema_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sistema_reply` (
  `ID_Reply` int(12) NOT NULL AUTO_INCREMENT,
  `tableName` varchar(255) NOT NULL DEFAULT '',
  `rowId` varchar(255) NOT NULL DEFAULT '',
  `nickId` int(12) NOT NULL DEFAULT '0',
  `ctime` int(10) NOT NULL DEFAULT '0',
  `IP` varchar(45) NOT NULL DEFAULT '',
  `sMensagem` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Reply`),
  KEY `tableName_2` (`tableName`),
  KEY `rowId` (`rowId`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `spoiler_cards_mensagens`
--

DROP TABLE IF EXISTS `spoiler_cards_mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spoiler_cards_mensagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Perfil` int(9) NOT NULL,
  `dData` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) NOT NULL,
  `sMensagem` text NOT NULL,
  `iStatus` smallint(1) NOT NULL COMMENT '0 = Deleted / 1 = Active',
  `IDE_Site` int(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `IDE_CartaPrincipal_2` (`IDE_CartaPrincipal`,`iStatus`),
  KEY `IDE_Site` (`IDE_Site`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `starwars_cartas_unicas`
--

DROP TABLE IF EXISTS `starwars_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starwars_cartas_unicas` (
  `ID_CartaUnica` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeIngles` varchar(255) NOT NULL,
  `sNomeInglesSA` varchar(255) NOT NULL,
  `sNomePortugues` varchar(255) NOT NULL,
  `sNomePortuguesSA` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_CartaUnica`)
) ENGINE=InnoDB AUTO_INCREMENT=1451 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `starwars_cartas_unicas_edicoes`
--

DROP TABLE IF EXISTS `starwars_cartas_unicas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starwars_cartas_unicas_edicoes` (
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(11) NOT NULL,
  `iNumber` int(3) NOT NULL,
  `iTipo` int(2) NOT NULL COMMENT '1 = battlefield; 2 = character; 3 = event; 4 = support; 5 = upgrade; 6 = weapon; 7 = vehicle; 8 = equipment; 9 = droid; 10 = ability',
  `sCor` varchar(2) NOT NULL COMMENT 'b = blue; r = red; y = yellow; g = gray',
  `sFaction` varchar(2) NOT NULL COMMENT 'h = hero; v = villain; n = neutral',
  `iRaridade` int(1) NOT NULL COMMENT '1 = starter; 2 = common; 3 = uncommon; 4 = rare; 5 = legendary',
  `sCost` varchar(255) NOT NULL,
  `sIllustrator` varchar(255) NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `sText` text NOT NULL,
  `sLinkDownload` varchar(255) NOT NULL,
  `sLinkDownloadImage` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'incompleto, faltaImagem, semImagem, completo, erro',
  PRIMARY KEY (`IDE_CartaUnica`,`IDE_Edicao`),
  KEY `IDE_Edicao` (`IDE_Edicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `starwars_cartas_unicas_edicoes_dados`
--

DROP TABLE IF EXISTS `starwars_cartas_unicas_edicoes_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starwars_cartas_unicas_edicoes_dados` (
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(11) NOT NULL,
  `iNumber` int(3) NOT NULL,
  `iLado` tinyint(1) NOT NULL,
  `sText` varchar(255) NOT NULL,
  PRIMARY KEY (`IDE_CartaUnica`,`IDE_Edicao`,`iLado`),
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `joinindex_1` (`IDE_CartaUnica`,`IDE_Edicao`,`iNumber`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `starwars_edicao`
--

DROP TABLE IF EXISTS `starwars_edicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starwars_edicao` (
  `ID_Edicao` int(9) NOT NULL AUTO_INCREMENT,
  `sPais` varchar(5) NOT NULL,
  `sSigla` varchar(20) NOT NULL,
  `sNome` varchar(255) NOT NULL,
  `sNomeSA` varchar(255) NOT NULL,
  `sImagePath` varchar(255) NOT NULL,
  `sLinkDownload` varchar(255) NOT NULL,
  `sLinkDownloadImagem` varchar(255) NOT NULL,
  `dtRelease` date NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'manual, pendente, processando, finalizado',
  `IDE_EdicaoAgrupada` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Edicao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_ranking_prod`
--

DROP TABLE IF EXISTS `stats_ranking_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_ranking_prod` (
  `iTipoRanking` tinyint(1) NOT NULL,
  `iRankPosition` int(3) NOT NULL,
  `IDE_Produto` int(9) NOT NULL,
  `iQuant` int(5) NOT NULL,
  `dMenor` decimal(10,2) NOT NULL,
  `dMedio` decimal(10,2) NOT NULL,
  `dMaior` decimal(10,2) NOT NULL,
  KEY `idx_tpo_rkp` (`iTipoRanking`,`iRankPosition`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_ranking_tcgs`
--

DROP TABLE IF EXISTS `stats_ranking_tcgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_ranking_tcgs` (
  `iTipoRanking` tinyint(1) NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `iRankPosition` int(3) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `iExtras` int(3) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `dMenor` decimal(10,2) NOT NULL,
  `dMedio` decimal(10,2) NOT NULL,
  `dMaior` decimal(10,2) NOT NULL,
  KEY `idx_trk_tcg_rkp` (`iTipoRanking`,`iTCG`,`iRankPosition`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_ranking_temporary`
--

DROP TABLE IF EXISTS `stats_ranking_temporary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_ranking_temporary` (
  `iRankPosition` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Item_Unico` int(9) NOT NULL,
  `iExtras` int(3) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuant` int(6) NOT NULL,
  `dMenor` decimal(10,2) NOT NULL,
  `dMedio` decimal(10,2) NOT NULL,
  `dMaior` decimal(10,2) NOT NULL,
  PRIMARY KEY (`iRankPosition`),
  KEY `idx_qnt_pmin` (`iQuant`,`dMenor`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_vendas_contabilizar`
--

DROP TABLE IF EXISTS `stats_vendas_contabilizar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_vendas_contabilizar` (
  `IDE_Venda` int(9) NOT NULL,
  `iTipo` tinyint(1) NOT NULL DEFAULT '0',
  `dtCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não processado / 1 = Processado',
  UNIQUE KEY `IDE_Venda` (`IDE_Venda`,`iTipo`),
  KEY `idx_dcad_tpo_sts` (`dtCadastro`,`iTipo`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_vendas_prod_detalhado`
--

DROP TABLE IF EXISTS `stats_vendas_prod_detalhado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_vendas_prod_detalhado` (
  `dtData` date NOT NULL,
  `ID_Produto` int(9) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL,
  `iQuant` int(5) NOT NULL,
  `dMenor` decimal(10,2) NOT NULL,
  `dMedio` decimal(10,2) NOT NULL,
  `dMaior` decimal(10,2) NOT NULL,
  UNIQUE KEY `idx_unique` (`dtData`,`ID_Produto`,`iQualidade`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_vendas_prod_unificado`
--

DROP TABLE IF EXISTS `stats_vendas_prod_unificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_vendas_prod_unificado` (
  `dtData` date NOT NULL,
  `ID_Produto` int(9) NOT NULL,
  `iQuant` int(5) NOT NULL,
  `dMenor` decimal(10,2) NOT NULL,
  `dMedio` decimal(10,2) NOT NULL,
  `dMaior` decimal(10,2) NOT NULL,
  UNIQUE KEY `dtData` (`dtData`,`ID_Produto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_vendas_tcgs_detalhado`
--

DROP TABLE IF EXISTS `stats_vendas_tcgs_detalhado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_vendas_tcgs_detalhado` (
  `dtData` date NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL,
  `iExtras` int(10) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuant` int(5) NOT NULL,
  `dMenor` decimal(10,2) NOT NULL,
  `dMedio` decimal(10,2) NOT NULL,
  `dMaior` decimal(10,2) NOT NULL,
  UNIQUE KEY `idx_unique` (`dtData`,`iTCG`,`IDE_Edicao`,`IDE_CartaUnica`,`iQualidade`,`iExtras`,`sNumber`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stats_vendas_tcgs_unificado`
--

DROP TABLE IF EXISTS `stats_vendas_tcgs_unificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_vendas_tcgs_unificado` (
  `dtData` date NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `iExtras` int(11) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iQuant` int(5) NOT NULL,
  `dMenor` double(10,2) NOT NULL,
  `dMedio` decimal(10,2) NOT NULL,
  `dMaior` decimal(10,2) NOT NULL,
  UNIQUE KEY `idx_unique` (`dtData`,`iTCG`,`IDE_CartaUnica`,`iExtras`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `idx_dt_tcg_ext` (`dtData`,`iTCG`,`iExtras`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `card_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `reserved` int(11) DEFAULT NULL,
  `wanted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_id` (`card_id`),
  KEY `product` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_feriados`
--

DROP TABLE IF EXISTS `sys_feriados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_feriados` (
  `iTipo` tinyint(1) NOT NULL,
  `IDE_Estado` int(6) NOT NULL,
  `IDE_Cidade` int(6) NOT NULL,
  `dtFeriado` date NOT NULL,
  UNIQUE KEY `iTipo` (`iTipo`,`IDE_Estado`,`IDE_Cidade`,`dtFeriado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcg_cartas_migradas`
--

DROP TABLE IF EXISTS `tcg_cartas_migradas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcg_cartas_migradas` (
  `ID_Cartas_Migradas` int(9) NOT NULL AUTO_INCREMENT,
  `iTCG` smallint(2) NOT NULL,
  `IDE_CartaUnicaVelha` int(9) NOT NULL,
  `IDE_CartaUnicaNova` int(9) NOT NULL,
  `IDE_EdicaoVelha` int(9) NOT NULL,
  `IDE_EdicaoNova` int(9) NOT NULL,
  `sNumberVelha` varchar(15) NOT NULL,
  `sNumberNova` varchar(15) NOT NULL,
  `sNumberCompletoVelha` varchar(80) NOT NULL,
  `sNumberCompletoNova` varchar(80) NOT NULL,
  `IDE_Perfil` int(9) NOT NULL,
  `dtMigrada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Cartas_Migradas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_cartas_avaliacoes`
--

DROP TABLE IF EXISTS `tcgs_cartas_avaliacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_cartas_avaliacoes` (
  `ID_Aval` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `dtAval` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dAvalFormato1` decimal(2,1) NOT NULL DEFAULT '0.0',
  `dAvalFormato2` decimal(2,1) NOT NULL DEFAULT '0.0',
  `dAvalFormato3` decimal(2,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`ID_Aval`),
  UNIQUE KEY `idx_usr_crd_tcg_edc_num` (`IDE_User`,`IDE_CartaUnica`,`iTCG`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `idx_crd_tcg_edc_num` (`IDE_CartaUnica`,`iTCG`,`IDE_Edicao`,`sNumber`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_cartas_comentarios`
--

DROP TABLE IF EXISTS `tcgs_cartas_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_cartas_comentarios` (
  `ID_Comentario` int(9) NOT NULL AUTO_INCREMENT,
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `sMensagem` text NOT NULL,
  `dData` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sIp` varchar(45) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Comentario`),
  KEY `idx_crd_tcg_sts_edc_num` (`IDE_CartaUnica`,`iTCG`,`iStatus`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `idx_usr_sts` (`IDE_User`,`iStatus`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_cartas_dados`
--

DROP TABLE IF EXISTS `tcgs_cartas_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_cartas_dados` (
  `iTCG` tinyint(1) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `IDE_UltimoComent` int(9) NOT NULL,
  `IDE_User_UltimoComent` int(9) NOT NULL,
  `iComentarios` int(6) NOT NULL,
  `dComentarioDataUltimo` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  `iAvalTotal` int(6) NOT NULL DEFAULT '0',
  `dAvalMediaFormatoGeral` decimal(2,1) NOT NULL DEFAULT '0.0',
  `dAvalMediaFormato1` decimal(2,1) NOT NULL DEFAULT '0.0',
  `dAvalMediaFormato2` decimal(2,1) NOT NULL DEFAULT '0.0',
  `dAvalMediaFormato3` decimal(2,1) NOT NULL DEFAULT '0.0',
  UNIQUE KEY `idx_unique` (`IDE_CartaUnica`,`iTCG`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `iTCG` (`iTCG`),
  KEY `iComentarios` (`iComentarios`),
  KEY `dComentarioDataUltimo` (`dComentarioDataUltimo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_cartas_unicas`
--

DROP TABLE IF EXISTS `tcgs_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_cartas_unicas` (
  `ID_TCG` int(11) NOT NULL AUTO_INCREMENT,
  `iTCG` smallint(2) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `sNomeIngles` varchar(150) NOT NULL,
  `sNomeInglesSA` varchar(150) NOT NULL,
  `sNomePortugues` varchar(150) NOT NULL,
  `sNomePortuguesSA` varchar(150) NOT NULL,
  `sNomeJapones` varchar(150) NOT NULL,
  `sNomeJaponesSA` varchar(150) NOT NULL,
  `iTipoCard` int(2) NOT NULL,
  `sNomeOrderBy` varchar(50) NOT NULL,
  `sNomeBusca` varchar(255) NOT NULL,
  `iCor` tinyint(2) NOT NULL DEFAULT '0',
  `iFlagCartaSecundaria` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_CartaPrincipal_Flip` int(9) NOT NULL DEFAULT '0',
  `IDE_Formatos` bigint(20) NOT NULL DEFAULT '1',
  `sPathImage` varchar(255) NOT NULL,
  `sCusto` varchar(50) NOT NULL,
  `iCustoManaConv` int(4) NOT NULL,
  `sApenasPoder` varchar(4) NOT NULL,
  `sApenasResist` varchar(4) NOT NULL,
  `iPauper` smallint(1) NOT NULL DEFAULT '0',
  `iBasicLand` tinyint(1) NOT NULL DEFAULT '0',
  `sType` varchar(60) NOT NULL,
  PRIMARY KEY (`iTCG`,`IDE_CartaUnica`),
  UNIQUE KEY `ID_TCG` (`ID_TCG`),
  KEY `sNomeIngles` (`sNomeIngles`),
  KEY `sNomeInglesSA` (`sNomeInglesSA`),
  KEY `sNomePortugues` (`sNomePortugues`),
  KEY `sNomePortuguesSA` (`sNomePortuguesSA`),
  KEY `sNomeOrderBy` (`sNomeOrderBy`),
  KEY `iTipoCard` (`iTipoCard`),
  KEY `sNomeBusca` (`sNomeBusca`),
  KEY `idx_tcg_ordby` (`iTCG`,`sNomeOrderBy`) USING BTREE,
  KEY `IDE_Formatos` (`IDE_Formatos`),
  KEY `iPauper` (`iPauper`)
) ENGINE=InnoDB AUTO_INCREMENT=68715 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_cartas_unicas_edicoes`
--

DROP TABLE IF EXISTS `tcgs_cartas_unicas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_cartas_unicas_edicoes` (
  `ID_TCG_Edicao` int(9) NOT NULL AUTO_INCREMENT,
  `iTCG` smallint(2) NOT NULL,
  `IDE_Carta` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `sNumberCompleto` varchar(80) NOT NULL,
  `sNumberOrderBy` varchar(15) NOT NULL,
  `sCor` varchar(2) NOT NULL,
  `sTipo` varchar(255) NOT NULL,
  `iTipo` int(2) NOT NULL,
  `iRaridade` int(2) NOT NULL,
  `sRaridade` varchar(80) NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `sIlustrador` varchar(255) NOT NULL,
  `IDE_Artista` int(9) NOT NULL,
  `iLado` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Lado A / 1 = Lado B',
  `IDE_CartaUnica_LadoB` int(9) NOT NULL DEFAULT '0',
  `sNumber_LadoB` varchar(15) NOT NULL,
  `sPathImage_LadoB` varchar(255) NOT NULL,
  `iHP` int(3) NOT NULL,
  `sWeakness` varchar(25) NOT NULL,
  `sResistence` varchar(25) NOT NULL,
  `dtAdicionado` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_TCG_Edicao`),
  UNIQUE KEY `idx_tcg_crd_edc_snu_snuco` (`iTCG`,`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`,`sNumberCompleto`) USING BTREE,
  KEY `sIlustrador` (`sIlustrador`),
  KEY `iRaridade` (`iRaridade`),
  KEY `sNumber` (`sNumber`),
  KEY `IDE_Carta` (`IDE_Carta`),
  KEY `idx_sys_raridade` (`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`,`iTCG`,`iRaridade`) USING BTREE,
  KEY `joinindex_4` (`iTCG`,`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`,`iRaridade`) USING BTREE,
  KEY `iLado` (`iLado`),
  KEY `idx_lado_1` (`iTCG`,`iLado`) USING BTREE,
  KEY `idx_lado_2` (`iTCG`,`IDE_Edicao`,`iLado`,`IDE_CartaUnica_LadoB`,`sNumber`) USING BTREE,
  KEY `idx_itcg_ideedicao_iraridade_scor` (`iTCG`,`IDE_Edicao`,`iRaridade`,`sCor`) USING BTREE,
  KEY `IDE_Artista` (`IDE_Artista`),
  KEY `sNumberOrderBy` (`sNumberOrderBy`),
  KEY `sNumberOrderBy_2` (`sNumberOrderBy`),
  KEY `sNumberOrderBy_3` (`sNumberOrderBy`)
) ENGINE=InnoDB AUTO_INCREMENT=141196 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_cartas_unicas_hits`
--

DROP TABLE IF EXISTS `tcgs_cartas_unicas_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_cartas_unicas_hits` (
  `IDE_CartaUnica` int(9) NOT NULL,
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `Hits` int(7) NOT NULL DEFAULT '0',
  `HitsDia` int(7) NOT NULL DEFAULT '0',
  `HitsSemana` int(7) NOT NULL DEFAULT '0',
  `HitsMes` int(7) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_crd_tcg_edc_num` (`IDE_CartaUnica`,`iTCG`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `HitsSemana` (`HitsSemana`),
  KEY `HitsMes` (`HitsMes`),
  KEY `Hits` (`Hits`),
  KEY `HitsDia` (`HitsDia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_cartas_unicas_raridade_menor`
--

DROP TABLE IF EXISTS `tcgs_cartas_unicas_raridade_menor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_cartas_unicas_raridade_menor` (
  `iTCG` tinyint(1) NOT NULL DEFAULT '3',
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_EdicaoMaior` int(9) NOT NULL,
  `iMenorRaridade` tinyint(1) NOT NULL DEFAULT '0',
  `sCor` varchar(2) DEFAULT NULL,
  UNIQUE KEY `idx_unique` (`iTCG`,`IDE_CartaUnica`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_edicoes`
--

DROP TABLE IF EXISTS `tcgs_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_edicoes` (
  `ID_TCG_Edicoes` int(9) NOT NULL AUTO_INCREMENT,
  `iTCG` smallint(2) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `sSigla` varchar(20) NOT NULL,
  `sNome` varchar(255) NOT NULL,
  `sNomeSA` varchar(255) NOT NULL,
  `sNomePortugues` varchar(255) NOT NULL,
  `sNomePortuguesSA` varchar(255) NOT NULL,
  `sImagePath` varchar(255) NOT NULL,
  `iNumeroCartas` varchar(10) NOT NULL,
  `dtRelease` date NOT NULL,
  `iFlagPrioridadeOrderBy` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Edição normal / 2 = Listar edição por ultimo (usado em edições online ou especiais com baixa procura)',
  `IDE_EdicaoAgrupada` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iTCG`,`IDE_Edicao`),
  KEY `ID_TCG_Edicoes` (`ID_TCG_Edicoes`),
  KEY `dtRelease` (`dtRelease`),
  KEY `sSigla` (`sSigla`,`iTCG`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2150 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_edicoes_associadas_prod`
--

DROP TABLE IF EXISTS `tcgs_edicoes_associadas_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_edicoes_associadas_prod` (
  `iTCG` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_Edicao` int(9) NOT NULL,
  `dtGeradoArquivoJS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `iTCG` (`iTCG`,`IDE_Edicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_edicoes_precos`
--

DROP TABLE IF EXISTS `tcgs_edicoes_precos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_edicoes_precos` (
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `iTipoCard` tinyint(1) NOT NULL,
  `dPrecoMenor` decimal(10,2) NOT NULL,
  `dPrecoMedio` decimal(10,2) NOT NULL,
  `dPrecoMaior` decimal(10,2) NOT NULL,
  UNIQUE KEY `idx_tcg_edc_tpo` (`iTCG`,`IDE_Edicao`,`iTipoCard`) USING BTREE,
  KEY `idx_tcg_tpo` (`iTCG`,`iTipoCard`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_precos_buylist_qualidade`
--

DROP TABLE IF EXISTS `tcgs_precos_buylist_qualidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_precos_buylist_qualidade` (
  `iTCG` tinyint(2) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iTipoCard` tinyint(2) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL,
  `precoMaior` decimal(10,2) NOT NULL,
  `precoMedio` decimal(10,2) NOT NULL,
  `precoMenor` decimal(10,2) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_unique` (`IDE_CartaUnica`,`IDE_Edicao`,`iQualidade`,`iTipoCard`,`iTCG`,`sNumber`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_precos_cartas`
--

DROP TABLE IF EXISTS `tcgs_precos_cartas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_precos_cartas` (
  `iTCG` tinyint(2) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iTipoCard` tinyint(2) NOT NULL,
  `estoque` int(6) NOT NULL,
  `precoMaior` decimal(10,2) NOT NULL,
  `precoMedio` decimal(10,2) NOT NULL,
  `precoMenor` decimal(10,2) NOT NULL,
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bzrPrecoMaior` decimal(10,2) NOT NULL,
  `bzrPrecoMedio` decimal(10,2) NOT NULL,
  `bzrPrecoMenor` decimal(10,2) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_unique` (`iTCG`,`IDE_Edicao`,`IDE_CartaUnica`,`iTipoCard`,`sNumber`) USING BTREE,
  KEY `precoMenor` (`precoMenor`),
  KEY `precoMedio` (`precoMedio`),
  KEY `precoMaior` (`precoMaior`),
  KEY `iTipoCard` (`iTipoCard`),
  KEY `estoque` (`estoque`),
  KEY `dtAtualizacao` (`dtAtualizacao`),
  KEY `idx_crd_tpo_tcg` (`IDE_CartaUnica`,`iTipoCard`,`iTCG`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_precos_cartas_historico`
--

DROP TABLE IF EXISTS `tcgs_precos_cartas_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_precos_cartas_historico` (
  `iTCG` tinyint(2) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iTipoCard` tinyint(2) NOT NULL DEFAULT '1',
  `dData` date NOT NULL DEFAULT '0000-00-00',
  `precoMaior` decimal(10,2) NOT NULL,
  `precoMedio` decimal(10,2) NOT NULL,
  `precoMenor` decimal(10,2) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_unique` (`iTCG`,`IDE_CartaUnica`,`iTipoCard`,`IDE_Edicao`,`sNumber`,`dData`) USING BTREE,
  KEY `idx_itcg_itipocard` (`iTCG`,`iTipoCard`) USING BTREE,
  KEY `dData` (`dData`,`iTCG`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_precos_cartas_historico_variancia`
--

DROP TABLE IF EXISTS `tcgs_precos_cartas_historico_variancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_precos_cartas_historico_variancia` (
  `iTCG` tinyint(2) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iTipoCard` tinyint(1) NOT NULL DEFAULT '1',
  `diarioMaior` decimal(10,2) NOT NULL,
  `diarioMedio` decimal(10,2) NOT NULL,
  `diarioMenor` decimal(10,2) NOT NULL,
  `semanaMaior` decimal(10,2) NOT NULL,
  `semanaMedio` decimal(10,2) NOT NULL,
  `semanaMenor` decimal(10,2) NOT NULL,
  `mesMaior` decimal(10,2) NOT NULL,
  `mesMedio` decimal(10,2) NOT NULL,
  `mesMenor` decimal(10,2) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_unique` (`iTCG`,`IDE_Edicao`,`IDE_CartaUnica`,`sNumber`,`iTipoCard`),
  KEY `idx_itcg_itipocard` (`iTCG`,`iTipoCard`) USING BTREE,
  KEY `idx_crd_tpo_tcg` (`IDE_CartaUnica`,`iTipoCard`,`iTCG`) USING BTREE,
  KEY `idx_dmenor_tcg_tpo` (`diarioMenor`,`iTCG`,`iTipoCard`) USING BTREE,
  KEY `idx_smenor_tcg_tpo` (`semanaMenor`,`iTCG`,`iTipoCard`) USING BTREE,
  KEY `idx_mmenor_tcg_tpo` (`mesMenor`,`iTCG`,`iTipoCard`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_precos_cartas_qualidade`
--

DROP TABLE IF EXISTS `tcgs_precos_cartas_qualidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_precos_cartas_qualidade` (
  `iTCG` tinyint(2) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `sNumber` varchar(15) NOT NULL,
  `iTipoCard` tinyint(2) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL,
  `estoque` int(6) NOT NULL,
  `precoMaior` decimal(10,2) NOT NULL,
  `precoMedio` decimal(10,2) NOT NULL,
  `precoMenor` decimal(10,2) NOT NULL,
  `dtAtualizacao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `precoMaiorBuylist` decimal(10,2) NOT NULL,
  `precoMedioBuylist` decimal(10,2) NOT NULL,
  `precoMenorBuylist` decimal(10,2) NOT NULL,
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_unique` (`IDE_CartaUnica`,`IDE_Edicao`,`iQualidade`,`iTipoCard`,`iTCG`,`sNumber`) USING BTREE,
  KEY `idx_tcg_pmin` (`precoMenor`,`iTCG`) USING BTREE,
  KEY `idx_edc_tcg_tpo` (`IDE_Edicao`,`iTCG`,`iTipoCard`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcgs_precos_cartas_unicas`
--

DROP TABLE IF EXISTS `tcgs_precos_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcgs_precos_cartas_unicas` (
  `iTCG` tinyint(2) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `iTipoCard` tinyint(2) NOT NULL,
  `estoque` int(6) NOT NULL,
  `precoMaior` decimal(10,2) NOT NULL,
  `precoMedio` decimal(10,2) NOT NULL,
  `precoMenor` decimal(10,2) NOT NULL,
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `idx_unique` (`iTCG`,`IDE_CartaUnica`,`iTipoCard`) USING BTREE,
  KEY `precoMenor` (`precoMenor`),
  KEY `precoMedio` (`precoMedio`),
  KEY `precoMaior` (`precoMaior`),
  KEY `iTipoCard` (`iTipoCard`),
  KEY `estoque` (`estoque`),
  KEY `dtAtualizacao` (`dtAtualizacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_upd_precos_cartas_historico_variancia`
--

DROP TABLE IF EXISTS `temp_upd_precos_cartas_historico_variancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp_upd_precos_cartas_historico_variancia` (
  `iTCG` tinyint(1) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `IDE_CartaUnica` int(9) NOT NULL,
  `sNumber` varchar(50) NOT NULL,
  `iTipoCard` tinyint(2) NOT NULL,
  `difMAIOR` decimal(10,2) NOT NULL,
  `difMEDIO` decimal(10,2) NOT NULL,
  `difMENOR` decimal(10,2) NOT NULL,
  UNIQUE KEY `iTCG` (`iTCG`,`IDE_Edicao`,`IDE_CartaUnica`,`sNumber`,`iTipoCard`),
  UNIQUE KEY `iTCG_2` (`iTCG`,`IDE_Edicao`,`IDE_CartaUnica`,`sNumber`,`iTipoCard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `textopaises`
--

DROP TABLE IF EXISTS `textopaises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textopaises` (
  `ID_TextoPaises` int(11) NOT NULL AUTO_INCREMENT,
  `sPais` char(3) NOT NULL DEFAULT '',
  `sVariavel` varchar(200) NOT NULL DEFAULT '',
  `sValor` text NOT NULL,
  `sIgual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_TextoPaises`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `top8_nacional`
--

DROP TABLE IF EXISTS `top8_nacional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top8_nacional` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nome_jogador` varchar(90) NOT NULL DEFAULT '',
  `pontos` int(3) NOT NULL DEFAULT '0',
  `total_aposta` int(4) NOT NULL DEFAULT '0',
  `farofao` varchar(90) NOT NULL DEFAULT '',
  `valor` int(4) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `farofao` (`farofao`),
  KEY `total_aposta` (`total_aposta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `top8_nacional_apostas`
--

DROP TABLE IF EXISTS `top8_nacional_apostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top8_nacional_apostas` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nick` varchar(30) NOT NULL DEFAULT '',
  `ctime` int(12) NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `nome_completo` varchar(90) NOT NULL DEFAULT '',
  `end_completo` text NOT NULL,
  `jogador_01` int(4) NOT NULL DEFAULT '0',
  `jogador_02` int(4) NOT NULL DEFAULT '0',
  `jogador_03` int(4) NOT NULL DEFAULT '0',
  `jogador_04` int(4) NOT NULL DEFAULT '0',
  `jogador_05` int(4) NOT NULL DEFAULT '0',
  `jogador_06` int(4) NOT NULL DEFAULT '0',
  `jogador_07` int(4) NOT NULL DEFAULT '0',
  `jogador_08` int(4) NOT NULL DEFAULT '0',
  `total_valor` int(5) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `nick` (`nick`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_banidas`
--

DROP TABLE IF EXISTS `torneio_banidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_banidas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formato` varchar(15) NOT NULL DEFAULT '',
  `carta` int(8) NOT NULL DEFAULT '0',
  `nome` varchar(50) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_dados_torneios`
--

DROP TABLE IF EXISTS `torneio_dados_torneios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_dados_torneios` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `sNomeEquipe` varchar(50) NOT NULL DEFAULT '',
  `formato` varchar(30) NOT NULL DEFAULT '',
  `juizID` int(13) NOT NULL,
  `k` int(3) NOT NULL DEFAULT '0',
  `posicao` int(3) NOT NULL DEFAULT '0',
  `total` int(3) NOT NULL DEFAULT '0',
  `IDE_Deck` int(11) NOT NULL DEFAULT '0',
  `deck` text NOT NULL,
  `stand` varchar(12) NOT NULL DEFAULT '',
  `omw` float NOT NULL DEFAULT '0',
  `pgw` float NOT NULL DEFAULT '0',
  `ogw` float NOT NULL DEFAULT '0',
  `data` varchar(8) NOT NULL DEFAULT '',
  `champ` int(12) NOT NULL DEFAULT '0',
  `sSigla` char(3) NOT NULL DEFAULT '',
  KEY `id` (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `juizID` (`juizID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_equipes`
--

DROP TABLE IF EXISTS `torneio_equipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_equipes` (
  `ID_Equipes` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeEquipe` varchar(50) NOT NULL DEFAULT '',
  `idJogadorA` int(13) NOT NULL,
  `idJogadorB` int(13) NOT NULL,
  `idJogadorC` int(13) NOT NULL,
  `byes` int(1) NOT NULL DEFAULT '0',
  `pt` int(1) NOT NULL DEFAULT '0',
  `constructed` float NOT NULL DEFAULT '1600',
  `eternal` float NOT NULL DEFAULT '1600',
  `limited` float NOT NULL DEFAULT '1600',
  `composite` float NOT NULL DEFAULT '1600',
  `dtCadastro` date NOT NULL DEFAULT '0000-00-00',
  KEY `ID_Equipes` (`ID_Equipes`),
  KEY `idJogadorA` (`idJogadorA`),
  KEY `idJogadorB` (`idJogadorB`),
  KEY `idJogadorC` (`idJogadorC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_equipes_dados_torneios`
--

DROP TABLE IF EXISTS `torneio_equipes_dados_torneios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_equipes_dados_torneios` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `sNomeEquipe` varchar(50) NOT NULL DEFAULT '',
  `formato` varchar(30) NOT NULL DEFAULT '',
  `juizID` int(13) NOT NULL,
  `k` int(3) NOT NULL DEFAULT '0',
  `posicao` int(3) NOT NULL DEFAULT '0',
  `total` int(3) NOT NULL DEFAULT '0',
  `IDE_Deck` int(11) NOT NULL DEFAULT '0',
  `deck` text NOT NULL,
  `stand` varchar(12) NOT NULL DEFAULT '',
  `omw` float NOT NULL DEFAULT '0',
  `pgw` float NOT NULL DEFAULT '0',
  `ogw` float NOT NULL DEFAULT '0',
  `data` varchar(8) NOT NULL DEFAULT '',
  `champ` int(12) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `juizID` (`juizID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_equipes_historico`
--

DROP TABLE IF EXISTS `torneio_equipes_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_equipes_historico` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `jogadorID` int(13) NOT NULL,
  `equipe` varchar(50) NOT NULL DEFAULT '',
  `oponenteID` int(13) NOT NULL,
  `equipe_oponente` varchar(50) NOT NULL DEFAULT '',
  `rodada` int(2) NOT NULL DEFAULT '0',
  `resultado` int(1) NOT NULL DEFAULT '0',
  `ranking` float NOT NULL DEFAULT '0',
  `torneio` int(12) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `jogadorID` (`jogadorID`),
  KEY `oponenteID` (`oponenteID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_formatos`
--

DROP TABLE IF EXISTS `torneio_formatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_formatos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(25) NOT NULL DEFAULT '',
  `edicao` char(3) NOT NULL DEFAULT '',
  `formato` varchar(6) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_formatos_torneios`
--

DROP TABLE IF EXISTS `torneio_formatos_torneios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_formatos_torneios` (
  `ID_NovosisFormatos` int(11) NOT NULL AUTO_INCREMENT,
  `sFormato` varchar(150) NOT NULL DEFAULT '',
  KEY `ID_NovosisFormatos` (`ID_NovosisFormatos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_historico`
--

DROP TABLE IF EXISTS `torneio_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_historico` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `jogadorID` int(13) NOT NULL,
  `oponenteID` int(13) NOT NULL,
  `rodada` int(2) NOT NULL DEFAULT '0',
  `resultado` int(1) NOT NULL DEFAULT '0',
  `ranking` float NOT NULL DEFAULT '0',
  `torneio` int(12) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `jogadorID` (`jogadorID`),
  KEY `oponenteID` (`oponenteID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_restritas`
--

DROP TABLE IF EXISTS `torneio_restritas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_restritas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formato` varchar(15) NOT NULL DEFAULT '',
  `carta` int(8) NOT NULL DEFAULT '0',
  `nome` varchar(50) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_upload_mesas_rodada`
--

DROP TABLE IF EXISTS `torneio_upload_mesas_rodada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_upload_mesas_rodada` (
  `IDE_Torneio_Rodada` int(9) NOT NULL,
  `sDCI` varchar(25) NOT NULL,
  `iRodada` tinyint(2) NOT NULL,
  `iMesa` varchar(255) NOT NULL,
  `sJogo` varchar(255) NOT NULL,
  `dtUpload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isProcessado` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Não; 1 = Sim',
  KEY `sDCI` (`sDCI`),
  KEY `dtUpload` (`dtUpload`),
  KEY `isProcessado` (`isProcessado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `torneio_upload_rodadas`
--

DROP TABLE IF EXISTS `torneio_upload_rodadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneio_upload_rodadas` (
  `ID_Torneio_Rodada` int(9) NOT NULL AUTO_INCREMENT,
  `iTemporada` tinyint(3) NOT NULL,
  `sNomeTorneio` varchar(255) NOT NULL,
  `sConteudo` longtext NOT NULL,
  `iMesaInicial` smallint(3) NOT NULL,
  `dtUpload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Torneio_Rodada`),
  KEY `iTemporada` (`iTemporada`,`sNomeTorneio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `twitter_url`
--

DROP TABLE IF EXISTS `twitter_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twitter_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vanguard_cartas_unicas`
--

DROP TABLE IF EXISTS `vanguard_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vanguard_cartas_unicas` (
  `ID_CartaUnica` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeIngles` varchar(255) NOT NULL,
  `sNomeInglesSA` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_CartaUnica`)
) ENGINE=InnoDB AUTO_INCREMENT=7346 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vanguard_cartas_unicas_edicoes`
--

DROP TABLE IF EXISTS `vanguard_cartas_unicas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vanguard_cartas_unicas_edicoes` (
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(11) NOT NULL,
  `sNumber` varchar(80) NOT NULL,
  `sNumberCompleto` varchar(80) NOT NULL,
  `iRaridade` int(2) NOT NULL COMMENT '1 = Common, 2 = Normal Common, 3 = Short Print Common, 4 = Super Short Print Common, 5 = Rare, 6 = Super Rare, 7 = Ultra Rare, 8 = Secret Rare, 9 = Ultimate Rare, 10 = Parallel Rare, 11 = Starfoil Rare, 12 = Ghost Rare, 13 = Gold Ultra Rare, 14 = Gold Secret',
  `sRaridade` varchar(80) NOT NULL,
  `iGrade` int(1) NOT NULL,
  `sClan` varchar(255) NOT NULL,
  `iPower` int(5) NOT NULL,
  `iCritical` int(5) NOT NULL,
  `sUnit` varchar(255) NOT NULL,
  `sNation` varchar(255) NOT NULL,
  `sRace` varchar(255) NOT NULL,
  `sTrigger` varchar(255) NOT NULL,
  `iShield` int(5) NOT NULL,
  `sSkillIcon` varchar(255) NOT NULL,
  `sFlavorText` text NOT NULL,
  `sIllustrator` varchar(255) NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `sText` text NOT NULL,
  `sLinkDownloadImage` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'incompleto, faltaImagem, semImagem, completo, erro',
  PRIMARY KEY (`IDE_CartaUnica`,`IDE_Edicao`,`sNumberCompleto`),
  KEY `IDE_Edicao` (`IDE_Edicao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vanguard_edicao`
--

DROP TABLE IF EXISTS `vanguard_edicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vanguard_edicao` (
  `ID_Edicao` int(9) NOT NULL AUTO_INCREMENT,
  `sPais` varchar(5) NOT NULL,
  `sSigla` varchar(20) NOT NULL,
  `sNome` varchar(255) NOT NULL,
  `sNomeSA` varchar(255) NOT NULL,
  `sImagePath` varchar(255) NOT NULL,
  `sExpansionID` varchar(15) NOT NULL,
  `sLinkDownloadImagem` varchar(255) NOT NULL,
  `dtRelease` date NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'manual, pendente, processando, finalizado',
  `IDE_EdicaoAgrupada` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Edicao`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_compras`
--

DROP TABLE IF EXISTS `vip_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_compras` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `ctime_inicial` int(12) NOT NULL DEFAULT '0',
  `ctime_final` int(12) NOT NULL DEFAULT '0',
  `nome_servico` text,
  `nivel_servico` varchar(30) NOT NULL DEFAULT '',
  `status` int(2) NOT NULL DEFAULT '0',
  `notificacao` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_compraservicovip`
--

DROP TABLE IF EXISTS `vip_compraservicovip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_compraservicovip` (
  `ID_Compra` int(13) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_Pagamento` int(13) NOT NULL,
  `IDE_NotaFiscal` int(13) NOT NULL,
  `IP` varchar(45) NOT NULL,
  `dtCompra` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sNomeServico` varchar(255) NOT NULL,
  `iNivelServico` int(5) NOT NULL,
  `fValor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fTaxas` decimal(10,2) NOT NULL DEFAULT '0.00',
  `iDuracao` int(2) NOT NULL,
  `apiLocal` int(1) NOT NULL COMMENT '1 = pagSeguro / 2 = paypal / 3 = MercadoPago / 4 = trayCheckout / 5 = Banco do Brasil / 6 = Caixa Economica / 7 = Itau / 8 = Cielo / 9 = Bradesco / 10 = Santander / 11 = PagHiper',
  `codigoAPI` varchar(255) NOT NULL,
  `nome` varchar(72) NOT NULL,
  `cpf` varchar(25) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Cancelado; 1 = Aguardando; 9 = Ativo',
  PRIMARY KEY (`ID_Compra`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `status` (`status`),
  KEY `IDE_Pagamento` (`IDE_Pagamento`),
  KEY `IDE_NotaFiscal` (`IDE_NotaFiscal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_historico`
--

DROP TABLE IF EXISTS `vip_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_historico` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `ctime` int(12) NOT NULL DEFAULT '0',
  `historico` text,
  `valor` varchar(12) NOT NULL DEFAULT '',
  `tipo` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_leilao_cor`
--

DROP TABLE IF EXISTS `vip_leilao_cor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_leilao_cor` (
  `IDE_Perfil` int(13) NOT NULL,
  `cor` int(2) DEFAULT NULL,
  KEY `IDE_Perfil` (`IDE_Perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_servicos`
--

DROP TABLE IF EXISTS `vip_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_servicos` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `tipo_servico` varchar(30) NOT NULL DEFAULT '',
  `nome_servico` text,
  `explicacao_servico` text,
  `tempo` char(1) DEFAULT NULL,
  `valor_servico` varchar(12) NOT NULL DEFAULT '0',
  `nivel_servico` varchar(12) NOT NULL DEFAULT '0',
  `status` char(2) NOT NULL DEFAULT '',
  `sSigla` char(3) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_temporario`
--

DROP TABLE IF EXISTS `vip_temporario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_temporario` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `IDE_Perfil` int(13) NOT NULL,
  `IDE_NotaFiscal` int(13) NOT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `ctime` int(12) NOT NULL DEFAULT '0',
  `ctime_ativado` int(13) NOT NULL DEFAULT '0',
  `forma_pagamento` int(2) NOT NULL DEFAULT '0',
  `numero_pagamento` varchar(255) NOT NULL DEFAULT '',
  `numero_pagamento2` varchar(30) NOT NULL DEFAULT '',
  `valor_pagamento` varchar(12) NOT NULL DEFAULT '',
  `moeda` varchar(10) NOT NULL DEFAULT '',
  `data_pagamento` varchar(12) NOT NULL DEFAULT '',
  `banco` int(2) NOT NULL DEFAULT '0',
  `nome` varchar(72) NOT NULL DEFAULT '',
  `cpf` varchar(25) NOT NULL DEFAULT '',
  `status` char(2) NOT NULL DEFAULT '',
  `sSigla` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDE_Perfil` (`IDE_Perfil`),
  KEY `IDE_NotaFiscal` (`IDE_NotaFiscal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks`
--

DROP TABLE IF EXISTS `ygo_decks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks` (
  `ID_Deck` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `IDE_Evento` int(9) NOT NULL,
  `IDE_EventoJogador` int(9) NOT NULL,
  `sNome` varchar(150) NOT NULL,
  `unixDtCriacao` int(10) NOT NULL,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Deletado, 1 = Ativo e privado, 2 = Ativo e publico, 3 = Deletado pois gerou nova versao, 4 = Bot baixou info, 5 = Erro cards no bot, 9 = Versionado aguardando deletes',
  `iFormato` int(2) NOT NULL,
  `iFlagCardsEspecifico` tinyint(1) NOT NULL DEFAULT '0',
  `sEventoRank` varchar(7) NOT NULL,
  PRIMARY KEY (`ID_Deck`),
  KEY `IDE_User` (`IDE_User`),
  KEY `iFormato` (`iFormato`),
  KEY `IDE_Evento` (`IDE_Evento`),
  KEY `IDE_EventoJogador` (`IDE_EventoJogador`),
  KEY `sNome` (`sNome`),
  KEY `sEventoRank` (`sEventoRank`),
  KEY `idx_status_ideeventojogador` (`IDE_EventoJogador`,`iStatus`) USING BTREE,
  KEY `idx_status_iflagcardsespecifico` (`iStatus`,`iFlagCardsEspecifico`) USING BTREE,
  KEY `idx_status_ideevento` (`IDE_Evento`,`iStatus`) USING BTREE,
  KEY `idx_istatus_ideuser` (`iStatus`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_iformato_ideuser` (`iStatus`,`iFormato`,`IDE_User`) USING BTREE,
  KEY `idx_istatus_unixdtcriacao` (`iStatus`,`unixDtCriacao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_cards`
--

DROP TABLE IF EXISTS `ygo_decks_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_cards` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `iMainDeck` tinyint(1) NOT NULL DEFAULT '0',
  `iSideboard` tinyint(1) NOT NULL DEFAULT '0',
  `iMaybeboard` tinyint(1) NOT NULL DEFAULT '0',
  `iExtraDeck` tinyint(1) NOT NULL DEFAULT '0',
  `iLista` int(1) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL,
  UNIQUE KEY `idx_idedeck_idecartaprincipal` (`IDE_Deck`,`IDE_CartaPrincipal`) USING BTREE,
  KEY `idx_idecartaprincipal_ilista` (`IDE_CartaPrincipal`,`iLista`) USING BTREE,
  KEY `idx_idedeck_idecartaprincipal_ilista` (`IDE_Deck`,`IDE_CartaPrincipal`,`iLista`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_cards_archive`
--

DROP TABLE IF EXISTS `ygo_decks_cards_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_cards_archive` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `iMainDeck` tinyint(1) NOT NULL DEFAULT '0',
  `iSideboard` tinyint(1) NOT NULL DEFAULT '0',
  `iMaybeboard` tinyint(1) NOT NULL DEFAULT '0',
  `iExtraDeck` tinyint(1) NOT NULL DEFAULT '0',
  `IDE_Cartas_Migradas` int(9) NOT NULL,
  UNIQUE KEY `idx_idedeck_idecartaprincipal` (`IDE_Deck`,`IDE_CartaPrincipal`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_cards_especifico`
--

DROP TABLE IF EXISTS `ygo_decks_cards_especifico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_cards_especifico` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `iLista` tinyint(1) NOT NULL DEFAULT '1',
  `iQuant` tinyint(1) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL DEFAULT '0',
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `sExtras` varchar(30) NOT NULL,
  `iTipoCard` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  KEY `IDE_Deck` (`IDE_Deck`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_cards_especifico_archive`
--

DROP TABLE IF EXISTS `ygo_decks_cards_especifico_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_cards_especifico_archive` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_CartaPrincipal` int(9) NOT NULL,
  `IDE_Edicao` int(9) NOT NULL,
  `iLista` tinyint(1) NOT NULL DEFAULT '1',
  `iQuant` tinyint(1) NOT NULL,
  `iQualidade` tinyint(1) NOT NULL DEFAULT '0',
  `iIdioma` tinyint(1) NOT NULL DEFAULT '0',
  `sExtras` varchar(30) NOT NULL,
  `iTipoCard` tinyint(1) NOT NULL DEFAULT '1',
  `IDE_Cartas_Migradas` int(9) NOT NULL DEFAULT '0',
  KEY `IDE_Deck` (`IDE_Deck`),
  KEY `IDE_CartaPrincipal` (`IDE_CartaPrincipal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_comentarios`
--

DROP TABLE IF EXISTS `ygo_decks_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_comentarios` (
  `ID_Comentario` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_Deck` int(9) NOT NULL,
  `IDE_User` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtComentario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1',
  `sMensagem` text NOT NULL,
  PRIMARY KEY (`ID_Comentario`),
  KEY `IDE_User` (`IDE_User`),
  KEY `iStatus` (`iStatus`),
  KEY `idx_idedeck_istatus` (`IDE_Deck`,`iStatus`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_deletados`
--

DROP TABLE IF EXISTS `ygo_decks_deletados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_deletados` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_UserDeletou` int(9) NOT NULL,
  `sIP` varchar(45) NOT NULL,
  `dtDeletou` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iStatus` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Aguardando delete fisico / 0 = Efetuou delete fisico',
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `iStatus` (`iStatus`),
  KEY `dtDeletou` (`dtDeletou`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_descricao`
--

DROP TABLE IF EXISTS `ygo_decks_descricao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_descricao` (
  `IDE_Deck` int(9) NOT NULL,
  `sDescricao` text NOT NULL,
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_eventos`
--

DROP TABLE IF EXISTS `ygo_decks_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_eventos` (
  `ID_Evento` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeEvento` varchar(150) NOT NULL,
  `iFormato` tinyint(2) NOT NULL,
  `iJogadores` int(5) NOT NULL,
  `dtEvento` datetime NOT NULL,
  `dtCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Evento`),
  KEY `sNomeEvento` (`sNomeEvento`),
  KEY `dtEvento` (`dtEvento`),
  KEY `iFormato` (`iFormato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_eventos_jogadores`
--

DROP TABLE IF EXISTS `ygo_decks_eventos_jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_eventos_jogadores` (
  `ID_Jogador` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeJogador` varchar(80) NOT NULL,
  PRIMARY KEY (`ID_Jogador`),
  UNIQUE KEY `sNomeJogador` (`sNomeJogador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_historico`
--

DROP TABLE IF EXISTS `ygo_decks_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_historico` (
  `IDE_Deck` int(9) NOT NULL,
  `IDE_DeckOriginal` int(9) NOT NULL,
  `IDE_DeckOrigem` int(9) NOT NULL,
  `iFlagVersaoRemovida` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Deck_2` (`IDE_Deck`,`IDE_DeckOriginal`),
  KEY `IDE_DeckOriginal` (`IDE_DeckOriginal`),
  KEY `iFlagVersaoRemovida` (`iFlagVersaoRemovida`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_hits`
--

DROP TABLE IF EXISTS `ygo_decks_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_hits` (
  `IDE_Deck` int(9) NOT NULL,
  `iHits` int(8) NOT NULL DEFAULT '0',
  `iHitsDia` int(4) NOT NULL DEFAULT '0',
  `iHitsSemana` int(5) NOT NULL DEFAULT '0',
  `iHitsMes` int(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `iHits` (`iHits`),
  KEY `iHitsDia` (`iHitsDia`),
  KEY `iHitsSemana` (`iHitsSemana`),
  KEY `iHitsMes` (`iHitsMes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_hits_diario`
--

DROP TABLE IF EXISTS `ygo_decks_hits_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_hits_diario` (
  `IDE_Deck` int(9) NOT NULL,
  `iHits` int(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `iHits` (`iHits`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_precos`
--

DROP TABLE IF EXISTS `ygo_decks_precos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_precos` (
  `IDE_Deck` int(9) NOT NULL,
  `dtAtualizacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dPrecoMenor` decimal(8,2) NOT NULL,
  `dPrecoMedio` decimal(8,2) NOT NULL,
  `dPrecoMaior` decimal(8,2) NOT NULL,
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `dtAtualizacao` (`dtAtualizacao`),
  KEY `dPrecoMaior` (`dPrecoMaior`),
  KEY `idx_idedeck_dprecomenor` (`IDE_Deck`,`dPrecoMenor`) USING BTREE,
  KEY `idx_idedeck_dprecomedio` (`IDE_Deck`,`dPrecoMedio`) USING BTREE,
  KEY `idx_idedeck_dprecomaior` (`IDE_Deck`,`dPrecoMaior`) USING BTREE,
  KEY `idx_dprecomenor_dprecomedio` (`dPrecoMenor`,`dPrecoMedio`) USING BTREE,
  KEY `idx_dprecomenor_dprecomaior` (`dPrecoMenor`,`dPrecoMaior`) USING BTREE,
  KEY `idx_dprecomedio_dprecomaior` (`dPrecoMedio`,`dPrecoMaior`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ygo_decks_stats`
--

DROP TABLE IF EXISTS `ygo_decks_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ygo_decks_stats` (
  `IDE_Deck` int(9) NOT NULL,
  `iComentTotal` int(6) NOT NULL DEFAULT '0',
  `IDE_NickUltimoComent` int(9) NOT NULL,
  `dtUltimoComent` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `IDE_Deck` (`IDE_Deck`),
  KEY `iComentTotal` (`iComentTotal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `youtube_clm`
--

DROP TABLE IF EXISTS `youtube_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `youtube_clm` (
  `ID_Video` int(9) NOT NULL AUTO_INCREMENT,
  `IDE_User` int(9) NOT NULL,
  `sURL` varchar(250) NOT NULL,
  `sTitulo` varchar(200) NOT NULL,
  `sEmbed` varchar(250) NOT NULL,
  `sImagePath` varchar(40) NOT NULL,
  `dtPost` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_Video`),
  KEY `status` (`status`),
  KEY `dtPost` (`dtPost`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yugioh_cartas_unicas`
--

DROP TABLE IF EXISTS `yugioh_cartas_unicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yugioh_cartas_unicas` (
  `ID_CartaUnica` int(9) NOT NULL AUTO_INCREMENT,
  `sNomeIngles` varchar(255) NOT NULL,
  `sNomeInglesSA` varchar(255) NOT NULL,
  `sNomePortugues` varchar(255) NOT NULL,
  `sNomePortuguesSA` varchar(255) NOT NULL,
  `sNomeUnico` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_CartaUnica`),
  UNIQUE KEY `sNomeUnico` (`sNomeUnico`),
  KEY `sNomeIngles` (`sNomeIngles`),
  KEY `sNomeInglesSA` (`sNomeInglesSA`),
  KEY `sNomePortugues` (`sNomePortugues`),
  KEY `sNomePortuguesSA` (`sNomePortuguesSA`)
) ENGINE=InnoDB AUTO_INCREMENT=12375 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yugioh_cartas_unicas_edicoes`
--

DROP TABLE IF EXISTS `yugioh_cartas_unicas_edicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yugioh_cartas_unicas_edicoes` (
  `IDE_CartaUnica` int(9) NOT NULL,
  `IDE_Edicao` int(11) NOT NULL,
  `sNumber` varchar(80) NOT NULL,
  `sCor` varchar(1) NOT NULL,
  `iRaridade` int(2) NOT NULL COMMENT '1 = Common, 2 = Normal Common, 3 = Short Print Common, 4 = Super Short Print Common, 5 = Rare, 6 = Super Rare, 7 = Ultra Rare, 8 = Secret Rare, 9 = Ultimate Rare, 10 = Parallel Rare, 11 = Starfoil Rare, 12 = Ghost Rare, 13 = Gold Ultra Rare, 14 = Gold Secret',
  `sRaridade` varchar(80) NOT NULL,
  `iLevel` int(2) NOT NULL,
  `sEfeito` varchar(255) NOT NULL,
  `sInfo` text NOT NULL,
  `iAtaque` int(5) NOT NULL,
  `iDefesa` int(5) NOT NULL,
  `iPendulum` int(2) NOT NULL,
  `sTextPendulum` text NOT NULL,
  `sPathImage` varchar(255) NOT NULL,
  `sText` text NOT NULL,
  `sLinkDownloadImage` varchar(255) NOT NULL,
  `sLinkCarta` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'incompleto, faltaImagem, semImagem, completo, erro',
  PRIMARY KEY (`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`) USING BTREE,
  KEY `IDE_Edicao` (`IDE_Edicao`),
  KEY `sNumber` (`sNumber`),
  KEY `IDE_CartaUnica_2` (`IDE_CartaUnica`,`IDE_Edicao`,`sNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yugioh_edicao`
--

DROP TABLE IF EXISTS `yugioh_edicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yugioh_edicao` (
  `ID_Edicao` int(9) NOT NULL AUTO_INCREMENT,
  `sPais` varchar(5) NOT NULL,
  `sSigla` varchar(20) NOT NULL,
  `sNome` varchar(255) NOT NULL,
  `sNomeSA` varchar(255) NOT NULL,
  `sNomePortugues` varchar(255) NOT NULL,
  `sNomePortuguesSA` varchar(255) NOT NULL,
  `sImagePath` varchar(255) NOT NULL,
  `sLinkDownload` varchar(255) NOT NULL,
  `sLinkDownloadImagem` varchar(255) NOT NULL,
  `dtRelease` date NOT NULL,
  `status` varchar(50) NOT NULL COMMENT 'manual, pendente, processando, finalizado',
  `IDE_EdicaoAgrupada` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_Edicao`),
  KEY `status` (`status`),
  KEY `ID_Edicao` (`ID_Edicao`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=969 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-22 14:28:36
