import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Image.asset(
          'images/youtube.png',
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Videocam');
            },
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {
              print('Pesquisa');
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print('Conta');
            },
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
