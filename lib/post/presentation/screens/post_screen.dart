import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_riverpod/global/presentation/screens/base_scaffold.dart';

@RoutePage()
class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'first screen',
      body: const SafeArea(
        child: Text("first screen"),
      ),
    );
  }
}
