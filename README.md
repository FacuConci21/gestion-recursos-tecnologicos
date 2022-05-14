# GESTION DE RECURSOS TECNOLOGICOS

## Descripcion
Este es el proyecto de implementacion del PPAI de DSI 2022. Esta implentado en lenguaje <abbr title="Supported languaje by the course">Java</abbr>, con el framework [Spring](https://spring.io/).

## Nota para los integrantes
Chicos, pueden descargarse el proyecto como un .zip o clonar el repositorio.

> Para descargarlo como .zip hace click en   `Code > Download Zip`.
> Para clonarlo, ejecuta el comando `git clone <url>`. Copia la url que esta en `Code`.

Para entender el funcionamiento del proyecto les recomiendo seguir este tutorial basico a modo de introduccion: [Building a RESTful Web Service
](https://spring.io/guides/gs/rest-service/).
<abbr title="Java framework">Spring</abbr> tiene la ventaja de que hace practicamente todo por nosotros.
Para generar la API REST no tenemos que hacer nada, el se encarga de armar los metodos basicos por defecto. Para la construccion de clases no es necesario crear costructores ni instanciarlas usando `new`.

## Compilacion
Para la construccion del proyecto se usa el administrador de dependencias [Maven](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html), el cual provee una arquitectura estandar para nuestro proyecto y comandos para la compilacion y empaquetado.
Para desarrollo, como IDE, yo recomiendo mucho [Intellij IDEA Comunity](https://www.jetbrains.com/es-es/idea/download/#section=windows). Ya que facilita muchisimas tareas y puede traer integradas herramientas como el compilador, la version de java utilizada, maven y git.

####En Intellij IDEA Comunity:
> Hacer click en la ventada `maven` (a la derecha del IDE) > Lifecycle > compile. Alternativa: el boton `Run Maven Build`.

> Click en el icono del martillo, `Build Project` (Ejecutara el comando `mvn compile`).

> Para ejecutar dirijirse al archivo principal del proyecto: src / main / java / com.grupo11.GestionRecursosTenologicos > Click derecho sobre GestionRecursosTenologicosApplication.java > Run.
O tambien abrir el archivo y ejecutar desde el metodo `main`

Vease [What is a POM?](https://maven.apache.org/guides/introduction/introduction-to-the-pom.html#what-is-a-pom) (muy importante), [How do I compile my application sources?](https://maven.apache.org/guides/getting-started/index.html#how-do-i-compile-my-application-sources), [How do I create a JAR and install it in my local repository?](https://maven.apache.org/guides/getting-started/index.html#how-do-i-create-a-jar-and-install-it-in-my-local-repository), [How do I add resources to my JAR?](https://maven.apache.org/guides/getting-started/index.html#how-do-i-add-resources-to-my-jar) (importante).

## Automatizado
Para la creacion de clases les deje un archivo que va a automatizar la tarea. Es un script `batch` de windows que se encarga de crear los archivos correspondientes para la case de una entidad y su controlador. Se puede modificar para crear los archivos del servicio y el repositorio (cosas de <abbr title="Java framework">Spring</abbr> y una REST API).

El archivo es `addclass.bat` y lo ejecutas como un comando en la terminal pasandole como primer parametro el nombre de la clase seguido de sus atributos (tipoDeDato nombreAtributo) entre comillas y separados por comas `,`.
``` Batch
addclass NombreClase "String atributo1,int atributo2"
```
Ahora en los paquetes `web` y `entities` deberias ver los archivos `NombreClase.java` y `NombreClaseController.java`.
