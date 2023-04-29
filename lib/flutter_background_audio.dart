import 'dart:async';
import 'package:flutter/services.dart';

class FlutterBackgroundAudio {
  static const methodChannel = MethodChannel('flutter_background_audio');

  static Future setCategory() async {
    await methodChannel.invokeMethod('setCategory');
  }

  static Future setCategoryMixWithOthers(String? iconName) async {
    await methodChannel.invokeMethod('setCategoryMixWithOthers');
  }

  static Future setCategoryDuckOthers(String? iconName) async {
    await methodChannel.invokeMethod('setCategoryDuckOthers');
  }

  static Future setCategoryDefaultToSpeaker(String? iconName) async {
    await methodChannel.invokeMethod('setCategoryDefaultToSpeaker');
  }

  static Future setActive() async {
    await methodChannel.invokeMethod('setActive');
  }
}