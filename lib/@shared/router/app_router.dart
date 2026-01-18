import 'package:go_router/go_router.dart';
import 'package:patofc/@shared/router/routes.dart';
import 'package:patofc/features/auth/presentation/pages/login_page.dart';
import 'package:patofc/features/home/presentation/pages/home_page.dart';
import 'package:patofc/features/splash/presentation/pages/splash_page.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.splash.path,
  routes: [
    GoRoute(
      path: AppRoutes.splash.path,
      name: AppRoutes.splash.name,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.login.path,
      name: AppRoutes.login.name,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AppRoutes.home.path,
      name: AppRoutes.home.name,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
