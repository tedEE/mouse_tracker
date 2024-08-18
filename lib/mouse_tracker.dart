
import 'mouse_tracker_platform_interface.dart';

class MouseTracker {
  Future<String?> getPlatformVersion() {
    return MouseTrackerPlatform.instance.getPlatformVersion();
  }
}
