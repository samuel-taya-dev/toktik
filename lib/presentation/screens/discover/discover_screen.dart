import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/provider/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // el context.watch<DiscoverProvider>() es el receptor de la antena provider
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      //Colocamos el signo de cargando
      body: discoverProvider.initialLoading
          ? const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
              ),
            )
          : VideoScrolleableView(videos: discoverProvider.videos),
    );
  }
}
