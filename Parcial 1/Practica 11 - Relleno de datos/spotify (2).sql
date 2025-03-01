-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2025 at 04:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`) VALUES
(1, 'Peso pluma\r\n'),
(2, 'Tito doble p'),
(3, 'Hatsune Miku'),
(4, 'Tailor Swift'),
(5, 'Romeo Santos'),
(6, 'AJR'),
(7, 'ADO\r\n'),
(8, 'Molotov'),
(9, 'Mon Laferte'),
(10, 'MissaSinfonia'),
(11, 'Artic Monkey'),
(12, 'Kasane teto'),
(13, 'DJ Improv'),
(14, 'Steven Universe'),
(15, 'Cuarteto De Nos'),
(16, 'Adventure Time'),
(17, 'Imagine Dragons');

-- --------------------------------------------------------

--
-- Table structure for table `artistascanciones`
--

CREATE TABLE `artistascanciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `artistascanciones`
--

INSERT INTO `artistascanciones` (`id`, `artistas_id`, `canciones_id`) VALUES
(1, 7, 8),
(2, 7, 49),
(3, 7, 50),
(4, 7, 47),
(5, 9, 7),
(6, 6, 9),
(7, 6, 12),
(8, 6, 38),
(9, 7, 16),
(10, 9, 23),
(11, 9, 24),
(12, 15, 10),
(13, 15, 11),
(14, 17, 13),
(15, 17, 14),
(16, 11, 21),
(17, 3, 46),
(18, 3, 35),
(19, 3, 45),
(20, 13, 22);

-- --------------------------------------------------------

--
-- Table structure for table `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'La people', 3, '00:03:01', '2022-01-04', 1, 'imgur/sakdkosj.com'),
(2, 'Zapata', 3, '00:03:15', '2022-06-04', 1, 'imgur/sakdkjssj.com'),
(3, 'Doritoti', 6, '00:02:46', '2008-04-19', 1, 'FOTO DE HATSUNE MIKU'),
(4, 'JUEVES', 5, '00:02:59', '2011-04-19', 1, 'LA BANDA'),
(5, 'THE OTHER WOMAN', 6, '00:03:14', '2018-01-04', 1, 'EXCLUSIV'),
(6, 'HILITO', 4, '00:02:45', '2016-01-17', 1, 'ROMEO SANTOS'),
(7, 'Tu falta de querer', 5, '00:03:17', '2015-12-17', 1, 'Monlaferte Triste\r\n'),
(8, 'Osewa', 7, '02:59:00', '2019-02-28', 1, 'Persona gritando'),
(9, 'Inertia', 10, '03:29:00', '2023-11-09', 1, 'Foto del album AJR'),
(10, 'Flan', 2, '03:47:00', '2022-08-15', 1, 'Ratas juntas'),
(11, 'Chivo expiatorio', 6, '03:27:00', '2022-08-15', 1, 'Ratas juntas'),
(12, 'Maybe Man', 10, '03:29:00', '2023-11-09', 1, 'Foto de album AJR'),
(13, 'Bones', 2, '02:48:00', '2021-05-12', 1, 'Calavera chida'),
(14, 'Enemy', 2, '03:19:00', '2021-10-09', 1, 'Arcanegod'),
(15, 'LemonBoy', 6, '03:11:00', '2019-09-28', 1, 'Limon'),
(16, 'Sakura Biyori', 8, '05:32:00', '2024-12-12', 1, 'Miku y ado'),
(17, 'Espresso', 6, '02:55:00', '2024-05-19', 1, 'Sabrina carpinter'),
(18, 'Teto Synthesizer', 8, '04:09:00', '2018-09-08', 1, 'Kasane Teto'),
(19, 'Not Like us', 9, '04:35:00', '2024-10-09', 1, 'Kendrick Lamar en un estadio'),
(20, 'Beanie', 6, '02:20:00', '2019-10-04', 1, 'Chico'),
(21, '505', 2, '04:14:00', '2020-04-25', 1, 'Departamento'),
(22, 'Am I losing You', 5, '02:58:00', '2020-08-15', 1, 'Aquino y Duxo'),
(23, 'Me voy', 6, '03:08:00', '2022-07-20', 1, 'Julieta Venegas con un limon'),
(24, 'Amor Completo', 5, '04:09:00', '2019-10-09', 1, 'Mon laferte'),
(25, 'Doing ok.', 6, '02:20:00', '2023-09-28', 1, 'Mar'),
(26, 'Notion', 6, '03:16:00', '2018-09-28', 1, 'Disco'),
(27, 'Tormento', 5, '04:42:00', '2018-07-29', 1, 'Mon Laferte'),
(28, 'Otonoke', 7, '03:06:00', '2024-10-08', 1, 'Monstro japone'),
(29, 'Seventh Heaven', 6, '03:55:00', '2024-09-02', 1, 'Carrito de compras'),
(30, 'The Improv', 9, '02:38:00', '2016-05-20', 1, 'Bosque'),
(31, 'Cancion Al mar', 9, '02:57:00', '2017-05-09', 1, 'Missasinfonia en el mar'),
(32, 'Luchtballon', 9, '02:17:00', '2023-11-27', 1, 'Globo aereostatico'),
(33, 'Flor morada', 5, '03:07:00', '2023-07-24', 1, 'Flores'),
(34, 'Change Your Mind', 9, '00:55:00', '2016-03-20', 1, 'Steven Universe'),
(35, 'Girl A', 7, '04:03:00', '2020-02-20', 1, 'Kagamine Rin'),
(36, 'Jigsaw Puzzle', 7, '03:30:00', '2018-09-28', 1, 'Mafumafu'),
(37, 'Lost Kitten', 6, '03:17:00', '2020-08-26', 1, 'Casa bocabajo'),
(38, '2085', 10, '05:32:00', '2023-11-09', 1, 'Album AJR'),
(39, 'Hit Me', 2, '04:18:00', '2010-02-08', 1, 'Inmigrantes'),
(40, 'Puto', 2, '02:08:00', '2009-10-28', 1, 'Molotov'),
(41, 'Two Face Lovers', 8, '03:08:00', '2016-09-29', 1, 'Corazon'),
(42, 'Wowaka Rollin Girl', 7, '03:17:00', '2018-09-03', 1, 'Circulos'),
(43, 'My time', 7, '02:47:00', '2022-04-02', 1, 'Kikuo'),
(44, 'Dune', 7, '03:59:00', '2019-08-20', 1, 'Miku en el desierto'),
(45, 'Amatsu Kitsune', 8, '04:18:00', '2012-05-30', 1, 'Kagamine Rin Kitsune'),
(46, '39 Music', 8, '04:26:00', '2020-07-28', 1, 'Miku cute'),
(47, 'Reloaded', 7, '03:27:00', '2018-07-31', 1, 'Deco*27'),
(48, 'Tell your World', 8, '04:15:00', '2019-09-20', 1, 'Miku con flores'),
(49, 'Rotten Girl', 7, '03:26:00', '2025-02-10', 1, 'Miku loquita'),
(50, 'Rabbit Hole', 7, '02:39:00', '2024-04-20', 1, 'Miku en la cama');

-- --------------------------------------------------------

--
-- Table structure for table `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `cancion_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 3, 3),
(4, 5, 1),
(5, 4, 4),
(7, 6, 18);

-- --------------------------------------------------------

--
-- Table structure for table `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `generos`
--

INSERT INTO `generos` (`id`, `nombre`, `descripcion`) VALUES
(2, 'Rock', 'Musica para apestosos'),
(3, 'Corridos Tumbados', 'Musica para Sabios'),
(4, 'Bachata', 'Musica para bailar en fiestas'),
(5, 'Dolido', 'Para llorar'),
(6, 'Pop', 'Tailor Swift'),
(7, 'JRock', 'Rock pero japones'),
(8, 'JPop', 'Pop pero japones'),
(9, 'Pop', 'Temas famosos y ritmos famosos del momento'),
(10, 'IndiePop', 'Indie pero pop\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `membresias`
--

INSERT INTO `membresias` (`id`, `tipo`, `precio`) VALUES
(1, 'PREMIUM', 300),
(2, 'PREMIUM', 300),
(3, 'EXCLUSIVO', 999),
(4, 'CHAD', 2000),
(5, 'SIGMA', 5999),
(6, 'RUBI', 99);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'Favoritas', 6, '18:45:20', 121, 'Canciones favoritas', 1),
(2, 'Jpop tumbados', 4, '01:45:20', 21, 'Tumbados\r\n', 1),
(3, 'Vocaloid', 3, '02:48:32', 32, 'Diferentes canciones de Vocaloid', 1),
(4, 'Dolido', 5, '10:42:02', 81, 'Canciones para corazones rotos', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(99) NOT NULL,
  `correo` varchar(99) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Horus', 'elproXD@gmail.com', 4),
(2, 'Frida Sofia', 'frida1234@gmail.com', 5),
(3, 'Rubi Zepeda', 'RubiZepedita@gmail.com', 6),
(4, 'Wong', 'apestoso12@gmail.com', 1),
(5, 'Sergio', 'unapeersona@gmail.com', 5),
(6, 'Suwr0', 'Papasconquesowo@gmail.com', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indexes for table `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indexes for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `artistascanciones`
--
ALTER TABLE `artistascanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD CONSTRAINT `artistascanciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistascanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Constraints for table `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Constraints for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
