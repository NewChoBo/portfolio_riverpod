// TODO: User 기능의 화면(Screen)을 구현하세요.
import 'package:flutter/material.dart';
import 'package:portfolio_riverpod/global/presentation/screens/base_scaffold.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "User Screen",
      body: SafeArea(
        child: const Text("user screen"),
      ),
    );
  }
}
