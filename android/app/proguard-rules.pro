-keep class **.zego.** { *; }
# Keep classes referenced by your dependencies
-keep class com.itgsa.opensdk.mediaunit.** { *; }
-keep class java.beans.** { *; }
-keep class org.conscrypt.** { *; }
-keep class org.w3c.dom.bootstrap.** { *; }

# General Flutter/R8 rules
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class androidx.** { *; }

# Keep specific Zego classes
-keep class im.zego.** { *; }
-keep class com.zegocloud.** { *; }

# Keep Jackson related classes
-keep class com.fasterxml.** { *; }

# Keep OkHttp related classes
-keep class okhttp3.** { *; }