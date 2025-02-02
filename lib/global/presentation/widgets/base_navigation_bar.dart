import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_riverpod/app_router.dart';

class BaseNavigationBar extends StatelessWidget {
  const BaseNavigationBar({
    super.key,
    required this.currentIndex,
    required this.router,
  });

  final int currentIndex;
  final StackRouter router;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            router.push(const HomeRoute());
            break;
          case 1:
            router.push(const PostRoute());
            break;
          case 2:
            router.push(const UserRoute());
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.post_add),
          label: 'Post',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'User',
        ),
      ],
    );
  }
}
