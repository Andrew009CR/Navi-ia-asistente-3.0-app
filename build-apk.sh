#!/usr/bin/env bash
set -euo pipefail

if command -v ./gradlew >/dev/null 2>&1; then
  echo "Using Gradle Wrapper"
  ./gradlew clean assembleDebug
elif command -v gradle >/dev/null 2>&1; then
  echo "Using system Gradle"
  gradle clean assembleDebug
else
  echo "Gradle no está instalado. Abre este proyecto en Android Studio y ejecuta Build > Build APK(s)."
  exit 1
fi

echo "APK generado en: app/build/outputs/apk/debug/app-debug.apk"
