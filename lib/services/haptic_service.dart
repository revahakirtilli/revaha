import 'package:flutter/services.dart';

class HapticService {
  static const MethodChannel _channel = MethodChannel('com.example/haptic');

  static Future<void> triggerFeedback() async {
    try {
      await _channel.invokeMethod('triggerHapticFeedback');
    } catch (e) {
      print('Haptic feedback error: $e');
    }
  }
}