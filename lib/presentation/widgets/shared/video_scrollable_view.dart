import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';

class VideoScrolleableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrolleableView({
    super.key,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    //PageView es una widget listado que nos permite hacer scrool a pantalla completa
    //El .builder es para graficar bajo demanda
    return PageView.builder(
      // physics: const BouncingScrollPhysics(), para android antiguo
      scrollDirection: Axis.vertical,
      //Hacemos uso del "constructor" itembuilder
      itemCount: videos.length,

      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        //usamos el widget stack para tener widgets sobre otros
        return Stack(children: [
          //VideoPlayer + gradiente
          SizedBox.expand(
            child: FullScreenPlayer(
              caption: videoPost.caption,
              videoUrl: videoPost.videoUrl,
            ),
          ),
          //Botones
          Positioned(
            bottom: 40, //unidades desde abajo
            right: 10, //unidades desde la derecha
            child: VideoButtons(video: videoPost),
          ),
        ]);
      },
    );
  }
}
