import 'package:auto_route/auto_route.dart';
import 'package:oauth_oidc_serverless_application/services/app_router.dart';
import 'package:oauth_oidc_serverless_application/services/auth_service.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final bool isAuth = await AuthService.instance.init();
    if (isAuth) {
      resolver.next(true);
    } else {
      resolver.redirect(const LoginRoute());
    }
  }
}
