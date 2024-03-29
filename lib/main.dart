import 'package:flutter/material.dart';
import 'package:flutter_doguber_v1/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //라우터 내의 화면 트리로 이동.
    return MaterialApp.router(routerConfig: router);
  }
}
