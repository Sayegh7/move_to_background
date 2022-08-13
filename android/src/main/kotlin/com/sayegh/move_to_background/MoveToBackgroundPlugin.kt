package com.sayegh.move_to_background

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** MoveToBackgroundPlugin */
class MoveToBackgroundPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannelz

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "move_to_background")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "moveTaskToBack") {
      if (MoveToBackgroundPlugin.activity != null) {
        MoveToBackgroundPlugin.activity.moveTaskToBack(true);
        return;
      }
      Log.e("MoveToBackgroundPlugin", "moveTaskToBack failed: activity=null");
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  
  override fun onAttachedToActivity(binding: ActivityPluginBinding)
  {
    MoveToBackgroundPlugin.activity = binding.getActivity();
  }

  override fun onDetachedFromActivityForConfigChanges() {
    MoveToBackgroundPlugin.activity = null;
  }


  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    MoveToBackgroundPlugin.activity = binding.getActivity();
  }

  override fun onDetachedFromActivity() {
  override fun onDetachedFromActivity() {
    MoveToBackgroundPlugin.activity = null;
  }
}
