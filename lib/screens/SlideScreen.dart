import 'package:flutter/material.dart';

import '../main.dart';
import '../transitions/slide_route.dart';

class SlideScreen extends StatelessWidget {
  const SlideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('SlideRightTransition'),
              onPressed: () =>
                  Navigator.push(context, SlideRightRoute(page: Screen2())),
            ),
            ElevatedButton(
              child: const Text('SlideLeftTransition'),
              onPressed: () =>
                  Navigator.push(context, SlideLeftRoute(page: Screen2())),
            ),
            ElevatedButton(
              child: const Text('SlideTopTransition'),
              onPressed: () =>
                  Navigator.push(context, SlideTopRoute(page: Screen2())),
            ),
            ElevatedButton(
              child: const Text('SlideBottomTransition'),
              onPressed: () =>
                  Navigator.push(context, SlideBottomRoute(page: Screen2())),
            ),
          ],
        ),
      ),
    );
  }
}
