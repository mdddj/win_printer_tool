#include "include/win_printer_tool/win_printer_tool_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "win_printer_tool_plugin.h"

void WinPrinterToolPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  win_printer_tool::WinPrinterToolPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
