-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 27-Mar-2025 às 11:44
-- Versão do servidor: 8.0.39
-- versão do PHP: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int NOT NULL,
  `referencia` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `data` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `assunto` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `titulo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fonte` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `referencia`, `data`, `assunto`, `titulo`, `fonte`) VALUES
(1, 'hardw/1425136326.8291', '28/02/2014', 'hardware', 'Motherboard ASUS Z97 WS', 'www.asus.com'),
(2, 'mobil/1425141685.5901', '28/03/2014', 'mobile', 'MEO - SIM Card 4G', 'www.meo.com'),
(3, 'jogos/1425141061.0344', '02/05/2014', 'jogos', 'Brain Fitness Pro', 'www.infoscript.eu'),
(4, 'softw/1425141549.1054', '28/06/2014', 'software', 'NOS - IRIS online', 'www.nos.com'),
(5, 'softw/1425142028.1987', '28/07/2014', 'software', 'Windows 9', 'www.infoscript.eu'),
(6, 'segur/1425141417.8468', '23/01/2015', 'seguranca', 'Deteck - Software de vigilancia', 'www.hackersportugal.com'),
(7, 'hardw/1428010318.237', '25/03/2015', 'hardware', 'Intel, Micron e Toshiba prometem mais espaço em disco', 'exameinformatica.sapo.pt'),
(8, 'jogos/1428011611.5739', '26/03/2015', 'jogos', 'Nintendo entra nos jogos mobile e prepara nova consola.', 'exameinformatica.sapo.pt'),
(9, 'softw/1428011951.2358', '28/03/2015', 'software', 'Windows 10 deve chegar em Julho', 'www.cnet.com/'),
(10, 'tecno/1428012451.8284', '30/03/2015', 'tecnologia', 'Estudantes apagam fogo com ondas sonoras', 'www.cnet.com/'),
(11, 'softw/1431789792.9418', '16/05/2015', 'software', 'Fim do Media Center', 'www.exameinformatica'),
(12, 'inter/1431789866.0798', '16/05/2015', 'internet', 'Edge: o novo browser da Microsoft', 'www.exameinformatica'),
(13, 'mobil/1431864209.9613', '17/05/2015', 'mobile', 'iPhone incendeia-se ao ligar um carregador não original', 'http://pplware.sapo.pt/'),
(14, 'tecno/1431866233.3488', '17/05/2015', 'tecnologia', 'Carros autónomos da Google chegam neste Verão', 'http://pplware.sapo.pt/'),
(15, 'mobil/1434748649.6587', '19/06/2015', 'mobile', 'Serviço e-factura no seu dispositivo móvel', 'http://pplware.sapo.pt/'),
(16, 'segur/1437838656.4783', '25/07/2015', 'seguranca', 'Os teus dados estão expostos na net?', 'www.hackersportugal.com'),
(17, 'hardw/1439246038.6874', '10/08/2015', 'hardware', 'Memória não volátil Intel 3D Xpoint', 'www.exameinformatica'),
(18, 'hardw/1439246776.8823', '10/08/2015', 'hardware', 'Nova série de placas mãe ASUS Z170', 'www.exameinformatica'),
(19, 'segur/1439409919.7549', '12/08/2015', 'seguranca', 'DoNotSpy10 - Corrige problemas de privacidade do Windows 10', 'www.hackersportugal.com/'),
(20, 'segur/1439668709.7641', '15/08/2015', 'seguranca', 'O Windows 10 não pára de te espiar, mesmo que desactives todas as opções de privacidade', 'www.hackersportugal.com'),
(21, 'segur/1440533075.2672', '25/08/2015', 'seguranca', 'Novas actualizações para o Windows 7, 8 e 8.1 permite à Microsoft espiar-te', 'www.hackersportugal.com/'),
(22, 'softw/1440940119.7768', '30/08/2015', 'software', 'Windows 10 é um vírus', 'www.diolinux.com.br'),
(23, 'softw/1444682502.324', '12/10/2015', 'software', 'Activar o \"GodMod\" no Windows 7, 8 e 10', 'www.hackersportugal.com'),
(24, 'hardw/1444853653.236', '14/10/2015', 'hardware', 'Conheces o USB Killer?', 'www.hackersportugal.com'),
(25, 'mobil/1447276354.7031', '11/11/2015', 'mobile', 'O teu Android está vulnerável a ataques de hackers?', 'www.hackersportugal.com'),
(26, 'tecno/1449939107.0451', '12/12/2015', 'tecnologia', 'LI-FI  - Internet sem fios a alta velocidade', 'www.infoscript.eu'),
(27, 'segur/1452627692.3073', '12/01/2016', 'seguranca', 'PC novo com Windows? A Microsoft pode ter a tua chave de encripta&ccedil;&atilde;o', 'www.hackersportugal.com'),
(28, 'softw/1454436191.2132', '02/02/2016', 'software', 'Download automático do Windows 10', 'www.hackersportugal.com'),
(29, 'jogos/1460484037.24', '12/04/2016', 'jogos', 'Jogos em MS-DOS reunidos em site', 'www.infoscript.pt'),
(30, 'softw/1472413858.31', '18/08/2016', 'software', 'FUCHSIA - o novo sistema operativo da Google', 'exameinformatica.sapo.pt'),
(31, 'tecno/1472414057.89', '19/08/2016', 'tecnologia', 'SWING - camada de segurança para redes Wi-Fi', 'exameinformatica.sapo.pt'),
(32, 'softw/1472415085.9', '19/08/2016', 'software', 'Como saber a chave do seu Windows 10 gravada na BIOS', 'pplware.sapo.pt'),
(33, 'softw/1472415273.21', '20/08/2016', 'software', ' 	Imagem ISO do Windows ou do Office gratuita', 'pplware.sapo.pt'),
(34, 'softw/1473619862.86', '11/09/2016', 'software', 'Impedir o Windows de espiar com linhas de código', 'www.hackersportugal.com'),
(35, 'jogos/1483377279.4254', '02/01/2017', 'jogos', 'Super Mario Run para Android já está em pré-registo', 'exameinformatica.sapo.pt'),
(36, 'softw/1483382475.0791', '02/01/2017', 'software', 'Edge vai começar a bloquear conteúdos em Flash', 'exameinformatica.sapo.pt'),
(37, 'inter/1490603511.4304', '27/03/2017', 'internet', 'Impedir tracking em sites com HTML5', 'www.hackersportugal.com'),
(38, 'hardw/1496327614.9122', '30/05/2017', 'hardware', 'Intel revela processador Core i9', 'www.tecnoblog.net'),
(39, 'hardw/1496327887.8934', '31/05/2017', 'hardware', 'Novos SSD WD Blue 3D NAND', 'www.tecnoblog.net'),
(40, 'softw/1501003641.64', '25/07/2017', 'software', 'A morte do Flash Player', 'www.tecnoblog.net'),
(41, 'softw/1503380777.47', '21/08/2017', 'software', 'WordPress com integração nativa do Paypal', 'http://tek.sapo.pt/noticias'),
(42, 'inter/1520110707', '02/03/2018', 'internet', 'GitHub sobreviveu a ataque DDoS', 'http://exameinformatica.sapo.pt'),
(43, 'tecno/1521630896.16', '21/03/2018', 'tecnologia', 'microLED - a próxima evolução de ecrãs', 'tecnoblog.net'),
(44, 'tecno/1523818575.68', '15/04/2018', 'tecnologia', 'INKLESS recebe investimento milionário', 'https://tecnoblog.net'),
(45, 'jogos/1524319282.57', '20/04/2018', 'jogos', 'Grasshopper - Google ensina programação JavaScript', 'exameinformatica.sapo.pt'),
(46, 'inter/1543351436.6374/anlou-not', '27/11/2018', 'internet', 'Metade dos sites maliciosos são HTTPS', 'https://tecnoblog.net'),
(47, 'softw/1546541789.59', '03/01/2019', 'software', 'DCP: Copiar ficheiros entre máquinas Linux sem instalar o SSH', 'pplware.sapo.pt'),
(48, 'inter/1547234593.43', '11/01/2019', 'internet', 'EllaLink - Cabo submarino entre o Brasil e a Europa', 'tecnoblog.net'),
(49, 'hardw/1551366242.42', '28/02/2019', 'hardware', 'Nova geração de chips eufs3.0', 'tecnoblog.net');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `titulo` (`titulo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
