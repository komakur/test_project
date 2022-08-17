import 'package:flutter/material.dart';
import 'package:test_project/constants.dart';
import 'package:test_project/services/random_numbers.dart';

/// Home screen of app
class HomeScreen extends StatefulWidget {
  /// Constructor of HomeScreenApp
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color randomColor = Colors.white;
  Color newTextColor = Colors.black;

  List<String> randomNumbers = List<String>.empty(growable: true);
  Future generateRandomNumbers() async {
    randomNumbers = await RandomNumbers().getRandomNumbers();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await generateRandomNumbers();

        final int a = int.tryParse(randomNumbers[0]) ?? 0;
        final int r = int.tryParse(randomNumbers[1]) ?? 0;
        final int g = int.tryParse(randomNumbers[2]) ?? 0;
        final int b = int.tryParse(randomNumbers[3]) ?? 0;

        const int topARGBValue = 255;
        setState(() {
          randomColor = Color.fromARGB(a, r, g, b);
          newTextColor = Color.fromARGB(
            topARGBValue - a,
            topARGBValue - r,
            topARGBValue - g,
            topARGBValue - b,
          );
        });
      },
      child: Scaffold(
        backgroundColor: randomColor,
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Hey there',
                  style: Constants.kDefaultMainTextStyle
                      .copyWith(color: newTextColor),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: Constants.kDefaultBottomHintTextPadding,
                ),
                child: Text(
                  'Tab anywhere',
                  style: Constants.kDefaultBottomHintTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
