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


# Ejercicio 3. **Médicos con mayor cantidad de horas de consulta en la semana**
en esta use la SUM en SUM(h.horas_consulta) y la llame como total_horas_semana esto ya q el punto pedia el total de horas de consulta y de mayor cantidad y como eso lo tengo en otra tabla llamada horarios medicos saque de alli lo necesario usando join y usando on para comparar cuales tenian el mismo ID del que buscaba para hacer la suma con SUM y lo otro de diferente que tiene pues es que tiene un ORDER BY que lo que hace es acomodarlo del mas grande al mas chico con DESC y ya

<img width="754" height="291" alt="image" src="https://github.com/user-attachments/assets/9323e5fe-cdb6-417a-9f23-26d7b1623f63" />


# Ejercicio 4.  **Número de sustituciones realizadas por cada médico sustituto**
en este fue practicamente lo mismo que el primero asi que no tengo practicamente nada que explicar lo unico es que en ves de pacientes fue con los sustitutos

<img width="754" height="291" alt="image" src="https://github.com/user-attachments/assets/5b7f8e44-d486-446c-b1e7-38539a2d9146" />


# Ejercicio -- 5.  **Número de médicos que están actualmente en sustitución**
y esta fue mas facil simplemente agarre la tabla de sustituciones conte con COUNT cuantos habia y puse una condiciuon de donde la fecha fin fuera NULL ya q eso significaria que no ha terminado su sustitucion

<img width="754" height="291" alt="image" src="https://github.com/user-attachments/assets/a4cccb2f-2ad7-4fc9-bc60-17567975e01b" />



# Ejercicio 6. **Horas totales de consulta por médico por día de la semana**
en este simplemente agarre la tabla de medicos y la de los horarios de medicos mire con on cuales eran igual los id de los medicos de la tabla medico con los de sus horarios

<img width="754" height="419" alt="image" src="https://github.com/user-attachments/assets/af308a63-b73f-4f85-b622-b001ba5c7a2e" />


# Ejercicio 7.  **Médico con mayor cantidad de pacientes asignados**
la verdad todo lo que hice en este ya lo explique pero  voy de nuevo super simple primero aparte del selet use el COUNT(p.id_paciente) para contar la cantidad de pacientes uni las tabla de medicos y pacientes como en el primero  y tamvbien use el GROUP BY solo que de agg el ORDER BY en DESC para tener de primero el q mas tiene y con el LIMIT 1 es para que solo me muestre el q mas tiene el primero

<img width="754" height="419" alt="image" src="https://github.com/user-attachments/assets/684a151a-5a16-4f41-a2dd-e20dc0f28e38" />


# Ejercicio 8. **Empleados con más de 10 días de vacaciones disfrutadas**
la verdad ya explique todo lo de este antes asi que lo voy a omitir por temas de time y paso a slo decir que coloque una condicion con where y > 10 para cumplir con esta consulta

<img width="754" height="419" alt="image" src="https://github.com/user-attachments/assets/8a5b167c-0ba8-4be2-a6fa-8f523ea868c5" />

# Ejercicio 9.  **Médicos que actualmente están realizando una sustitución**
esta es practicamente lo mismo que el 5 solo que para q sea diferente le puse mas info yha que dice medicos en ves de mostrar la cantidad

<img width="754" height="419" alt="image" src="https://github.com/user-attachments/assets/982070c0-7ebd-4f92-ba89-a102cd18e6d4" />

# Ejercicio 10.  **Promedio de horas de consulta por médico por día de la semana**
de esta use la tabla horarios mmedicos y use el AVG para sacar el promedio y como lo e dicho antes el resto lo explique anteriormente


<img width="754" height="419" alt="image" src="https://github.com/user-attachments/assets/b5552b7f-c65f-47d9-ac09-e631c48670f4" />

# Ejercicio 11

# Ejercicio 12

# Ejercicio 13

# Ejercicio 14

# Ejercicio 15

# Ejercicio 16

# Ejercicio 17

# Ejercicio 18

# Ejercicio 19

# Ejercicio 20
