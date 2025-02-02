import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_riverpod/app_router.dart';

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({
    super.key,
    required this.router,
  });

  final StackRouter router;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              router.push(const HomeRoute());
            },
          ),
          ListTile(
            title: const Text('Post'),
            onTap: () {
              router.push(const PostRoute());
            },
          ),
          ListTile(
            title: const Text('User'),
            onTap: () {
              router.push(const UserRoute());
            },
          ),
        ],
      ),
    );
  }
}
