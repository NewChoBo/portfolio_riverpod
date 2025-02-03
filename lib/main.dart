import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_riverpod/global/presentation/screens/base_scaffold.dart';
import 'package:portfolio_riverpod/home/presentation/screens/home_screen.dart';
import 'package:portfolio_riverpod/post/presentation/screens/post_screen.dart';
import 'package:portfolio_riverpod/user/presentation/screens/user_screen.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      ShellRoute(
        // Wraps all the child routes with the persistent BaseScaffold
        builder: (context, state, child) => BaseScaffold(
          title: 'Portfolio Riverpod',
          body: child,
        ),
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/post',
            builder: (context, state) => const PostScreen(),
          ),
          GoRoute(
            path: '/user',
            builder: (context, state) => const UserScreen(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio Riverpod',
      routerConfig: _router,
    );
  }
}
