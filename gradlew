#!/usr/bin/env sh

##############################################################################
## Gradle start up script for UN*X
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS="-Xmx64m"

APP_BASE_NAME=$(basename "$0")
APP_HOME=$(cd "$(dirname "$0")" && pwd)

CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME" >&2
        exit 1
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || {
        echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH." >&2
        exit 1
    }
fi

# Download the gradle-wrapper.jar if necessary
WRAPPER_JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"
WRAPPER_URL="https://services.gradle.org/distributions/gradle-8.13-bin.zip"
WRAPPER_JAR_URL="https://repo.gradle.org/gradle/libs-releases-local/org/gradle/gradle-wrapper/8.13/gradle-wrapper-8.13.jar"

if [ ! -f "$WRAPPER_JAR" ]; then
  mkdir -p "$APP_HOME/gradle/wrapper"
  # try to download wrapper jar
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$WRAPPER_JAR_URL" -o "$WRAPPER_JAR" || true
  elif command -v wget >/dev/null 2>&1; then
    wget -q "$WRAPPER_JAR_URL" -O "$WRAPPER_JAR" || true
  fi
fi

exec "$JAVACMD" $DEFAULT_JVM_OPTS -Dorg.gradle.appname="$APP_BASE_NAME" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
