import 'package:admin_dashboard/core/routes/app_router.dart';
import 'package:admin_dashboard/di/di_setup.dart';

import 'package:flutter/material.dart';

void main() {
  getIt.registerSingleton<AppRouter>(AppRouter());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

///
class MyApp extends StatelessWidget {
  ///
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      key: appRouter.key,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
