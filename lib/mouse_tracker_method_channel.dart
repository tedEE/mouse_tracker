import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mouse_tracker_platform_interface.dart';

/// An implementation of [MouseTrackerPlatform] that uses method channels.
class MethodChannelMouseTracker extends MouseTrackerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mouse_tracker');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
