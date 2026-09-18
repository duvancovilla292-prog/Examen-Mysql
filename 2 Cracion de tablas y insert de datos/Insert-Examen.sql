USE medisistema;

-- Empleados
INSERT INTO empleados (nombre, apellido, cargo) VALUES
('Ciel0','Covilla0','Auxiliar'),
('Ciel1','Covilla1','Coserje'),
('Ciel2','Covilla2','Celador'),
('Ciel3','Covilla3','Jefe'),
('Ciel4','Covilla4','Auxiliar');


-- Medicos
INSERT INTO medicos (nombre, apellido, especialidad, tipo_medico) VALUES
('javier', 'suarez', 'Medicina General', 'Titular'),
('Ciel', 'Covilla', 'Pediatria', 'Interino'),
('Brayan', 'Medina', 'Cardiologia', 'Sustituto'),
('Keiler', 'Serrano', 'Medicina General', 'Titular'),
('Rick', 'Hola', 'Dermatologia', 'Sustituto');

-- Pacientes
INSERT INTO pacientes (nombre, apellido, telefono, id_medico_asignado) VALUES
('Mateo1', 'Rojas1', '3001112233', 1),
('Mateo2', 'Rojas2', '3002223344', 1),
('Mateo3', 'Rojas3', '3003334455', 2),
('Mateo4', 'Rojas4', '3004445566', 2),
('Mateo5', 'Rojas5', '3005556677', 2),
('Mateo6', 'Rojas6', '3006667788', 4),
('Mateo7', 'Rojas7', '3007778899', 4),
('Mateo8', 'Rojas8', '3008889900', NULL);

-- Sustitucione 
INSERT INTO sustituciones (id_medico_sustituto, id_medico_titular_interino, fecha_inicio, fecha_fin) VALUES
(3, 1, '2026-06-01', '2026-06-30'),
(5, 2, '2026-05-10', NULL);

-- Vacaciones Empleados 
INSERT INTO vacaciones_empleados (id_empleado, dias_planificados, dias_disfrutados, anio) VALUES
(1, 15, 12, 2026),
(2, 22, 10, 2026),
(3, 10, 5, 2026),
(4, 25, 20, 2026);

-- Vacaciones de Medicos
INSERT INTO vacaciones_medicos (id_medico, dias_planificados, dias_disfrutados, anio) VALUES
(1, 10, 10, 2026),
(2, 15, 8, 2026),
(3, 5, 0, 2026),
(4, 20, 15, 2026),
(5, 12, 12, 2026);

-- Horarios de Consulta 
INSERT INTO horarios_medicos (id_medico, dia_semana, horas_consulta) VALUES
(1, 'Lunes', 6),
(1, 'Miercoles', 6),
(1, 'Viernes', 4),
(2, 'Martes', 8),
(2, 'Jueves', 8),
(4, 'Lunes', 5),
(4, 'Martes', 5),
(4, 'Miercoles', 5),
(3, 'Lunes', 4),
(3, 'Viernes', 6);