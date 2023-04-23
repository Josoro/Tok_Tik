class VideoPost {
  final String caption;
  final String vidoUrl;
  final int    likes;
  final int    views;

  VideoPost({
    required this.caption, 
    required this.vidoUrl, 
             this.likes    = 0, 
             this.views    = 0 
  });
}