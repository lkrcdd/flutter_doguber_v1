import 'package:flutter/material.dart';
import 'package:flutter_doguber_v1/router.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

void main() {
  KakaoSdk.init(nativeAppKey: '8826eec5f744658162616455cf5361ad');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //router.dart파일의 화면 트리로 이동.
    return MaterialApp.router(routerConfig: router);
  }
}
