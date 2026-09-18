# Examen-Mysql

- carpera uno diagramas conceptual y logico
- carpeta dos diagrama fisico, el sql
- carpeta tres consultas 

primero se realizo el diagrama logico del examen de la siguiente manera

<img width="676" height="671" alt="image" src="https://github.com/user-attachments/assets/e2bcd7d0-5bef-4f88-9714-18b3fdf28bc1" />

junto con el diagrama de entidades que es el siguiente

<img width="544" height="608" alt="image" src="https://github.com/user-attachments/assets/06b331df-3287-405c-8703-a932800f4ff7" />

y acontinuacion realice la creacion de las tablas en Mysql atraves de la herramienta de workbech

<img width="215" height="277" alt="image" src="https://github.com/user-attachments/assets/385c28af-18fd-41df-9618-fae6ea4b7f3f" />

y se insertaron datos los archivos necesarios para ello estan en la carpeta "2 Cracion de tablas y insert de datos"

# Ejercicio 1. **Número de pacientes atendidos por cada médico**
Despues de esto se procedio a la rfealizacion del primer ejercicio atraves de un SELET ya que es el que hace la consulta selecionando los atributos para la misma en cada tabla y  logicamente se de dice de cual tabla con FROM y AS si se quiere poner un alias que es lo que hice, para este realice lo hice con la tabla medicos con el alias m le hice un LEFT JOIN para que tomara todos de la parte de la isquierda osea los medicos para que por si alguno no tiene pacienetes (que hay 2 de echo ), salgan todos sin falta, bueno lo uni con la tabla pasientes q tiene una forane de id medico para el medico q se le asigno, con el ON le de doy patra que busq los que tienen el mismo ID y aarriniba en el SELET puse COUNT(p.id_paciente) AS total_pacientes para que contara pus cuantos a cada medico y que lo llamara total pasientes y con el GROUP BY lo que hago es agrupar los que tienen el mismo valor y le indico de cuales

<img width="754" height="400" alt="image" src="https://github.com/user-attachments/assets/c430ae2c-2203-414b-9371-a4f2657a7364" />


# Ejercicio 2. **Total de días de vacaciones planificadas y disfrutadas por cada empleado**
en este lo unico diferente que hice es pener el COALESCE(v.dias_planificados, 0) AS dias_planificados, que lo que hace en pocas palabras es que si no en cuentra nada en v.dias_planificados simplemente devuelva 0 y ya de resto es practicamente la misma explicacion de la uno solo que con otras variaciones como que no use el group by y ya

<img width="754" height="400" alt="image" src="https://github.com/user-attachments/assets/7e2968a4-e4c1-4e32-ad9b-c44e12dac27c" />


# Ejercicio 


# Ejercicio 


# Ejercicio 


# Ejercicio 


# Ejercicio 
