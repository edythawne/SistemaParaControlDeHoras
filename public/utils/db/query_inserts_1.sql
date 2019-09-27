	-- USE
     USE Ford32_Servicios;
	
    INSERT INTO `Administradores` (`id_admin`, `nombre`, `apellidos`, `usuario`, `contrasena`, `created_at`, `update_at`) VALUES
		(1, 'Edy', 'Thawne', '69d72300b5b4cf697087a892d35ba47518817cc6', '69d72300b5b4cf697087a892d35ba47518817cc6', '2019-09-09 09:53:19', NULL);
	
    INSERT INTO `Alumnos` (`id_alumno`, `nombre`, `apellidos`, `telefono`, `estado`, `especialidad`, `tipo_servicio`, `periodo`, `duracion`, `usuario`, `contrasena`, `created_at`, `update_at`) VALUES
		(1, 'Charlotte', 'Schaizmen', 'SEJjWENlM0FCaVpYK0UvNWdHTm81dz09', 'ACTIVO', 'Programación', 'Servicio Social', 'Septiempre 2019 a Febrero 2020', 480, 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '2019-09-09 09:53:19', NULL),
		(2, 'Melanie', 'García', 'cWtGWnMrVFY4dzJqemQrQU5LWjRHdz09', 'ACTIVO', 'Administración', 'Servicio Social', 'Septiempre 2019 a Febrero 2020', 480, 'd5507c772bd098b984d804b229de023c5b73acdd', 'd5507c772bd098b984d804b229de023c5b73acdd', '2019-09-09 09:53:19', NULL),
		(3, 'María Fernanda', 'Pérez Hernández', 'ZmxvdHVudUN3b0l1MHpMZEo4bEF2dz09', 'ACTIVO', 'Administración', 'Servicio Social', 'Septiempre 2019 a Febrero 2020', 480, 'fc5b0b882682e9981692cd55dc61622136a81d19', 'fc5b0b882682e9981692cd55dc61622136a81d19', '2019-09-09 09:53:19', NULL),
		(4, 'Sarahí', 'García Florencia', 'eXZrMWFNYWZieGlPbkp1NGV2RW5tUT09', 'ACTIVO', 'Administración', 'Servicio Social', 'Septiempre 2019 a Febrero 2020', 480, '82fe9ea32ce3e5b93155c4125de5c1154a4a5daf', '82fe9ea32ce3e5b93155c4125de5c1154a4a5daf', '2019-09-09 09:53:19', NULL),
		(5, 'Juan Carlos', 'Cortez Pérez', 'ZzFReWFKTnkwbWFCaCsxQlZjVnp0UT09', 'ACTIVO', 'Administración', 'Servicio Social', 'Septiempre 2019 a Febrero 2020', 480, '9793ac2f7291b701cdf9e49579d476149261e68d', '9793ac2f7291b701cdf9e49579d476149261e68d', '2019-09-09 09:53:19', NULL),
		(6, 'Valentina', 'García Hernández', 'NjJvMEcyQmtOY1ZrZEk4cmRSbzJIdz09', 'ACTIVO', 'Alimentos y Bebidas', 'Servicio Social', 'Septiempre 2019 a Febrero 2020', 480, '7e0f2e9d156b52f5dd466b24b0f4c3ac4dc698d5', '7e0f2e9d156b52f5dd466b24b0f4c3ac4dc698d5', '2019-09-09 09:53:19', NULL),
		(7, 'Nelson Michel', 'Martínez Pérez', 'blpiZ2krbTBUWGlmNEliMGxiTlQ0UT09', 'ACTIVO', 'Alimentos y Bebidas', 'Servicio Social', 'Septiembre 2019 - Febrero 2020', 480, 'f5c1585a51889753b6e899be0987f9de5634d699', 'f5c1585a51889753b6e899be0987f9de5634d699', '2019-09-09 09:54:35', NULL);

	INSERT INTO `Horarios` (`id_horario`, `fk_alumno`, `entrada`, `salida`, `al_entrada`, `al_salida`) VALUES
		(1, 1, '2019-06-06 14:00:00', '2019-06-06 19:30:00', '2019-06-06 14:00:00', '2019-06-06 19:30:00'),
		(2, 1, '2019-06-07 15:00:00', '2019-06-07 17:00:00', '2019-06-07 15:00:00', '2019-06-07 17:00:00'),
		(3, 1, '2019-06-10 14:30:00', '2019-06-10 19:00:00', '2019-06-10 14:30:00', '2019-06-10 19:00:00'),
        
		(4, 2, '2019-06-06 14:00:00', '2019-06-06 19:30:00', '2019-06-06 14:00:00', '2019-06-06 19:30:00'),
		(5, 2, '2019-06-07 15:00:00', '2019-06-07 17:00:00', '2019-06-07 15:00:00', '2019-06-07 17:00:00'),
		(6, 2, '2019-06-10 14:30:00', '2019-06-10 19:00:00', '2019-06-10 14:30:00', '2019-06-10 19:00:00'),
		
        (7, 3, '2019-06-06 14:00:00', '2019-06-06 19:30:00', '2019-06-06 14:00:00', '2019-06-06 19:30:00'),
		(8, 3, '2019-06-07 15:00:00', '2019-06-07 19:15:00', '2019-06-07 15:00:00', '2019-06-07 19:15:00'),
		(9, 3, '2019-06-10 15:00:00', '2019-06-10 19:00:00', '2019-06-10 15:00:00', '2019-06-10 19:00:00'),
		(10, 3, '2019-06-11 14:30:00', '2019-06-11 19:30:00', '2019-06-11 14:30:00', '2019-06-11 19:30:00'),
		(11, 3, '2019-06-12 15:00:00', '2019-06-12 19:20:00', '2019-06-12 15:00:00', '2019-06-12 19:20:00'),
		(12, 3, '2019-06-13 14:00:00', '2019-06-13 19:30:00', '2019-06-13 14:00:00', '2019-06-13 19:30:00'),
		(13, 3, '2019-06-14 15:00:00', '2019-06-14 19:15:00', '2019-06-14 15:00:00', '2019-06-14 19:15:00'),
		(14, 3, '2019-06-17 14:00:00', '2019-06-17 19:00:00', '2019-06-17 14:00:00', '2019-06-17 19:00:00'),
		(15, 3, '2019-06-18 14:30:00', '2019-06-18 18:30:00', '2019-06-18 14:30:00', '2019-06-18 18:30:00'),
		(16, 3, '2019-06-19 14:30:00', '2019-06-19 19:30:00', '2019-06-19 14:30:00', '2019-06-19 19:30:00'),
		(17, 3, '2019-06-21 15:00:00', '2019-06-21 19:30:00', '2019-06-21 15:00:00', '2019-06-21 19:30:00'),
		(18, 3, '2019-06-26 15:15:00', '2019-06-26 19:00:00', '2019-06-26 15:15:00', '2019-06-26 19:00:00'),
		(19, 3, '2019-06-27 14:00:00', '2019-06-27 19:15:00', '2019-06-27 14:00:00', '2019-06-27 19:15:00'),
		
        
        (20, 4, '2019-06-06 14:00:00', '2019-06-06 19:30:00', '2019-06-06 14:00:00', '2019-06-06 19:30:00'),
		(21, 4, '2019-06-07 15:00:00', '2019-06-07 19:15:00', '2019-06-07 15:00:00', '2019-06-07 19:15:00'),
		(22, 4, '2019-06-10 14:30:00', '2019-06-10 19:00:00', '2019-06-10 14:30:00', '2019-06-10 19:00:00'),
		(23, 4, '2019-06-11 14:30:00', '2019-06-11 18:00:00', '2019-06-11 14:30:00', '2019-06-11 18:00:00'),
		(24, 4, '2019-06-12 15:00:00', '2019-06-12 19:20:00', '2019-06-12 15:00:00', '2019-06-12 19:20:00'),
		(25, 4, '2019-06-13 14:00:00', '2019-06-13 19:30:00', '2019-06-13 14:00:00', '2019-06-13 19:30:00'),
		(26, 4, '2019-06-14 15:00:00', '2019-06-14 19:15:00', '2019-06-14 15:00:00', '2019-06-14 19:15:00'),
		(27, 4, '2019-06-17 14:00:00', '2019-06-17 19:00:00', '2019-06-17 14:00:00', '2019-06-17 19:00:00'),
		(28, 4, '2019-06-18 14:30:00', '2019-06-18 18:30:00', '2019-06-18 14:30:00', '2019-06-18 18:30:00'),
		(29, 4, '2019-06-19 14:30:00', '2019-06-19 19:00:00', '2019-06-19 14:30:00', '2019-06-19 19:00:00'),
		(30, 4, '2019-06-24 15:00:00', '2019-06-24 18:45:00', '2019-06-24 15:00:00', '2019-06-24 18:45:00'),
		(31, 4, '2019-06-25 15:00:00', '2019-06-25 18:15:00', '2019-06-25 15:00:00', '2019-06-25 18:15:00'),
		(32, 4, '2019-06-26 15:15:00', '2019-06-26 17:00:00', '2019-06-26 15:15:00', '2019-06-26 17:00:00'),
		(33, 4, '2019-06-27 15:00:00', '2019-06-27 19:15:00', '2019-06-27 15:00:00', '2019-06-27 19:15:00'),
		(34, 4, '2019-06-28 14:00:00', '2019-06-28 19:00:00', '2019-06-28 14:00:00', '2019-06-28 19:00:00'),
		
        (35, 5, '2019-06-06 14:00:00', '2019-06-06 17:00:00', '2019-06-06 14:00:00', '2019-06-06 17:00:00'),
		(36, 5, '2019-06-07 14:00:00', '2019-06-07 19:15:00', '2019-06-07 14:00:00', '2019-06-07 19:15:00'),
		(37, 5, '2019-06-10 14:00:00', '2019-06-10 19:00:00', '2019-06-10 14:00:00', '2019-06-10 19:00:00'),
		(38, 5, '2019-06-11 13:00:00', '2019-06-11 19:30:00', '2019-06-11 13:00:00', '2019-06-11 19:30:00'),
		(39, 5, '2019-06-12 13:30:00', '2019-06-12 18:00:00', '2019-06-12 13:30:00', '2019-06-12 18:00:00'),
		(40, 5, '2019-06-13 13:30:00', '2019-06-13 18:00:00', '2019-06-13 13:30:00', '2019-06-13 18:00:00'),
		(41, 5, '2019-06-17 13:30:00', '2019-06-17 18:00:00', '2019-06-17 13:30:00', '2019-06-17 18:00:00'),
		(42, 5, '2019-06-18 13:15:00', '2019-06-18 19:30:00', '2019-06-18 13:15:00', '2019-06-18 19:30:00'),
		(43, 5, '2019-06-19 13:15:00', '2019-06-19 19:00:00', '2019-06-19 13:15:00', '2019-06-19 19:00:00'),
		(44, 5, '2019-06-20 14:00:00', '2019-06-20 15:00:00', '2019-06-20 14:00:00', '2019-06-20 15:00:00'),
		(45, 5, '2019-06-21 13:30:00', '2019-06-21 17:00:00', '2019-06-21 13:30:00', '2019-06-21 17:00:00'),
		(46, 5, '2019-06-24 13:00:00', '2019-06-24 17:00:00', '2019-06-24 13:00:00', '2019-06-24 17:00:00'),
		(47, 5, '2019-06-25 13:30:00', '2019-06-25 17:00:00', '2019-06-25 13:30:00', '2019-06-25 17:00:00'),
		(48, 5, '2019-06-26 13:30:00', '2019-06-26 17:00:00', '2019-06-26 13:30:00', '2019-06-26 17:00:00'),
		(49, 5, '2019-06-27 13:30:00', '2019-06-27 17:00:00', '2019-06-27 13:30:00', '2019-06-27 17:00:00'),
		(50, 5, '2019-06-28 14:00:00', '2019-06-28 17:00:00', '2019-06-28 14:00:00', '2019-06-28 17:00:00'),
		
        (51, 6, '2019-06-17 14:30:00', '2019-06-17 19:00:00', '2019-06-17 14:30:00', '2019-06-17 19:00:00'),
		(52, 6, '2019-06-18 14:30:00', '2019-06-18 19:30:00', '2019-06-18 14:30:00', '2019-06-18 19:30:00'),
		(53, 6, '2019-06-19 14:15:00', '2019-06-19 19:00:00', '2019-06-19 14:15:00', '2019-06-19 19:00:00'),
		(54, 6, '2019-06-20 14:00:00', '2019-06-20 17:00:00', '2019-06-20 14:00:00', '2019-06-20 17:00:00'),
		(55, 6, '2019-06-21 14:30:00', '2019-06-21 19:30:00', '2019-06-21 14:30:00', '2019-06-21 19:30:00'),
		(56, 6, '2019-06-24 14:30:00', '2019-06-24 18:45:00', '2019-06-24 14:30:00', '2019-06-24 18:45:00'),
		(57, 6, '2019-06-25 14:30:00', '2019-06-25 18:15:00', '2019-06-25 14:30:00', '2019-06-25 18:15:00'),
		(58, 6, '2019-06-26 15:15:00', '2019-06-26 19:00:00', '2019-06-26 15:15:00', '2019-06-26 19:00:00'),
		(59, 6, '2019-06-27 14:30:00', '2019-06-27 19:15:00', '2019-06-27 14:30:00', '2019-06-27 19:15:00'),
		(60, 6, '2019-06-28 14:00:00', '2019-06-28 19:00:00', '2019-06-28 14:00:00', '2019-06-28 19:00:00');
        
    -- Seccion 2    
	INSERT INTO `Horarios` (`id_horario`, `fk_alumno`, `entrada`, `salida`, `al_entrada`, `al_salida`) VALUES
        (61, 3, '2019-07-01 15:00:00', '2019-07-01 20:00:00', '2019-07-01 15:00:00', '2019-07-01 20:00:00'),
		(62, 3, '2019-07-02 10:00:00', '2019-07-02 16:30:00', '2019-07-02 10:00:00', '2019-07-02 16:30:00'),
		(63, 3, '2019-07-02 18:00:00', '2019-07-03 00:30:00', '2019-07-02 18:00:00', '2019-07-03 00:30:00'),
		(64, 3, '2019-07-03 15:00:00', '2019-07-03 18:30:00', '2019-07-03 15:00:00', '2019-07-03 18:30:00'),
		(65, 3, '2019-07-08 15:00:00', '2019-07-08 18:30:00', '2019-07-08 15:00:00', '2019-07-08 18:30:00'),
		
        (66, 4, '2019-07-01 15:00:00', '2019-07-01 16:30:00', '2019-07-01 15:00:00', '2019-07-01 16:30:00'),
		(67, 4, '2019-07-02 11:00:00', '2019-07-02 15:00:00', '2019-07-02 11:00:00', '2019-07-02 15:00:00'),
		(68, 4, '2019-07-02 18:00:00', '2019-07-03 00:30:00', '2019-07-02 18:00:00', '2019-07-03 00:30:00'),
		
        (69, 5, '2019-07-01 14:00:00', '2019-07-01 17:00:00', '2019-07-01 14:00:00', '2019-07-01 17:00:00'),
		(70, 5, '2019-07-02 11:00:00', '2019-07-02 14:30:00', '2019-07-02 11:00:00', '2019-07-02 14:30:00'),
		(71, 5, '2019-07-02 18:00:00', '2019-07-03 00:00:00', '2019-07-02 18:00:00', '2019-07-03 00:00:00'),
		(72, 5, '2019-07-08 13:30:00', '2019-07-08 17:30:00', '2019-07-08 13:30:00', '2019-07-08 17:30:00'),
		
        (73, 6, '2019-07-01 16:30:00', '2019-07-01 20:00:00', '2019-07-01 16:30:00', '2019-07-01 20:00:00'),
		(74, 6, '2019-07-02 18:00:00', '2019-07-03 00:30:00', '2019-07-02 18:00:00', '2019-07-03 00:30:00'),
		(75, 6, '2019-07-02 18:00:00', '2019-07-03 00:30:00', '2019-07-02 18:00:00', '2019-07-03 00:30:00'),
		(76, 6, '2019-07-03 16:00:00', '2019-07-03 18:30:00', '2019-07-03 16:00:00', '2019-07-03 18:30:00'),
		(77, 6, '2019-07-08 16:00:00', '2019-07-08 18:30:00', '2019-07-08 16:00:00', '2019-07-08 18:30:00'),
		(78, 6, '2019-07-09 16:00:00', '2019-07-09 18:00:00', '2019-07-09 16:00:00', '2019-07-09 18:00:00');
		