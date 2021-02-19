// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/forgot-password/forgot_password_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/on-board/on_board_view.dart';
import '../ui/views/single_zodiac/single_zodiac_view.dart';
import '../ui/views/zodiac_list/zodiac_list_view.dart';

class Routes {
  static const String loginView = 'login';
  static const String homeView = 'home-screen';
  static const String onBoardView = '/';
  static const String forgotPasswordView = 'forgot-password';
  static const String zodiacListView = 'zodiac-list';
  static const String zodiacSingleView = 'zodiac-single';
  static const all = <String>{
    loginView,
    homeView,
    onBoardView,
    forgotPasswordView,
    zodiacListView,
    zodiacSingleView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.onBoardView, page: OnBoardView),
    RouteDef(Routes.forgotPasswordView, page: ForgotPasswordView),
    RouteDef(Routes.zodiacListView, page: ZodiacListView),
    RouteDef(Routes.zodiacSingleView, page: ZodiacSingleView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    OnBoardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardView(),
        settings: data,
      );
    },
    ForgotPasswordView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordView(),
        settings: data,
      );
    },
    ZodiacListView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ZodiacListView(),
        settings: data,
      );
    },
    ZodiacSingleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ZodiacSingleView(),
        settings: data,
      );
    },
  };
}
