import 'package:flutter/material.dart';

class YoutubeTrend extends StatefulWidget {
  const YoutubeTrend({Key? key}) : super(key: key);

  @override
  _YoutubeTrendState createState() => _YoutubeTrendState();
}

class _YoutubeTrendState extends State<YoutubeTrend> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Em Alta',
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
