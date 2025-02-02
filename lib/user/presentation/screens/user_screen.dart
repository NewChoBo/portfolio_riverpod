// TODO: User 기능의 화면(Screen)을 구현하세요.
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_riverpod/global/presentation/screens/base_scaffold.dart';

@RoutePage()
class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "Second Screen",
      body: SafeArea(
        child: Text("second screen"),
      ),
    );
  }
}
