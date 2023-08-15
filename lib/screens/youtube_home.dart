import 'package:flutter/material.dart';

class YoutubeHome extends StatefulWidget {
  const YoutubeHome({Key? key}) : super(key: key);

  @override
  _YoutubeHomeState createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Início',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
