import 'package:http/http.dart' as http;
import 'package:youtube/config.dart';
import 'dart:convert';

import 'package:youtube/models/video.dart';

// must be replaced for your youtube api key
const youtubeApiKey = Config.youtubeApiKey;

const channelId = 'UCHKbUAiKHsWCCZrkDY_PZ8Q';
const baseUrl = 'https://www.googleapis.com/youtube/v3/';

class Api {
  Future<List<Video>> search(String value) async {
    http.Response response = await http.get(
      Uri.parse('${baseUrl}search?part=snippet'
          '&type=video'
          '&maxResults=20'
          '&order=date'
          '&key=$youtubeApiKey'
          '&q=$value'),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);

      List<Video> videos = jsonData['items'].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();

      return videos;
    } else {
      throw Exception('Falha ao carregar vídeos');
    }
  }
}
