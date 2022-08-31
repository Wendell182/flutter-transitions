import 'package:flutter/material.dart';

import '../main.dart';
import '../transitions/fade_route.dart';

class FadeScreen extends StatelessWidget {
  const FadeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
          child: const Text('FadeTansition'),
          onPressed: () => Navigator.push(context, FadeRoute(page: Screen2())),
        ),
      ),
    );
  }
}
