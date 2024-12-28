import 'package:auto_route/auto_route.dart';
import 'package:beomy_tech_auth/screens/auth_page/page.dart';
import 'package:beomy_tech_auth/screens/main_page/page.dart';
import 'package:beomy_tech_auth/screens/sign_in_page/page.dart';
import 'package:beomy_tech_auth/screens/sign_up_page/page.dart';
import 'package:beomy_tech_auth/screens/splash_page/page.dart';
import 'package:flutter/material.dart';





part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: SplashRoute.page),
    AutoRoute(path: '/auth', page: AuthRoute.page),
    AutoRoute(path: '/sign_in', page: SignInRoute.page),
    AutoRoute(path: '/sign_up', page: SignUpRoute.page),
    AutoRoute(path: '/main', page: MainRoute.page),
  ];
}

// dart run build_runner watch
// dart run build_runner build
