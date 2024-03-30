import 'package:flutter/material.dart';
import 'package:flutter_doguber_v1/homePage.dart';
import 'package:flutter_doguber_v1/matchPage.dart';
import 'package:go_router/go_router.dart';

//화면이동 담당 파일.
//생략 항목(무시해도 됨)
//routes: <RouteBase>[...

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: 'match',
          builder: (BuildContext context, GoRouterState state) {
            return const MatchPage();
          },
        ),
      ],
    ),
  ],
);
