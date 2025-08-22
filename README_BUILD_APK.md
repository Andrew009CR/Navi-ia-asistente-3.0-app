
# Build de APK sin Android Studio (GitHub Actions)

1. Crea un repo nuevo en GitHub y sube todo el contenido de esta carpeta.
2. Ve a **Actions** → se ejecutará **Build Debug APK** (o lánzalo con *Run workflow*).
3. Al finalizar, descarga el artifact **NaviAsistenteIA-debug-apk** → contiene `app-debug.apk`.

El workflow instala:
- JDK 17 (Temurin)
- Gradle (vía apt)
- Android SDK (cmdline-tools) + platform android-35 + build-tools 35.0.0

> Si prefieres local: usa `./build-apk.sh` (requiere Gradle y SDK configurados).
