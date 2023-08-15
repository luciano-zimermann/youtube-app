import 'package:flutter/material.dart';
import 'package:youtube/screens/youtube_home.dart';
import 'package:youtube/screens/youtube_library.dart';
import 'package:youtube/screens/youtube_subscriptions.dart';
import 'package:youtube/screens/youtube_trend.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const YoutubeHome(),
      const YoutubeTrend(),
      const YoutubeSubscriptions(),
      const YoutubeLibrary(),
    ];

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
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            label: 'Início',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Em Alta',
            icon: Icon(
              Icons.whatshot,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Inscrições',
            icon: Icon(
              Icons.subscriptions,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Biblioteca',
            icon: Icon(
              Icons.folder,
            ),
          ),
        ],
      ),
    );
  }
}
