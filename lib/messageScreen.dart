import 'package:flutter/material.dart';
import 'package:testproject/input_screen.dart';

//ignore: must_be_immutable
class DisplayText extends StatelessWidget {
  static const String id = "DisplayText";
  final String message;
  const DisplayText({super.key, required this.message});

  double calculateMaxFontSize(BuildContext context) {
    // Get the available width and height of the screen
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate the maximum font size based on the available space
    double maxFontSize = (screenWidth + screenHeight) / 1.5 * 0.1;
    return maxFontSize;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  message,
                  style: const TextStyle(
                      fontSize: 500.0,
                      color: Colors.black,
                      height: 0.1,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: const Text('Back'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InputScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
