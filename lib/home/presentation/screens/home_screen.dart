// TODO: Home 기능의 화면(Screen)을 구현하세요.
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_riverpod/app_router.dart';
import 'package:portfolio_riverpod/global/presentation/screens/base_scaffold.dart';

@RoutePage() // 어노테이션 추가
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);

    return BaseScaffold(
      title: "Home Screen",
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("home screen"),
              ElevatedButton(
                onPressed: () {
                  router.push(const PostRoute());
                },
                child: const Text("Go to first screen"),
              ),
              ElevatedButton(
                onPressed: () {
                  router.push(UserRoute());
                },
                child: const Text("Go to second screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
