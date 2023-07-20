import 'package:auto_route/auto_route.dart';
import 'package:oauth_oidc_serverless_application/screens/home_screen.dart';
import 'package:oauth_oidc_serverless_application/screens/login_screen.dart';
import 'package:oauth_oidc_serverless_application/services/auth_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, guards: [
          AuthGuard()
        ]),
        AutoRoute(page: LoginRoute.page, path: '/login'),
      ];
}
