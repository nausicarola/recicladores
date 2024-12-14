# README

# Proyecto de Reciclaje de Materiales

## Descripción

Este proyecto es una aplicación web desarrollada en Ruby on Rails que permite gestionar recicladores y los materiales que reciclan. La aplicación está diseñada para registrar tanto a los recicladores informales que proveen materia prima como los materiales que estos reciclan. Además, permite asociar y clasificar estos materiales a los diferentes recicladores, registrando entregas periódicas que indican los materiales recuperados y la fecha en la cual se realizó.

## Requisitos

- Ruby 2.7 o superior
- Rails 6.0 o superior
- PostgreSQL
- Bundler

## Instalación

1. **Clonar el repositorio**:

   ```bash
   git clone https://github.com/tu_usuario/nombre_del_repositorio.git
   cd nombre_del_repositorio

Características
Control de Acceso: La aplicación utiliza Devise para la autenticación de usuarios.
Gestión de Recicladores:
Permite el ingreso, modificación y eliminación de recicladores.
Los campos obligatorios incluyen: Nombre, Teléfono, Dirección y Email.
Gestión de Materiales:
Permite el ingreso, modificación y eliminación de materiales reciclados.
Cada material está asociado a un reciclador.
Registro de Entregas:
Permite registrar entregas de materiales por cada reciclador.
Información requerida: Material entregado, Fecha de entrega y Cantidad entregada.
Listados con Paginación:
Listado de recicladores con paginación (máximo 10 por página).
Listado de materiales reciclados asociados a cada reciclador con paginación (máximo 10 por página).
Interfaz Amigable: Utiliza Bootstrap para un diseño responsivo y atractivo.
Inicia el servidor Rails:
bash
rails server
Abre tu navegador y visita http://localhost:3000.
Inicia sesión con uno de los siguientes usuarios:
Usuario: operador1@gmail.com
Contraseña: 291ABASD932
Usuario: operador2@gmail.com
Contraseña: 931SDABA988
Consideraciones
La base de datos debe llamarse nombreproyecto_nombrealumno.
Todos los campos son obligatorios en los formularios.
Las vistas están en español, pero se recomienda utilizar convenciones de nombres en inglés para las tablas y modelos.
Contribuciones
Si deseas contribuir a este proyecto, por favor abre un issue o envía un pull request.
