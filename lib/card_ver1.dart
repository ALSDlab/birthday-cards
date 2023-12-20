import 'package:flutter/material.dart';

class FirstBirthdayCard extends StatelessWidget {
  const FirstBirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                  text: 'Happy',
                  size: 80,
                  height: 1.2,
                  align: TextAlign.center),
              TextWidget(
                  text: 'Birthday',
                  size: 80,
                  height: 1.2,
                  align: TextAlign.center),
              TextWidget(
                  text: 'Sam!!',
                  size: 80,
                  height: 1.2,
                  align: TextAlign.center),
              TextWidget(
                  text: 'From Emma',
                  size: 24,
                  height: 2.5,
                  align: TextAlign.right),
            ],
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final double size;
  final double height;
  final TextAlign align;

  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    required this.height,
    required this.align,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: Text(
          text,
          style: TextStyle(fontSize: size, height: height),
          textAlign: align,
        ));
  }
}
