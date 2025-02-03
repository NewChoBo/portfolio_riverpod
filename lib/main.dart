// dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_riverpod/home/presentation/screens/home_screen.dart';
import 'package:portfolio_riverpod/post/presentation/screens/post_screen.dart';
import 'package:portfolio_riverpod/user/presentation/screens/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'post',
            builder: (context, state) => const PostScreen(),
          ),
          GoRoute(
            path: 'user',
            builder: (context, state) => const UserScreen(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Portfolio Riverpod',
    );
  }
}
