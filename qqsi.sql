-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2024 a las 19:50:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

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
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE `participantes` (
  `id_participante` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `puntos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

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
-- Indices de la tabla `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`id_participante`);

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
