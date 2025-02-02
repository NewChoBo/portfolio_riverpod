// TODO: User 기능의 화면(Screen)을 구현하세요.
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserScreen extends StatelessWidget {
  const UserScreen({super.key, required this.num});

  final int num;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Second Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Text("second screen $num"),
      ),
    );
  }
}
