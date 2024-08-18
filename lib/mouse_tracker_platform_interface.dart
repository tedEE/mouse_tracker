import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mouse_tracker_method_channel.dart';

abstract class MouseTrackerPlatform extends PlatformInterface {
  /// Constructs a MouseTrackerPlatform.
  MouseTrackerPlatform() : super(token: _token);

  static final Object _token = Object();

  static MouseTrackerPlatform _instance = MethodChannelMouseTracker();

  /// The default instance of [MouseTrackerPlatform] to use.
  ///
  /// Defaults to [MethodChannelMouseTracker].
  static MouseTrackerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MouseTrackerPlatform] when
  /// they register themselves.
  static set instance(MouseTrackerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
