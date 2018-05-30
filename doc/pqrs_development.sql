-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-05-2018 a las 14:14:43
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pqrs_development`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) NOT NULL,
  `pqr_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-05-30 08:52:15', '2018-05-30 08:52:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Recepcion', '2018-05-30 09:52:15', '2018-05-30 09:52:15'),
(2, 'Administracion', '2018-05-30 09:52:39', '2018-05-30 09:52:39'),
(3, 'Juridica', '2018-05-30 09:52:49', '2018-05-30 09:52:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `pqr_id` bigint(20) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `backup` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `pqr_id`, `action`, `backup`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Create', 'Nombre: Juan \r\nApellido: Lopez\r\nTitulo: Tal cosa\r\nAsunto: Tal cosa\r\nCuerpo: Mensaje del PQR', '2018-05-30 10:39:51', '2018-05-30 10:49:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `pqr_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs`
--

CREATE TABLE `pqrs` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `creation_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pqrs`
--

INSERT INTO `pqrs` (`id`, `first_name`, `last_name`, `email`, `title`, `subject`, `body`, `creation_date`, `expiration_date`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Juan', 'Manuel', 'juan@gmail.com', 'Tal cosa', 'Problema', 'mensaje\r\n', '2018-05-30 09:23:00', '2018-05-30 09:23:00', NULL, '2018-05-30 08:52:58', '2018-05-30 09:24:33'),
(2, 'hkj', 'kjnj', 'knjknkn@lsad.com', 'mksada', 'asdada', 'sdasdasd', '2018-05-30 09:22:00', '2018-05-30 09:22:00', NULL, '2018-05-30 09:21:55', '2018-05-30 09:22:58'),
(3, 'Jorge', 'Luis', 'jorge@gmai.com', 'Queja', 'Paso esto', 'mensaje', '2018-05-30 10:00:00', '2018-05-30 10:00:00', NULL, '2018-05-30 10:01:15', '2018-05-30 10:01:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqr_files`
--

CREATE TABLE `pqr_files` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2018-05-30 09:27:56', '2018-05-30 09:27:56'),
(2, 'Usuario', '2018-05-30 09:28:09', '2018-05-30 09:28:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180529073521'),
('20180529073845'),
('20180529074207'),
('20180529084850'),
('20180529085230'),
('20180529143327'),
('20180529145042'),
('20180529145043'),
('20180530051644'),
('20180530051739'),
('20180530052856');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Esperando revision', 'Aun no ha sido revisado', '2018-05-30 09:08:21', '2018-05-30 09:08:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `rol_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `first_name`, `last_name`, `phone_number`, `birth_date`, `created_at`, `updated_at`, `rol_id`, `department_id`) VALUES
(1, 'samir04m@gmail.com', '$2a$11$MDEWmCutwzC9BrY84LdacuaUkB6e82wQI/mxLkITf/OT39r22.E6G', 'd91e574e5dd2113e0079d4091ceab1c6449830140407bb961bc1010225baf034', '2018-05-30 10:06:19', NULL, 1, '2018-05-30 09:19:48', '2018-05-30 09:19:48', '127.0.0.1', '127.0.0.1', 'Samir', 'Mejia', '30123o012', '2018-05-15', '2018-05-30 09:19:48', '2018-05-30 10:06:19', 1, 2),
(2, 'adal@gmail.com', '$2a$11$k/OXSZeEVVxGhb92OUdfR.iesN2kocY3gdNoVd0tEMR/ACZrbhVtu', NULL, NULL, NULL, 1, '2018-05-30 09:55:27', '2018-05-30 09:55:27', '127.0.0.1', '127.0.0.1', 'Adal', 'Avila', '1243942309', '2018-05-14', '2018-05-30 09:55:27', '2018-05-30 09:55:27', 1, 1),
(3, 'adal1013@gmail.co', '$2a$11$4GbY22tBAf360aZ06X6qhOWjWKgS4UfjPCT5KJXcBjdQFv5ztxn.2', NULL, NULL, NULL, 1, '2018-05-30 10:02:01', '2018-05-30 10:02:01', '127.0.0.1', '127.0.0.1', 'Adalberto', 'Adal', '30123132', '2018-05-15', '2018-05-30 10:02:01', '2018-05-30 10:02:01', NULL, NULL),
(4, 'samir4mt@gmail.com', '$2a$11$90vNau0OxIxIOv7HSMKm7efcGkURmpCI/RtpLnO9DkYI7h8JlhOXu', NULL, NULL, NULL, 2, '2018-05-30 10:44:08', '2018-05-30 10:10:40', '127.0.0.1', '127.0.0.1', 'Samir', 'Mejia', 'e2r3242', '2018-05-29', '2018-05-30 10:10:40', '2018-05-30 10:44:08', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_answers_on_pqr_id` (`pqr_id`),
  ADD KEY `index_answers_on_user_id` (`user_id`);

--
-- Indices de la tabla `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_logs_on_user_id` (`user_id`),
  ADD KEY `index_logs_on_pqr_id` (`pqr_id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_notifications_on_pqr_id` (`pqr_id`),
  ADD KEY `index_notifications_on_user_id` (`user_id`);

--
-- Indices de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_pqrs_on_status_id` (`status_id`);

--
-- Indices de la tabla `pqr_files`
--
ALTER TABLE `pqr_files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  ADD KEY `index_users_on_rol_id` (`rol_id`),
  ADD KEY `index_users_on_department_id` (`department_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pqr_files`
--
ALTER TABLE `pqr_files`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk_rails_584be190c2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_aed652c05a` FOREIGN KEY (`pqr_id`) REFERENCES `pqrs` (`id`);

--
-- Filtros para la tabla `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_rails_8fc980bf44` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_rails_e58efac24c` FOREIGN KEY (`pqr_id`) REFERENCES `pqrs` (`id`);

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_rails_76a183c724` FOREIGN KEY (`pqr_id`) REFERENCES `pqrs` (`id`),
  ADD CONSTRAINT `fk_rails_b080fb4855` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD CONSTRAINT `fk_rails_609d87d61b` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_rails_3bb727882f` FOREIGN KEY (`rol_id`) REFERENCES `rols` (`id`),
  ADD CONSTRAINT `fk_rails_f29bf9cdf2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
