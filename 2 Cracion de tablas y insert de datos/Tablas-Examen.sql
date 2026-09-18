use medisistema;
-- 1
CREATE TABLE medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    tipo_medico ENUM('Titular', 'Interino', 'Sustituto') NOT NULL
);

-- 2
CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL
);

-- 3
CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    id_medico_asignado INT,
    CONSTRAINT fk_paciente_medico FOREIGN KEY (id_medico_asignado) 
        REFERENCES medicos(id_medico) ON DELETE SET NULL
);

-- 4
CREATE TABLE sustituciones (
    id_sustitucion INT AUTO_INCREMENT PRIMARY KEY,
    id_medico_sustituto INT NOT NULL,
    id_medico_titular_interino INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    CONSTRAINT fk_sustituto FOREIGN KEY (id_medico_sustituto) 
        REFERENCES medicos(id_medico) ON DELETE CASCADE,
    CONSTRAINT fk_titular_interino FOREIGN KEY (id_medico_titular_interino) 
        REFERENCES medicos(id_medico) ON DELETE CASCADE
);

-- 5
CREATE TABLE vacaciones_empleados (
    id_vacacion_emp INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT NOT NULL,
    dias_planificados INT DEFAULT 0,
    dias_disfrutados INT DEFAULT 0,
    anio INT NOT NULL,
    CONSTRAINT fk_vacaciones_empleado FOREIGN KEY (id_empleado) 
        REFERENCES empleados(id_empleado) ON DELETE CASCADE
);

-- 6
CREATE TABLE vacaciones_medicos (
    id_vacacion_med INT AUTO_INCREMENT PRIMARY KEY,
    id_medico INT NOT NULL,
    dias_planificados INT DEFAULT 0,
    dias_disfrutados INT DEFAULT 0,
    anio INT NOT NULL,
    CONSTRAINT fk_vacaciones_medico FOREIGN KEY (id_medico) 
        REFERENCES medicos(id_medico) ON DELETE CASCADE
);

-- 7
CREATE TABLE horarios_medicos (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    id_medico INT NOT NULL,
    dia_semana ENUM('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo') NOT NULL,
    horas_consulta INT NOT NULL, 
    CONSTRAINT fk_horario_medico FOREIGN KEY (id_medico) 
        REFERENCES medicos(id_medico) ON DELETE CASCADE
);