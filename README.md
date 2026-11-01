# NEXORA — Android Studio Native Project

This directory contains the complete native Android project for NEXORA.

## Quick Start in Android Studio

1. **Open in Android Studio**:
   - Open Android Studio.
   - Choose **File > Open...** and select the `android` folder (or the unzipped `nexora-android-project` folder).
   - Wait for Gradle to finish sync (uses Gradle 8.2 & AGP 8.2.2 with Java 17).

2. **Configure App Endpoint URL (Optional)**:
   - By default, `MainActivity.java` points to the hosted NEXORA Cloud Run instance.
   - To point to your own custom domain or server, update line 33 in:
     `app/src/main/java/com/nexora/ai/MainActivity.java`:
     ```java
     private static final String APP_URL = "https://your-custom-domain.com";
     ```

3. **Build APK**:
   - **Debug APK**: Select **Build > Build Bundle(s) / APK(s) > Build APK(s)**.
     The output APK will be located at:
     `app/build/outputs/apk/debug/app-debug.apk`
   - **Signed Release APK**: Select **Build > Generate Signed Bundle / APK > APK**, choose your keystore, and build.

4. **Features & Capabilities**:
   - **Hardware-accelerated WebView** with dark background matching NEXORA theme.
   - **File Chooser & Gallery support** (`onShowFileChooser`) for screenshot and image uploads.
   - **Microphone / Audio Capture permissions** (`RECORD_AUDIO`) for voice features.
   - **Native Back Button navigation** (`OnBackPressedCallback`).
   - **Deep Link handling** for seamless navigation.
   - **Zero API keys embedded** in the APK (all API calls go securely to the NEXORA server).
