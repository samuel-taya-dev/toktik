import 'package:flutter/material.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  // (look up)ChangeNotifier -> convierte a esta clase en una antena emisora del provider
  final VideoPostRepository videoPostRepository;

  bool initialLoading = true;
  //Lista donde estaran los videos a mostrar
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRepository});

  //Funcion para cargar videos
  Future<void> loadNextPage() async {
    /*
    await Future.delayed(
        const Duration(seconds: 2)); //simula una pausa de 2 segundos
    */
    //Hace el mapeo para depender de entidades limpias y no de un Json Puro
    /*
    final List<VideoPost> newVideos = videoPosts
        .map(
          (video) => LocalVideoModel.fromJson(video).toVideoPostEntity(),
        )
        .toList();

    */

    final newVideos = await videoPostRepository.getTrendingVideosByPage(
      page: 1,
    );
    //(arriba)new Videos es una Lista momentanea donde todo se agregara a videos
    videos.addAll(newVideos);

    initialLoading = false;

    notifyListeners();
    //(arriba)Funcion usada gracias a heredar de ChangeNotifier
  }
}
/*
Al llamar a esta función notifyListeners();
DiscoverProvider "grita" a través de la antena hacia todos 
los widgets que lo estén escuchando 
(los que tienen context.watch<DiscoverProvider>()
*/
