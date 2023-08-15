import 'package:activo/screens/name_screen.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';



class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: WatchShape(builder: (context, shape, child) {
          var screenSize = MediaQuery.of(context).size;
          print(screenSize.toString());
          final shapeForm = WatchShape.of(context);
          print(shapeForm.toString());

          if (shapeForm == WearShape.round) {
            screenSize = Size((screenSize.width / 2) * 1.4142,
                (screenSize.height / 2) * 1.4142);
          }

          var screenHeight = screenSize.height;
          var screenWidth = screenSize.width;

          return SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const FlutterLogo(size: 90),
                const SizedBox(height: 20),
                const Text('Rodrigo Eduardo Lopez Reyes'),
                ElevatedButton(
                  child: const Text(
                    'START',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NameScreen(screenHeight, screenWidth);
                    }));
                  },
                ),
              ],
            ),
          );
        }));
  }
}
