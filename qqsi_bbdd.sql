-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2024 a las 21:58:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `qqsi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Gastronomia'),
(2, 'Historia'),
(3, 'Lugares'),
(4, 'Personajes'),
(5, 'Juegos Tradicionales'),
(6, 'Matemáticas'),
(7, 'Biología'),
(8, 'Deportes'),
(9, 'Geografía'),
(10, 'Arte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `opcion1` varchar(120) NOT NULL,
  `opcion2` varchar(120) NOT NULL,
  `opcion3` varchar(120) NOT NULL,
  `opcion4` varchar(120) NOT NULL,
  `respuesta` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pregunta`, `id_categoria`, `nivel`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `respuesta`) VALUES
(1, 2, 1, '¿Cuál fue la civilización que construyó las pirámides de Giza en Egipto?', 'Griegos', 'Romanos', 'Egipcios', 'Persas', 'Egipcios'),
(2, 2, 1, '¿Qué evento marcó el final de la Edad Media y el comienzo de la Edad Moderna en Europa?', 'La Revolución Industrial', 'La Caída del Imperio Romano', 'El Renacimiento', 'La Caída de Constantinopla', 'La Caída de Constantinopla'),
(3, 2, 1, '¿Quién fue el líder principal de la Revolución Francesa?', 'Napoleón Bonaparte', 'Luis XVI', 'Robespierre', 'María Antonieta', 'Robespierre'),
(4, 2, 1, '¿Cuál fue el país que se rindió después de que Estados Unidos lanzara bombas atómicas sobre Hiroshima y Nagasaki?', 'Alemania', 'Italia', 'Japón', 'Rusia', 'Japón'),
(5, 2, 1, '¿Cuál fue el nombre del muro que dividía Berlín en dos partes durante la Guerra Fría?', 'Muro de la Libertad', 'Muro de la Paz', 'Muro de Berlín', 'Muro de la Democracia', 'Muro de Berlín'),
(6, 2, 1, '¿Cuál fue la capital del Imperio Romano?', 'Atenas', 'Roma', 'Cartago', 'Alejandría', 'Roma'),
(7, 2, 1, '¿Qué líder normando conquistó Inglaterra en 1066?', 'Guillermo el Conquistador', 'Carlomagno', 'Ricardo Corazón de León', 'Harold Godwinson', 'Guillermo el Conquistador'),
(8, 2, 1, '¿En qué siglo comenzó la Revolución Industrial?', 'Siglo XV', 'Siglo XVII', 'Siglo XVIII', 'Siglo XIX', 'Siglo XVIII'),
(9, 2, 1, '¿Cuál fue la capital del Imperio Otomano?', 'Bagdad', 'Estambul', 'Ankara', 'Damasco', 'Estambul'),
(10, 2, 1, '¿Quién pintó la Mona Lisa?', 'Leonardo da Vinci', 'Miguel Ángel', 'Rafael', 'Donatello', 'Leonardo da Vinci'),
(11, 2, 2, '¿Cuál fue la batalla final que llevó a la independencia de Estados Unidos?', 'Batalla de Yorktown', 'Batalla de Bunker Hill', 'Batalla de Saratoga', 'Batalla de Lexington y Concord', 'Batalla de Yorktown'),
(12, 2, 2, '¿Quién lideró el bando nacionalista durante la Guerra Civil Española?', 'Francisco Franco', 'Benito Mussolini', 'Adolf Hitler', 'José Antonio Primo de Rivera', 'Francisco Franco'),
(13, 2, 2, '¿Qué líder comunista encabezó la Revolución Rusa de 1917?', 'Lenin', 'Stalin', 'Trotsky', 'Kerensky', 'Lenin'),
(14, 2, 2, '¿Quién fue el líder principal del movimiento de independencia de la India?', 'Mahatma Gandhi', 'Jawaharlal Nehru', 'Subhas Chandra Bose', 'Muhammad Ali Jinnah', 'Mahatma Gandhi'),
(15, 2, 2, '¿Quién fue el líder revolucionario que encabezó la lucha por la justicia agraria en México?', 'Emiliano Zapata', 'Pancho Villa', 'Porfirio Díaz', 'Francisco Madero', 'Emiliano Zapata'),
(16, 2, 2, '¿Cuál fue el conflicto principal entre Francia e Inglaterra durante este período?', 'Disputa territorial en Europa', 'Conflicto religioso', 'Lucha por el control del comercio en el Mediterráneo', 'Reivindicaciones sobre el trono francés', 'Reivindicaciones sobre el trono francés'),
(17, 2, 2, '¿Quién fue el líder que unificó las tribus mongoles y estableció el Imperio Mongol?', 'Genghis Khan', 'Kublai Khan', 'Tamerlán', 'Ogodei Khan', 'Genghis Khan'),
(18, 2, 2, '¿Qué invento revolucionó la producción textil durante la Revolución Industrial?', 'Telar mecánico', 'Máquina de vapor', 'Motor de combustión interna', 'Telégrafo', 'Telar mecánico'),
(19, 2, 2, '¿Qué país fue el primero en declarar la guerra durante la Primera Guerra Mundial?', 'Alemania', 'Austria-Hungría', 'Rusia', 'Serbia', 'Austria-Hungría'),
(20, 2, 2, '¿Qué líder comunista proclamó la fundación de la República Popular China en 1949?', 'Mao Zedong', 'Chiang Kai-shek', 'Sun Yat-sen', 'Zhou Enlai', 'Mao Zedong'),
(21, 2, 3, '¿Qué emperador romano dividió el Imperio en dos partes, el Imperio Romano de Occidente y el Imperio Romano de Oriente?', 'Constantino', 'Diocleciano', 'Julio César', 'Augusto', 'Diocleciano'),
(22, 2, 3, '¿Qué evento marcó el comienzo de la Revolución Francesa en 1789?', 'La ejecución de Luis XVI', 'La Toma de la Bastilla', 'La Convención Nacional', 'El Directorio', 'La Toma de la Bastilla'),
(23, 2, 3, '¿Qué tratado puso fin a la Guerra de los Treinta Años en 1648?', 'Tratado de Versalles', 'Tratado de Westfalia', 'Tratado de Utrecht', 'Tratado de Ratisbona', 'Tratado de Westfalia'),
(24, 2, 3, '¿Cuál fue el primer estado en separarse de la Unión en 1860?', 'Carolina del Norte', 'Georgia', 'Carolina del Sur', 'Virginia', 'Carolina del Sur'),
(25, 2, 3, '¿Qué rey espartano lideró a los 300 espartanos en la batalla de las Termópilas?', 'Leónidas', 'Alejandro Magno', 'Filipo II', 'Pericles', 'Leónidas'),
(26, 2, 3, '¿Qué industria fue la primera en experimentar la industrialización durante la Revolución Industrial en Gran Bretaña?', 'Textil', 'Metalurgia', 'Minería', 'Agricultura', 'Textil'),
(27, 2, 3, '¿Cuál fue la capital del Imperio Bizantino?', 'Atenas', 'Constantinopla', 'Roma', 'Alejandría', 'Constantinopla'),
(28, 2, 1, '¿Cuál fue la causa principal de la caída del Imperio Romano de Occidente?', 'Invasiones bárbaras', 'Corrupción interna', 'Pérdida de territorios', 'Plagas', 'Invasiones bárbaras'),
(29, 2, 1, '¿Quién fue el primer emperador romano?', 'Julio César', 'Cicerón', 'Augusto', 'Nerón', 'Augusto'),
(30, 2, 1, '¿Cuál fue la principal consecuencia de la Paz de Westfalia en 1648?', 'Fin de la Guerra de los Treinta Años', 'Inicio de la Revolución Industrial', 'Caída del Imperio Otomano', 'Reforma religiosa en Europa', 'Fin de la Guerra de los Treinta Años'),
(31, 2, 1, '¿Qué evento marcó el inicio de la Revolución Industrial en Gran Bretaña?', 'Invención de la máquina de vapor', 'Descubrimiento de América', 'Construcción de ferrocarriles', 'Revolución Francesa', 'Invención de la máquina de vapor'),
(32, 2, 1, '¿Cuál fue el nombre del sistema de gobierno en la antigua Grecia, donde el poder era ejercido por todos los ciudadanos varones?', 'Democracia', 'Monarquía', 'Oligarquía', 'Tiranía', 'Democracia'),
(33, 2, 1, '¿Cuál fue la dinastía que gobernó China durante el período de mayor esplendor cultural y económico en la antigüedad?', 'Dinastía Han', 'Dinastía Zhou', 'Dinastía Qin', 'Dinastía Tang', 'Dinastía Han'),
(34, 2, 1, '¿Qué evento histórico ocurrió en el año 1066 en Inglaterra?', 'La Batalla de Hastings', 'La firma de la Carta Magna', 'La coronación de Guillermo el Conquistador', 'La Magna Carta', 'La Batalla de Hastings'),
(35, 2, 1, '¿Cuál fue el nombre del primer asentamiento permanente de colonos ingleses en América del Norte?', 'Jamestown', 'Plymouth', 'Roanoke', 'Salem', 'Jamestown'),
(36, 2, 1, '¿Qué líder militar se autoproclamó emperador de Francia en 1804?', 'Napoleón Bonaparte', 'Robespierre', 'Luis XVI', 'Voltaire', 'Napoleón Bonaparte'),
(37, 2, 1, '¿Cuál fue la principal motivación detrás de la expedición de Magallanes-Elcano en 1519?', 'Buscar una ruta occidental hacia las Indias', 'Encontrar una ruta hacia Asia por el norte', 'Explorar la costa africana en busca de oro', 'Buscar nuevas tierras para colonizar', 'Buscar una ruta occidental hacia las Indias'),
(38, 2, 2, '¿Quién fue el líder militar que unificó a los pueblos árabes y fundó el Imperio Árabe en el siglo VII?', 'Mahoma', 'Abu Bakr', 'Alí', 'Saladino', 'Abu Bakr'),
(39, 2, 2, '¿Cuál fue el primer país en abolir la esclavitud en el mundo?', 'Haití', 'Estados Unidos', 'Reino Unido', 'Francia', 'Haití'),
(40, 2, 2, '¿Quién fue el autor del famoso tratado \"El Príncipe\", que trata sobre estrategias políticas y de gobierno?', 'Maquiavelo', 'Aristóteles', 'Platón', 'Sócrates', 'Maquiavelo'),
(41, 2, 2, '¿Cuál fue el nombre del movimiento artístico y cultural que surgió en Harlem, Nueva York, en la década de 1920?', 'Renacimiento', 'Movimiento de Derechos Civiles', 'La Gran Depresión', 'Renacimiento de Harlem', 'Renacimiento de Harlem'),
(42, 2, 2, '¿Cuál fue la causa principal de la Revolución Gloriosa en Inglaterra en 1688?', 'Derrocamiento de Jacobo II', 'Guerra Civil', 'Invasión de los vikingos', 'Rebelión campesina', 'Derrocamiento de Jacobo II'),
(43, 2, 2, '¿Cuál fue el nombre del acuerdo que puso fin a la Guerra de Secesión en Estados Unidos en 1865?', 'Proclamación de Emancipación', 'Tratado de Versalles', 'Enmienda 13', 'Tratado de Apomattox', 'Tratado de Apomattox'),
(44, 2, 2, '¿Cuál fue el evento que marcó el inicio de la conquista española en América?', 'Llegada de Cristóbal Colón en 1492', 'Tratado de Tordesillas', 'Invasión de los aztecas', 'Construcción de fortalezas en el Caribe', 'Llegada de Cristóbal Colón en 1492'),
(45, 2, 3, '¿Qué líder militar lideró la independencia de México del dominio español?', 'Miguel Hidalgo', 'José María Morelos', 'Agustín de Iturbide', 'Benito Juárez', 'Miguel Hidalgo'),
(46, 2, 3, '¿Cuál fue la batalla que marcó el inicio de la Guerra Fría entre Estados Unidos y la Unión Soviética?', 'Batalla de Stalingrado', 'Batalla de Berlín', 'Batalla de Normandía', 'Conferencia de Yalta', 'Batalla de Berlín'),
(47, 2, 3, '¿Quién fue el líder del movimiento de independencia de Sudáfrica y luchó contra el apartheid?', 'Nelson Mandela', 'Oliver Tambo', 'Steve Biko', 'Desmond Tutu', 'Nelson Mandela'),
(48, 6, 1, '¿Cuál es la fórmula para calcular el área de un círculo?', 'πr^2', '2πr', 'π2r', '1/2πr', 'πr^2'),
(49, 6, 1, '¿Cuál es el resultado de 3+52?', '10', '13', '16', '11', '13'),
(50, 6, 1, '¿Cuál es el resultado de 4^3?', '12', '64', '16', '8', '64'),
(51, 6, 1, '¿Cuál es el valor de π (pi)?', '3.14159', '2.71828', '1.61803', '1.73205', '3.14159'),
(52, 6, 1, '¿Cuál es la fórmula para calcular el volumen de una esfera?', '4/3πr^3', 'πr^2', '2/3πr^3', '1/2πr^2', '4/3πr^3'),
(53, 6, 1, '¿Cuál es la raíz cuadrada de 144?', '12', '14', '16', '10', '12'),
(54, 6, 1, '¿Cuánto es la suma de los ángulos internos de un triángulo?', '180', '90', '270', '360', '180'),
(55, 6, 1, '¿Cuál es el resultado de 15 dividido por 3?', '3', '5', '7', '9', '5'),
(56, 6, 1, '¿Cuál es el resultado de 2^5?', '32', '16', '64', '8', '32'),
(57, 6, 1, '¿Cuál es la fórmula para calcular el área de un triángulo?', '1/2bh', 'bh', 'b^2', '1/3bh^2', '1/2bh'),
(58, 6, 1, '¿Cuál es el resultado de 7+43?', '21', '19', '15', '25', '19'),
(59, 6, 1, '¿Cuál es el resultado de 5^2?', '20', '25', '0', '15', '25'),
(60, 6, 1, '¿Cuál es el valor de √25?', '5', '6', '4', '3', '5'),
(61, 6, 1, '¿Cuál es el resultado de 9*(6-4)?', '15', '18', '12', '9', '12'),
(62, 6, 1, '¿Cuánto es la suma de los ángulos internos de un pentágono?', '540', '360', '180', '720', '540'),
(63, 6, 1, '¿Cuál es el resultado de 1/4 + 1/3?', '2/7', '3/8', '5/12', '7/12', '7/12'),
(64, 6, 1, '¿Cuál es el resultado de 2^4?', '16', '8', '32', '64', '16'),
(65, 6, 1, '¿Cuál es el resultado de 36 dividido por 6?', '4', '6', '9', '12', '6'),
(66, 6, 1, '¿Cuál es el resultado de 3+24?', '20', '11', '10', '15', '11'),
(67, 6, 1, '¿Cuál es el resultado de 7^3?', '343', '240', '412', '506', '343'),
(68, 6, 2, '¿Cuál es el resultado de 15(8-3)?', '45', '60', '75', '90', '75'),
(69, 6, 2, '¿Cuál es el resultado de 5/6+2/3?', '1', '3/2', '4/3', '2/3', '3/2'),
(70, 6, 2, '¿Cuál es el valor de √81?', '9', '8', '7', '6', '9'),
(71, 6, 2, '¿Cuál es el resultado de 8^2?', '56', '64', '72', '80', '64'),
(72, 6, 2, '¿Cuál es el resultado de 49 dividido por 7?', '5', '6', '7', '8', '7'),
(73, 6, 2, '¿Cuál es el resultado de 3/5+1/2?', '11/10', '4/5', '9/10', '3/4', '11/10'),
(74, 6, 2, '¿Cuál es el resultado de 12*(5-2)?', '30', '36', '24', '18', '36'),
(75, 6, 2, '¿Cuál es el resultado de 6+34?', '24', '18', '15', '14', '18'),
(76, 6, 2, '¿Cuál es el resultado de 4^4?', '256', '64', '128', '512', '256'),
(77, 6, 2, '¿Cuánto es la suma de los ángulos internos de un hexágono?', '540', '720', '360', '180', '720'),
(78, 6, 2, '¿Cuál es el resultado de 6(4+2)?', '36', '24', '18', '12', '36'),
(79, 6, 2, '¿Cuál es el resultado de 2/3+1/4?', '3/7', '5/12', '6/7', '7/12', '11/12'),
(80, 6, 2, '¿Cuál es la fórmula para calcular el volumen de un cilindro?', 'πr^2h', '2πr', 'πrh', '1/3πr^2h', 'πr^2h'),
(81, 6, 2, '¿Cuál es la raíz cuadrada de 169?', '13', '14', '15', '16', '13'),
(82, 6, 2, '¿Cuánto es la suma de los ángulos internos de un cuadrilátero?', '360', '90', '180', '270', '360'),
(83, 6, 2, '¿Cuál es el resultado de 14^2?', '196', '121', '225', '144', '196'),
(84, 6, 2, '¿Cuál es el resultado de 125 dividido por 5?', '25', '30', '15', '20', '25'),
(85, 6, 2, '¿Cuál es el resultado de 3/4 + 2/3?', '17/6', '11/6', '15/12', '17/12', '17/12'),
(86, 6, 2, '¿Cuál es la fórmula para calcular el área de un rectángulo?', 'bh', 'b+h', '2b+2h', 'b^2+h^2', 'bh'),
(87, 6, 2, '¿Cuál es el resultado de 81 dividido por 9?', '3', '9', '12', '15', '9'),
(88, 6, 3, '¿Cuál es el resultado de 3^3*(8-4)?', '108', '102', '98', '105', '108'),
(89, 6, 3, '¿Cuál es el resultado de 9*(7-4)?', '18', '21', '24', '27', '27'),
(90, 6, 3, '¿Cuál es el resultado de 7/8+3/4?', '5/4', '11/8', '13/8', '15/8', '13/8'),
(91, 6, 3, '¿Cuál es el valor de √144?', '12', '10', '14', '16', '12'),
(92, 6, 3, '¿Cuál es el resultado de 10^2?', '100', '1000', '10000', '100000', '100'),
(93, 6, 3, '¿Cuál es el resultado de 5/6+3/4?', '7/6', '9/6', '19/12', '17/12', '19/12'),
(94, 6, 3, '¿Cuál es el resultado de 14*(6-3)?', '0', '36', '42', '48', '42'),
(95, 6, 3, '¿Cuál es el resultado de 8+3*12?', '41', '43', '40', '42', '44'),
(96, 6, 3, '¿Cuál es el resultado de 5^5?', '125', '625', '3125', '15625', '3125'),
(97, 6, 3, '¿Cuánto es la suma de los ángulos internos de un heptágono?', '900', '1080', '1260', '1440', '1080'),
(98, 8, 1, '¿Cuál es la distancia más larga en una carrera de atletismo en pista?', '100 metros', '400 metros', '1500 metros', '10,000 metros', '10,000 metros'),
(99, 8, 1, '¿Cuántas entradas tiene un juego de béisbol profesional?', '7', '8', '9', '10', '9'),
(100, 8, 1, '¿Cuál es el nombre de la bola utilizada en el squash?', 'Bola amarilla', 'Bola blanca', 'Bola negra', 'Bola azul', 'Bola amarilla'),
(101, 8, 1, '¿Cuál es el movimiento inicial que puede hacer un peón en ajedrez?', 'Avanzar dos casillas', 'Avanzar una casilla', 'Retroceder una casilla', 'Mover en diagonal', 'Avanzar dos casillas'),
(102, 8, 1, '¿Cuántos jugadores hay en un equipo de voleibol en la cancha al mismo tiempo?', '4', '5', '6', '7', '6'),
(103, 8, 1, '¿Qué peso en kilogramos tiene la categoría de peso pesado en el boxeo masculino?', 'Más de 91 kg', '81-91 kg', '69-81 kg', 'Menos de 69 kg', 'Más de 91 kg'),
(104, 8, 1, '¿Qué país ha dominado históricamente el patinaje artístico en los Juegos Olímpicos?', 'Estados Unidos', 'Rusia', 'Canadá', 'Japón', 'Rusia'),
(105, 8, 1, '¿Cuál es el número máximo de jugadores en un equipo de polo en el campo al mismo tiempo?', '4', '6', '8', '10', '4'),
(106, 8, 1, '¿Cuál es la puntuación máxima posible en una ronda de tiro con arco?', '100', '200', '300', '400', '300'),
(107, 8, 1, '¿Cuántos jugadores hay en un equipo de fútbol sala en la cancha al mismo tiempo?', '4', '5', '6', '7', '5'),
(108, 8, 1, '¿Cuál es la distancia oficial de una carrera de 100 metros en atletismo?', '100 metros', '200 metros', '400 metros', '800 metros', '100 metros'),
(109, 8, 1, '¿Cuántos jugadores hay en un equipo de polo acuático en la piscina al mismo tiempo?', '5', '6', '7', '8', '7'),
(110, 8, 1, '¿A qué altura aproximada se realiza el salto en paracaídas en una competición de paracaidismo deportivo?', '3000 metros', '5000 metros', '7000 metros', '10000 metros', '3000 metros'),
(111, 8, 1, '¿Qué equipo ha dominado el surf de remo en los últimos años?', 'Hawái', 'California', 'Australia', 'Brasil', 'Hawái'),
(112, 8, 1, '¿Qué arma se utiliza en la modalidad de esgrima conocida como \"sable\"?', 'Espada', 'Florete', 'Sable', 'Hacha', 'Sable'),
(113, 8, 1, '¿Cuál es el nombre del trofeo otorgado al ganador del Masters de Augusta?', 'Chaqueta Verde', 'Copa FedEx', 'Trofeo Claret Jug', 'Wanamaker Trophy', 'Chaqueta Verde'),
(114, 8, 1, '¿Qué país ha dominado históricamente el taekwondo en los Juegos Olímpicos?', 'Corea del Sur', 'China', 'Estados Unidos', 'Rusia', 'Corea del Sur'),
(115, 8, 1, '¿Cuál es el nombre del piloto de Fórmula 1 con más campeonatos mundiales en la historia?', 'Lewis Hamilton', 'Michael Schumacher', 'Juan Manuel Fangio', 'Ayrton Senna', 'Michael Schumacher'),
(116, 8, 1, '¿A qué distancia se encuentra la diana en la competición olímpica de arquería?', '20 metros', '30 metros', '50 metros', '70 metros', '70 metros'),
(117, 8, 2, '¿Quién ganó la Copa Mundial en el año 2023?', 'Ecuador', 'España', 'Argentina', 'México', 'Argentina'),
(118, 8, 2, '¿Cuál equipo de la NBA ha ganado más campeonatos en la historia?', 'Los Angeles Lakers', 'Chicago Bulls', 'Boston Celtics', 'Golden State Warriors', 'Boston Celtics'),
(119, 8, 2, '¿Quién tiene el récord de más títulos de Grand Slam en la historia del tenis masculino?', 'Roger Federer', 'Rafael Nadal', 'Novak Djokovic', 'Pete Sampras', 'Rafael Nadal'),
(120, 8, 2, '¿Cuántas medallas de oro ganó Michael Phelps en los Juegos Olímpicos de Beijing 2008?', '6', '8', '10', '12', '8'),
(121, 8, 2, '¿Quién es considerado el mariscal de campo más exitoso en la historia de la NFL?', 'Tom Brady', 'Joe Montana', 'Peyton Manning', 'Brett Favre', 'Tom Brady'),
(122, 8, 2, '¿Cuál es el país que ha ganado más veces la Copa del Mundo de Rugby?', 'Nueva Zelanda', 'Australia', 'Sudáfrica', 'Inglaterra', 'Nueva Zelanda'),
(123, 8, 2, '¿Qué país ganó la medalla de oro en hockey sobre hielo masculino en los Juegos Olímpicos de Sochi 2014?', 'Canadá', 'Suecia', 'Rusia', 'Estados Unidos', 'Canadá'),
(124, 8, 2, '¿Qué país ha dominado históricamente la gimnasia artística masculina en los Juegos Olímpicos?', 'China', 'Estados Unidos', 'Japón', 'Rusia', 'Japón'),
(125, 8, 2, '¿Qué país es conocido por su dominio en la lucha grecorromana?', 'Estados Unidos', 'Rusia', 'Irán', 'Cuba', 'Rusia'),
(126, 8, 2, '¿En qué país se originó la halterofilia como deporte moderno?', 'Grecia', 'China', 'Rusia', 'Egipto', 'Grecia'),
(127, 8, 2, '¿Cuál es el nombre del trofeo otorgado al ganador de la Americas Cup?', 'Copa América', 'Copa del Mundo', 'Copa del Rey', 'Copa del Mundo de Vela', 'Copa América'),
(128, 8, 2, '¿Qué país dominó el skateboarding en los Juegos Olímpicos de Tokio 2020?', 'Estados Unidos', 'Brasil', 'Japón', 'Australia', 'Estados Unidos'),
(129, 8, 2, '¿Qué disciplinas incluye un triatlón estándar?', 'Natación, ciclismo, carrera a pie', 'Ciclismo, patinaje, carrera a pie', 'Natación, escalada, carrera a pie', 'Natación, esquí, carrera a pie', 'Natación, ciclismo, carrera a pie'),
(130, 8, 2, '¿En qué año se incluyó el polo acuático como deporte olímpico por primera vez?', '1900', '1912', '1924', '1936', '1900'),
(131, 8, 3, '¿Qué circuito es conocido como \"La Catedral\" del motociclismo?', 'Circuito de Silverstone', 'Circuito de Phillip Island', 'Circuito de Assen', 'Circuito de Misano', 'Circuito de Assen'),
(132, 8, 3, '¿Cuál es el nombre de la carrera de caballos más famosa en el Reino Unido?', 'Grand National', 'Kentucky Derby', 'Melbourne Cup', 'Prix del Arc de Triomphe', 'Grand National'),
(133, 8, 3, '¿Cuál es el evento principal en las competiciones de esquí alpino?', 'Descenso', 'Slalom', 'Super-G', 'Combinada', 'Descenso'),
(134, 8, 3, '¿En qué país se originó el sumo?', 'Japón', 'China', 'Mongolia', 'Corea del Sur', 'Japón'),
(135, 8, 3, '¿Cuál es el nombre del piloto más exitoso en la historia del MotoGP?', 'Valentino Rossi', 'Marc Márquez', 'Giacomo Agostini', 'Ángel Nieto', 'Giacomo Agostini'),
(136, 8, 3, '¿Cuál es el nombre de la competición más prestigiosa en el remo a nivel mundial?', 'Regata de Henley', 'Campeonato Mundial de Remo', 'Copa del Mundo de Remo', 'Juegos Olímpicos', 'Regata de Henley'),
(137, 8, 3, '¿En qué país se originaron los Juegos Olímpicos modernos?', 'Grecia', 'Estados Unidos', 'Francia', 'Alemania', 'Grecia'),
(138, 10, 1, '¿Qué escultura representa a un hombre desnudo sosteniendo una espada?', 'El David', 'La Piedad', 'El Pensador', 'El Discóbolo', 'El David'),
(139, 10, 1, '¿Quién compuso la Novena Sinfonía?', 'Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Frédéric Chopin', 'Ludwig van Beethoven'),
(140, 10, 1, '¿Quién escribió \"Cien años de soledad\"?', 'Gabriel García Márquez', 'Mario Vargas Llosa', 'Julio Cortázar', 'Pablo Neruda', 'Gabriel García Márquez'),
(141, 10, 1, '¿Qué edificio se considera el símbolo de la antigua Roma?', 'El Coliseo', 'El Panteón', 'El Arco de Constantino', 'El Foro Romano', 'El Coliseo'),
(142, 10, 1, '¿Quién dirigió la película \"El Padrino\"?', 'Francis Ford Coppola', 'Martin Scorsese', 'Steven Spielberg', 'Quentin Tarantino', 'Francis Ford Coppola'),
(143, 10, 1, '¿Quién tomó la famosa fotografía \"Migrant Mother\"?', 'Dorothea Lange', 'Ansel Adams', 'Henri Cartier-Bresson', 'Annie Leibovitz', ' Dorothea Lange'),
(144, 10, 1, '¿Cuál es el baile nacional de Argentina?', 'El tango', 'La salsa', 'El flamenco', 'El vals', 'El tango'),
(145, 10, 1, '¿Quién escribió la obra \"Romeo y Julieta\"?', 'William Shakespeare', 'Federico García Lorca', 'Anton Chejov', 'Tennessee Williams', ' William Shakespeare'),
(146, 10, 1, '¿Qué artista creó la obra \"El hombre invisible\"?', 'Liu Bolin', 'Banksy', 'Damien Hirst', 'Yayoi Kusama', 'Liu Bolin'),
(147, 10, 1, '¿Quién pintó \"La noche estrellada\"?', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Claude Monet', 'Vincent van Gogh'),
(148, 10, 1, '¿Quién fue el vocalista principal de la banda de rock Queen?', 'Freddie Mercury', 'Mick Jagger', 'David Bowie', 'Elton John', 'Freddie Mercury'),
(149, 10, 1, '¿Quién escribió \"El principito\"?', 'Antoine de Saint-Exupéry', 'J.K. Rowling', 'Gabriel García Márquez', 'Jane Austen', 'Antoine de Saint-Exupéry'),
(150, 10, 1, '¿Qué famoso arquitecto diseñó la Torre Eiffel en París?', 'Gustave Eiffel', 'Antoni Gaudí', 'Frank Lloyd Wright', 'Le Corbusier', 'Gustave Eiffel'),
(151, 10, 1, '¿Quién dirigió la trilogía \"El Señor de los Anillos\"?', 'Peter Jackson', 'Steven Spielberg', 'George Lucas', 'Christopher Nolan', 'Peter Jackson'),
(152, 10, 1, '¿Qué tipo de cámara es conocida por su facilidad de uso y tamaño compacto?', 'Cámara de bolsillo', 'Cámara réflex', 'Cámara de gran formato', 'Cámara de acción', 'Cámara de bolsillo'),
(153, 10, 1, '¿Qué estilo de danza se originó en Brasil y se caracteriza por movimientos sensuales y rápidos?', 'Samba', 'Flamenco', 'Ballet', ' Tango', ' Samba'),
(154, 10, 1, '¿Quién escribió la obra \"Hamlet\"?', 'William Shakespeare', 'Henrik Ibsen', 'Anton Chejov', 'Samuel Beckett', 'William Shakespeare'),
(155, 10, 1, '¿Qué artista creó la famosa serie de pinturas \"Los Girasoles\"?', 'Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', 'Salvador Dalí', 'Vincent van Gogh'),
(156, 10, 1, '¿Quién pintó \"La persistencia de la memoria\", conocida comúnmente como \"Los relojes blandos\"?', 'Salvador Dalí', 'Pablo Picasso', 'Vincent van Gogh', 'Claude Monet', 'Salvador Dalí'),
(157, 10, 2, '¿Cuál es el estilo de pintura caracterizado por pinceladas visibles y colores vibrantes?', 'Impresionismo', 'Cubismo', 'Surrealismo', ' Expresionismo', 'Expresionismo'),
(158, 10, 2, '¿Quién es el autor de la escultura \"El Pensador\"?', 'Auguste Rodin', 'Michelangelo Buonarroti', 'Donatello', 'Antonio Canova', 'Auguste Rodin'),
(159, 10, 2, '¿Qué compositor escribió la ópera \"La Traviata\"?', 'Giuseppe Verdi', 'Richard Wagner', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', ' Giuseppe Verdi'),
(160, 10, 2, '¿Quién escribió \"Moby Dick\"?', 'Herman Melville', 'Fyodor Dostoevsky', 'Charles Dickens', 'Jane Austen', 'Herman Melville'),
(161, 10, 2, '¿Qué famoso arquitecto diseñó la Casa Batlló en Barcelona?', 'Antoni Gaudí', 'Frank Lloyd Wright', 'Le Corbusier', 'Zaha Hadid', 'Antoni Gaudí'),
(162, 10, 2, '¿Cuál de las siguientes películas no fue dirigida por Alfred Hitchcock?', '\"Psicosis\"', '\"Casablanca\"', '\"Los pájaros\"', '\"La ventana indiscreta\"', '\"Casablanca\"'),
(163, 10, 2, '¿Qué tipo de cámara es conocida por su capacidad de capturar imágenes en movimiento a alta velocidad?', 'Cámara de video', 'Cámara réflex', 'Cámara de formato medio', 'Cámara de cine', 'Cámara de cine'),
(164, 10, 2, '¿Qué estilo de danza es conocido por sus movimientos suaves y fluidos?', 'Ballet', 'Hip-hop', 'Breakdance', 'Tap', 'Ballet'),
(165, 10, 2, '¿Qué dramaturgo escribió la obra \"Esperando a Godot\"?', 'Samuel Beckett', 'Arthur Miller', 'Tennessee Williams', 'Harold Pinter', 'Samuel Beckett'),
(166, 10, 2, '¿Quién creó la famosa serie de pinturas \"Campbells Soup Cans\"?', 'Andy Warhol', 'Jackson Pollock', 'Mark Rothko', 'Salvador Dalí', 'Andy Warhol'),
(167, 10, 2, '¿Qué movimiento artístico se caracteriza por la representación de escenas cotidianas y la captura de la luz natural?', 'Impresionismo', ' Cubismo', 'Expresionismo', 'Surrealismo', 'Impresionismo'),
(168, 10, 2, '¿Cuál de estas obras de arte fue esculpida por Auguste Rodin?', '\"El Pensador\"', '\"La Piedad\"', '\"El David\"', '\"La Venus de Milo\"', '\"El Pensador\"'),
(169, 10, 2, '¿Quién compuso la ópera \"Carmen\"?', 'Georges Bizet', 'Giuseppe Verdi', 'Richard Wagner', 'Wolfgang Amadeus Mozart', 'Georges Bizet'),
(170, 10, 2, '¿Quién escribió \"El retrato de Dorian Gray\"?', 'Oscar Wilde', 'Charles Dickens', 'Jane Austen', 'Fyodor Dostoevsky', 'Oscar Wilde'),
(171, 10, 2, '¿Qué famoso arquitecto diseñó la Ópera de Sídney en Australia?', 'Jorn Utzon', 'Frank Gehry', 'Zaha Hadid', 'Rem Koolhaas', 'Jorn Utzon'),
(172, 10, 2, '¿Cuál de las siguientes películas fue dirigida por Quentin Tarantino?', '\"Pulp Fiction\"', '\"El Padrino\"', '\"La La Land\"', '\"Titanic\"', '\"Pulp Fiction\"'),
(173, 10, 2, '¿Qué técnica fotográfica se caracteriza por el uso de una lente de enfoque suave que crea un efecto de desenfoque?', 'Bokeh', 'Macro', ' Tilt-shift', 'Larga exposición', 'Bokeh'),
(174, 10, 2, '¿Qué estilo de danza se originó en España y se caracteriza por golpear los pies rítmicamente?', 'Flamenco', 'Ballet', 'Salsa', 'Hip-hop', ' Flamenco'),
(175, 10, 2, '¿Quién escribió la obra \"La gaviota\"?', 'Anton Chejov', 'Henrik Ibsen', 'Samuel Beckett', 'Tennessee Williams', 'Anton Chejov'),
(176, 10, 2, '¿Quién dirigió la película \"El club de la pelea\"?', 'David Fincher', 'Christopher Nolan', 'Quentin Tarantino', 'Martin Scorsese', 'David Fincher'),
(177, 10, 3, '¿Qué movimiento artístico se caracteriza por representar objetos de manera distorsionada y fragmentada?', 'Cubismo', 'Surrealismo', ' Expresionismo', 'Futurismo', 'Cubismo'),
(178, 10, 3, '¿Cuál de estas obras de arte fue esculpida por Miguel Ángel?', '\"El Pensador\"', '\"La Piedad\"', '\"El David\"', '\"La Venus de Milo\"', '\"El David\"'),
(179, 10, 3, '¿Quién compuso la ópera \"El anillo del nibelungo\"?', 'Richard Wagner', 'Giuseppe Verdi', 'Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', ' Richard Wagner'),
(180, 10, 3, '¿Quién escribió la novela experimental \"Finnegans Wake\"?', 'James Joyce', 'Virginia Woolf', 'Franz Kafka', 'Marcel Proust', 'James Joyce'),
(181, 10, 3, '¿Quién diseñó la Casa de la Cascada?', 'Frank Lloyd Wright', 'Le Corbusier', 'Ludwig Mies van der Rohe', 'Antoni Gaudí', 'Frank Lloyd Wright'),
(182, 10, 3, '¿Qué compositor alemán es conocido por sus \"Conciertos para piano y orquesta\"?', 'Ludwig van Beethoven', 'Johannes Brahms', 'Wolfgang Amadeus Mozart', 'Franz Liszt', 'Johannes Brahms'),
(183, 10, 3, '¿Cuál de las siguientes novelas fue escrita por Franz Kafka?', '\"Crimen y castigo\"', '\"El extranjero\"', '\"El proceso\"', '\"1984\"', '\"El proceso\"'),
(184, 10, 3, '¿Qué técnica fotográfica se utiliza para crear imágenes de larga exposición durante la noche que capturan la trayectoria de las estrellas en el cielo?', 'Fotografía de astrofotografía', 'Fotografía de paisajes', 'Fotografía de larga exposición', 'Fotografía de light painting', 'Fotografía de astrofotografía'),
(185, 10, 3, '¿Cuál de los siguientes estilos de danza es conocido por sus movimientos acrobáticos y su energía dinámica?', 'Breakdance', 'Ballet', ' Tango', 'Flamenco', 'Breakdance'),
(186, 7, 1, '¿Cuál es la unidad básica de la vida?', 'Célula', 'Átomo', 'Organelo', 'Tejido', 'Célula'),
(187, 7, 1, '¿Qué organelo es conocido como \"la central de energía de la célula\"?', 'Mitocondria', 'Lisosoma', 'Retículo endoplasmático', 'Núcleo', ' Mitocondria'),
(188, 7, 1, '¿Qué tipo de herencia genética implica la interacción de múltiples genes para determinar un rasgo?', 'Herencia poligénica', ' Herencia mendeliana', 'Herencia ligada al sexo', 'Herencia autosómica recesiva', 'Herencia poligénica'),
(189, 7, 1, '¿Qué tipo de relación simbiótica es beneficiosa para ambas especies involucradas?', 'Mutualismo', 'Parasitismo', ' Comensalismo', 'Competencia', 'Mutualismo'),
(190, 7, 1, '¿Cuál es el órgano más grande del cuerpo humano?', 'La piel', 'El hígado', 'El corazón', 'Los pulmones', 'La piel'),
(191, 7, 1, '¿Qué sistema del cuerpo humano es responsable de transportar nutrientes y oxígeno a las células y eliminar desechos metabólicos?', 'Sistema circulatorio', 'Sistema respiratorio', 'Sistema digestivo', 'Sistema excretor', 'Sistema circulatorio'),
(192, 7, 1, '¿Qué tipo de tejido en las plantas transporta agua y nutrientes desde las raíces hasta las hojas?', 'Xilema', 'Floema', 'Meristemo', ' Parénquima', 'Xilema'),
(193, 7, 1, '¿Qué tipo de vertebrado se caracteriza por tener piel seca y escamosa y respiración pulmonar?', 'Reptiles', 'Anfibios', 'Mamíferos', 'Aves', 'Reptiles'),
(194, 7, 1, '¿Quién propuso la teoría de la evolución por selección natural?', 'Charles Darwin', 'Gregor Mendel', 'Lamarck', 'Alfred Russel Wallace', 'Charles Darwin'),
(195, 7, 1, '¿Cuál de los siguientes microorganismos es un procariota?', 'Bacteria', 'Hongo', 'Protozoo', 'Alga', 'Bacteria'),
(196, 7, 1, '¿Cuál es el componente principal de la membrana plasmática de las células?', 'Fosfolípidos', 'Proteínas', 'Glucosa', 'Ácido nucleico', 'Fosfolípidos'),
(197, 7, 1, '¿Qué organelo es conocido como \"la central de procesamiento de la célula\"?', 'Núcleo', 'Ribosoma', 'Retículo endoplasmático', 'Aparato de Golgi', 'Aparato de Golgi'),
(198, 7, 1, '¿Qué tipo de herencia genética implica la expresión de un solo alelo dominante?', 'Herencia autosómica dominante', 'Herencia recesiva', 'Herencia ligada al sexo', 'Herencia poligénica', 'Herencia autosómica dominante'),
(199, 7, 1, '¿Qué tipo de ecosistema se caracteriza por temperaturas extremadamente bajas y la ausencia de vegetación?', 'Tundra', 'Desierto', 'Bosque tropical', 'Taiga', 'Tundra'),
(200, 7, 1, '¿Cuál es el órgano responsable de la respiración en los seres humanos?', 'Pulmones', 'Corazón', 'Riñones', 'Hígado', 'Pulmones'),
(201, 7, 1, '¿Qué sistema del cuerpo humano regula el equilibrio y la coordinación del movimiento?', 'Sistema nervioso', 'Sistema endocrino', 'Sistema musculoesquelético', 'Sistema linfático', 'Sistema nervioso'),
(202, 7, 1, '¿Qué estructura de las plantas es responsable de la absorción de agua y nutrientes del suelo?', 'Raíz', 'Tallo', 'Hoja', 'Flor', 'Raíz'),
(203, 7, 1, '¿Cuál de los siguientes animales es un mamífero marino?', 'Ballena', 'Tiburón', 'Estrella de mar', 'Pulpo', 'Ballena'),
(204, 7, 1, '¿Qué científico propuso la teoría de la selección natural junto con Charles Darwin?', 'Alfred Russel Wallace', 'Gregor Mendel', 'Jean-Baptiste Lamarck', 'Carl Linnaeus', 'Alfred Russel Wallace'),
(205, 7, 1, '¿Qué tipo de microorganismo es responsable de la producción de antibióticos como la penicilina?', 'Bacteria', 'Hongo', 'Virus', ' Protozoo', 'Hongo'),
(206, 7, 2, '¿Qué organelo es responsable de la síntesis de proteínas en la célula?', 'Ribosoma', 'Aparato de Golgi', 'Lisosoma', 'Mitocondria', ' Ribosoma'),
(207, 7, 2, '¿Cuál es la probabilidad de que una pareja heterocigota (Aa x Aa) tenga descendencia homocigota dominante (AA)?', '25%', '50%', '75%', ' 100%', '25%'),
(208, 7, 2, '¿Cuál de los siguientes niveles tróficos es el más alto en una cadena alimentaria?', 'Carnívoros terciarios', 'Herbívoros', ' Productores', 'Carnívoros primarios', 'Carnívoros terciarios'),
(209, 7, 2, '¿Cuál de las siguientes estructuras del ojo es responsable de enfocar la luz en la retina?', 'Cristalino', 'Córnea', 'Iris', 'Pupila', ' Cristalino'),
(210, 7, 2, '¿Qué hormona es conocida como la \"hormona del crecimiento\"?', 'Somatotropina', 'Insulina', 'Adrenalina', 'Testosterona', 'Somatotropina'),
(211, 7, 2, '¿Qué organelo es responsable de la fotosíntesis en las células vegetales?', 'Cloroplasto', 'Mitocondria', 'Lisosoma', 'Núcleo', ' Cloroplasto'),
(212, 7, 2, '¿Qué tipo de herencia genética muestra una mezcla fenotípica intermedia entre dos alelos heterocigotos?', 'Codominancia', 'Alelos múltiples', 'Herencia ligada al sexo', 'Herencia poligénica', 'Codominancia'),
(213, 7, 2, '¿Qué tipo de interacción ecológica ocurre cuando una especie se beneficia y la otra resulta perjudicada?', 'Parasitismo', ' Mutualismo', 'Comensalismo', 'Competencia', 'Parasitismo'),
(214, 7, 2, '¿Cuál es el nombre del hueso largo del brazo que se encuentra entre el hombro y el codo?', 'Húmero', 'Radio', 'Cúbito', 'Escápula', ' Húmero'),
(215, 7, 2, '¿Qué glándula del cuerpo humano regula el metabolismo y el crecimiento?', 'Tiroides', 'Páncreas', 'Suprarrenales', 'Hipófisis', 'Tiroides'),
(216, 7, 2, '¿Qué tipo de tejido en las plantas transporta los nutrientes producidos en las hojas hacia otras partes de la planta?', 'Floema', ' Xilema', 'Meristemo', 'Parénquima', 'Floema'),
(217, 7, 2, '¿Cuál de los siguientes animales es un artrópodo?', 'Araña', 'Caracol', 'Anémona de mar', 'Carpa', 'Araña'),
(218, 7, 2, '¿Qué proceso evolutivo describe el cambio gradual en la frecuencia de los alelos en una población a lo largo del tiempo?', 'Deriva genética', 'Selección natural', 'Flujo génico', 'Mutación', 'Selección natural'),
(219, 7, 2, '¿Cuál de las siguientes estructuras bacterianas proporciona resistencia a condiciones adversas como el calor y la desecación?', ' Espora bacteriana', 'Flagelo', 'Cápsula', 'Pared celular', 'Espora bacteriana'),
(220, 7, 2, '¿Qué molécula transporta la información genética desde el núcleo hasta el citoplasma en las células eucariotas?', 'ARN mensajero (ARNm)', 'ADN', 'ARN de transferencia (ARNt)', 'ARN ribosomal (ARNr)', 'ARN mensajero (ARNm)'),
(221, 7, 2, '¿Cuál es el término para una forma alternativa de un gen que se encuentra en el mismo locus en cromosomas homólogos y que puede dar lugar a diferentes rasgos?', 'Alelo', 'Cromosoma', 'Genotipo', 'Fenotipo', 'Alelo'),
(222, 7, 2, '¿Qué tipo de interacción ecológica se produce cuando dos especies compiten por el mismo recurso en un ecosistema?', 'Competencia', ' Mutualismo', 'Parasitismo', 'Comensalismo', 'Competencia'),
(223, 7, 2, '¿Cuál de los siguientes huesos forma la parte inferior del cráneo y protege el cerebro?', 'Occipital', 'Temporal', 'Frontal', 'Parietal', ' Occipital'),
(224, 7, 2, '¿Qué sistema del cuerpo humano regula el equilibrio de agua y sales en el organismo y elimina los desechos metabólicos?', 'Sistema excretor', 'Sistema circulatorio', 'Sistema nervioso', 'Sistema endocrino', 'Sistema excretor'),
(225, 7, 2, '¿Cuál es el proceso mediante el cual las plantas convierten la energía solar en energía química para alimentarse?', 'Fotosíntesis', ' Respiración celular', 'Transpiración', 'Polinización', 'Fotosíntesis'),
(226, 7, 3, '¿Qué proceso esencial para la fotosíntesis ocurre en la fase de la luz?', 'Fotofosforilación', 'Fijación de carbono', 'Reducción del NADP+', 'Producción de ATP', 'Fotofosforilación'),
(227, 7, 3, '¿Cuál de las siguientes especies es un mamífero monotreme?', 'Ornitorrinco', 'Canguro', 'Elefante', 'Delfín', 'Ornitorrinco'),
(228, 7, 3, '¿Qué mecanismo evolutivo describe la aparición de nuevas especies a partir de una especie ancestral común debido al aislamiento geográfico?', 'Especiación', 'Mutación', 'Selección natural', 'Deriva genética', 'Especiación'),
(229, 7, 3, '¿Qué tipo de microorganismo es responsable de la fermentación del azúcar en la producción de yogur y queso?', 'Bacterias lácticas', ' Levaduras', 'Hongos', 'Bacterias del ácido láctico', 'Bacterias lácticas'),
(230, 7, 3, '¿Qué tipo de ácido nucleico es el responsable de la transmisión de información genética en los virus?', 'ADN', 'ARN', 'Proteínas', 'ADN y ARN', 'ADN y ARN'),
(231, 7, 3, '¿Qué término se refiere a la variedad de especies que habitan en un ecosistema específico?', 'Biodiversidad', 'Especiación', ' Ecosistema', 'Nicho ecológico', 'Biodiversidad'),
(232, 7, 3, '¿Cuál es el nombre del músculo principal responsable de la respiración en los seres humanos?', 'Diafragma', 'Pectoral mayor', ' Cuádriceps', 'Deltoides', 'Diafragma'),
(233, 7, 3, '¿Qué órgano del cuerpo humano produce la insulina y el glucagón para regular el nivel de glucosa en sangre?', 'Páncreas', 'Hígado', ' Riñones', 'Glándulas suprarrenales', 'Páncreas'),
(234, 7, 3, '¿Cuál es el nombre de la estructura reproductiva de las plantas gimnospermas que contiene las semillas desnudas?', 'Cono', 'Flor', ' Fruto', 'Baya', 'Cono'),
(235, 7, 3, '¿Cuál de los siguientes animales es un equinodermo?', 'Estrella de mar', 'Pulpo', 'Ballena', 'Cocodrilo', 'Estrella de mar'),
(236, 9, 1, '¿Cuál es el país más grande del mundo en términos de área terrestre?', 'Rusia', 'China', 'Estados Unidos', 'Brasil', 'Rusia'),
(237, 9, 1, '¿Cuál es el río más largo del mundo?', 'Amazonas', 'Nilo', 'Misisipi', 'Yangtsé', 'Amazonas'),
(238, 9, 1, '¿Cuál de los siguientes continentes es el más pequeño en área terrestre?', 'Europa', 'África', 'América del Norte', 'Australia', 'Australia'),
(239, 9, 1, '¿Cuál es el punto más alto de la Tierra?', 'Monte Everest', 'Monte Kilimanjaro', 'Monte McKinley', 'Monte Aconcagua', 'Monte Everest'),
(240, 9, 1, '¿Cuál de los siguientes países NO tiene costas en el océano Atlántico?', 'China', 'Argentina', 'Nigeria', 'Canadá', 'China'),
(241, 9, 1, '¿Cuál es el país con la mayor cantidad de islas en el mundo?', 'Suecia', 'Indonesia', 'Filipinas', 'Japón', 'Indonesia'),
(242, 9, 1, '¿Cuál es el punto más bajo de la Tierra?', 'Mar Muerto', 'Mar Caspio', 'Mar de Aral', 'Mar Mediterráneo', 'Mar Muerto'),
(243, 9, 1, '¿Cuál es el continente más poblado del mundo?', 'Asia', 'África', 'Europa', 'América', 'Asia'),
(244, 9, 1, '¿Cuál es el país más pequeño del mundo en términos de área terrestre?', 'Mónaco', 'Vaticano', 'Nauru', 'San Marino', 'Vaticano'),
(245, 9, 1, '¿Cuál de los siguientes países NO es parte de Escandinavia?', 'Finlandia', 'Noruega', 'Suecia', 'Dinamarca', 'Finlandia'),
(246, 9, 1, '¿Qué cadena montañosa separa Europa de Asia?', 'Montes Urales', 'Montañas Rocosas', 'Himalayas', 'Andes', 'Montes Urales'),
(247, 9, 1, '¿Cuál de los siguientes países NO comparte frontera con Brasil?', 'Colombia', 'Argentina', 'Paraguay', 'Uruguay', 'Colombia'),
(248, 9, 1, '¿Cuál es el país más grande de América del Sur?', 'Brasil', 'Argentina', 'Perú', 'Colombia', 'Brasil'),
(249, 9, 1, '¿Cuál es el océano más grande del mundo?', 'Océano Pacífico', 'Océano Atlántico', 'Océano Índico', 'Océano Ártico', 'Océano Pacífico'),
(250, 9, 1, '¿Cuál es la capital más alta del mundo?', 'La Paz, Bolivia', 'Quito, Ecuador', 'Ciudad de México, México', 'Bogotá, Colombia', 'La Paz, Bolivia'),
(251, 9, 1, '¿Cuál de los siguientes países NO es parte de la Península Ibérica?', 'Francia', 'España', 'Portugal', 'Andorra', 'Francia'),
(252, 9, 1, '¿Cuál es el país más poblado de África?', 'Nigeria', 'Etiopía', 'Egipto', 'Sudáfrica', 'Nigeria'),
(253, 9, 1, '¿Cuál de las siguientes ciudades NO está ubicada en Estados Unidos?', 'Toronto', 'Los Ángeles', 'Nueva York', 'Chicago', 'Toronto'),
(254, 9, 1, '¿Cuál es el desierto más grande del mundo?', 'Desierto del Sahara', 'Desierto de Gobi', 'Desierto de Kalahari', 'Desierto de Atacama', 'Desierto del Sahara'),
(255, 9, 1, '¿Cuál es la ciudad más poblada del mundo?', 'Tokio', 'Shanghái', 'Mumbai', 'Ciudad de México', 'Tokio'),
(256, 9, 2, '¿Qué país tiene la forma de una bota?', 'Italia', 'Grecia', 'España', 'India', 'Italia'),
(257, 9, 2, '¿Cuál de los siguientes países NO tiene costas en el océano Pacífico?', 'Canadá', 'Australia', 'Chile', 'Japón', 'Canadá'),
(258, 9, 2, '¿Cuál es el país más pequeño de América Central?', 'El Salvador', 'Belice', 'Honduras', 'Costa Rica', 'Belice'),
(259, 9, 2, '¿Cuál es el país más poblado del mundo?', 'China', 'India', 'Estados Unidos', 'Indonesia', 'China'),
(260, 9, 2, '¿Cuál de los siguientes países NO es parte de la Unión Europea?', 'Noruega', 'Alemania', 'Francia', 'Italia', 'Noruega'),
(261, 9, 2, '¿Cuál es la capital de Canadá?', 'Ottawa', 'Toronto', 'Montreal', 'Vancouver', 'Ottawa'),
(262, 9, 2, '¿Cuál es el país más pequeño de América del Norte?', 'San Cristóbal y Nieves', 'Barbados', 'Antigua y Barbuda', 'Granada', 'San Cristóbal y Nieves'),
(263, 9, 2, '¿Cuál de los siguientes países tiene el mayor número de islas en el mundo?', 'Indonesia', 'Filipinas', 'Japón', 'Nueva Zelanda', 'Filipinas'),
(264, 9, 2, '¿Cuál es el río más largo de América del Norte?', 'Mississippi', 'Misisipi', 'Río Bravo', 'Yukón', 'Mississippi'),
(265, 9, 2, '¿Cuál de las siguientes ciudades está más al sur?', 'Santiago, Chile', 'Buenos Aires, Argentina', 'Ciudad de México, México', 'Montevideo, Uruguay', 'Montevideo, Uruguay'),
(266, 9, 2, '¿Cuál de los siguientes países NO tiene frontera con Rusia?', 'Finlandia', 'Noruega', 'Mongolia', 'Kazajistán', 'Noruega'),
(267, 9, 2, '¿Cuál es el mayor archipiélago del mundo?', 'Indonesia', 'Filipinas', 'Japón', 'Islas Salomón', 'Indonesia'),
(268, 9, 2, '¿Cuál es el país más pequeño de Europa?', 'Vaticano', 'Mónaco', 'San Marino', 'Liechtenstein', 'Vaticano'),
(269, 9, 2, '¿Cuál de los siguientes países NO tiene costas en el mar Mediterráneo?', 'Egipto', 'Italia', 'Grecia', 'Turquía', 'Egipto'),
(270, 9, 2, '¿Cuál es el país más poblado de América del Norte?', 'Estados Unidos', 'Canadá', 'México', 'Cuba', 'Estados Unidos'),
(271, 9, 2, '¿Cuál es la capital de Australia?', 'Camberra', 'Sídney', 'Melbourne', 'Brisbane', 'Camberra'),
(272, 9, 2, '¿Cuál es el país más grande de América Central?', 'Nicaragua', 'Honduras', 'Guatemala', 'Costa Rica', 'Nicaragua'),
(273, 9, 2, '¿Cuál de los siguientes países NO tiene frontera con China?', 'Vietnam', 'India', 'Corea del Sur', 'Mongolia', 'Corea del Sur'),
(274, 9, 2, '¿Cuál es el lago más grande de América del Sur?', 'Lago Titicaca', 'Lago Maracaibo', 'Lago de Nicaragua', 'Lago General Carrera', 'Lago Titicaca'),
(275, 9, 2, '¿Cuál es la montaña más alta de África?', 'Monte Kilimanjaro', 'Monte Kenia', 'Monte Ruwenzori', 'Monte Elgon', 'Monte Kilimanjaro'),
(276, 9, 3, '¿Cuál es el mayor país insular del mundo?', 'Indonesia', 'Filipinas', 'Japón', 'Reino Unido', 'Indonesia'),
(277, 9, 3, '¿Cuál de los siguientes países NO tiene costas en el mar Caribe?', 'Panamá', 'Cuba', 'Haití', 'Jamaica', 'Panamá'),
(278, 9, 3, '¿Cuál es el país más grande de Oceanía?', 'Australia', 'Nueva Zelanda', 'Papúa Nueva Guinea', 'Fiyi', 'Australia'),
(279, 9, 3, '¿Cuál de las siguientes ciudades está más al norte?', 'Estocolmo, Suecia', 'Oslo, Noruega', 'Reikiavik, Islandia', 'Helsinki, Finlandia', 'Reikiavik, Islandia'),
(280, 9, 3, '¿Cuál es la capital de Brasil?', 'Brasilia', 'Río de Janeiro', 'São Paulo', 'Buenos Aires', 'Brasilia'),
(281, 9, 3, '¿Cuál de los siguientes países NO tiene costas en el océano Índico?', 'Sudáfrica', 'India', 'Indonesia', 'Australia', 'Australia'),
(282, 9, 3, '¿Cuál es el estrecho que separa Europa de África?', 'Estrecho de Gibraltar', 'Estrecho de Bering', 'Estrecho de Malaca', 'Estrecho de Ormuz', 'Estrecho de Gibraltar'),
(283, 9, 3, '¿Cuál es el mayor país de América del Sur?', 'Brasil', 'Argentina', 'Perú', 'Colombia', 'Brasil'),
(284, 9, 3, '¿Cuál es el país más pequeño del mundo en términos de población?', 'Tuvalu', 'Nauru', 'San Marino', 'Mónaco', 'Nauru'),
(285, 9, 3, '¿Cuál de las siguientes ciudades está más al este?', 'Moscú, Rusia', 'Pekín, China', 'Sídney, Australia', 'Los Ángeles, Estados Unidos', 'Sídney, Australia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta_quito`
--

CREATE TABLE `pregunta_quito` (
  `id_pregunta` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `opcion1` varchar(120) NOT NULL,
  `opcion2` varchar(120) NOT NULL,
  `opcion3` varchar(120) NOT NULL,
  `opcion4` varchar(120) NOT NULL,
  `respuesta` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `pregunta_quito`
--

INSERT INTO `pregunta_quito` (`id_pregunta`, `id_categoria`, `nivel`, `pregunta`, `opcion1`, `opcion2`, `opcion3`, `opcion4`, `respuesta`) VALUES
(1, 1, 1, '¿Qué bebida caliente es típica de Quito y se prepara con panela, agua, canela y clavos de olor?', 'Canelazo', 'Chicha', 'Colada Morada', 'Horchata', 'Canelazo'),
(2, 1, 3, '¿En qué tipo de hojas se suelen envolver los quimbolitos?', 'Achira', 'Chillangua', 'Ataco', 'Verde', 'Achira'),
(3, 1, 2, '¿Cuál es el platillo emblemático de la zona de Pomasqui?', 'Seco de Chivo', 'Locro de Papa', 'Fritada', 'Hornado', 'Fritada'),
(4, 1, 2, '¿Cuál de los siguientes ingredientes no se emplea en la preparación de la Fanesca?', 'Chocho', 'Lenteja', 'Bacalao', 'Melloco', 'Melloco'),
(5, 1, 1, '¿Cuál es el nombre con el que se conoce coloquialmente a las Empanadas de Queso?', 'Empanadas al Horno', 'Empanadas de Viento', 'Empanadas de Mejido', 'Empanadas de Morocho', 'Empanadas de Viento'),
(6, 1, 1, '¿Cuál es el ingrediente principal de la espumilla?', 'Mora', 'Harina', 'Huevo', 'Leche', 'Huevo'),
(7, 1, 2, '¿A base de qué se elabora la máchica?', 'Trigo', 'Cebada', 'Quinua', 'Ajonjolí', 'Cebada'),
(8, 1, 2, '¿En qué instrumento es elaborado el helado tradicional quiteño?', 'Mantecadora', 'Paila', 'Congeladora', 'Bolsas de plástico', 'Paila'),
(9, 1, 3, '¿En qué lugar se ubica la tradicional cafeteria Fabiolita, reconocida principalmente por sus sánduches de pernil?', 'Plaza del Teatro', 'Plaza de Santo Domingo', 'Plaza de San Francisco', 'Plaza Grande', 'Plaza Grande'),
(10, 1, 2, '¿Qué tipo de pescado se utiliza para preparar fanesca?', 'Atún', 'Corvina', 'Bacalao', 'Dorado', 'Bacalao'),
(11, 1, 1, '¿Cual es el acompañamiento mas típico de la colada morada?', 'Empanada de Viento', 'Pan de Ambato', 'Guagua de Pan', 'Bolón', 'Guagua de Pan'),
(12, 1, 2, '¿Con qué nombre se le conoce a la sopa elaborada a base de papa e intestinos de oveja?', 'Yahuarlocro', 'Locro de papa', 'Timbushca', 'Fanesca', 'Yahuarlocro'),
(13, 1, 2, '¿Címo se conoce al postre elaborado principalmente a base de panela?', 'Colaciones', 'Melaza', 'Melcocha', 'Pristiños', 'Melcocha'),
(14, 1, 1, '¿Qué tipo de maíz se utiliza comúnmente en la preparación de la bebida tradicional del Día de los Difuntos?', 'Maiz Nixtamalizado', ' Maiz Blanco', 'Maíz Negro', 'Maíz Morado', 'Maíz Negro'),
(15, 1, 1, '¿Cuál es el nombre del típico dulce redondo relleno de maní o almendras?', 'Colaciones', 'Pristiños', 'Horchata', 'Tiramisú', 'Colaciones'),
(16, 1, 1, '¿Qué fruta es esencial en la preparación del ají quiteño?', 'Maracuyá', 'Tamarindo', 'Tomate de Árbol', 'Naranjilla', 'Tomate de Árbol'),
(17, 1, 1, '¿Cuál es el nombre del plato quiteño que consiste en tortillas de papa, chorizo, lechuga y aguacate?', 'Papas con Cuero', 'Llapingacho', 'Hornado', 'Cariucho', 'Llapingacho'),
(18, 1, 2, '¿Qué tipo de carne se utiliza tradicionalmente en la preparación de guatita?', 'Pollo', 'Res', 'Cerdo', 'Cordero', 'Res'),
(19, 1, 3, '¿Cuál es el principal ingrediente del librillo?', 'Estomago de vaca', 'Estómago de cerdo', 'Hígado de Cerdo', 'Estomago de Cordero', 'Estomago de vaca'),
(20, 1, 2, '¿Cuál es el nombre del plato quiteño que consiste en visceras de res, acompañadas con papas salsa de maní?', 'Seco de chivo', 'Llapingacho', 'Locro de cordero', 'Librillo', 'Librillo'),
(21, 1, 1, '¿Cuál es el ingrediente principal del seco de pollo?', 'Pollo', 'Carne de res', 'Cerdo', 'Pescado', 'Pollo'),
(22, 1, 1, '¿Qué tipo de maíz se utiliza para preparar humitas?', 'Maíz morocho', 'Maíz blanco', 'Maíz amarillo', 'Maíz negro', 'Maíz blanco'),
(23, 1, 1, '¿Cuál es el acompañante principal de los pristiños, un postre tradicional quiteño?', 'Chocolate', 'Maicena', 'Miel', 'Merengue', 'Miel'),
(24, 1, 2, '¿Qué mercado quiteño es conocido por ser un lugar ideal para probar la gastronomía local, especialmente platos tradicionales como la fritada y el hornado?', 'Mercado de La Mariscal', 'Mercado de San Roque', 'Mercado de San Francisco', 'Mercado Central', 'Mercado Central'),
(25, 1, 1, '¿En qué festividad ecuatoriana es tradicionalmente consumida la colada morada?', 'Navidad', 'Semana Santa', 'Día de la Independencia', 'Día de los Difuntos', 'Día de los Difuntos'),
(26, 1, 1, '¿Qué tipo de carne es comúnmente utilizada en la preparación de la fanesca?', 'Cerdo', 'Res', 'Pollo', 'Pescado', 'Pescado'),
(27, 1, 2, '¿Cuál es la base de la colada morada, que le da su característico color oscuro y sabor dulce?', 'Frutas frescas', 'Harina morada', 'Jugo de naranja', 'Panela', 'Harina morada'),
(28, 1, 1, '¿Cuál es el ingrediente principal del hornado?', 'Cerdo', 'Res', 'Pollo', 'Cordero', 'Cerdo'),
(29, 1, 3, '¿Cuál es el método de cocci n principal de la carne en la fritada?', 'Asado', 'Hervido', 'Frito', 'Cocido al vapor', 'Frito'),
(30, 1, 1, '¿Cuál es el principal aderezo que se utiliza al consumir hornado?', 'Agrio', 'Salsa BBQ', 'Mayonesa', 'Salsa de Maní', 'Agrio'),
(31, 5, 2, 'En el juego de carreras de coches de madera, ¿cómo se determina el ganador?', 'Coche que llega más lejos', 'Coche más bonito', 'Coche más grande', 'Coche que realiza más trucos', 'Coche que llega más lejos'),
(32, 5, 2, '¿Cuál es la función del \"38 que no juega\" en el juego de cartas de cuarenta?', 'Ganar los ultimos puntos con una caida', 'Ganar los ultimos puntos con una limpia', 'Ganar los ultimos puntos con una ronda', 'No tiene función específica', 'Ganar los ultimos puntos con una caida'),
(33, 5, 1, 'En la rayuela, ¿cómo se llama la acción de lanzar la piedra al diagrama?', 'Tirada', 'Lanzamiento', 'Bolazo', 'Ingreso', 'Tirada'),
(34, 5, 3, 'En el juego del sapo, ¿qué puntaje se obtiene al hacer caer un disco en el agujero lateral?', '50', '10', '25', '100', '10'),
(35, 5, 2, '¿Cuál es el nombre de la parte de la pista donde los coches de madera suelen encontrar obstáculos en las carreras de coches de madera?', 'Zona de obstáculos', 'Curva cerrada', 'Cuesta arriba', 'Cuesta abajo', 'Zona de obstáculos'),
(36, 5, 1, 'En la carrera de ensacados, ¿cómo se determina el ganador en caso de un empate?', 'Correr una vuelta adicional', 'Lanzar una moneda al aire', 'Realizar una prueba de resistencia', 'Ninguna, se comparte la victoria', 'Lanzar una moneda al aire'),
(37, 5, 2, 'En el juego del trompo de madera, ¿cuál es el nombre del movimiento en el que el trompo da vueltas en el aire después de ser lanzado?', 'Giro aéreo', 'Aterrizaje invertido', 'Vuelo acrobático', 'Giro alado', 'Vuelo acrobático'),
(38, 5, 1, '¿Cuál es la forma correcta de lanzar una moneda en el juego del sapo?', 'Con la mano derecha', 'Con la mano izquierda', 'Con ambas manos', 'Con un palo', 'Con la mano derecha'),
(39, 5, 2, 'En la rayuela, ¿Que pasa cuando un jugador ha pasado por todos los recuadros?', 'Hace una casita', 'Gana', 'Deja de jugar', 'Nada', 'Hace una casita'),
(40, 5, 3, '¿Cual de los siguientes nombres no es un truco con el trompo?', 'El carrusel', 'El búmeran', 'Turbo carrusel', 'La cama', 'La cama'),
(41, 5, 2, 'En el juego del palo encebado, ¿Que premios suele haber en la cima?', 'Miel', 'Algodones de azucar', 'Celulares', 'Ropa', 'Algodones de azucar'),
(42, 5, 3, '¿En qué consiste la acción de \"limpia\" en el juego de cartas de cuarenta?', 'Ganar automáticamente', 'Eliminar todas las cartas de la mesa', 'Sumar 40 puntos', 'Hacer una jugada estratégica', 'Eliminar todas las cartas de la mesa'),
(43, 5, 1, 'En el juego del sapo, ¿qué puntaje se obtiene al hacer caer un disco en el agujero más lejano?', '50', '10', '100', '25', '50'),
(44, 5, 1, 'En la carrera de ensacados, ¿qué se utiliza comúnmente como línea de meta?', 'Cuerda', 'Bolsa de yute', 'Palos de madera', 'Tiza en el suelo', 'Tiza en el suelo'),
(45, 5, 2, 'En el juego del trompo de madera, ¿cuál es la parte inferior del trompo que toca el suelo durante el giro?', 'Punta', 'Borde', 'Base', 'Centro', 'Punta'),
(46, 5, 1, 'En la rayuela, ¿cuántos jugadores pueden participar normalmente al mismo tiempo?', 'Dos', 'Cuatro', 'Seis', 'Depende del tamaño del diagrama', 'Depende del tamaño del diagrama'),
(47, 5, 1, '¿Cuál es el nombre del lugar donde se colocan las monedas o discos metálicos en el juego del sapo?', 'Caja', 'Tablero', 'Mesa', 'Agujero', 'Agujero'),
(48, 5, 3, 'En el juego de palo encebado, ¿cómo se llama la acción de ponerse en la cabeza del palo sin tocar el suelo?', 'Corona', 'Cima', 'Cabeza', 'Tope', 'Cima'),
(49, 5, 2, 'En el juego del trompo de madera, ¿cuál es el nombre de la acción de hacer girar el trompo sobre la cuerda sin soltarlo?', 'Tirabuzón', 'Giro aéreo', 'Lanzamiento rápido', 'Enroscar', 'Enroscar'),
(50, 5, 3, 'En la rayuela, ¿cuántos números suele tener el diagrama en el suelo?', '5', '8', '10', '12', '10'),
(51, 5, 3, '¿Con que bebida es comun acompañar el juego de cartas 40?', 'Soda', 'Agua', 'Canelazo', 'Energizante', 'Canelazo'),
(52, 5, 2, 'En el cuarenta ¿A cuantos puntos equivale un perro?', '10', '20', '5', '7', '10'),
(53, 5, 2, '¿Que cartas son los perros en cuarenta?', '8,9,10', '1,2,3', 'J,Q,K', '5,6,7', '8,9,10'),
(54, 5, 1, 'En el juego del sapo, ¿qué se utiliza comúnmente como disco para lanzar?', 'Monedas', 'Fichas de madera', 'Discos metálicos', 'Piedras', 'Discos metálicos'),
(55, 5, 2, 'En el juego de carreras de coches de madera, ¿cuál es la función del \"juez\"?', 'Evaluar la creatividad de los coches', 'Decidir quién gana', 'Contar los pasos de los coches', 'Animar a los participantes', 'Decidir quién gana'),
(56, 5, 2, 'En el juego del trompo de madera, ¿cuál es el nombre del movimiento en el que el trompo salta mientras gira?', 'Salto acrobático', 'Brinco giratorio', 'Bailarina aérea', 'Saltarín', 'Bailarina aérea'),
(57, 5, 1, 'En la carrera de ensacados, ¿qué suele ocurrir si un participante se sale del área de la carrera?', 'Descalificación', 'Pérdida de puntos', 'Reinicio de la carrera', 'Nada, puede continuar', 'Descalificación'),
(58, 5, 1, 'En el juego de cartas de cuarenta, ¿cuál es el nombre de la carta que tiene un valor de 10 puntos?', 'El 10', 'La Dama', 'El Rey', 'El Perro', 'El Perro'),
(59, 5, 3, '¿Cuál es el objetivo principal del juego de palo encebado?', 'Llegar al tope del palo', 'Untar el palo más rápido', 'Evitar que otros lleguen al tope', 'Caer en el juego', 'Llegar al tope del palo'),
(60, 5, 1, 'En la rayuela, ¿cuál es el nombre de la línea que separa las secciones del diagrama?', 'Línea divisoria', 'Raya central', 'Línea de demarcación', 'Línea de salto', 'Línea de salto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `pregunta_quito`
--
ALTER TABLE `pregunta_quito`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pregunta_quito`
--
ALTER TABLE `pregunta_quito`
  ADD CONSTRAINT `pregunta_quito_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
