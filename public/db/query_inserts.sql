   -- Insertar administrador
    INSERT INTO Administradores(nombre, apellidos, usuario, contrasena) VALUES ('Eduardo', 'Ramires Perez', 'edythawne', 'qwertyui');

    -- Insertar Alumnos
    
    -- Registro de prueba
    INSERT INTO Alumnos(id_alumno, nombre, apellidos, telefono, usuario, contrasena) VALUES
		(1, 'Valentina', 'Perez Miranda', '123456789', '123456789', '123456789');
        
	-- Registro de Pruebas
    INSERT INTO Horarios (fk_alumno, entrada, salida, al_entrada, al_salida) VALUES
		(1, '2019-06-06 14:00:00', '2019-06-06 19:30:00', '2019-06-06 14:00:00', '2019-06-06 19:30:00'),
        (1, '2019-06-07 15:00:00', '2019-06-07 17:00:00', '2019-06-07 15:00:00', '2019-06-07 17:00:00'),
        (1, '2019-06-10 14:30:00', '2019-06-10 19:00:00', '2019-06-10 14:30:00', '2019-06-10 19:00:00');

    -- INSERT FOR ALUMNOS
    INSERT INTO Alumnos(id_alumno, nombre, apellidos, telefono, usuario, contrasena) VALUES
		(2, 'Melanie', 'García', '7661127462', '7661127462', '7661127462'),
		(3, 'María Fernanda', 'Pérez Hernández', '7661020517', '7661020517', '7661020517'),
		(4, 'Sarahí', 'García Florencia', '7661218805', '7661218805', '7661218805'),
        (5, 'Juan Carlos', 'Cortez Pérez', '7661151621', '7661151621', '7661151621'), 
        (6, 'Valentina', 'García Hernández', '5610005084', '5610005084', '5610005084');

    -- Insertar Horarios
    INSERT INTO Horarios (fk_alumno, entrada, salida, al_entrada, al_salida) VALUES
		(2, '2019-06-06 14:00:00', '2019-06-06 19:30:00', '2019-06-06 14:00:00', '2019-06-06 19:30:00'),
        (2, '2019-06-07 15:00:00', '2019-06-07 17:00:00', '2019-06-07 15:00:00', '2019-06-07 17:00:00'),
        (2, '2019-06-10 14:30:00', '2019-06-10 19:00:00', '2019-06-10 14:30:00', '2019-06-10 19:00:00');

	INSERT INTO Horarios (fk_alumno, entrada, salida, al_entrada, al_salida) VALUES
		(3, '2019-06-06 14:00:00', '2019-06-06 19:30:00', '2019-06-06 14:00:00', '2019-06-06 19:30:00'),
        (3, '2019-06-07 15:00:00', '2019-06-07 19:15:00', '2019-06-07 15:00:00', '2019-06-07 19:15:00'),
        (3, '2019-06-10 15:00:00', '2019-06-10 19:00:00', '2019-06-10 15:00:00', '2019-06-10 19:00:00'),
        (3, '2019-06-11 14:30:00', '2019-06-11 19:30:00', '2019-06-11 14:30:00', '2019-06-11 19:30:00'),
        (3, '2019-06-12 15:00:00', '2019-06-12 19:20:00', '2019-06-12 15:00:00', '2019-06-12 19:20:00'),
        (3, '2019-06-13 14:00:00', '2019-06-13 19:30:00', '2019-06-13 14:00:00', '2019-06-13 19:30:00'),
        (3, '2019-06-14 15:00:00', '2019-06-14 19:15:00', '2019-06-14 15:00:00', '2019-06-14 19:15:00'),
        (3, '2019-06-17 14:00:00', '2019-06-17 19:00:00', '2019-06-17 14:00:00', '2019-06-17 19:00:00'),
        (3, '2019-06-18 14:30:00', '2019-06-18 18:30:00', '2019-06-18 14:30:00', '2019-06-18 18:30:00'),
        (3, '2019-06-19 14:30:00', '2019-06-19 19:30:00', '2019-06-19 14:30:00', '2019-06-19 19:30:00');

    INSERT INTO Horarios (fk_alumno, entrada, salida, al_entrada, al_salida) VALUES
		(4, '2019-06-06 14:00:00', '2019-06-06 19:30:00', '2019-06-06 14:00:00', '2019-06-06 19:30:00'),
        (4, '2019-06-07 15:00:00', '2019-06-07 19:15:00', '2019-06-07 15:00:00', '2019-06-07 19:15:00'),
        (4, '2019-06-10 14:30:00', '2019-06-10 19:00:00', '2019-06-10 14:30:00', '2019-06-10 19:00:00'),
        (4, '2019-06-11 14:30:00', '2019-06-11 18:00:00', '2019-06-11 14:30:00', '2019-06-11 18:00:00'),
        (4, '2019-06-12 15:00:00', '2019-06-12 19:20:00', '2019-06-12 15:00:00', '2019-06-12 19:20:00'),
        (4, '2019-06-13 14:00:00', '2019-06-13 19:30:00', '2019-06-13 14:00:00', '2019-06-13 19:30:00'),
        (4, '2019-06-14 15:00:00', '2019-06-14 19:15:00', '2019-06-14 15:00:00', '2019-06-14 19:15:00'),
        (4, '2019-06-17 14:00:00', '2019-06-17 19:00:00', '2019-06-17 14:00:00', '2019-06-17 19:00:00'),
        (4, '2019-06-18 14:30:00', '2019-06-18 18:30:00', '2019-06-18 14:30:00', '2019-06-18 18:30:00'),
        (4, '2019-06-19 14:30:00', '2019-06-19 19:00:00', '2019-06-19 14:30:00', '2019-06-19 19:00:00');

	INSERT INTO Horarios (fk_alumno, entrada, salida, al_entrada, al_salida) VALUES
		(5, '2019-06-06 14:00:00', '2019-06-06 17:00:00', '2019-06-06 14:00:00', '2019-06-06 17:00:00'),
        (5, '2019-06-07 14:00:00', '2019-06-07 19:15:00', '2019-06-07 14:00:00', '2019-06-07 19:15:00'),
        (5, '2019-06-10 14:00:00', '2019-06-10 19:00:00', '2019-06-10 14:00:00', '2019-06-10 19:00:00'),
        (5, '2019-06-11 13:00:00', '2019-06-11 19:30:00', '2019-06-11 13:00:00', '2019-06-11 19:30:00'),
        (5, '2019-06-12 13:30:00', '2019-06-12 18:00:00', '2019-06-12 13:30:00', '2019-06-12 18:00:00'),
        (5, '2019-06-13 13:30:00', '2019-06-13 18:00:00', '2019-06-13 13:30:00', '2019-06-13 18:00:00'),
        (5, '2019-06-17 13:30:00', '2019-06-17 18:00:00', '2019-06-17 13:30:00', '2019-06-17 18:00:00'),
        (5, '2019-06-18 13:15:00', '2019-06-18 19:30:00', '2019-06-18 13:15:00', '2019-06-18 19:30:00'),
        (5, '2019-06-19 13:15:00', '2019-06-19 19:00:00', '2019-06-19 13:15:00', '2019-06-19 19:00:00'),
        (5, '2019-06-20 14:00:00', '2019-06-20 15:00:00', '2019-06-20 14:00:00', '2019-06-20 15:00:00');
        
	INSERT INTO Horarios (fk_alumno, entrada, salida, al_entrada, al_salida) VALUES
        (6, '2019-06-17 14:30:00', '2019-06-17 19:00:00', '2019-06-17 14:30:00', '2019-06-17 19:00:00'),
        (6, '2019-06-18 14:30:00', '2019-06-18 19:30:00', '2019-06-18 14:30:00', '2019-06-18 19:30:00'),
        (6, '2019-06-19 14:15:00', '2019-06-19 19:00:00', '2019-06-19 14:15:00', '2019-06-19 19:00:00'),
        (6, '2019-06-20 14:00:00', '2019-06-20 17:00:00', '2019-06-20 14:00:00', '2019-06-20 17:00:00');