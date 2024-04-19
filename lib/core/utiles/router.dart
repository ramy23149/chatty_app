
import 'package:chatty_app/features/home/presentaion/views/home_view.dart';
import 'package:chatty_app/features/splash/pressentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/pressntation/views/home_view.dart';

abstract class RouterApp {
  static String kAuthView = '/AuthView';
  static String kHomeView = '/HomeVieew';

  static final router = GoRouter(
  //  initialLocation: kHomeView,//llbda fe ui fa2t
    routes: <RouteBase>[    
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kAuthView,
        builder: (BuildContext context, GoRouterState state) {
          return const AuthView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      )
    
    ],
  );
}
