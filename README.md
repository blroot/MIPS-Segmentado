# Práctica de Laboratorio: Microprocesador MIPS Segmentado

- Trabajo Práctico
- Arquitectura del Computador I 
- Universidad Nacional de Tres de Febrero

## Integrantes

- Chavez, Matias. Legajo N° 41902
- Lottero, Bruno. Legajo N° XXXXX

## Objetivo

> El objetivo de esta práctica es ampliar a la implementación el microprocesador MIPS (visto en clase de teoría) en
VHDL. En concreto, se va a realizar la versión segmentada del microprocesador, cuyos detalles se
pueden encontrar en: "Computer Organization and Design: The Hardware/Software Interface ", por
David A.Patterson y John L. Hennessy.
El modelo de las memorias de datos y programas proporcionado (archivo memory.vhd) no introduce
ciclos de espera y responde en el mismo ciclo. Además, utiliza dos archivos separados para el
contenido inicial de cada memoria, archivo llamado “program1” para memoria de instrucciones y
“data” para memoria de datos. Se proporcionan un archivo de ejemplo (program1.s) para utilizar
junto con el testbench de la práctica, si bien se pueden generar otros archivos correspondientes a
otros códigos para hacer más pruebas.

## Ejercicio
Se dispone de la implementación de un procesador completo que admite las siguientes
instrucciones: add, sub, and, or, lw, sw, slt y beq. En cualquier caso, la instrucción beq, que implica
riesgos de control por ser un salto, funcionará “anómalamente” en la versión básica del ejercicio
obligatorio.

Se pide que al diseño completo del procesador MIPS segmentado realizado por la cátedra,
incorporar las siguientes instrucciones y verificar el diseño utilizando el archivo “program1”
proporcionado por la cátedra.

![Instrucciones a implementar](./img_ejercicio.jpg)
