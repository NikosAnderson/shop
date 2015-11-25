-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 25 Novembre 2015 à 13:29
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) unsigned NOT NULL,
  `category` int(3) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `category`, `name`, `description`, `price`, `picture`, `rating`, `date`) VALUES
(1, 0, 'Apple iPhone 6 16 Go', 'L’iPhone 6 n’est pas seulement plus grand en taille. Il est plus grand en tout.', '709.00', 'apple_iphone6.jpg', '1.0', '2015-09-25 16:03:06'),
(2, 0, 'Samsung Galaxy S5 16 Go', 'Le Galaxy S5, un concentré de technologie dans un design chic et glamour.', '459.90', 'samsung_galaxy_s5.jpg', '5.0', '2015-10-01 16:03:06'),
(3, 0, 'LG G3 32 Go', 'LE LG G3 ÉLU MEILLEUR SMARTPHONE 2014 AU MWC 2015.', '384.35', 'lg_g3.jpg', '4.0', '2015-08-15 16:03:06'),
(4, 0, 'Google Nexus 5 16 Go', 'Un téléphone plus grand avec toujours plus de fonctionnalités.', '499.99', 'google_nexus6.jpg', '2.0', '2015-10-01 16:03:06'),
(56, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'In consectetur congue turpis, et sollicitudin turpis hendrerit a. Fusce a dignissim felis. Fusce tincidunt et eros id scelerisque. Donec pellentesque magna eget sodales vehicula. Sed id felis aliquet, sollicitudin nisl et, fringilla ipsum. Mauris at maximus magna. Donec ultrices condimentum ante, quis fringilla elit pulvinar a. Aenean eu placerat nunc, in sagittis nulla. Aliquam egestas scelerisque turpis, id mollis libero vestibulum et. Sed eget magna ac eros mollis tempor. Quisque fringilla massa ex, venenatis gravida tortor lacinia sit amet. Vivamus at arcu mollis, fermentum eros sit amet, ornare nibh. Pellentesque vestibulum massa vitae sapien convallis egestas in quis elit. Quisque eget dolor lobortis, porttitor dui a, pulvinar ex. Vestibulum laoreet condimentum suscipit.', '388.53', 'product8.jpg', '3.0', '2015-07-05 21:01:40'),
(57, 2, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeo', 'Integer et quam et dui consequat lacinia. Phasellus eleifend erat vitae sem varius, vitae blandit massa iaculis. Quisque euismod tincidunt maximus. Quisque vel nisi rhoncus, volutpat justo nec, aliquam ante. Proin sit amet gravida est. Donec lobortis maximus sem, non dapibus nulla scelerisque eu. Nam ac vestibulum magna. Integer tempor, arcu eu gravida mollis, elit dolor laoreet est, sed dictum ex orci sit amet nisl. Nulla vestibulum aliquet nisi et mollis. Sed sodales purus purus, aliquam luctus sem eleifend in. Suspendisse tortor massa, eleifend facilisis ultricies at, fringilla et lectus. Integer venenatis suscipit velit, non vestibulum lacus imperdiet a. Nunc nulla mi, sagittis ac augue sed, mattis pharetra neque. Integer a consequat est, nec efficitur lacus. Nam interdum tincidunt elit sed varius.', '167.55', 'product5.jpg', '0.0', '2014-07-28 06:15:49'),
(58, 3, 'Donec tristique velit id dapibus aucto', 'Nam nec porta turpis. Ut sed felis sem. Sed elementum in erat ultrices interdum. Sed aliquet lectus sit amet molestie blandit. Vivamus efficitur nibh non risus euismod convallis. Aliquam feugiat, purus nec sollicitudin iaculis, nisl odio porta ex, vitae sodales nisl augue tincidunt mauris. Etiam eleifend at lorem vitae sollicitudin. Fusce gravida tortor id metus sodales, id interdum turpis lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ac fermentum ex. Mauris quis ex et augue pellentesque tristique id at odio. Phasellus nunc eros, molestie nec purus at, auctor cursus metus. Pellentesque eu venenatis tortor.', '390.90', 'product3.jpg', '0.0', '2015-06-13 05:00:13'),
(59, 2, 'Mauris sapien nunc, pharetra non purus non, mollis tincidunt m', 'Nullam id lacus id arcu feugiat fringilla a in dolor. Phasellus accumsan odio tincidunt pharetra pretium. Duis quis pellentesque mauris, vitae feugiat arcu. Vivamus euismod tellus fermentum, ornare tortor nec, blandit arcu. Praesent ut pulvinar sapien. Nam sit amet risus sit amet tellus volutpat porta sit amet quis nisl. Aenean auctor nisi sit amet orci efficitur euismod. Nulla tincidunt, enim et ultrices finibus, velit dui elementum odio, in convallis quam ante vitae sapien.', '266.50', 'product4.jpg', '0.0', '2014-06-24 18:48:03'),
(60, 3, 'Maecenas neque neque, laoreet a rutrum ullamcorper, suscipit sed tellu', 'Praesent congue, lorem in congue dictum, justo lorem consectetur erat, in placerat lorem arcu vitae turpis. In eget gravida risus. Mauris eleifend sem at nisi posuere consectetur. Morbi eu nisi tempus, pellentesque erat vel, dapibus tellus. Curabitur rhoncus orci sit amet libero vehicula, ac pretium mauris placerat. Duis quam nisi, pharetra nec luctus id, porta egestas eros. Vestibulum eu ex lacus. Donec porttitor viverra arcu, sed tempus justo facilisis a. Maecenas dictum est vitae nulla volutpat scelerisque. Nulla non quam aliquam, eleifend nisi eget, pellentesque velit. Ut ac suscipit elit. Sed cursus, ipsum et euismod pretium, nisl lorem euismod neque, non congue massa quam eget dolor.', '324.72', 'product9.jpg', '4.0', '2015-10-12 10:31:27'),
(61, 2, 'In non odio sit amet metus viverra scelerisqu', 'Etiam eu felis malesuada, mollis ligula eget, fermentum sem. Curabitur dictum dictum rhoncus. In scelerisque efficitur nisi, nec tincidunt risus ornare ac. Curabitur vel rutrum neque. Mauris eleifend porta magna ultricies fringilla. Donec ut mauris sit amet enim condimentum facilisis nec non diam. Suspendisse vel metus feugiat elit sodales convallis vitae eu ligula. Sed ut augue sit amet augue cursus pretium.', '81.64', 'product2.jpg', '4.0', '2014-11-18 16:24:05'),
(62, 2, 'Nulla rhoncus, odio sed vulputate volutpat, metus erat tincidunt nunc, ut iaculis massa tellus ut e', 'Donec ut felis a dui consectetur molestie. In ac vestibulum lacus. Ut in dictum mauris. Suspendisse blandit id sem consequat suscipit. Nulla interdum pretium porta. Etiam mollis turpis neque, ac ultrices neque vulputate nec. Maecenas tincidunt ligula non orci suscipit pretium. Phasellus commodo porta lacus a faucibus. Praesent vitae erat sit amet orci fermentum dignissim at at nunc. Sed convallis sed diam in pretium. Mauris sollicitudin convallis lacus non ullamcorper. Proin pharetra nec turpis vitae commodo. Integer accumsan sit amet lorem a iaculis.', '291.00', 'product4.jpg', '2.0', '2015-01-12 07:04:17'),
(63, 1, 'Quisque suscipit ex sit amet lacus euismod dictu', 'Nullam a posuere turpis, in scelerisque felis. Praesent sit amet ex tempus, pharetra ligula at, maximus massa. Ut id nisl lectus. Phasellus dictum enim sit amet eros sodales, quis molestie ipsum iaculis. Fusce id lacus id quam congue pharetra fermentum at ante. Praesent rhoncus, nibh quis imperdiet convallis, quam enim efficitur augue, et vehicula mi mauris sit amet libero. Aenean scelerisque, elit et condimentum porttitor, nunc lectus scelerisque augue, eu volutpat magna purus id enim. Suspendisse rhoncus nisl quis lacus mattis eleifend. Nulla vel vehicula purus. Maecenas ultrices diam et risus ornare ullamcorper. Vivamus vel metus purus. Ut convallis felis ac gravida elementum. Curabitur cursus mauris a arcu suscipit, non sollicitudin est malesuada. Etiam porta pharetra diam, eu auctor urna ornare id.', '396.10', 'product8.jpg', '2.0', '2014-05-28 02:51:38'),
(64, 1, 'Pellentesque sodales lacus vitae lectus eleifend rutru', 'Fusce a orci eu dui fermentum vulputate. Aenean tempor venenatis vestibulum. Cras imperdiet placerat lacus at pretium. Integer vel purus hendrerit lorem aliquet ornare at at felis. Quisque risus dolor, fringilla ut eros in, rutrum semper leo. Pellentesque viverra felis arcu, congue euismod nulla placerat eu. Phasellus quis venenatis neque. Praesent ut lacus non mauris fermentum mattis eget eget nunc. Nulla mattis ac nibh sed semper. Nulla et felis ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et aliquam nunc. Nullam pretium semper elit in dictum. Sed vel risus a libero venenatis elementum in sed purus. Nulla euismod pellentesque diam, eget eleifend metus tincidunt in.', '193.22', 'product9.jpg', '3.0', '2014-05-09 23:22:29'),
(65, 1, 'Mauris non nulla euismod, finibus nulla vel, interdum risu', 'Pellentesque sagittis velit turpis, a malesuada purus vestibulum dictum. Duis eleifend purus in cursus cursus. Sed et purus eget elit hendrerit viverra. Phasellus sit amet maximus metus. Cras auctor tincidunt erat, sed facilisis orci mattis molestie. Curabitur ac pretium elit. Pellentesque porta orci vitae molestie dictum. Phasellus finibus risus in ante facilisis, vitae feugiat lacus consectetur. Sed sit amet lectus posuere, sagittis orci eget, placerat nisi. Sed ac diam aliquam, hendrerit dolor sed, tempus felis. Maecenas ullamcorper a arcu ut pulvinar. Curabitur ultricies odio odio, vel consequat leo viverra ac.', '262.13', 'product1.jpg', '0.0', '2015-09-07 23:36:06'),
(66, 3, 'Praesent id mi interdum, finibus lorem rutrum, ornare arc', 'Nunc sagittis et nunc vitae finibus. Nam vitae felis sed nisi posuere finibus eget eu est. Mauris condimentum pellentesque tempor. Proin tempus turpis non leo vehicula mollis. Etiam at mollis ligula. Sed molestie diam sed ante gravida vehicula. Quisque eleifend urna non leo molestie, vitae feugiat sem ullamcorper. In hac habitasse platea dictumst. Cras consectetur dictum diam, vel scelerisque ligula tempor eget. Nunc lacus risus, convallis id leo blandit, lobortis tristique neque. Nullam luctus iaculis neque. Curabitur tincidunt ante quis purus rhoncus euismod. Duis vel tellus enim. Etiam cursus, leo eu vulputate varius, ex neque facilisis augue, ut vestibulum felis ligula sollicitudin massa.', '348.62', 'product10.jpg', '1.0', '2014-11-17 15:37:56'),
(67, 2, 'Suspendisse potent', 'Morbi laoreet urna ipsum, eu auctor massa pellentesque non. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum at neque ac lacus ornare porttitor. Nam ultricies dolor mi. Praesent pellentesque egestas nibh consequat hendrerit. Aliquam ultricies purus eu enim maximus, sed accumsan lacus malesuada. In a ligula pellentesque, ultrices velit sed, facilisis est. Suspendisse augue neque, ullamcorper et tristique et, luctus eu sem. Nulla fermentum nisl diam, id vulputate mauris luctus ut. Aliquam quis posuere dolor, vel mattis ipsum.', '65.30', 'product6.jpg', '4.0', '2014-09-27 12:55:52'),
(68, 4, 'Phasellus vulputate porttitor urna, nec ultrices justo posuere qui', 'Morbi velit massa, pretium at urna a, laoreet pharetra metus. Etiam a dapibus nunc, eu convallis eros. Etiam bibendum vulputate rutrum. In accumsan tellus lectus, sed elementum urna laoreet ut. Nunc luctus lectus turpis, nec vestibulum neque sollicitudin at. Nunc semper erat id elit interdum luctus vitae quis orci. Fusce congue elementum augue, eleifend semper felis dapibus id. Donec quis lorem mi. Nam euismod porta magna, eget suscipit ante. Integer pharetra fringilla mauris, et tempor dui vestibulum vel. Sed quis ipsum id diam vulputate euismod id vel tortor. Praesent feugiat dui porttitor ipsum porttitor, vel lobortis risus posuere.', '135.68', 'product1.jpg', '5.0', '2014-06-22 07:43:49'),
(69, 3, 'Nam quam sem, eleifend sed viverra nec, tempor ut veli', 'Ut eu fermentum ex. Nam porta id purus eu tempor. Maecenas scelerisque feugiat nisl, id ultricies erat tempor nec. Duis pharetra augue eu purus gravida, et aliquet justo euismod. Curabitur vulputate urna et augue vestibulum pretium. Sed in felis sed enim sodales aliquam ut molestie elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '174.80', 'product3.jpg', '0.0', '2014-11-24 11:09:32'),
(70, 4, 'Mauris maximus dictum ultrice', 'Integer pretium commodo nisl, at tristique lacus tincidunt vel. Quisque et augue tortor. Aliquam sed sagittis erat. Aenean nec dui mi. Integer tempus commodo augue ut egestas. Duis porttitor enim eget malesuada tempor. Proin sollicitudin ante mattis libero scelerisque, nec lobortis eros semper.', '86.35', 'product1.jpg', '3.0', '2014-03-17 17:33:57'),
(71, 4, 'Nulla accumsan neque eget nisl viverra dapibu', 'Vestibulum tempor dapibus magna, vel ullamcorper sem faucibus vitae. Nunc convallis finibus nisl, a ullamcorper justo pretium eu. Vestibulum ut est id nunc dictum faucibus sit amet ut nibh. Nunc pretium cursus eleifend. Aenean efficitur sapien eu lacus pellentesque laoreet. Etiam vel dolor ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas aliquam, tellus et facilisis porttitor, urna ligula scelerisque nunc, eget porta ligula enim sed nisl. Nulla tempor lobortis lectus.', '86.63', 'product6.jpg', '5.0', '2014-05-12 04:01:09'),
(72, 4, 'Suspendisse potent', 'Praesent rhoncus fermentum quam sed vulputate. Mauris id massa ut turpis placerat vulputate. In eget ipsum in dui finibus ultrices. Praesent gravida imperdiet purus. Sed rutrum, justo in egestas scelerisque, arcu nunc euismod odio, a ultrices justo lorem et ex. Pellentesque accumsan venenatis ex nec semper. Sed sed mattis risus. Curabitur sit amet elit eros. Nam ac leo turpis. Nam porttitor volutpat metus, quis rhoncus tortor congue nec. Donec id mollis risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '41.27', 'product9.jpg', '1.0', '2014-05-06 17:13:58'),
(73, 2, 'Aliquam vulputate et elit et ornar', 'Mauris posuere neque est, sed viverra est congue nec. Phasellus sit amet viverra quam. Curabitur feugiat viverra mauris. Mauris dapibus magna eu libero mollis tempus. Vestibulum ac augue ac ante pulvinar sagittis nec nec metus. Ut massa felis, viverra vel cursus et, gravida nec tellus. Nulla egestas ante quis lacinia sodales. Vivamus id mattis nunc. Sed vestibulum risus vel sagittis suscipit. Aliquam erat volutpat.', '16.93', 'product7.jpg', '0.0', '2015-05-27 02:48:31'),
(74, 2, 'Sed elementum, dui condimentum faucibus rhoncus, nibh diam suscipit magna, eu pharetra sem dui sed es', 'Nam tincidunt sapien nisi, et faucibus ante feugiat sed. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam gravida, nisl id interdum feugiat, libero nibh varius libero, sed fermentum libero diam ac velit. Duis eu ultrices dolor. Nam sed diam orci. Nunc vitae dolor in urna maximus molestie et vel orci. Nulla ullamcorper velit quis hendrerit porta. Etiam venenatis non justo eu imperdiet. Etiam facilisis tellus ac justo rutrum pharetra. In eros enim, egestas facilisis nunc vitae, cursus tincidunt ligula.', '256.80', 'product9.jpg', '0.0', '2015-09-17 14:17:37'),
(75, 3, 'Aenean vulputate felis eget nunc porttitor, a posuere eros maximu', 'Morbi porttitor, nunc id pharetra vehicula, nisi mauris gravida elit, sit amet mollis neque lectus in sapien. Pellentesque ut accumsan dui. Vivamus ut lorem finibus, vehicula sem sit amet, aliquam neque. Aliquam faucibus massa laoreet augue semper commodo. Maecenas sed est quis neque consequat fringilla et porta justo. Pellentesque varius felis vel neque pretium, quis condimentum magna aliquam. Vivamus accumsan est at tristique pharetra. Sed laoreet enim vitae neque imperdiet rhoncus. Nunc cursus tortor quam, sit amet tristique augue ultrices nec. Morbi nunc quam, consequat et dolor at, cursus semper turpis. Nulla sed scelerisque leo. Morbi eget tincidunt odio. Curabitur at eros vel sem bibendum hendrerit non quis libero.', '44.13', 'product3.jpg', '5.0', '2014-10-21 18:40:22'),
(76, 3, 'Suspendisse id lorem eu purus viverra lacini', 'Maecenas commodo scelerisque posuere. Suspendisse in pretium velit, eget lobortis odio. Duis facilisis, dui sed suscipit imperdiet, nibh elit cursus felis, eu ultricies ex est id ipsum. Suspendisse potenti. Ut hendrerit enim at massa tristique convallis. Suspendisse a magna quis felis vulputate ornare et imperdiet dui. Aliquam eget libero molestie nisl consectetur cursus. Suspendisse eget sagittis lacus. Nulla facilisi. Ut mollis interdum sapien, porttitor laoreet nibh molestie in.', '50.64', 'product6.jpg', '1.0', '2014-06-16 01:01:58'),
(77, 3, 'Duis vehicula lacinia sapien, quis blandit orc', 'Curabitur viverra egestas metus in vulputate. Donec quis feugiat libero, a imperdiet felis. Donec a diam vel mauris maximus commodo id quis mi. Vestibulum pellentesque tortor eu orci tempus, nec viverra magna molestie. In fringilla gravida libero, facilisis cursus lorem ultricies sit amet. Nullam consectetur pharetra purus non ultricies. Fusce ut suscipit ex. Curabitur in nisl mi. In hac habitasse platea dictumst. Morbi ut nisl nec dui laoreet fermentum in sed urna. Vestibulum gravida aliquet lectus pretium ultrices.', '233.29', 'product1.jpg', '3.0', '2015-08-16 07:51:42'),
(78, 3, 'Integer ut sodales mass', 'Praesent dictum maximus ex vitae interdum. Proin placerat eget lacus vitae congue. Curabitur aliquet mi mauris, sit amet hendrerit dui faucibus vitae. Ut cursus feugiat dolor, id lacinia libero viverra fermentum. Aliquam ultrices est vel sem sagittis cursus. Vivamus nisl lorem, consectetur at rutrum vel, porta at orci. Cras felis nisl, suscipit eu nulla venenatis, sollicitudin dignissim elit. Donec iaculis turpis ligula, sit amet ornare nisi porttitor et. Suspendisse at porta nisl. Nullam dapibus, nulla ac hendrerit finibus, nunc velit gravida diam, et dignissim lacus ipsum ut mauris. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec nec porttitor arcu. Nullam nulla turpis, viverra quis congue quis, molestie in ipsum. Nullam eget arcu dui. Aenean a aliquam dui.', '383.24', 'product4.jpg', '5.0', '2014-01-07 18:42:42'),
(79, 3, 'Maecenas sit amet dui lobortis, posuere tellus vitae, scelerisque ero', 'Nullam fermentum magna justo, at cursus elit fringilla non. In aliquam lorem a sapien porttitor, id rutrum neque pharetra. Etiam faucibus, sapien sed sollicitudin rutrum, purus dui rutrum ex, sed viverra elit urna a odio. Sed sem sapien, tempus a tellus vitae, finibus convallis dui. Nulla cursus odio eget ex vulputate tincidunt. Vestibulum mollis sodales enim, suscipit vestibulum nisl dignissim vel. Aenean convallis dapibus dolor. Nullam et felis et urna lacinia interdum eu quis tortor. Nunc non est quis enim ultricies auctor. Quisque nec fringilla libero. In sit amet ipsum nisl. Suspendisse ut dui quis tortor dictum condimentum.', '263.31', 'product6.jpg', '5.0', '2014-11-19 10:56:57'),
(80, 3, 'Vestibulum ullamcorper eros lectus, vel volutpat lectus mattis no', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi in ipsum leo. In quis viverra enim. Nullam vulputate dolor sed felis iaculis dignissim. Proin aliquet ex erat, eu facilisis elit sodales a. Donec vel quam at mi viverra faucibus nec sed ipsum.', '54.94', 'product2.jpg', '3.0', '2015-09-06 11:48:21'),
(81, 4, 'Nulla facilis', 'Donec in leo in leo sodales suscipit. Etiam faucibus mi ac hendrerit laoreet. Sed in fermentum sem, sed facilisis elit. Nam in maximus purus. Ut elit ipsum, congue id auctor non, sollicitudin a libero. In consequat justo quis lorem mollis, nec condimentum sapien condimentum. Mauris finibus metus ut lorem auctor varius. Pellentesque ac tincidunt lectus, ut fringilla ligula. Mauris et sem vel felis maximus sagittis. Curabitur nisl enim, semper et efficitur ut, vestibulum et massa. Aliquam id elit dignissim, scelerisque nulla vel, porttitor ante. Aenean in lorem maximus, congue lorem ac, viverra velit.', '43.18', 'product4.jpg', '4.0', '2015-06-07 22:05:17'),
(82, 2, 'Vivamus dolor sem, tincidunt quis metus in, varius porta lacu', 'Praesent vulputate gravida lorem, ac scelerisque mauris congue quis. Praesent in mauris eu est dapibus tempus et nec ligula. Quisque dignissim ipsum et metus malesuada, ut posuere turpis tristique. Praesent eget enim finibus, iaculis ante quis, gravida ligula. Nam sit amet placerat massa. Morbi maximus congue egestas. Nunc porta non leo a laoreet. Aliquam in tellus ante.', '237.73', 'product4.jpg', '5.0', '2014-08-20 07:15:30'),
(83, 2, 'Phasellus malesuada fringilla urna ut maximu', 'Mauris efficitur, tellus eu blandit cursus, urna lectus efficitur metus, eu semper magna mi at erat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed luctus rutrum pharetra. Proin faucibus elit ac cursus elementum. Vestibulum at neque ac sapien vestibulum porta eget at sapien. Maecenas rhoncus aliquet ex vitae laoreet. Vestibulum semper nisi dui, cursus lobortis dui vestibulum eu. Maecenas sit amet turpis eget eros volutpat dictum. Nunc velit turpis, malesuada sit amet dictum et, feugiat nec lacus.', '327.23', 'product9.jpg', '5.0', '2015-10-14 18:20:48'),
(84, 4, 'Maecenas convallis elit vel dui faucibus, quis convallis metus euismo', 'Ut euismod ullamcorper elit at tincidunt. Vestibulum quis eros lorem. Fusce dapibus luctus orci, id lacinia tortor. Vivamus non elit nisi. Etiam cursus dui in odio porta, in auctor risus feugiat. Nullam eu tempor velit, ut egestas enim. Praesent condimentum eros sed mattis sagittis. Donec ac maximus mauris.', '191.83', 'product3.jpg', '0.0', '2015-01-01 20:42:08'),
(85, 4, 'Pellentesque eros sapien, molestie et pellentesque ac, tincidunt sed dolo', 'Morbi vel ultrices mi, ut maximus nibh. Vivamus tempus nec lorem quis suscipit. Sed id libero lorem. Maecenas facilisis in risus at maximus. Nullam gravida magna in maximus sollicitudin. Aliquam vehicula urna rutrum velit malesuada pellentesque. Aliquam turpis metus, egestas id eros sed, tincidunt blandit arcu. Morbi mattis bibendum elementum. Suspendisse vel pellentesque ex.', '381.37', 'product8.jpg', '3.0', '2015-09-01 09:47:53'),
(86, 1, 'Donec eget tellus eget nisl blandit malesuad', 'Pellentesque sapien ante, tempor laoreet nunc vel, malesuada vehicula massa. Donec non feugiat tellus. Phasellus sagittis egestas velit. Suspendisse porta ligula et tempor ullamcorper. Morbi auctor lacus at dictum varius. Nunc mollis nibh purus, nec facilisis tellus consectetur in. Quisque condimentum quam sit amet eros vehicula auctor quis ut risus. Fusce interdum sollicitudin enim. Vivamus in orci eu massa consequat lacinia. Nam efficitur, ex a consectetur dapibus, mi ipsum consectetur ante, non ornare ante mauris quis nibh. Vivamus pretium turpis ut tellus porttitor, et cursus nunc cursus. Nam nec lacinia lacus. Etiam eget blandit dui, at varius lectus. Proin sed malesuada erat.', '324.95', 'product3.jpg', '4.0', '2015-09-18 16:48:47'),
(87, 4, 'Vivamus gravida turpis massa, vitae viverra eros consectetur ne', 'Curabitur ut pulvinar purus, et aliquam enim. Mauris consequat ultricies sodales. Maecenas nec purus ac justo mollis aliquet nec sed justo. Nullam nec quam dictum, viverra ipsum eget, dictum velit. Duis consectetur ac lorem ac pulvinar. Vestibulum bibendum dui a ante tempus, quis accumsan eros aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et diam eget massa porta semper.', '68.39', '', '4.0', '2014-12-29 00:53:19'),
(88, 3, 'Fusce ac porta libero, non tincidunt torto', 'Sed enim mi, laoreet nec arcu vulputate, hendrerit tempor arcu. In sed mattis risus. Cras lorem nulla, tristique in neque in, congue gravida dolor. Donec facilisis ante finibus laoreet tristique. Vivamus faucibus ut lectus sit amet auctor. Praesent at turpis eu leo efficitur volutpat. Nunc ornare nulla ac orci ullamcorper, quis blandit nisi imperdiet. Etiam lacinia leo risus, eget vestibulum eros tincidunt ac. Suspendisse velit turpis, volutpat et nibh eu, pellentesque sollicitudin neque.', '354.48', '', '0.0', '2015-02-14 10:23:52'),
(89, 2, 'Donec laoreet suscipit leo, in convallis magna imperdiet finibu', 'Aenean efficitur placerat dui varius aliquam. Donec maximus quam nisi, sit amet feugiat neque viverra in. Quisque tortor nunc, porttitor eget ullamcorper vel, convallis ut odio. Morbi sed bibendum nisl. Fusce odio dui, egestas at lacus in, fringilla pharetra dui. Vivamus augue dolor, rhoncus sit amet lacus vitae, consectetur lacinia enim. Nam eget tincidunt metus. Sed blandit maximus tristique. Quisque vel orci sed metus interdum placerat. Mauris ac lorem eget nulla ultrices efficitur. Etiam lacinia elit elit, nec ullamcorper lacus placerat molestie. In hac habitasse platea dictumst.', '464.15', 'product7.jpg', '5.0', '2015-04-13 16:42:40'),
(90, 2, 'Mauris et nulla vel orci fermentum fermentum non id m', 'Aliquam aliquam purus vitae mauris rhoncus, eget egestas tellus ultrices. Maecenas ut purus rutrum, accumsan augue non, mattis lorem. Aenean fermentum vel felis sed dignissim. Praesent in sapien sagittis quam fringilla rutrum. Praesent sagittis, tellus a sagittis pretium, velit quam luctus ex, in ultricies arcu turpis vel turpis. Praesent commodo cursus dui, quis fringilla neque blandit vel. Duis tincidunt orci non ultrices elementum. Sed congue quam vel lacinia dictum. Morbi porttitor quis felis non gravida. Maecenas fringilla gravida metus, quis facilisis magna tincidunt quis. Aliquam eget congue leo. Aliquam efficitur eleifend tellus bibendum pulvinar. In ut tristique diam, quis rutrum mauris. Maecenas in urna nisi.', '413.80', 'product8.jpg', '4.0', '2015-06-06 00:46:51'),
(91, 2, 'Proin pulvinar diam augu', 'In ut finibus leo, non facilisis diam. Ut et porta dolor, eu imperdiet tortor. Vivamus eget sem ac augue vehicula mattis. Duis id odio ac neque finibus consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pharetra, augue non bibendum lobortis, neque urna elementum turpis, id cursus risus neque vel magna. Nulla massa dui, tristique id suscipit sed, vulputate vel libero. Nunc semper sem ac arcu tempor porta. Nulla facilisi.', '53.85', 'product4.jpg', '4.0', '2015-04-14 18:08:25'),
(92, 4, 'Nullam et ultricies ante, vel volutpat mauri', 'Nulla egestas magna eget congue tincidunt. Etiam id mauris at quam facilisis ultricies. Donec metus eros, elementum sit amet nisi vel, tincidunt viverra diam. Mauris bibendum faucibus tempor. Curabitur molestie orci sed vulputate sagittis. Vivamus tempus libero mi, eget tristique lectus tristique in.', '190.52', 'product8.jpg', '3.0', '2015-06-12 00:00:35'),
(93, 3, 'Donec quis varius turpis, rutrum condimentum nis', 'Vivamus gravida orci risus. Suspendisse luctus mauris in dui condimentum ultricies. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris eleifend quam dolor, vitae fringilla lacus egestas sed. Ut sit amet tortor pretium, tempor lorem tempor, tempor eros. Aliquam sollicitudin varius tristique. Quisque ultrices elit vel vestibulum fermentum. Donec tristique erat est, sed faucibus purus commodo quis. Pellentesque sed lorem blandit augue congue efficitur sit amet sed nibh. Cras eu urna nec lectus faucibus vestibulum et sit amet libero. Donec eget auctor odio. Mauris id felis euismod, consectetur turpis vitae, sollicitudin neque. Morbi et massa vel leo accumsan ultrices. Mauris maximus tincidunt pretium. Vestibulum blandit mollis pharetra.', '248.29', 'product5.jpg', '2.0', '2014-03-16 02:10:18'),
(94, 3, 'Proin justo neque, volutpat quis ullamcorper ut, maximus nec just', 'Maecenas imperdiet scelerisque varius. Curabitur porttitor a purus eu tempor. Morbi interdum consectetur volutpat. Phasellus porta et ex id lacinia. Quisque ultrices, velit vestibulum scelerisque hendrerit, nisi quam sollicitudin velit, sit amet viverra ante diam ut erat. Pellentesque et lorem sit amet arcu tristique pulvinar a in tellus. Sed congue elementum magna, quis aliquet nunc consectetur quis. In sagittis mollis dolor. Phasellus arcu ipsum, feugiat sed leo vitae, tristique ornare ipsum. Aliquam erat volutpat. Sed facilisis sapien non ante faucibus, sit amet gravida sem commodo. Sed eget erat quis tortor viverra accumsan. Mauris vulputate massa nec turpis elementum ornare.', '30.70', 'product2.jpg', '2.0', '2014-11-01 18:04:28'),
(95, 4, 'Fusce faucibus, nisl ut lacinia congue, orci risus sodales lorem, ut consectetur leo nunc sit amet just', 'Ut tincidunt accumsan accumsan. Vivamus nec nisi lorem. In pharetra mattis malesuada. Phasellus hendrerit eu lacus vel tincidunt. Sed sed interdum libero. Vivamus tincidunt metus luctus ipsum posuere accumsan sit amet fringilla tortor. Nullam lacinia ligula ultrices consequat luctus. Morbi mollis mattis euismod. Nullam eget enim venenatis, condimentum orci in, consequat turpis. Vestibulum ligula enim, mattis sit amet erat quis, fringilla maximus quam. Vestibulum justo dui, vulputate quis urna sed, euismod elementum tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '114.12', 'product1.jpg', '3.0', '2014-01-20 04:07:30'),
(96, 1, 'Vestibulum ultricies eros ipsum, eu lobortis sem imperdiet sit ame', 'Aenean blandit blandit tellus, vitae gravida ligula convallis nec. Proin porta mattis elit, sit amet condimentum augue bibendum varius. Praesent in tempor diam. Ut molestie magna diam, accumsan ultricies diam pretium nec. Donec fringilla laoreet rutrum. Duis maximus interdum elit a vehicula. Suspendisse gravida justo vitae tortor tristique bibendum. Aliquam tempor tortor vel lectus tempus placerat.', '83.13', 'product7.jpg', '4.0', '2014-05-09 20:12:47'),
(97, 3, 'Suspendisse lacinia porttitor ipsum, eget vehicula lectus aliquam ', 'Nam ut nisl a risus viverra posuere. Vestibulum ultrices gravida faucibus. Vestibulum pulvinar tincidunt dui, id ullamcorper risus luctus quis. Pellentesque viverra eros ut quam aliquet facilisis. Donec fringilla magna sed tellus tempor lacinia. Phasellus tempus accumsan nisi, at finibus orci ultricies eget. Phasellus blandit sagittis quam quis luctus. Donec aliquet risus non diam consequat lacinia. Aliquam sodales mauris vitae tortor dapibus, sit amet rutrum arcu porttitor. Proin mattis luctus sollicitudin. Curabitur tincidunt gravida nisl sed bibendum. Aliquam vel accumsan felis. Nulla facilisi. Morbi porta diam est, non rhoncus elit placerat quis.', '422.80', 'product8.jpg', '5.0', '2015-02-24 14:55:55'),
(98, 4, 'Sed sit amet urna eni', 'Cras in neque viverra, ullamcorper velit sit amet, ullamcorper ligula. Morbi volutpat mauris vel dapibus auctor. Mauris a elementum enim. Vestibulum gravida tincidunt orci. Aliquam pulvinar purus turpis, eget vehicula orci fermentum nec. Integer et nisl iaculis, elementum velit id, lacinia sapien. Curabitur lacinia purus id auctor fermentum. Cras egestas nunc urna, id hendrerit nunc tincidunt sit amet. Vivamus eget eleifend magna, eget ultricies quam.', '417.56', 'product3.jpg', '5.0', '2015-08-09 00:06:55'),
(99, 2, 'Sed hendrerit ex ex, ac varius tortor feugiat qui', 'Suspendisse efficitur leo magna, in dictum risus malesuada vel. Donec lacinia enim pulvinar odio pharetra, id maximus dui vestibulum. Morbi tempor at neque vel hendrerit. Suspendisse potenti. Etiam non ex eget libero ultrices euismod id luctus ex. Pellentesque non ligula scelerisque, tincidunt orci et, semper leo. Nunc ultricies erat vel felis aliquet, at scelerisque massa ullamcorper. Curabitur efficitur quis elit sit amet accumsan. Nullam auctor eros in purus aliquet, sit amet tincidunt libero porta. In aliquam vehicula sollicitudin. Nulla id erat sed magna condimentum semper id sed orci.', '328.24', 'product3.jpg', '4.0', '2015-04-27 23:20:28'),
(100, 4, 'Sed ac lorem le', 'Sed dignissim nisi et ipsum tempus lacinia. Sed aliquet nisl nec pretium porttitor. Pellentesque varius lorem at elementum volutpat. Suspendisse pellentesque consectetur nisl, lacinia suscipit sapien mollis pulvinar. Fusce rutrum tortor felis, vitae lobortis ex dapibus vitae. Quisque feugiat et erat sit amet tempor. Nam vel lobortis urna. Phasellus lacinia tortor nec arcu pretium posuere. Suspendisse nunc est, vestibulum id mi vitae, condimentum tincidunt nunc.', '170.95', 'product1.jpg', '5.0', '2014-03-29 17:09:32'),
(101, 4, 'Proin metus enim, placerat at luctus sed, rutrum et se', 'Nullam sagittis faucibus orci ac luctus. Aliquam erat volutpat. Nunc dictum turpis non ultrices rhoncus. Vestibulum sagittis lectus ac sollicitudin commodo. In et metus lacinia, molestie elit sed, semper tortor. Nam nunc metus, lacinia ac velit id, semper ultricies orci. Suspendisse potenti. Praesent id scelerisque est, vel hendrerit tortor. Pellentesque sodales vehicula varius. Vestibulum lobortis ac elit ut sagittis.', '449.29', 'product6.jpg', '1.0', '2014-03-10 13:15:12'),
(102, 1, 'Phasellus risus est, efficitur nec metus vitae, placerat facilisis torto', 'Ut in tincidunt tellus. Fusce eros ex, maximus eget tellus dignissim, iaculis consectetur nisi. Quisque suscipit purus quis nibh lacinia, in consectetur velit viverra. Etiam tincidunt commodo neque, ut posuere massa sodales eu. Suspendisse iaculis est mauris, a hendrerit libero volutpat ut. Proin pulvinar, purus vitae pharetra convallis, ante urna aliquet diam, sed gravida lacus magna sed ipsum. Curabitur purus ligula, pulvinar a augue vel, pharetra egestas urna.', '117.76', 'product3.jpg', '0.0', '2014-05-19 06:46:58'),
(103, 4, 'Vivamus rhoncus mi eu nibh suscipit molesti', 'Duis nunc nibh, volutpat ac felis et, tempus sollicitudin massa. Curabitur lorem nisi, semper sit amet nulla vitae, porta ultricies enim. Etiam eu mi quis justo scelerisque dapibus nec sed arcu. Nulla cursus, lectus quis porta mattis, tellus eros lobortis ante, in ultricies dui diam sed erat. Sed condimentum, arcu ultricies pharetra mattis, dui arcu placerat augue, porttitor luctus urna justo sit amet neque. Nunc non sagittis nibh. Nunc accumsan ante tellus, varius lacinia ipsum sollicitudin et. Nam luctus nisl et libero suscipit, quis volutpat metus porttitor. Donec a eros eu libero accumsan dapibus placerat vitae nisi. Phasellus consectetur malesuada urna ut vestibulum.', '34.75', 'product1.jpg', '5.0', '2015-03-28 06:51:43'),
(104, 1, 'Curabitur vulputate porttitor turpis dignissim consectetu', 'Ut varius nisi id viverra tincidunt. Ut accumsan convallis sapien, non facilisis lacus porta in. Quisque dignissim euismod convallis. Donec porta at dolor quis aliquam. Curabitur sagittis pharetra condimentum. In aliquet tellus ac nulla consequat, sed consequat ex sodales. Morbi a dapibus est. Morbi rutrum nec orci at consequat. Morbi porta ut augue et egestas. Cras dignissim vitae nunc ac ultricies. Vivamus at tincidunt ligula. Proin et lectus sit amet enim sollicitudin tempus. Pellentesque odio tellus, mattis sed dui sed, tincidunt luctus nulla. In faucibus velit ut ante blandit, vestibulum consequat tortor fringilla. Etiam a arcu tortor.', '345.15', 'product3.jpg', '0.0', '2014-12-27 23:31:22'),
(105, 3, 'Nullam quis tempus le', 'Fusce faucibus cursus imperdiet. Aenean convallis, turpis laoreet facilisis bibendum, sapien velit lacinia erat, id placerat ex lorem non nulla. Sed tincidunt dolor a arcu ultricies mollis. Curabitur interdum id massa quis malesuada. Proin at lacus ornare, posuere ex a, facilisis mi. Duis sit amet semper erat. Quisque ornare fermentum accumsan. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae. In et ultricies elit. Phasellus et orci eu nulla mollis suscipit vel sed turpis. Morbi eget lectus a ligula placerat elementum. Phasellus consequat dictum ullamcorper.', '38.22', 'product8.jpg', '0.0', '2014-03-17 22:57:18');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
