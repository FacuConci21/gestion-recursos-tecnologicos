@Echo off

@REM PATH VARIABLES
SET "MAIN_SOURCE_JAVA_DIR=src\main\java\com\grupo11\GestionRecursosTecnologicos"
SET "ENTITIES_PACKAGE_DIR=%MAIN_SOURCE_JAVA_DIR%\persistance\entities"
SET "REPOSITORIES_PACKAGE_DIR=%MAIN_SOURCE_JAVA_DIR%\persistance\crud"
SET "CONTROLLERS_PACKAGE_DIR=%MAIN_SOURCE_JAVA_DIR%\web"
SET "SERVICES_PACKAGE_DIR=%MAIN_SOURCE_JAVA_DIR%\service"

SET "CLASS_NAME=%1"
SET "CLASS_ATRRIBUTES=%2"
SET "CLASS_CONTROLLER=%CLASS_NAME%Controller"
SET "CLASS_SERVICE=%CLASS_NAME%Service"
SET "CLASS_REPOSITORY=%CLASS_NAME%Repository"

@REM CODE INSTERTION VARIABLES
SET "CLASS_PACKAGE=package com.grupo11.GestionRecursosTecnologicos"
SET "CLASS_CONSTRUCTOR=public %CLASS_NAME%() {}"
SET "CLASS_DECLARATION=public class %CLASS_NAME% {"

@REM FILE CREATION
type nul > ./%ENTITIES_PACKAGE_DIR%/%CLASS_NAME%.java
CALL :CreateRepository
CALL :CreateController
CALL :CreateService


@REM ENTITY CODE INSERTION
echo %CLASS_PACKAGE%.persistance.entities; >> ./%ENTITIES_PACKAGE_DIR%\%CLASS_NAME%.java
echo ^@Entity >> ./%ENTITIES_PACKAGE_DIR%\%CLASS_NAME%.java
echo %CLASS_DECLARATION% >> ./%ENTITIES_PACKAGE_DIR%\%CLASS_NAME%.java

CALL :AddAtrributes %CLASS_ATRRIBUTES%

Echo %CLASS_CONSTRUCTOR% >> ./%ENTITIES_PACKAGE_DIR%\%CLASS_NAME%.java
Echo } >> ./%ENTITIES_PACKAGE_DIR%\%CLASS_NAME%.java

EXIT /B %errorlevel%

:AddAtrributes
IF NOT [%1] EQU [] (
    FOR /F "tokens=1* delims=," %%A IN (%1) DO (
        echo private %%A^; >> ./%ENTITIES_PACKAGE_DIR%\%CLASS_NAME%.java
        CALL :AddAtrributes "%%B"
    )
)
EXIT /B 0

:CreateRepository
type nul > ./%REPOSITORIES_PACKAGE_DIR%/%CLASS_REPOSITORY%.java
echo %CLASS_PACKAGE%.persistance.crud; >> ./%REPOSITORIES_PACKAGE_DIR%/%CLASS_REPOSITORY%.java
echo ^@Repository >> ./%REPOSITORIES_PACKAGE_DIR%/%CLASS_REPOSITORY%.java
echo public interface %CLASS_REPOSITORY% extends CrudRepository^<%CLASS_NAME%, PKType^> ^{ >> ./%REPOSITORIES_PACKAGE_DIR%/%CLASS_REPOSITORY%.java
echo ^} >> ./%REPOSITORIES_PACKAGE_DIR%/%CLASS_REPOSITORY%.java
EXIT /B 0

:CreateController
type nul > ./%CONTROLLERS_PACKAGE_DIR%/%CLASS_CONTROLLER%.java
echo %CLASS_PACKAGE%.web; >> ./%CONTROLLERS_PACKAGE_DIR%/%CLASS_CONTROLLER%.java
echo ^@RestController ^@RequestMapping^(^) >> ./%CONTROLLERS_PACKAGE_DIR%/%CLASS_CONTROLLER%.java
echo public class %CLASS_CONTROLLER% implements ApiController^<%CLASS_NAME%, PKType^> ^{ >> ./%CONTROLLERS_PACKAGE_DIR%/%CLASS_CONTROLLER%.java
echo ^@Autowired >> ./%CONTROLLERS_PACKAGE_DIR%/%CLASS_CONTROLLER%.java
echo private %CLASS_SERVICE% service; >> ./%CONTROLLERS_PACKAGE_DIR%/%CLASS_CONTROLLER%.java
echo ^} >> ./%CONTROLLERS_PACKAGE_DIR%/%CLASS_CONTROLLER%.java
EXIT /B 0

:CreateService
type nul > ./%SERVICES_PACKAGE_DIR%/%CLASS_SERVICE%.java
echo %CLASS_PACKAGE%.service; >> ./%SERVICES_PACKAGE_DIR%/%CLASS_SERVICE%.java
echo ^@Service >> ./%SERVICES_PACKAGE_DIR%/%CLASS_SERVICE%.java
echo public class %CLASS_SERVICE% implements ApiService^<%CLASS_NAME%, PKType^> ^{ >> ./%SERVICES_PACKAGE_DIR%/%CLASS_SERVICE%.java
echo ^@Autowired >> ./%SERVICES_PACKAGE_DIR%/%CLASS_SERVICE%.java
echo public %CLASS_REPOSITORY% repository; >> ./%SERVICES_PACKAGE_DIR%/%CLASS_SERVICE%.java
echo ^} >> ./%SERVICES_PACKAGE_DIR%/%CLASS_SERVICE%.java
EXIT /B 0