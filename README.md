
# Navi asistente IA (Android)

Asistente personal con interfaz minimalista estilo chat, **modo offline**, subida de fotos y **voz**. 

## Cómo compilar e instalar (Android Studio)

1) **Instala Android Studio Narwhal Feature Drop | 2025.1.2** o superior.  
2) Descarga y descomprime este proyecto. Abre la carpeta `NaviAsistenteIA` en Android Studio.  
3) En `local.properties` agrega tu clave si quieres usar la IA en la nube (OpenAI):  
```
OPENAI_API_KEY=sk-xxxx
```
4) Acepta la descarga del SDK **Android 15 (API 35)** y sincroniza Gradle.  
5) Conecta tu teléfono y pulsa **Run ▶**.

## Modo offline
- Voz: usa el reconocedor del sistema (si el dispositivo tiene paquete de voz offline instalado).  
- Imágenes: **ML Kit on‑device** para etiquetado y OCR (texto).  
- Respuestas: comandos locales básicos (notas, saludos, guía).

Para un **STT 100% offline confiable**, puedes integrar [Vosk](https://alphacephei.com/vosk/android) y descargar un modelo (≈50 MB).

## Sustituir ícono
Reemplaza `app/src/main/res/drawable/ic_app_logo.xml` por tu logo o los assets de mipmap.

## Notas
- Objetivo: **targetSdk 35** (Android 15).  
- Interfaz: Compose + Material 3 (tema oscuro minimalista).
- Privacidad: el **modo offline** evita peticiones de red.



## Cambiar por tu logo
Coloca tu imagen como `app/src/main/res/drawable/ic_app_logo.png` **o** reemplaza `drawable/ic_app_logo.xml` por un PNG/SVG.


## GitHub Actions (APK sin Android Studio)
Este repositorio ya trae `.github/workflows/android.yml`. Al subirlo a GitHub:
1. Ve a **Actions → Build Debug APK → Run workflow**.
2. Descarga el artefacto **NaviAsistenteIA-debug-apk**. Dentro viene `app-debug.apk` listo para instalar.

