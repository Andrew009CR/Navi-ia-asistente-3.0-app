@ECHO OFF
@REM ##########################################################################
@REM
@REM  Gradle startup script for Windows
@REM
@REM ##########################################################################

SET DIRNAME=%~dp0
IF "%DIRNAME%" == "" SET DIRNAME=.
SET APP_BASE_NAME=%~n0
SET APP_HOME=%DIRNAME%

SET DEFAULT_JVM_OPTS="-Xmx64m"

SET CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

SET JAVA_EXE=java.exe
IF NOT "%JAVA_HOME%" == "" SET JAVA_EXE=%JAVA_HOME%\bin\java.exe

IF EXIST "%JAVA_EXE%" GOTO detectJavaOk

ECHO ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
GOTO fail

:detectJavaOk
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% -Dorg.gradle.appname=%APP_BASE_NAME% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
GOTO end

:fail
EXIT /B 1

:end
EXIT /B 0
