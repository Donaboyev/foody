import 'package:flutter/material.dart';

class JokePage extends StatelessWidget {
  const JokePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokes'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Jokes page'),
        ),
      ),
    );
  }
}
