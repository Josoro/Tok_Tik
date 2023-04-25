import 'package:clone_tok_tik/domain/entities/video_post.dart';
import 'package:clone_tok_tik/domain/repositories/video_posts_repository.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videosRepository;

  DiscoverProvider({required this.videosRepository});

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    final newVideos = await videosRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
