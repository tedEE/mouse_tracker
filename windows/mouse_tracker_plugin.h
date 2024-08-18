#ifndef FLUTTER_PLUGIN_MOUSE_TRACKER_PLUGIN_H_
#define FLUTTER_PLUGIN_MOUSE_TRACKER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace mouse_tracker {

class MouseTrackerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MouseTrackerPlugin();

  virtual ~MouseTrackerPlugin();

  // Disallow copy and assign.
  MouseTrackerPlugin(const MouseTrackerPlugin&) = delete;
  MouseTrackerPlugin& operator=(const MouseTrackerPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace mouse_tracker

#endif  // FLUTTER_PLUGIN_MOUSE_TRACKER_PLUGIN_H_
