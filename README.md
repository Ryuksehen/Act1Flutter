# 📖 Agenda de Contactos CLI

## 📝 Descripción del Proyecto
Este es un proyecto de consola desarrollado en **Dart** que permite gestionar una agenda telefónica básica. La aplicación cuenta con un menú interactivo con opciones para agregar, listar, buscar y eliminar contactos.

El propósito principal de este repositorio es aplicar y documentar el uso de la metodología **Gitflow** para el trabajo colaborativo, demostrando la gestión de ramas (`main`, `develop`, `feature`) y la resolución de conflictos en equipo.

## 👥 Equipo de Trabajo y Roles

A continuación, se detalla el equipo de aprendices involucrados en el desarrollo y sus responsabilidades técnicas y de control de versiones:

| Nombre del Aprendiz | Rol en Gitflow | Tareas Asignadas (Dart) |
| :--- | :--- | :--- |
| **[omarverona 1]** | **Líder de Repositorio** (Ramas `main`, `develop`) | Estructura inicial, menú base, opción de **Agregar** contacto. Gestión de integración. |
| **[Omar Verona]** | **Desarrollador Feature** (Rama `feature/listar`) | Creación del modelo `Contacto` y lógica de la opción de **Listar** contactos. |
| **Sebastian Taborda]** | **Desarrollador Feature** (Rama `feature/gestion`) | Implementación de los algoritmos para **Buscar** y **Eliminar** contactos en la lista. |

## 🚀 Instrucciones de Ejecución

Para ejecutar este proyecto en tu entorno local, asegúrate de tener el SDK de Dart instalado y ejecuta el siguiente comando en la raíz del proyecto:

```bash
dart run lib/main.dart


contact list/
├── bin/
│   └── omarverona/  # Carpeta con 6 algoritmos   
│   └── Sebastian/  # Carpeta con 6 algoritmos   
│   └── add.dart/  # Carpeta con 6 algoritmos   
│   └── delete.dart/  # Carpeta con 6 algoritmos   
│   └── list.dart/  # Carpeta con 6 algoritmos   
│   └── search.dart/  # Carpeta con 6 algoritmos   
├── lib/
│   └── main.dart      # Punto de entrada de la aplicación y menú interactivo
│		└──	contact.dart   # Definición de la clase Contacto (Modelo)
├── .gitignore         # Archivos y carpetas que Git no debe rastrear (ej. dependencias locales)
└── README.md          # Documentación general del proyecto y roles del equipo