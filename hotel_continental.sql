-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 16:13:44
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
-- Base de datos: `hotel continental`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_registro` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `fecha_registro`) VALUES
(1, 'Carlos Mendoza', 'carlos.mendoza@email.com', '+503 7123-4567', '2026-06-10'),
(2, 'Ana Maria Gómez', 'ana.gomez@email.com', '+503 7890-1234', '2026-06-15'),
(3, 'Luis Alberto Pocasangre', 'luis.poca@email.com', NULL, '2026-06-20'),
(4, 'Roberto Flores', 'roberto.flores@email.com', '+503 7234-5678', '2026-06-21'),
(5, 'Gabriela Torres', 'gaby.torres@email.com', '+503 7345-6789', '2026-06-22'),
(6, 'Juan Carlos Pérez', 'juan.perez@email.com', NULL, '2026-06-22'),
(7, 'María José Quintanilla', 'majo.q@email.com', '+503 7456-7890', '2026-06-23'),
(8, 'Ricardo Andrade', 'ricardo.andrade@email.com', '+503 7567-8901', '2026-06-23'),
(9, 'Elena Rostrán', 'elena.ros@email.com', NULL, '2026-06-24'),
(10, 'David Valle', 'david.valle@email.com', '+503 7678-9012', '2026-06-24'),
(11, 'Laura Chimilio', 'laura.c@email.com', '+503 7789-0123', '2026-06-25'),
(12, 'Fernando Palacios', 'fer.palacios@email.com', '+503 7890-1234', '2026-06-25'),
(13, 'Claudia Meléndez', 'claudia.m@email.com', NULL, '2026-06-25'),
(14, 'Jorge Alberto Rivas', 'jorge.rivas@email.com', '+503 7901-2345', '2026-06-26'),
(15, 'Beatriz Alfaro', 'beatriz.a@email.com', '+503 6012-3456', '2026-06-26'),
(16, 'Mauricio Colindres', 'mau.colindres@email.com', '+503 6123-4567', '2026-06-26'),
(17, 'Sandra Vanessa Meza', 'sandra.meza@email.com', NULL, '2026-06-27'),
(18, 'Manuel Gutiérrez', 'manuel.g@email.com', '+503 6234-5678', '2026-06-27'),
(19, 'Patricia Jovel', 'patty.jovel@email.com', '+503 6345-6789', '2026-06-27'),
(20, 'Oscar Danilo Cruz', 'oscar.cruz@email.com', '+503 6456-7890', '2026-06-28'),
(21, 'Natalia Benítez', 'natalia.b@email.com', NULL, '2026-06-28'),
(22, 'Christian Zavala', 'chris.zavala@email.com', '+503 6567-8901', '2026-06-28'),
(23, 'Alejandra Herrera', 'ale.herrera@email.com', '+503 6678-9012', '2026-06-29'),
(24, 'Héctor Danilo Sosa', 'hector.sosa@email.com', '+503 6789-0123', '2026-06-29'),
(25, 'Verónica Henríquez', 'vero.h@email.com', NULL, '2026-06-29'),
(26, 'Rodrigo Chicas', 'rodrigo.chicas@email.com', '+503 6890-1234', '2026-06-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `puesto`, `email`) VALUES
(1, 'Sofía Martínez', 'Recepcionista', 'sofia.recepcion@hotel.com'),
(2, 'Diego Alvarado', 'Administrador', 'diego.admin@hotel.com'),
(3, 'Carlos Fuentes', 'Recepcionista', 'carlos.recepcion@hotel.com'),
(4, 'Marta Elena Ayala', 'Recepcionista', 'marta.recepcion@hotel.com'),
(5, 'Josué Benjamín López', 'Bellboy', 'josue.lopez@hotel.com'),
(6, 'Kevin Alejandro Sorto', 'Soporte Técnico', 'kevin.sorto@hotel.com'),
(7, 'Lucía Fernanda Lemus', 'Supervisor de Piso', 'lucia.lemus@hotel.com'),
(8, 'William Ernesto Orellana', 'Seguridad', 'william.orellana@hotel.com'),
(9, 'Tatiana María Beltrán', 'Atención al Cliente', 'tati.beltran@hotel.com'),
(10, 'Edgardo Antonio Peña', 'Mantenimiento', 'edgardo.pena@hotel.com'),
(11, 'Gabriela Sarai Guardado', 'Recepcionista', 'gaby.guardado@hotel.com'),
(12, 'Nelson Omar Henríquez', 'Contador', 'nelson.henriquez@hotel.com'),
(13, 'Roxana Abigail Amaya', 'Recursos Humanos', 'roxana.amaya@hotel.com'),
(14, 'Julio César Guardado', 'Gerente Nocturno', 'julio.guardado@hotel.com'),
(15, 'Fátima del Carmen Ramos', 'Recepcionista', 'fatima.ramos@hotel.com'),
(16, 'Guillermo Alexander Marín', 'Auditor Nocturno', 'guillermo.marin@hotel.com'),
(17, 'Ingrid Elizabeth Campos', 'Encargada de Compras', 'ingrid.campos@hotel.com'),
(18, 'Eduardo Enrique Solórzano', 'Jefe de Cocina', 'eduardo.solorzano@hotel.com'),
(19, 'Diana Marcela Portillo', 'Recepcionista', 'diana.portillo@hotel.com'),
(20, 'Francisco Javier Vásquez', 'Seguridad', 'francisco.vasquez@hotel.com'),
(21, 'Maritza Esmeralda Aguilar', 'Ama de Llaves', 'maritza.aguilar@hotel.com'),
(22, 'Ángel Gabriel Menjívar', 'Mantenimiento', 'angel.menjivar@hotel.com'),
(23, 'Silvia Patricia Cañas', 'Auxiliar Contable', 'silvia.canas@hotel.com'),
(24, 'Jonathan Alexis Guevara', 'Soporte Técnico', 'jonathan.guevara@hotel.com'),
(25, 'Adriana Giselle Pineda', 'Atención al Cliente', 'adriana.pineda@hotel.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id` int(11) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio_por_noche` decimal(10,2) NOT NULL,
  `estado` varchar(20) DEFAULT 'Disponible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id`, `numero`, `tipo`, `precio_por_noche`, `estado`) VALUES
(1, '101', 'Individual', 45.00, 'Disponible'),
(2, '102', 'Doble', 75.00, 'Disponible'),
(3, '201', 'Suite', 150.00, 'Ocupada'),
(4, '202', 'Doble', 75.00, 'Mantenimiento'),
(5, '103', 'Individual', 45.00, 'Disponible'),
(6, '104', 'Individual', 45.00, 'Disponible'),
(7, '105', 'Individual', 45.00, 'Mantenimiento'),
(8, '106', 'Individual', 50.00, 'Disponible'),
(9, '107', 'Individual', 50.00, 'Disponible'),
(10, '108', 'Doble', 75.00, 'Disponible'),
(11, '109', 'Doble', 75.00, 'Ocupada'),
(12, '110', 'Doble', 75.00, 'Disponible'),
(13, '203', 'Suite', 150.00, 'Disponible'),
(14, '204', 'Suite', 150.00, 'Ocupada'),
(15, '205', 'Suite', 180.00, 'Disponible'),
(16, '206', 'Doble Premium', 95.00, 'Disponible'),
(17, '207', 'Doble Premium', 95.00, 'Disponible'),
(18, '208', 'Individual', 45.00, 'Disponible'),
(19, '301', 'Presidencial', 300.00, 'Disponible'),
(20, '302', 'Presidencial', 300.00, 'Mantenimiento'),
(21, '303', 'Suite', 150.00, 'Disponible'),
(22, '304', 'Doble', 75.00, 'Disponible'),
(23, '305', 'Individual', 45.00, 'Disponible'),
(24, '306', 'Doble', 80.00, 'Disponible'),
(25, '307', 'Suite', 160.00, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `reserva_id` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha_pago` date NOT NULL,
  `metodo_pago` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `reserva_id`, `monto`, `fecha_pago`, `metodo_pago`) VALUES
(1, 1, 300.00, '2026-06-12', 'Tarjeta'),
(2, 2, 600.00, '2026-06-24', 'Efectivo'),
(3, 3, 90.00, '2026-07-02', 'Efectivo'),
(4, 4, 300.00, '2026-07-02', 'Tarjeta'),
(5, 5, 0.00, '2026-07-03', 'Efectivo'),
(6, 6, 250.00, '2026-07-05', 'Transferencia'),
(7, 7, 100.00, '2026-07-05', 'Tarjeta'),
(8, 8, 225.00, '2026-07-06', 'Efectivo'),
(9, 9, 375.00, '2026-07-07', 'Tarjeta'),
(10, 10, 225.00, '2026-07-08', 'Transferencia'),
(11, 11, 600.00, '2026-07-10', 'Tarjeta'),
(12, 12, 0.00, '2026-07-11', 'Tarjeta'),
(13, 13, 360.00, '2026-07-12', 'Efectivo'),
(14, 14, 190.00, '2026-07-15', 'Tarjeta'),
(15, 15, 285.00, '2026-07-15', 'Transferencia'),
(16, 16, 180.00, '2026-07-18', 'Efectivo'),
(17, 17, 600.00, '2026-07-19', 'Tarjeta'),
(18, 18, 1500.00, '2026-07-20', 'Transferencia'),
(19, 19, 300.00, '2026-07-22', 'Efectivo'),
(20, 20, 150.00, '2026-07-24', 'Tarjeta'),
(21, 21, 180.00, '2026-07-25', 'Tarjeta'),
(22, 22, 160.00, '2026-07-26', 'Efectivo'),
(23, 23, 320.00, '2026-07-28', 'Transferencia'),
(24, 24, 180.00, '2026-07-29', 'Tarjeta'),
(25, 25, 150.00, '2026-07-30', 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `habitacion_id` int(11) NOT NULL,
  `empleado_id` int(11) DEFAULT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `estado` varchar(20) DEFAULT 'Pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `cliente_id`, `habitacion_id`, `empleado_id`, `fecha_entrada`, `fecha_salida`, `estado`) VALUES
(1, 1, 2, 1, '2026-07-01', '2026-07-05', 'Confirmada'),
(2, 2, 3, 1, '2026-06-24', '2026-06-28', 'Confirmada'),
(3, 3, 1, 1, '2026-07-02', '2026-07-04', 'Confirmada'),
(4, 4, 4, 3, '2026-07-02', '2026-07-06', 'Confirmada'),
(5, 5, 5, 4, '2026-07-03', '2026-07-05', 'Cancelada'),
(6, 6, 6, 1, '2026-07-05', '2026-07-10', 'Confirmada'),
(7, 7, 7, 3, '2026-07-05', '2026-07-07', 'Pendiente'),
(8, 8, 8, 4, '2026-07-06', '2026-07-09', 'Confirmada'),
(9, 9, 9, 11, '2026-07-07', '2026-07-12', 'Confirmada'),
(10, 10, 10, 11, '2026-07-08', '2026-07-11', 'Confirmada'),
(11, 11, 11, 3, '2026-07-10', '2026-07-14', 'Confirmada'),
(12, 12, 12, 4, '2026-07-11', '2026-07-13', 'Cancelada'),
(13, 13, 13, 15, '2026-07-12', '2026-07-15', 'Confirmada'),
(14, 14, 14, 15, '2026-07-15', '2026-07-17', 'Confirmada'),
(15, 15, 15, 3, '2026-07-15', '2026-07-20', 'Confirmada'),
(16, 16, 16, 4, '2026-07-18', '2026-07-22', 'Confirmada'),
(17, 17, 17, 19, '2026-07-19', '2026-07-21', 'Confirmada'),
(18, 18, 18, 19, '2026-07-20', '2026-07-25', 'Confirmada'),
(19, 19, 19, 3, '2026-07-22', '2026-07-24', 'Confirmada'),
(20, 20, 20, 4, '2026-07-24', '2026-07-26', 'Pendiente'),
(21, 21, 21, 25, '2026-07-25', '2026-07-29', 'Confirmada'),
(22, 22, 22, 25, '2026-07-26', '2026-07-28', 'Confirmada'),
(23, 23, 23, 3, '2026-07-28', '2026-07-30', 'Confirmada'),
(24, 24, 24, 4, '2026-07-29', '2026-08-02', 'Confirmada'),
(25, 25, 25, 1, '2026-07-30', '2026-08-01', 'Confirmada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pagos_reservas` (`reserva_id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reservas_clientes` (`cliente_id`),
  ADD KEY `fk_reservas_habitaciones` (`habitacion_id`),
  ADD KEY `fk_reservas_empleados` (`empleado_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_pagos_reservas` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fk_reservas_clientes` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservas_empleados` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservas_habitaciones` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
