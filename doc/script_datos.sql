
INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Recepcion', '2018-05-30 09:52:15', '2018-05-30 09:52:15'),
(2, 'Administracion', '2018-05-30 09:52:39', '2018-05-30 09:52:39'),
(3, 'Juridica', '2018-05-30 09:52:49', '2018-05-30 09:52:49');


INSERT INTO `rols` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2018-05-30 09:27:56', '2018-05-30 09:27:56'),
(2, 'Usuario', '2018-05-30 09:28:09', '2018-05-30 09:28:09');


INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `first_name`, `last_name`, `phone_number`, `birth_date`, `created_at`, `updated_at`, `rol_id`, `department_id`) VALUES
(1, 'samir04m@gmail.com', '$2a$11$MDEWmCutwzC9BrY84LdacuaUkB6e82wQI/mxLkITf/OT39r22.E6G', 'd91e574e5dd2113e0079d4091ceab1c6449830140407bb961bc1010225baf034', '2018-05-30 10:06:19', NULL, 1, '2018-05-30 09:19:48', '2018-05-30 09:19:48', '127.0.0.1', '127.0.0.1', 'Samir', 'Mejia', '30123o012', '2018-05-15', '2018-05-30 09:19:48', '2018-05-30 10:06:19', 1, 2),
(2, 'adal@gmail.com', '$2a$11$k/OXSZeEVVxGhb92OUdfR.iesN2kocY3gdNoVd0tEMR/ACZrbhVtu', NULL, NULL, NULL, 1, '2018-05-30 09:55:27', '2018-05-30 09:55:27', '127.0.0.1', '127.0.0.1', 'Adal', 'Avila', '1243942309', '2018-05-14', '2018-05-30 09:55:27', '2018-05-30 09:55:27', 1, 1),
(3, 'adal1013@gmail.co', '$2a$11$4GbY22tBAf360aZ06X6qhOWjWKgS4UfjPCT5KJXcBjdQFv5ztxn.2', NULL, NULL, NULL, 1, '2018-05-30 10:02:01', '2018-05-30 10:02:01', '127.0.0.1', '127.0.0.1', 'Adalberto', 'Adal', '30123132', '2018-05-15', '2018-05-30 10:02:01', '2018-05-30 10:02:01', NULL, NULL),
(4, 'samir4mt@gmail.com', '$2a$11$90vNau0OxIxIOv7HSMKm7efcGkURmpCI/RtpLnO9DkYI7h8JlhOXu', NULL, NULL, NULL, 2, '2018-05-30 10:44:08', '2018-05-30 10:10:40', '127.0.0.1', '127.0.0.1', 'Samir', 'Mejia', 'e2r3242', '2018-05-29', '2018-05-30 10:10:40', '2018-05-30 10:44:08', NULL, NULL);


INSERT INTO `statuses` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Esperando revision', 'Aun no ha sido revisado', '2018-05-30 09:08:21', '2018-05-30 09:08:37');

INSERT INTO `pqrs` (`id`, `first_name`, `last_name`, `email`, `title`, `subject`, `body`, `creation_date`, `expiration_date`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Juan', 'Manuel', 'juan@gmail.com', 'Tal cosa', 'Problema', 'mensaje\r\n', '2018-05-30 09:23:00', '2018-05-30 09:23:00', NULL, '2018-05-30 08:52:58', '2018-05-30 09:24:33'),
(2, 'hkj', 'kjnj', 'knjknkn@lsad.com', 'mksada', 'asdada', 'sdasdasd', '2018-05-30 09:22:00', '2018-05-30 09:22:00', NULL, '2018-05-30 09:21:55', '2018-05-30 09:22:58'),
(3, 'Jorge', 'Luis', 'jorge@gmai.com', 'Queja', 'Paso esto', 'mensaje', '2018-05-30 10:00:00', '2018-05-30 10:00:00', NULL, '2018-05-30 10:01:15', '2018-05-30 10:01:15');


INSERT INTO `logs` (`id`, `user_id`, `pqr_id`, `action`, `backup`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Create', 'Nombre: Juan \r\nApellido: Lopez\r\nTitulo: Tal cosa\r\nAsunto: Tal cosa\r\nCuerpo: Mensaje del PQR', '2018-05-30 10:39:51', '2018-05-30 10:49:44');





