import 'package:flutter/material.dart';
import 'app/app.view.dart';
import 'injection.dart';

void main() async {
  await configureDependencies();
  runApp(Root());
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
    );
  }
}
