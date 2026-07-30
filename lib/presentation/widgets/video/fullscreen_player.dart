import 'package:flutter/material.dart';
// import 'package:toktik/shared/data/local_video_posts.dart';
import 'package:video_player/video_player.dart';

//En un stateful las variables se mencionan como widget.videoUrl
class FullScreenPlayer extends StatefulWidget {
  final String videoUrl;
  final String caption;

  const FullScreenPlayer({
    super.key,
    required this.videoUrl,
    required this.caption,
  });

  @override
  State<FullScreenPlayer> createState() => _FullScreenPlayerState();
}

class _FullScreenPlayerState extends State<FullScreenPlayer> {
  //el controlador para poner pausa o play
  late VideoPlayerController controller;
  //
  //los stateFUL widget SI tienen un ciclo de vida, uno de esos pasos es el initState
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.videoUrl)
      ..setVolume(0)
      ..setLooping(true)
      ..play();
  }

  //Y el otro paso es el dispose para destruir o hacer limpieza
  //Para que el video no se siga reproduciendo o haya fuga de memoria
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // El future builder es un builder que va a trabajar con futures
  //es decir va a poner el video o el circulo de carga, practicamente es el que maneja los videos
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.initialize(),
      //El snapshot es el estado del future de arriba
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          //Si no es .done aparecera el circulo de cargando
          return const Center(child: CircularProgressIndicator(strokeWidth: 2));
        }
        return AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: Stack(
            children: [
              VideoPlayer(controller),

              //Gradiente

              //Texto
              Positioned(
                bottom: 50,
                left: 20,
                child: _VideoCaption(caption: widget.caption),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _VideoCaption extends StatelessWidget {
  final String caption;

  const _VideoCaption({required this.caption});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return SizedBox(
      width: size.width * 0.6,
      child: Text(caption, maxLines: 2, style: titleStyle),
    );
  }
}
