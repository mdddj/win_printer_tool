import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:win_printer_tool/win_printer_tool_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelWinPrinterTool platform = MethodChannelWinPrinterTool();
  const MethodChannel channel = MethodChannel('win_printer_tool');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
