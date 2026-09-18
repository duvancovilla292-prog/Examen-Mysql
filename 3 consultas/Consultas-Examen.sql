USE medisistema;

-- 1. **Número de pacientes atendidos por cada médico**
SELECT m.id_medico, m.nombre, m.apellido, COUNT(p.id_paciente) AS total_pacientes
FROM medicos AS m
LEFT JOIN pacientes p ON m.id_medico = p.id_medico_asignado
GROUP BY m.id_medico, m.nombre, m.apellido;

-- 2. **Total de días de vacaciones planificadas y disfrutadas por cada empleado**
SELECT e.id_empleado, e.nombre, e.apellido, 
       COALESCE(v.dias_planificados, 0) AS dias_planificados, 
       COALESCE(v.dias_disfrutados, 0) AS dias_disfrutados
FROM empleados AS e
LEFT JOIN vacaciones_empleados v ON e.id_empleado = v.id_empleado;

-- 3. **Médicos con mayor cantidad de horas de consulta en la semana**
SELECT m.id_medico, m.nombre, m.apellido, SUM(h.horas_consulta) AS total_horas_semana
FROM medicos m
JOIN horarios_medicos h ON m.id_medico = h.id_medico
GROUP BY m.id_medico, m.nombre, m.apellido
ORDER BY total_horas_semana DESC;

-- 4.  **Número de sustituciones realizadas por cada médico sustituto**
SELECT m.id_medico, m.nombre, m.apellido, COUNT(s.id_sustitucion) AS total_sustituciones
FROM medicos m
JOIN sustituciones s ON m.id_medico = s.id_medico_sustituto
GROUP BY m.id_medico, m.nombre, m.apellido;

-- 5.  **Número de médicos que están actualmente en sustitución**
SELECT COUNT(*) AS medicos_actualmente_sustituyendo
FROM sustituciones
WHERE fecha_fin IS NULL;

-- 6. **Horas totales de consulta por médico por día de la semana**
SELECT m.nombre, m.apellido, h.dia_semana, h.horas_consulta
FROM medicos m
JOIN horarios_medicos h ON m.id_medico = h.id_medico;

-- 7.  **Médico con mayor cantidad de pacientes asignados**
SELECT m.id_medico, m.nombre, m.apellido, COUNT(p.id_paciente) AS total_pacientes
FROM medicos m
JOIN pacientes p ON m.id_medico = p.id_medico_asignado
GROUP BY m.id_medico, m.nombre, m.apellido
ORDER BY total_pacientes DESC
LIMIT 1;

-- 8. **Empleados con más de 10 días de vacaciones disfrutadas**
SELECT e.id_empleado, e.nombre, e.apellido, v.dias_disfrutados
FROM empleados e
JOIN vacaciones_empleados v ON e.id_empleado = v.id_empleado
WHERE v.dias_disfrutados > 10;

-- 9.  **Médicos que actualmente están realizando una sustitución**
SELECT m.id_medico, m.nombre, m.apellido, s.fecha_inicio
FROM medicos m
JOIN sustituciones s ON m.id_medico = s.id_medico_sustituto
WHERE s.fecha_fin IS NULL;
