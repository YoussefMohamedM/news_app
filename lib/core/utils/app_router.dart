import 'package:go_router/go_router.dart';
import 'package:news_app/features/home/presentation/views/home_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const String homeRouteName = "/HomeView";
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(path: "/", builder: (context, state) => SplashView()),
      GoRoute(path: homeRouteName, builder: (context, state) => HomeView()),
    ],
  );
}
