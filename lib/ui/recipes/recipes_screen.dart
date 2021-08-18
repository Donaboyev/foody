import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: SafeArea(
        child: Center(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restaurant),
        onPressed: () {},
      ),
    );
  }
}
