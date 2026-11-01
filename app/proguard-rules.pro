# NEXORA ProGuard Rules for Android APK
# Preserve WebView interfaces and JavascriptInterface methods for hybrid web interaction

-keepattributes JavascriptInterface
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

-keepclassmembers class * extends android.webkit.WebViewClient {
    public void *(android.webkit.WebView, java.lang.String);
}

-keepclassmembers class * extends android.webkit.WebChromeClient {
    public void *(android.webkit.WebView, java.lang.String);
}

# AndroidX Keep Rules
-keep class androidx.webkit.** { *; }
-dontwarn androidx.webkit.**
