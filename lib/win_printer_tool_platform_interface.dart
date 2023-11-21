import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'win_printer_tool_method_channel.dart';

abstract class WinPrinterToolPlatform extends PlatformInterface {
  /// Constructs a WinPrinterToolPlatform.
  WinPrinterToolPlatform() : super(token: _token);

  static final Object _token = Object();

  static WinPrinterToolPlatform _instance = MethodChannelWinPrinterTool();

  /// The default instance of [WinPrinterToolPlatform] to use.
  ///
  /// Defaults to [MethodChannelWinPrinterTool].
  static WinPrinterToolPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WinPrinterToolPlatform] when
  /// they register themselves.
  static set instance(WinPrinterToolPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
