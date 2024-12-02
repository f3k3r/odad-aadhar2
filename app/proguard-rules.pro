# Keep AndroidX AppCompat (if used)
-keep class androidx.appcompat.** { *; }
-dontwarn androidx.appcompat.**

# Keep Material Design components
-keep class com.google.android.material.** { *; }
-dontwarn com.google.android.material.**

# Keep JUnit classes (for unit testing)
-keep class org.junit.** { *; }
-dontwarn org.junit.**

# Keep AndroidX JUnit extension (for Android testing)
-keep class androidx.test.ext.junit.** { *; }
-dontwarn androidx.test.ext.junit.**

# Keep Espresso (for Android UI testing)
-keep class androidx.test.espresso.** { *; }
-dontwarn androidx.test.espresso.**

# Keep all test classes (JUnit & Espresso)
-keep class **Test { *; }
-keepclassmembers class **Test { *; }
-dontwarn junit.framework.**

# Optional: Remove logging (only if you don't need logs in the final APK)
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** w(...);
    public static *** v(...);
    public static *** i(...);
    public static *** e(...);
}

