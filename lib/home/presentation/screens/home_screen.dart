import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // Added import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("home screen"),
              ElevatedButton(
                onPressed: () {
                  context.go('/post'); // Changed to go_router
                },
                child: const Text("Go to Post Screen"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/user'); // Changed to go_router
                },
                child: const Text("Go to User Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
