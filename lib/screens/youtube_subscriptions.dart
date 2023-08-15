import 'package:flutter/material.dart';

class YoutubeSubscriptions extends StatefulWidget {
  const YoutubeSubscriptions({Key? key}) : super(key: key);

  @override
  _YoutubeSubscriptionsState createState() => _YoutubeSubscriptionsState();
}

class _YoutubeSubscriptionsState extends State<YoutubeSubscriptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Inscrições',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
