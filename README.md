\# FutbolWebApp



Aplicación Web Mobile desarrollada con DataFlex 2025 Studio 25.0 y MySQL.



\## Funcionalidades



La aplicación incluye pantallas Select y Zoom para:



\- Ligas.

\- Posiciones.

\- Equipos.

\- Entrenadores.

\- Jugadores.



El Dashboard dispone de una tarjeta para acceder a cada listado. Desde el listado se puede abrir la ficha del registro correspondiente.



\## Requisitos



\- DataFlex 2025 con el entorno de aplicaciones web configurado.

\- MySQL.

\- MySQL Connector/ODBC de 64 bits para las herramientas de Studio.

\- Un origen de datos ODBC llamado FutbolDSN, conectado a la base de datos futbol.



Si se compila para 32 bits, también será necesario configurar el controlador y el origen ODBC de esa arquitectura.



\## Preparación en otro ordenador



1\. Obtener una copia del repositorio.

2\. Importar en MySQL la base de datos de la práctica.

3\. Configurar el origen ODBC FutbolDSN con el servidor y las credenciales locales.

4\. Abrir FutbolWebApp.sws en DataFlex Studio.

5\. Configurar en SQL Connection Manager una conexión administrada con el identificador FutbolMySQL.

6\. Configurar la clave de cifrado de inicio de sesión requerida por el proyecto mediante las herramientas de DataFlex.

7\. Registrar la aplicación web y configurar su directorio virtual en el entorno local.

8\. Compilar y ejecutar WebApp.src.



Los datos almacenados en MySQL no se incluyen automáticamente al subir el código a Git. Su importación debe realizarse por separado.



\## Configuración privada



Los siguientes archivos se excluyen del repositorio:



\- Data/DFConnId.ini: configuración local de conexión.

\- AppSrc/LoginEncryptionKey.inc: clave de cifrado del proyecto.



Deben configurarse en cada instalación. Las claves deben ser coherentes con los datos de autenticación utilizados; si se genera una clave nueva, puede ser necesario reinicializar las cuentas.



También se excluyen ejecutables, registros de ejecución y archivos temporales.



\## Comprobaciones realizadas



\- Compilación y ejecución de la aplicación.

\- Inicio de sesión en el entorno de prácticas.

\- Acceso desde las cinco tarjetas a sus listados.

\- Apertura de fichas desde los listados.

\- Consulta de equipos y sus ligas.

\- Consulta de entrenadores y jugadores con sus equipos.

\- Apertura de la ficha de un entrenador sin equipo.

\- Modificación y guardado del máximo de equipos de una liga, restaurando después su valor original.



\## Organización de Git



\- main: versión funcional guardada.

\- develop: integración de los cambios posteriores.

\- feature/documentacion: preparación de las instrucciones de entrega.



El repositorio se inició después de implementar las pantallas. Por ello, el primer commit contiene la aplicación desarrollada y no existe un historial por funcionalidad de esa fase inicial.

