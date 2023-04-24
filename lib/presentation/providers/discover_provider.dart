import 'package:clone_tok_tik/domain/entities/video_post.dart';
import 'package:clone_tok_tik/infrastructure/models/local_video_model.dart';
import 'package:clone_tok_tik/shared/data/local_video_post.dart';
import 'package:flutter/material.dart';

//1
class DiscoverProvider extends ChangeNotifier {

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {

    //await Future.delayed(const Duration(seconds: 3));

    final List<VideoPost> newVideos = videoPosts.map((video) => 
    LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
