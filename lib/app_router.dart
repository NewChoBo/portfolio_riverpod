import 'package:auto_route/auto_route.dart';
import 'package:portfolio_riverpod/home/presentation/screens/home_screen.dart';
import 'package:portfolio_riverpod/post/presentation/screens/post_screen.dart';

part 'app_router.gr.dart'; // 코드 제너레이터에 의해 생성될 파일

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: PostRoute.page),
      ];
}
