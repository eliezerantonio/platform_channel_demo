package com.example.platform_channel_demo

import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity(){
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val messenger = flutterEngine.dartExecutor.binaryMessenger
        val methodChannel = MethodChannel(messenger, "com.eliezerantonio/first_platform_channel")

        methodChannel.setMethodCallHandler { call:MethodCall, result ->
            if (call.method == "version") {
                val version = androidVersion
                result.success(version)
            } else {
                result.notImplemented()
            }
        }
    }

    private val androidVersion: String
        get() {
            val sdkVersion = Build.VERSION.SDK_INT
            val release = Build.VERSION.RELEASE
            return "Android version: $sdkVersion ($release)"
        }
}
