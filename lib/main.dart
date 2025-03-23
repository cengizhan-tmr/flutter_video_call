import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'my_app.dart';

void main() {
  ZegoUIKit().initLog().then((value) {
    runApp(const MyApp());
  });
}
