import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'win_printer_tool_platform_interface.dart';

/// An implementation of [WinPrinterToolPlatform] that uses method channels.
class MethodChannelWinPrinterTool extends WinPrinterToolPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('win_printer_tool');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
