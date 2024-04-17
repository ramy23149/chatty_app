
import 'package:chatty_app/features/splash/pressentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/pressntation/views/home_view.dart';

abstract class RouterApp {
  static String kHomeView = '/homeView';
  

  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const AuthView();
        },
      ),
    
    ],
  );
}
