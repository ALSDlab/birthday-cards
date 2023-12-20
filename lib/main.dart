import 'package:birthday_card/card_ver1.dart';
import 'package:birthday_card/card_ver2.dart';
import 'package:birthday_card/card_ver3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BirthdayCards(),
    );
  }
}

class BirthdayCards extends StatefulWidget {
  const BirthdayCards({super.key});

  @override
  State<BirthdayCards> createState() => _BirthdayCardsState();
}

class _BirthdayCardsState extends State<BirthdayCards> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        FirstBirthdayCard(),
        SecondBirthdayCard(),
        ThirdBirthdayCard(),
      ],
    );
  }
}
