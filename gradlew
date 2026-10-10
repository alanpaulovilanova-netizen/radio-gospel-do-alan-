
#!/bin/sh
set -e

APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

if [ -f "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" ]; then
  exec java -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
else
  echo "ERRO: gradle-wrapper.jar não encontrado."
  exit 1
fi
