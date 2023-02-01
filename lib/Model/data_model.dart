class BlogModel {
  final String writerName;
  final String title;
  final String views;
  final String imageurl;
  final String writerImageUrl;
  final String dateOfPublish;
  BlogModel({
    required this.writerName,
    required this.title,
    required this.views,
    required this.imageurl,
    required this.writerImageUrl,
    required this.dateOfPublish,
  });
}

class HashTagModel {
  final String title;
  HashTagModel({required this.title});
}

class PodCastModel {
  final String speakerName;
  final String title;
  final String views;
  final String imageUrl;
  final String dateOfPublish;
  final String speakerImageUrl;
  PodCastModel(
      {required this.speakerName,
      required this.title,
      required this.views,
      required this.imageUrl,
      required this.dateOfPublish,
      required this.speakerImageUrl});
}
