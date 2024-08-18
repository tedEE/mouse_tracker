import 'package:flutter_test/flutter_test.dart';
import 'package:mouse_tracker/mouse_tracker.dart';
import 'package:mouse_tracker/mouse_tracker_platform_interface.dart';
import 'package:mouse_tracker/mouse_tracker_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMouseTrackerPlatform
    with MockPlatformInterfaceMixin
    implements MouseTrackerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MouseTrackerPlatform initialPlatform = MouseTrackerPlatform.instance;

  test('$MethodChannelMouseTracker is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMouseTracker>());
  });

  test('getPlatformVersion', () async {
    MouseTracker mouseTrackerPlugin = MouseTracker();
    MockMouseTrackerPlatform fakePlatform = MockMouseTrackerPlatform();
    MouseTrackerPlatform.instance = fakePlatform;

    expect(await mouseTrackerPlugin.getPlatformVersion(), '42');
  });
}
