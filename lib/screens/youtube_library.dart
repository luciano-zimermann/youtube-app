import 'package:flutter/material.dart';

class YoutubeLibrary extends StatefulWidget {
  const YoutubeLibrary({Key? key}) : super(key: key);

  @override
  _YoutubeLibraryState createState() => _YoutubeLibraryState();
}

class _YoutubeLibraryState extends State<YoutubeLibrary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Biblioteca',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
