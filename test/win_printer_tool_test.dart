import 'package:flutter_test/flutter_test.dart';
import 'package:win_printer_tool/win_printer_tool.dart';
import 'package:win_printer_tool/win_printer_tool_platform_interface.dart';
import 'package:win_printer_tool/win_printer_tool_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWinPrinterToolPlatform
    with MockPlatformInterfaceMixin
    implements WinPrinterToolPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WinPrinterToolPlatform initialPlatform = WinPrinterToolPlatform.instance;

  test('$MethodChannelWinPrinterTool is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWinPrinterTool>());
  });

  test('getPlatformVersion', () async {
    WinPrinterTool winPrinterToolPlugin = WinPrinterTool();
    MockWinPrinterToolPlatform fakePlatform = MockWinPrinterToolPlatform();
    WinPrinterToolPlatform.instance = fakePlatform;

    expect(await winPrinterToolPlugin.getPlatformVersion(), '42');
  });
}
