import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThirdBirthdayCard extends StatelessWidget {
  const ThirdBirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.greenAccent,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), // 이미지 투명도 조절
                BlendMode.dstATop,
              ),
              image: const NetworkImage(
                'https://wallpaperswide.com/download/amazing_christmas_tree_night_santa_claus_landscape-wallpaper-1440x2560.jpg',
              ),
            ),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                      text: 'Happy Birthday Sam!',
                      size: 40,
                      height: 1.2,
                      align: TextAlign.center),
                  TextWidget(
                      text: '- From Emma',
                      size: 20,
                      height: 1.2,
                      align: TextAlign.center),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: Center(
            child: Lottie.asset("assets/Animation_present.json"),
          ),
        )
      ]),
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
        width: 400,
        child: Text(
          text,
          style: TextStyle(fontSize: size, height: height),
          textAlign: align,
        ));
  }
}
