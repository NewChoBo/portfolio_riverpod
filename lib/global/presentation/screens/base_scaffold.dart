import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_riverpod/global/presentation/widgets/base_drawer.dart';
import 'package:portfolio_riverpod/global/presentation/widgets/base_navigation_bar.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final String title;

  const BaseScaffold({
    required this.body,
    required this.title,
    super.key,
  });

  int _calculateIndex(String location) {
    if (location.contains('/post')) return 1;
    if (location.contains('/user')) return 2;
    return 0; // default for home ('/')
  }

  @override
  Widget build(BuildContext context) {
    // Obtain current route using GoRouterState
    final String currentRoute = GoRouterState.of(context).uri.path;
    final int currentIndex = _calculateIndex(currentRoute);

    return Scaffold(
      drawer: const BaseDrawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(child: body),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/'); // go to Home
        },
        child: const Icon(Icons.mouse),
      ),
      bottomNavigationBar: BaseNavigationBar(currentIndex: currentIndex),
    );
  }
}
