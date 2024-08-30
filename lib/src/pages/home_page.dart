import 'package:flutter/material.dart';
import 'package:personajes_app/src/widgets/header.dart';
import 'package:personajes_app/src/widgets/widget_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: <Widget>[
          HeaderWidget(),
          CharacterList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
