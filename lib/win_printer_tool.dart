
import 'win_printer_tool_platform_interface.dart';

class WinPrinterTool {
  Future<String?> getPlatformVersion() {
    return WinPrinterToolPlatform.instance.getPlatformVersion();
  }
}
