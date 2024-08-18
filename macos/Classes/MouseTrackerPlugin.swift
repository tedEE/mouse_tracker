import Cocoa
import FlutterMacOS

public class MouseTrackerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "mouse_tracker", binaryMessenger: registrar.messenger)
    let instance = MouseTrackerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getMousePosition" {
      let mouseLocation = NSEvent.mouseLocation
      result(["x": mouseLocation.x, "y": mouseLocation.y])
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}

