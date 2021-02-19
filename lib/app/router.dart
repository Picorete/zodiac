import 'package:auto_route/auto_route_annotations.dart';
import 'package:zodiac/ui/views/forgot-password/forgot_password_view.dart';
import 'package:zodiac/ui/views/home/home_view.dart';
import 'package:zodiac/ui/views/login/login_view.dart';
import 'package:zodiac/ui/views/on-board/on_board_view.dart';
import 'package:zodiac/ui/views/single_zodiac/single_zodiac_view.dart';
import 'package:zodiac/ui/views/zodiac_list/zodiac_list_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: LoginView, path: 'login'),
    MaterialRoute(page: HomeView, path: 'home-screen'),
    MaterialRoute(page: OnBoardView, initial: true),
    MaterialRoute(page: ForgotPasswordView, path: 'forgot-password'),
    MaterialRoute(page: ZodiacListView, path: 'zodiac-list'),
    MaterialRoute(page: ZodiacSingleView, path: 'zodiac-single'),
  ],
)
class $Router {}
