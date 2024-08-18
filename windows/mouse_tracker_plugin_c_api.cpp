#include "include/mouse_tracker/mouse_tracker_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "mouse_tracker_plugin.h"

void MouseTrackerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  mouse_tracker::MouseTrackerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
