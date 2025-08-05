plugins {
    id("com.android.application")
    id("kotlin-android")

    // ✅ Add this plugin for Firebase
    id("com.google.gms.google-services")

    // Flutter plugin comes LAST
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.queezy_app"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    defaultConfig {
        applicationId = "com.example.queezy_app"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName

        multiDexEnabled = true // ✅ Needed for Firebase Analytics
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // ✅ Firebase BoM: this manages all Firebase versions automatically
    implementation(platform("com.google.firebase:firebase-bom:33.16.0"))

    // ✅ Firebase SDKs — Add what you need
    implementation("com.google.firebase:firebase-analytics")
    implementation("com.google.firebase:firebase-firestore")
    implementation("com.google.firebase:firebase-storage")

    // Optional: auth, messaging, etc.
    // implementation("com.google.firebase:firebase-auth")
}
