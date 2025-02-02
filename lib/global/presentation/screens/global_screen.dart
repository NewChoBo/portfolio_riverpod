// TODO: Global 기능의 화면(Screen)을 구현하세요.
import 'package:flutter/material.dart';

class GlobalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Screen'),
      ),
      body: Center(
        child: Text('This is the Global screen'),
      ),
    );
  }
}