import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDatasource {
  Future<List<VideoPost>> getTrendingVideosByUser({required String userId});

  Future<List<VideoPost>> getTrendingVideosByPage({required int page});
}
