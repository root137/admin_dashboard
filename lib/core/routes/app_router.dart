import 'package:admin_dashboard/core/constants/routes_constants.dart';
import 'package:admin_dashboard/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:admin_dashboard/features/forgot%20password/presentation/pages/forgot_password_page.dart';

import 'package:admin_dashboard/features/login/presentation/pages/login_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: RouteConstants.login,
      page: LoginPage,
      initial: true,
    ),
    AutoRoute(
      path: RouteConstants.dashboard,
      page: DashboardPage,
    ),
  ],
)

///approuter
class AppRouter extends _$AppRouter {
  /// Constructor for AppRouter class
  /// Uses AuthGuard
}
