@Echo off

SET "MAIN_SOURCE_JAVA_DIR=src\main\java\com\grupo11\GestionRecursosTecnologicos"

SET "CLASS_NAME=%1"
SET "CLASS_ATRRIBUTES=%2"

SET "CLASS_PACKAGE=package com.grupo11.GestionRecursosTecnologicos;"
SET "CLASS_CONSTRUCTOR=public %CLASS_NAME%() {}"
SET "CLASS_DECLARATION=public class %CLASS_NAME% {"

type nul > ./%MAIN_SOURCE_JAVA_DIR%\%CLASS_NAME%.java

echo %CLASS_PACKAGE% >> ./%MAIN_SOURCE_JAVA_DIR%\%CLASS_NAME%.java
echo %CLASS_DECLARATION% >> ./%MAIN_SOURCE_JAVA_DIR%\%CLASS_NAME%.java

CALL :AddAtrributes %CLASS_ATRRIBUTES%

Echo %CLASS_CONSTRUCTOR% >> ./%MAIN_SOURCE_JAVA_DIR%\%CLASS_NAME%.java
Echo } >> ./%MAIN_SOURCE_JAVA_DIR%\%CLASS_NAME%.java

EXIT /B %errorlevel%

:AddAtrributes
IF NOT [%1] EQU [] (
    FOR /F "tokens=1* delims=," %%A IN (%1) DO (
        echo private %%A^; >> ./%MAIN_SOURCE_JAVA_DIR%\%CLASS_NAME%.java
        CALL :AddAtrributes "%%B"
    )
)
EXIT /B 0