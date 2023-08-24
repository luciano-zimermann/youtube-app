import 'package:flutter/material.dart';
import 'package:youtube/models/video.dart';
import 'package:youtube/util/api.dart';

class YoutubeHome extends StatefulWidget {
  const YoutubeHome({Key? key}) : super(key: key);

  @override
  _YoutubeHomeState createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {
  Future<List<Video>> _getVideos() {
    return Api().search('');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>>(
      future: _getVideos(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Center(child: Text('Conexão não encontrada!'));
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
          case ConnectionState.active:
            return const Center(child: Text('Conexão ativa.'));
          case ConnectionState.done:
            if (snapshot.hasData) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  List<Video>? videos = snapshot.data;
                  Video video = videos![index];
                  return Column(
                    children: [
                      FadeInImage(
                        placeholder: const AssetImage('images/loading_image.gif'),
                        image: NetworkImage(video.image),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 200,
                        imageErrorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                              'images/no-image.jpg'); // Imagem de fallback local
                        },
                      ),
                      ListTile(
                        title: Text(video.title),
                        subtitle: Text(video.description),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  height: 2,
                  color: Colors.grey,
                ),
                itemCount: snapshot.data?.length ?? 0,
              );
            } else {
              return const Center(child: Text('Não há vídeos disponíveis'));
            }
        }
      },
    );
  }
}
