import 'package:flutter/cupertino.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import '../common/app_constansts.dart';

class CallPage extends StatelessWidget {
  const CallPage({
    Key? key,
    required this.callID,
    required this.userName,
    required this.userID,
  }) : super(key: key);
  final String callID;
  final String userName;
  final String userID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: appID,
      // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: yourAppSign,
      // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userID,
      userName: userName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config:
          ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
            ..topMenuBar.isVisible = true
            ..topMenuBar.buttons = [
              ZegoCallMenuBarButtonName.minimizingButton,
              ZegoCallMenuBarButtonName.showMemberListButton,
              ZegoCallMenuBarButtonName.soundEffectButton,
            ]

    );
  }
}
