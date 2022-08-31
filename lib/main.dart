import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/SlideScreen.dart';
import 'screens/fade_screen.dart';
import 'screens/random_screen.dart';
import 'screens/rotation_screen.dart';
import 'screens/scale_screen.dart';
import 'screens/size_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Route Transition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  final Map<String, Widget> screens = {
    'SlideTransition': SlideScreen(),
    'ScaleTransition': ScaleScreen(),
    'RotationTransition': RotationScreen(),
    'SizeTransition': SizeScreen(),
    'FadeTransition': FadeScreen(),
    'Random': RandomScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: buttons(context),
        ),
      ),
    );
  }

  List<ElevatedButton> buttons(context) {
    List<ElevatedButton> buttons = <ElevatedButton>[];
    screens.forEach(
      (k, v) => buttons.add(
        ElevatedButton(
          child: Text(k),
          onPressed: () => Navigator.push(
              context, CupertinoPageRoute(builder: (context) => v)),
        ),
      ),
    );
    return buttons;
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(
          child: const Text('Go Back!'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
